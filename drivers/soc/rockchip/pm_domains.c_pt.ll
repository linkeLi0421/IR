; ModuleID = '/llk/IR/drivers/soc/rockchip/pm_domains.c_pt.bc'
source_filename = "../drivers/soc/rockchip/pm_domains.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.rockchip_pmu_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rockchip_domain_info = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32 }
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
%struct.rockchip_pmu = type { ptr, ptr, ptr, %struct.mutex, %struct.genpd_onecell_data, [0 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rockchip_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, i32, ptr, [5 x ptr], i32, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_pm_domains__162_1083_rockchip_pm_domain_drv_register2 = internal global ptr @rockchip_pm_domain_drv_register, section ".initcall2.init", align 4
@rockchip_pm_domain_driver = internal global %struct.platform_driver { ptr @rockchip_pm_domain_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rockchip_pm_domain_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [19 x i8] c"rockchip-pm-domain\00", align 1
@rockchip_pm_domain_dt_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_pmu }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"device tree node not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"missing pmu data\0A\00", align 1
@rockchip_pm_domain_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&pmu->mutex\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"no parent for syscon devices\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"no regmap available\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to handle node %pOFn: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"failed to handle subdomain node %pOFn: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to add provider: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%pOFn: failed to retrieve domain id (reg): %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%pOFn: invalid domain id %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%pOFn: undefined domain id %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"%pOFn: failed to get clk at index %d: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pm_qos\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"failed to power on domain '%pOFn': %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"failed to enable clocks\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"failed to get ack on domain '%s', val=0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"failed to set idle on domain '%s', val=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"failed to set domain '%s', val=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"pm_clk_create failed %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"pm_clk_add_clk failed %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s failed to add subdomain %s: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"failed to remove domain '%s' : %d - state may be inconsistent\0A\00", align 1
@px30_pmu = internal constant %struct.rockchip_pmu_info { i32 24, i32 32, i32 100, i32 108, i32 108, i32 0, i32 0, i32 0, i32 0, i32 15, ptr @px30_pm_domains }, align 4
@rk3036_pmu = internal constant %struct.rockchip_pmu_info { i32 0, i32 0, i32 328, i32 332, i32 332, i32 0, i32 0, i32 0, i32 0, i32 7, ptr @rk3036_pm_domains }, align 4
@rk3066_pmu = internal constant %struct.rockchip_pmu_info { i32 8, i32 12, i32 56, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 11, ptr @rk3066_pm_domains }, align 4
@rk3128_pmu = internal constant %struct.rockchip_pmu_info { i32 4, i32 8, i32 12, i32 16, i32 16, i32 0, i32 0, i32 0, i32 0, i32 5, ptr @rk3128_pm_domains }, align 4
@rk3188_pmu = internal constant %struct.rockchip_pmu_info { i32 8, i32 12, i32 56, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 11, ptr @rk3188_pm_domains }, align 4
@rk3228_pmu = internal constant %struct.rockchip_pmu_info { i32 0, i32 0, i32 1036, i32 1160, i32 1160, i32 0, i32 0, i32 0, i32 0, i32 11, ptr @rk3228_pm_domains }, align 4
@rk3288_pmu = internal constant %struct.rockchip_pmu_info { i32 8, i32 12, i32 16, i32 20, i32 20, i32 52, i32 60, i32 24, i32 24, i32 14, ptr @rk3288_pm_domains }, align 4
@rk3328_pmu = internal constant %struct.rockchip_pmu_info { i32 0, i32 0, i32 1044, i32 1156, i32 1156, i32 0, i32 0, i32 0, i32 0, i32 10, ptr @rk3328_pm_domains }, align 4
@rk3366_pmu = internal constant %struct.rockchip_pmu_info { i32 12, i32 16, i32 60, i32 64, i32 64, i32 72, i32 80, i32 24, i32 24, i32 12, ptr @rk3366_pm_domains }, align 4
@rk3368_pmu = internal constant %struct.rockchip_pmu_info { i32 12, i32 16, i32 60, i32 64, i32 64, i32 72, i32 80, i32 24, i32 24, i32 17, ptr @rk3368_pm_domains }, align 4
@rk3399_pmu = internal constant %struct.rockchip_pmu_info { i32 20, i32 24, i32 96, i32 100, i32 104, i32 0, i32 0, i32 0, i32 0, i32 36, ptr @rk3399_pm_domains }, align 4
@rk3568_pmu = internal constant %struct.rockchip_pmu_info { i32 160, i32 152, i32 80, i32 104, i32 96, i32 0, i32 0, i32 0, i32 0, i32 16, ptr @rk3568_pm_domains }, align 4
@px30_pm_domains = internal constant [15 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.24, i32 32, i32 32, i32 1024, i32 67108864, i32 1024, i8 0, i32 2097152, i32 67108864 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.25, i32 256, i32 256, i32 512, i32 33554432, i32 512, i8 0, i32 16777216, i32 33554432 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.26, i32 1024, i32 1024, i32 64, i32 4194304, i32 64, i8 0, i32 67108864, i32 4194304 }, %struct.rockchip_domain_info { ptr @.str.27, i32 2048, i32 2048, i32 32, i32 2097152, i32 32, i8 0, i32 134217728, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.28, i32 4096, i32 4096, i32 16384, i32 1073741824, i32 16384, i8 0, i32 268435456, i32 1073741824 }, %struct.rockchip_domain_info { ptr @.str.29, i32 8192, i32 8192, i32 128, i32 8388608, i32 128, i8 0, i32 536870912, i32 8388608 }, %struct.rockchip_domain_info { ptr @.str.30, i32 16384, i32 16384, i32 256, i32 16777216, i32 256, i8 0, i32 1073741824, i32 16777216 }, %struct.rockchip_domain_info { ptr @.str.31, i32 32768, i32 32768, i32 4, i32 262144, i32 4, i8 0, i32 -2147483648, i32 262144 }], align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sdcard\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"gmac\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"mmc_nand\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"vo\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@rk3036_pm_domains = internal constant [7 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.32, i32 0, i32 0, i32 16384, i32 1073741824, i32 8388608, i8 1, i32 0, i32 1073741824 }, %struct.rockchip_domain_info { ptr @.str.33, i32 0, i32 0, i32 8192, i32 16777216, i32 131072, i8 0, i32 0, i32 536870912 }, %struct.rockchip_domain_info { ptr @.str.34, i32 0, i32 0, i32 4096, i32 33554432, i32 262144, i8 0, i32 0, i32 268435456 }, %struct.rockchip_domain_info { ptr @.str.35, i32 0, i32 0, i32 2048, i32 67108864, i32 524288, i8 0, i32 0, i32 134217728 }, %struct.rockchip_domain_info { ptr @.str.28, i32 0, i32 0, i32 1024, i32 134217728, i32 1048576, i8 0, i32 0, i32 67108864 }, %struct.rockchip_domain_info { ptr @.str.31, i32 0, i32 0, i32 512, i32 268435456, i32 2097152, i8 0, i32 0, i32 33554432 }, %struct.rockchip_domain_info { ptr @.str.36, i32 0, i32 0, i32 256, i32 536870912, i32 4194304, i8 0, i32 0, i32 16777216 }], align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"msch\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"peri\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@rk3066_pm_domains = internal constant [11 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.37, i32 256, i32 256, i32 16, i32 8388608, i32 268435456, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.35, i32 128, i32 128, i32 32, i32 4194304, i32 134217728, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.31, i32 512, i32 512, i32 8, i32 16777216, i32 536870912, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.34, i32 64, i32 64, i32 4, i32 33554432, i32 1073741824, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.38, i32 0, i32 32, i32 2, i32 67108864, i32 -2147483648, i8 0, i32 0, i32 0 }], align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@rk3128_pm_domains = internal constant [5 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.33, i32 1, i32 1, i32 16, i32 16, i32 1048576, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.35, i32 8, i32 8, i32 4, i32 4, i32 262144, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.37, i32 4, i32 4, i32 2, i32 2, i32 131072, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.31, i32 2, i32 2, i32 8, i32 8, i32 524288, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.32, i32 0, i32 0, i32 64, i32 64, i32 4194304, i8 1, i32 0, i32 0 }], align 4
@rk3188_pm_domains = internal constant [11 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.37, i32 256, i32 256, i32 16, i32 8388608, i32 268435456, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.35, i32 128, i32 128, i32 32, i32 4194304, i32 134217728, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.31, i32 512, i32 512, i32 8, i32 16777216, i32 536870912, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.34, i32 64, i32 64, i32 4, i32 33554432, i32 1073741824, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.38, i32 32, i32 32, i32 2, i32 67108864, i32 -2147483648, i8 0, i32 0, i32 0 }], align 4
@rk3228_pm_domains = internal constant [11 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.33, i32 0, i32 0, i32 1, i32 65536, i32 1, i8 1, i32 0, i32 65536 }, %struct.rockchip_domain_info { ptr @.str.32, i32 0, i32 0, i32 2, i32 131072, i32 2, i8 1, i32 0, i32 131072 }, %struct.rockchip_domain_info { ptr @.str.39, i32 0, i32 0, i32 4, i32 262144, i32 4, i8 1, i32 0, i32 262144 }, %struct.rockchip_domain_info { ptr @.str.36, i32 0, i32 0, i32 8, i32 524288, i32 8, i8 1, i32 0, i32 524288 }, %struct.rockchip_domain_info { ptr @.str.35, i32 0, i32 0, i32 16, i32 1048576, i32 16, i8 0, i32 0, i32 1048576 }, %struct.rockchip_domain_info { ptr @.str.40, i32 0, i32 0, i32 32, i32 2097152, i32 32, i8 0, i32 0, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.28, i32 0, i32 0, i32 64, i32 4194304, i32 64, i8 0, i32 0, i32 4194304 }, %struct.rockchip_domain_info { ptr @.str.41, i32 0, i32 0, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 8388608 }, %struct.rockchip_domain_info { ptr @.str.31, i32 0, i32 0, i32 256, i32 16777216, i32 256, i8 0, i32 0, i32 16777216 }, %struct.rockchip_domain_info { ptr @.str.34, i32 0, i32 0, i32 512, i32 33554432, i32 512, i8 1, i32 0, i32 33554432 }, %struct.rockchip_domain_info { ptr @.str.26, i32 0, i32 0, i32 1024, i32 67108864, i32 1024, i8 0, i32 0, i32 67108864 }], align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"vop\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@rk3288_pm_domains = internal constant [14 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.35, i32 128, i32 128, i32 16, i32 16, i32 1048576, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.42, i32 16384, i32 1024, i32 512, i32 512, i32 33554432, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.37, i32 256, i32 256, i32 8, i32 8, i32 524288, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.31, i32 512, i32 512, i32 4, i32 4, i32 262144, i8 0, i32 0, i32 0 }], align 4
@.str.42 = private unnamed_addr constant [5 x i8] c"hevc\00", align 1
@rk3328_pm_domains = internal constant [10 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.33, i32 0, i32 0, i32 1, i32 1024, i32 1, i8 0, i32 0, i32 65536 }, %struct.rockchip_domain_info { ptr @.str.31, i32 0, i32 0, i32 2, i32 2048, i32 2, i8 0, i32 0, i32 131072 }, %struct.rockchip_domain_info { ptr @.str.39, i32 0, i32 0, i32 4, i32 4096, i32 4, i8 1, i32 0, i32 262144 }, %struct.rockchip_domain_info { ptr @.str.32, i32 0, i32 0, i32 8, i32 8192, i32 8, i8 1, i32 0, i32 524288 }, %struct.rockchip_domain_info { ptr @.str.34, i32 0, i32 0, i32 16, i32 16384, i32 16, i8 1, i32 0, i32 1048576 }, %struct.rockchip_domain_info { ptr @.str.37, i32 0, i32 0, i32 32, i32 32768, i32 32, i8 0, i32 0, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.42, i32 0, i32 0, i32 64, i32 65536, i32 64, i8 0, i32 0, i32 4194304 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.28, i32 0, i32 0, i32 512, i32 524288, i32 512, i8 0, i32 0, i32 33554432 }, %struct.rockchip_domain_info { ptr @.str.35, i32 0, i32 0, i32 256, i32 262144, i32 256, i8 0, i32 0, i32 16777216 }], align 4
@rk3366_pm_domains = internal constant [12 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.34, i32 1024, i32 1024, i32 64, i32 4194304, i32 64, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.35, i32 16384, i32 16384, i32 256, i32 16777216, i32 256, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.37, i32 8192, i32 8192, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.41, i32 2048, i32 2048, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.43, i32 256, i32 256, i32 512, i32 33554432, i32 512, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.28, i32 4096, i32 4096, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.31, i32 32768, i32 32768, i32 4, i32 262144, i32 4, i8 0, i32 0, i32 0 }], align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"wifibt\00", align 1
@rk3368_pm_domains = internal constant [17 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.34, i32 8192, i32 4096, i32 64, i32 4194304, i32 64, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.35, i32 32768, i32 16384, i32 256, i32 16777216, i32 256, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.37, i32 16384, i32 8192, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.44, i32 65536, i32 32768, i32 4, i32 262144, i32 4, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.45, i32 131072, i32 65536, i32 4, i32 262144, i32 4, i8 0, i32 0, i32 0 }], align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"gpu_0\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"gpu_1\00", align 1
@rk3399_pm_domains = internal constant [36 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.46, i32 256, i32 256, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.47, i32 512, i32 512, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.48, i32 1024, i32 1024, i32 0, i32 0, i32 0, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.49, i32 0, i32 0, i32 32768, i32 32768, i32 32768, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.50, i32 0, i32 0, i32 65536, i32 65536, i32 65536, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.51, i32 2048, i32 2048, i32 2, i32 2, i32 2, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.52, i32 4096, i32 4096, i32 4, i32 4, i32 4, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.35, i32 16384, i32 16384, i32 131072, i32 131072, i32 131072, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.29, i32 1048576, i32 1048576, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.53, i32 0, i32 0, i32 128, i32 128, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.54, i32 0, i32 0, i32 256, i32 256, i32 256, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.55, i32 4194304, i32 4194304, i32 512, i32 512, i32 512, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.56, i32 8388608, i32 8388608, i32 1024, i32 1024, i32 1024, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.57, i32 16777216, i32 16777216, i32 2048, i32 2048, i32 2048, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.26, i32 33554432, i32 33554432, i32 8388608, i32 8388608, i32 8388608, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.58, i32 67108864, i32 67108864, i32 16777216, i32 16777216, i32 16777216, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.59, i32 134217728, i32 134217728, i32 4096, i32 4096, i32 4096, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.60, i32 268435456, i32 268435456, i32 4194304, i32 4194304, i32 4194304, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.61, i32 536870912, i32 536870912, i32 134217728, i32 134217728, i32 134217728, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.62, i32 1073741824, i32 1073741824, i32 268435456, i32 268435456, i32 268435456, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.63, i32 -2147483648, i32 -2147483648, i32 536870912, i32 536870912, i32 536870912, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.64, i32 8192, i32 8192, i32 16384, i32 16384, i32 16384, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.65, i32 65536, i32 65536, i32 8, i32 8, i32 8, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.66, i32 131072, i32 131072, i32 16, i32 16, i32 16, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.67, i32 262144, i32 262144, i32 32, i32 32, i32 32, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.68, i32 524288, i32 524288, i32 64, i32 64, i32 64, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.31, i32 32768, i32 32768, i32 1, i32 1, i32 1, i8 0, i32 0, i32 0 }], align 4
@.str.46 = private unnamed_addr constant [6 x i8] c"tcpd0\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"tcpd1\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"cci\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"cci0\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"cci1\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"perilp\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"perihp\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"vopb\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"vopl\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"isp0\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"isp1\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"hdcp\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"edp\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"gic\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"sdioaudio\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"vcodec\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"vdu\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"rga\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"iep\00", align 1
@rk3568_pm_domains = internal constant [16 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.69, i32 2, i32 2, i32 4, i32 4, i32 4, i8 0, i32 131072, i32 262144 }, %struct.rockchip_domain_info { ptr @.str.31, i32 1, i32 1, i32 2, i32 2, i32 2, i8 0, i32 65536, i32 131072 }, %struct.rockchip_domain_info { ptr @.str.30, i32 64, i32 64, i32 8, i32 8, i32 8, i8 0, i32 4194304, i32 524288 }, %struct.rockchip_domain_info { ptr @.str.29, i32 128, i32 128, i32 16, i32 16, i32 16, i8 0, i32 8388608, i32 1048576 }, %struct.rockchip_domain_info { ptr @.str.67, i32 32, i32 32, i32 32, i32 32, i32 32, i8 0, i32 2097152, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.28, i32 4, i32 4, i32 64, i32 64, i32 64, i8 0, i32 262144, i32 4194304 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.41, i32 16, i32 16, i32 256, i32 256, i32 256, i8 0, i32 1048576, i32 16777216 }, %struct.rockchip_domain_info { ptr @.str.70, i32 8, i32 8, i32 128, i32 128, i32 128, i8 0, i32 524288, i32 8388608 }, %struct.rockchip_domain_info { ptr @.str.71, i32 256, i32 256, i32 2048, i32 2048, i32 2048, i8 0, i32 16777216, i32 134217728 }], align 4
@.str.69 = private unnamed_addr constant [4 x i8] c"npu\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pm_domains__162_1083_rockchip_pm_domain_drv_register2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_pm_domain_drv_register() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pm_domain_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pm_domain_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  br label %130

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @of_match_device(ptr noundef %11, ptr noundef %2) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  br label %130

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %16, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #8
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %25 = tail call i32 @llvm.uadd.sat.i32(i32 %24, i32 44) #8
  %26 = select i1 %23, i32 -1, i32 %25
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %26, i32 noundef 3520) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %130, label %29

29:                                               ; preds = %19
  store ptr %2, ptr %27, align 4
  %30 = getelementptr inbounds %struct.rockchip_pmu, ptr %27, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @rockchip_pm_domain_probe.__key) #8
  %31 = getelementptr inbounds %struct.rockchip_pmu, ptr %27, i32 0, i32 2
  store ptr %16, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rockchip_pmu, ptr %27, i32 0, i32 5
  %33 = getelementptr inbounds %struct.rockchip_pmu, ptr %27, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = load i32, ptr %20, align 4
  %35 = getelementptr inbounds %struct.rockchip_pmu, ptr %27, i32 0, i32 4, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  br label %130

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = tail call ptr @syscon_node_to_regmap(ptr noundef %42) #8
  %44 = getelementptr inbounds %struct.rockchip_pmu, ptr %27, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #9
  %47 = load ptr, ptr %44, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %130

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %16, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %16, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %55, i32 noundef %51) #8
  %57 = load ptr, ptr %44, align 4
  %58 = add i32 %55, 4
  %59 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %58, i32 noundef %51) #8
  br label %60

60:                                               ; preds = %53, %49
  %61 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %16, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %16, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %44, align 4
  %68 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef %62, i32 noundef %66) #8
  %69 = load ptr, ptr %44, align 4
  %70 = add i32 %62, 4
  %71 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef %70, i32 noundef %66) #8
  br label %72

72:                                               ; preds = %64, %60
  %73 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %4, ptr noundef null) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %84, %72
  %76 = phi ptr [ %85, %84 ], [ %73, %72 ]
  %77 = tail call fastcc i32 @rockchip_pm_add_one_domain(ptr noundef nonnull %27, ptr noundef nonnull %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %76, i32 noundef %77) #9
  tail call void @of_node_put(ptr noundef nonnull %76) #8
  br label %93

80:                                               ; preds = %75
  %81 = tail call fastcc i32 @rockchip_pm_add_subdomain(ptr noundef nonnull %27, ptr noundef nonnull %76)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %76, i32 noundef %81) #9
  tail call void @of_node_put(ptr noundef nonnull %76) #8
  br label %93

84:                                               ; preds = %80
  %85 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %4, ptr noundef nonnull %76) #8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %75

87:                                               ; preds = %84
  %88 = icmp eq i32 %81, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef nonnull %4, ptr noundef %33) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %130, label %92

92:                                               ; preds = %89
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %90) #9
  br label %93

93:                                               ; preds = %92, %87, %83, %79, %72
  %94 = phi i32 [ %77, %79 ], [ %81, %83 ], [ %81, %87 ], [ %90, %92 ], [ -19, %72 ]
  %95 = load i32, ptr %35, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %126, %93
  %98 = phi i32 [ %127, %126 ], [ %95, %93 ]
  %99 = phi i32 [ %128, %126 ], [ 0, %93 ]
  %100 = load ptr, ptr %33, align 4
  %101 = getelementptr ptr, ptr %100, i32 %99
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %97
  %105 = tail call i32 @pm_genpd_remove(ptr noundef nonnull %102) #8
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %102, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.generic_pm_domain, ptr %102, i32 0, i32 10
  %112 = load ptr, ptr %111, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.23, ptr noundef %112, i32 noundef %105) #9
  br label %113

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %102, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %102, i32 0, i32 7
  %117 = load ptr, ptr %116, align 8
  tail call void @clk_bulk_unprepare(i32 noundef %115, ptr noundef %117) #8
  %118 = load i32, ptr %114, align 4
  %119 = load ptr, ptr %116, align 8
  tail call void @clk_bulk_put(i32 noundef %118, ptr noundef %119) #8
  %120 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %102, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.rockchip_pmu, ptr %121, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %122) #8
  store i32 0, ptr %114, align 4
  %123 = load ptr, ptr %120, align 4
  %124 = getelementptr inbounds %struct.rockchip_pmu, ptr %123, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %124) #8
  %125 = load i32, ptr %35, align 4
  br label %126

126:                                              ; preds = %113, %97
  %127 = phi i32 [ %98, %97 ], [ %125, %113 ]
  %128 = add nuw i32 %99, 1
  %129 = icmp ult i32 %128, %127
  br i1 %129, label %97, label %130

130:                                              ; preds = %126, %93, %89, %46, %39, %19, %18, %6
  %131 = phi i32 [ %48, %46 ], [ -19, %39 ], [ -22, %18 ], [ -19, %6 ], [ -12, %19 ], [ 0, %89 ], [ %94, %93 ], [ %94, %126 ]
  ret i32 %131
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pm_add_one_domain(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %5) #9
  br label %208

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds %struct.rockchip_pmu, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %12, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef %1, i32 noundef %10) #9
  br label %208

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %12, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.rockchip_domain_info, ptr %20, i32 %10
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %0, align 4
  br i1 %22, label %24, label %25

24:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, ptr noundef %1, i32 noundef %10) #9
  br label %208

25:                                               ; preds = %18
  %26 = call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 848, i32 noundef 3520) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %208, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 1
  store ptr %21, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 2
  store ptr %0, ptr %30, align 4
  %31 = call i32 @of_clk_get_parent_count(ptr noundef %1) #8
  %32 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = icmp sgt i32 %31, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 8) #8
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %37, label %39, !prof !9

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 7
  store ptr null, ptr %38, align 8
  br label %208

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 4
  %41 = extractvalue { i32, i1 } %35, 0
  %42 = call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef %41, i32 noundef 3520) #8
  %43 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 7
  store ptr %42, ptr %43, align 8
  %44 = icmp eq ptr %42, null
  br i1 %44, label %208, label %46

45:                                               ; preds = %28
  store i32 0, ptr %32, align 4
  br label %49

46:                                               ; preds = %39
  %47 = load i32, ptr %32, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 7
  %52 = load ptr, ptr %51, align 8
  br label %71

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 7
  br label %55

55:                                               ; preds = %67, %53
  %56 = phi i32 [ 0, %53 ], [ %68, %67 ]
  %57 = call ptr @of_clk_get(ptr noundef %1, i32 noundef %56) #8
  %58 = load ptr, ptr %54, align 8
  %59 = getelementptr %struct.clk_bulk_data, ptr %58, i32 %56, i32 1
  store ptr %57, ptr %59, align 4
  %60 = load ptr, ptr %54, align 8
  %61 = getelementptr %struct.clk_bulk_data, ptr %60, i32 %56, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = ptrtoint ptr %62 to i32
  %66 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef %56, i32 noundef %65) #9
  br label %208

67:                                               ; preds = %55
  %68 = add nuw nsw i32 %56, 1
  %69 = load i32, ptr %32, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %55, label %71

71:                                               ; preds = %67, %49
  %72 = phi ptr [ %52, %49 ], [ %60, %67 ]
  %73 = phi i32 [ %50, %49 ], [ %69, %67 ]
  %74 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 7
  %75 = call i32 @clk_bulk_prepare(i32 noundef %73, ptr noundef %72) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %204

77:                                               ; preds = %71
  %78 = call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null) #8
  %79 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 3
  store i32 %78, ptr %79, align 8
  %80 = icmp sgt i32 %78, 0
  br i1 %80, label %81, label %167

81:                                               ; preds = %77
  %82 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #8
  %83 = extractvalue { i32, i1 } %82, 1
  br i1 %83, label %84, label %86, !prof !9

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 4
  store ptr null, ptr %85, align 4
  br label %200

86:                                               ; preds = %81
  %87 = load ptr, ptr %0, align 4
  %88 = extractvalue { i32, i1 } %82, 0
  %89 = call noalias ptr @devm_kmalloc(ptr noundef %87, i32 noundef %88, i32 noundef 3520) #8
  %90 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %26, i32 0, i32 4
  store ptr %89, ptr %90, align 4
  %91 = icmp eq ptr %89, null
  br i1 %91, label %200, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %79, align 8
  %94 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 4) #8
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %96, label %99, !prof !9

96:                                               ; preds = %135, %125, %115, %105, %92
  %97 = phi i32 [ 0, %92 ], [ 1, %105 ], [ 2, %115 ], [ 3, %125 ], [ 4, %135 ]
  %98 = getelementptr %struct.rockchip_pm_domain, ptr %26, i32 0, i32 5, i32 %97
  store ptr null, ptr %98, align 4
  br label %200

99:                                               ; preds = %92
  %100 = load ptr, ptr %0, align 4
  %101 = extractvalue { i32, i1 } %94, 0
  %102 = call noalias ptr @devm_kmalloc(ptr noundef %100, i32 noundef %101, i32 noundef 3520) #8
  %103 = getelementptr %struct.rockchip_pm_domain, ptr %26, i32 0, i32 5, i32 0
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %200, label %105

105:                                              ; preds = %99
  %106 = load i32, ptr %79, align 8
  %107 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %106, i32 4) #8
  %108 = extractvalue { i32, i1 } %107, 1
  br i1 %108, label %96, label %109, !prof !9

109:                                              ; preds = %105
  %110 = load ptr, ptr %0, align 4
  %111 = extractvalue { i32, i1 } %107, 0
  %112 = call noalias ptr @devm_kmalloc(ptr noundef %110, i32 noundef %111, i32 noundef 3520) #8
  %113 = getelementptr %struct.rockchip_pm_domain, ptr %26, i32 0, i32 5, i32 1
  store ptr %112, ptr %113, align 4
  %114 = icmp eq ptr %112, null
  br i1 %114, label %200, label %115

115:                                              ; preds = %109
  %116 = load i32, ptr %79, align 8
  %117 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %116, i32 4) #8
  %118 = extractvalue { i32, i1 } %117, 1
  br i1 %118, label %96, label %119, !prof !9

119:                                              ; preds = %115
  %120 = load ptr, ptr %0, align 4
  %121 = extractvalue { i32, i1 } %117, 0
  %122 = call noalias ptr @devm_kmalloc(ptr noundef %120, i32 noundef %121, i32 noundef 3520) #8
  %123 = getelementptr %struct.rockchip_pm_domain, ptr %26, i32 0, i32 5, i32 2
  store ptr %122, ptr %123, align 4
  %124 = icmp eq ptr %122, null
  br i1 %124, label %200, label %125

125:                                              ; preds = %119
  %126 = load i32, ptr %79, align 8
  %127 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %126, i32 4) #8
  %128 = extractvalue { i32, i1 } %127, 1
  br i1 %128, label %96, label %129, !prof !9

129:                                              ; preds = %125
  %130 = load ptr, ptr %0, align 4
  %131 = extractvalue { i32, i1 } %127, 0
  %132 = call noalias ptr @devm_kmalloc(ptr noundef %130, i32 noundef %131, i32 noundef 3520) #8
  %133 = getelementptr %struct.rockchip_pm_domain, ptr %26, i32 0, i32 5, i32 3
  store ptr %132, ptr %133, align 4
  %134 = icmp eq ptr %132, null
  br i1 %134, label %200, label %135

135:                                              ; preds = %129
  %136 = load i32, ptr %79, align 8
  %137 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %136, i32 4) #8
  %138 = extractvalue { i32, i1 } %137, 1
  br i1 %138, label %96, label %139, !prof !9

139:                                              ; preds = %135
  %140 = load ptr, ptr %0, align 4
  %141 = extractvalue { i32, i1 } %137, 0
  %142 = call noalias ptr @devm_kmalloc(ptr noundef %140, i32 noundef %141, i32 noundef 3520) #8
  %143 = getelementptr %struct.rockchip_pm_domain, ptr %26, i32 0, i32 5, i32 4
  store ptr %142, ptr %143, align 4
  %144 = icmp eq ptr %142, null
  br i1 %144, label %200, label %145

145:                                              ; preds = %139
  %146 = load i32, ptr %79, align 8
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %163, %145
  %149 = phi i32 [ %164, %163 ], [ 0, %145 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %150 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef %149, ptr noundef nonnull %3) #8
  %151 = icmp ne i32 %150, 0
  %152 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %153 = icmp eq ptr %152, null
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %200, label %155

155:                                              ; preds = %148
  %156 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %152) #8
  %157 = load ptr, ptr %90, align 4
  %158 = getelementptr ptr, ptr %157, i32 %149
  store ptr %156, ptr %158, align 4
  %159 = load ptr, ptr %90, align 4
  %160 = getelementptr ptr, ptr %159, i32 %149
  %161 = load ptr, ptr %160, align 4
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  call void @of_node_put(ptr noundef nonnull %152) #8
  br i1 %162, label %200, label %163

163:                                              ; preds = %155
  %164 = add nuw nsw i32 %149, 1
  %165 = load i32, ptr %79, align 8
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %148, label %167

167:                                              ; preds = %163, %145, %77
  %168 = call fastcc i32 @rockchip_pd_power(ptr noundef nonnull %26, i1 noundef zeroext true)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef %168) #9
  br label %200

172:                                              ; preds = %167
  %173 = load ptr, ptr %29, align 8
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  %179 = call ptr @strrchr(ptr noundef %178, i32 noundef 47) #8
  %180 = icmp eq ptr %179, null
  %181 = getelementptr i8, ptr %179, i32 1
  %182 = select i1 %180, ptr %178, ptr %181
  br label %183

183:                                              ; preds = %176, %172
  %184 = phi ptr [ %182, %176 ], [ %174, %172 ]
  %185 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 10
  store ptr %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 18
  store ptr @rockchip_pd_power_off, ptr %186, align 4
  %187 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 19
  store ptr @rockchip_pd_power_on, ptr %187, align 8
  %188 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 30
  store ptr @rockchip_pd_attach_dev, ptr %188, align 4
  %189 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 31
  store ptr @rockchip_pd_detach_dev, ptr %189, align 8
  %190 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 32
  store i32 1, ptr %190, align 4
  %191 = getelementptr %struct.rockchip_domain_info, ptr %20, i32 %10, i32 6
  %192 = load i8, ptr %191, align 4, !range !10
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %193, i32 1, i32 9
  store i32 %194, ptr %190, align 4
  %195 = call i32 @pm_genpd_init(ptr noundef nonnull %26, ptr noundef null, i1 noundef zeroext false) #8
  %196 = getelementptr inbounds %struct.rockchip_pmu, ptr %0, i32 0, i32 4
  %197 = load ptr, ptr %196, align 4
  %198 = load i32, ptr %4, align 4
  %199 = getelementptr ptr, ptr %197, i32 %198
  store ptr %26, ptr %199, align 4
  br label %208

200:                                              ; preds = %170, %155, %148, %139, %129, %119, %109, %99, %96, %86, %84
  %201 = phi i32 [ %168, %170 ], [ -12, %86 ], [ -12, %84 ], [ -12, %96 ], [ -12, %139 ], [ -12, %129 ], [ -12, %119 ], [ -12, %109 ], [ -12, %99 ], [ -19, %155 ], [ -19, %148 ]
  %202 = load i32, ptr %32, align 4
  %203 = load ptr, ptr %74, align 8
  call void @clk_bulk_unprepare(i32 noundef %202, ptr noundef %203) #8
  br label %204

204:                                              ; preds = %200, %71
  %205 = phi i32 [ %75, %71 ], [ %201, %200 ]
  %206 = load i32, ptr %32, align 4
  %207 = load ptr, ptr %74, align 8
  call void @clk_bulk_put(i32 noundef %206, ptr noundef %207) #8
  br label %208

208:                                              ; preds = %204, %183, %64, %39, %37, %25, %24, %16, %7
  %209 = phi i32 [ -22, %7 ], [ -22, %16 ], [ %65, %64 ], [ %205, %204 ], [ 0, %183 ], [ -22, %24 ], [ -12, %25 ], [ -12, %39 ], [ -12, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %209
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pm_add_subdomain(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rockchip_pmu, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %41, %6
  %9 = phi ptr [ %4, %6 ], [ %43, %41 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %10) #9
  br label %45

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 4
  %16 = load i32, ptr %3, align 4
  %17 = getelementptr ptr, ptr %15, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = call fastcc i32 @rockchip_pm_add_one_domain(ptr noundef %0, ptr noundef nonnull %9)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef nonnull %9, i32 noundef %19) #9
  br label %45

23:                                               ; preds = %14
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.10, ptr noundef nonnull %9, i32 noundef %24) #9
  br label %45

28:                                               ; preds = %23
  %29 = load ptr, ptr %7, align 4
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr ptr, ptr %29, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @pm_genpd_add_subdomain(ptr noundef %18, ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.generic_pm_domain, ptr %18, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.generic_pm_domain, ptr %32, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.22, ptr noundef %38, ptr noundef %40, i32 noundef %33) #9
  br label %45

41:                                               ; preds = %28
  %42 = call fastcc i32 @rockchip_pm_add_subdomain(ptr noundef %0, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %43 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %9) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %8

45:                                               ; preds = %35, %26, %21, %12
  %46 = phi i32 [ %33, %35 ], [ %24, %26 ], [ %19, %21 ], [ %10, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @of_node_put(ptr noundef nonnull %9) #8
  br label %47

47:                                               ; preds = %45, %41, %2
  %48 = phi i32 [ %46, %45 ], [ 0, %2 ], [ 0, %41 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pd_power(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rockchip_pmu, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rockchip_domain_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.rockchip_pmu, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rockchip_pmu, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %16, i32 noundef %20, ptr noundef nonnull %3) #8
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr inbounds %struct.rockchip_domain_info, ptr %10, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = icmp ne i32 %25, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %41

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rockchip_pmu, ptr %8, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rockchip_pmu, ptr %8, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @regmap_read(ptr noundef %29, i32 noundef %33, ptr noundef nonnull %4) #8
  %35 = load i32, ptr %4, align 4
  %36 = load ptr, ptr %9, align 8
  %37 = getelementptr inbounds %struct.rockchip_domain_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %35
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %27, %14
  %42 = phi i1 [ %26, %14 ], [ %40, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %43 = xor i1 %42, %1
  br i1 %43, label %44, label %155

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = call i32 @clk_bulk_enable(i32 noundef %46, ptr noundef %48) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.16) #9
  br label %155

53:                                               ; preds = %44
  br i1 %1, label %101, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 4
  %60 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5
  %61 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 1
  %62 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 2
  %63 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 3
  %64 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 4
  br label %65

65:                                               ; preds = %65, %58
  %66 = phi i32 [ 0, %58 ], [ %97, %65 ]
  %67 = load ptr, ptr %59, align 4
  %68 = getelementptr ptr, ptr %67, i32 %66
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %60, align 8
  %71 = getelementptr i32, ptr %70, i32 %66
  %72 = call i32 @regmap_read(ptr noundef %69, i32 noundef 8, ptr noundef %71) #8
  %73 = load ptr, ptr %59, align 4
  %74 = getelementptr ptr, ptr %73, i32 %66
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %61, align 4
  %77 = getelementptr i32, ptr %76, i32 %66
  %78 = call i32 @regmap_read(ptr noundef %75, i32 noundef 12, ptr noundef %77) #8
  %79 = load ptr, ptr %59, align 4
  %80 = getelementptr ptr, ptr %79, i32 %66
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %62, align 8
  %83 = getelementptr i32, ptr %82, i32 %66
  %84 = call i32 @regmap_read(ptr noundef %81, i32 noundef 16, ptr noundef %83) #8
  %85 = load ptr, ptr %59, align 4
  %86 = getelementptr ptr, ptr %85, i32 %66
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %63, align 4
  %89 = getelementptr i32, ptr %88, i32 %66
  %90 = call i32 @regmap_read(ptr noundef %87, i32 noundef 20, ptr noundef %89) #8
  %91 = load ptr, ptr %59, align 4
  %92 = getelementptr ptr, ptr %91, i32 %66
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %64, align 8
  %95 = getelementptr i32, ptr %94, i32 %66
  %96 = call i32 @regmap_read(ptr noundef %93, i32 noundef 24, ptr noundef %95) #8
  %97 = add nuw nsw i32 %66, 1
  %98 = load i32, ptr %55, align 8
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %65, label %100

100:                                              ; preds = %65, %54
  call fastcc void @rockchip_pmu_set_idle_request(ptr noundef %0, i1 noundef zeroext true)
  call fastcc void @rockchip_do_pmu_set_power_domain(ptr noundef %0, i1 noundef zeroext false)
  br label %152

101:                                              ; preds = %53
  call fastcc void @rockchip_do_pmu_set_power_domain(ptr noundef %0, i1 noundef zeroext true)
  call fastcc void @rockchip_pmu_set_idle_request(ptr noundef %0, i1 noundef zeroext false)
  %102 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 3
  %103 = load i32, ptr %102, align 8
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 4
  %107 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5
  %108 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 1
  %109 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 2
  %110 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 3
  %111 = getelementptr %struct.rockchip_pm_domain, ptr %0, i32 0, i32 5, i32 4
  br label %112

112:                                              ; preds = %112, %105
  %113 = phi i32 [ 0, %105 ], [ %149, %112 ]
  %114 = load ptr, ptr %106, align 4
  %115 = getelementptr ptr, ptr %114, i32 %113
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %107, align 8
  %118 = getelementptr i32, ptr %117, i32 %113
  %119 = load i32, ptr %118, align 4
  %120 = call i32 @regmap_write(ptr noundef %116, i32 noundef 8, i32 noundef %119) #8
  %121 = load ptr, ptr %106, align 4
  %122 = getelementptr ptr, ptr %121, i32 %113
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %108, align 4
  %125 = getelementptr i32, ptr %124, i32 %113
  %126 = load i32, ptr %125, align 4
  %127 = call i32 @regmap_write(ptr noundef %123, i32 noundef 12, i32 noundef %126) #8
  %128 = load ptr, ptr %106, align 4
  %129 = getelementptr ptr, ptr %128, i32 %113
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %109, align 8
  %132 = getelementptr i32, ptr %131, i32 %113
  %133 = load i32, ptr %132, align 4
  %134 = call i32 @regmap_write(ptr noundef %130, i32 noundef 16, i32 noundef %133) #8
  %135 = load ptr, ptr %106, align 4
  %136 = getelementptr ptr, ptr %135, i32 %113
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %110, align 4
  %139 = getelementptr i32, ptr %138, i32 %113
  %140 = load i32, ptr %139, align 4
  %141 = call i32 @regmap_write(ptr noundef %137, i32 noundef 20, i32 noundef %140) #8
  %142 = load ptr, ptr %106, align 4
  %143 = getelementptr ptr, ptr %142, i32 %113
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %111, align 8
  %146 = getelementptr i32, ptr %145, i32 %113
  %147 = load i32, ptr %146, align 4
  %148 = call i32 @regmap_write(ptr noundef %144, i32 noundef 24, i32 noundef %147) #8
  %149 = add nuw nsw i32 %113, 1
  %150 = load i32, ptr %102, align 8
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %112, label %152

152:                                              ; preds = %112, %101, %100
  %153 = load i32, ptr %45, align 4
  %154 = load ptr, ptr %47, align 8
  call void @clk_bulk_disable(i32 noundef %153, ptr noundef %154) #8
  br label %155

155:                                              ; preds = %152, %51, %41
  %156 = phi i32 [ %49, %51 ], [ 0, %152 ], [ 0, %41 ]
  call void @mutex_unlock(ptr noundef %7) #8
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pd_power_off(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @rockchip_pd_power(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pd_power_on(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @rockchip_pd_power(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_pd_attach_dev(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 @pm_clk_create(ptr noundef %1) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  br label %8

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %3) #9
  br label %20

8:                                                ; preds = %15, %5
  %9 = phi i32 [ %16, %15 ], [ 0, %5 ]
  %10 = load ptr, ptr %6, align 8
  %11 = tail call ptr @of_clk_get(ptr noundef %10, i32 noundef %9) #8
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = add i32 %9, 1
  %17 = tail call i32 @pm_clk_add_clk(ptr noundef %1, ptr noundef nonnull %11) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %8, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %17) #9
  tail call void @clk_put(ptr noundef nonnull %11) #8
  tail call void @pm_clk_destroy(ptr noundef %1) #8
  br label %20

20:                                               ; preds = %19, %8, %7
  %21 = phi i32 [ %3, %7 ], [ %17, %19 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_pd_detach_dev(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @pm_clk_destroy(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rockchip_pmu_set_idle_request(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_domain_info, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %117, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rockchip_domain_info, ptr %8, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.rockchip_pmu, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rockchip_pmu, ptr %10, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  br i1 %17, label %28, label %24

24:                                               ; preds = %14
  %25 = select i1 %1, i32 %12, i32 0
  %26 = or i32 %16, %25
  %27 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %23, i32 noundef %26) #8
  br label %31

28:                                               ; preds = %14
  %29 = sext i1 %1 to i32
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %23, i32 noundef %12, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %31

31:                                               ; preds = %28, %24
  tail call void asm sideeffect "dsb sy", "~{memory}"() #8, !srcloc !11
  br i1 %1, label %32, label %35

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.rockchip_domain_info, ptr %8, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ %34, %32 ], [ 0, %31 ]
  %37 = tail call i64 @ktime_get() #8
  %38 = add i64 %37, 10000000
  %39 = getelementptr inbounds %struct.rockchip_pmu, ptr %10, i32 0, i32 1
  %40 = getelementptr inbounds %struct.rockchip_pmu, ptr %10, i32 0, i32 2
  %41 = getelementptr inbounds %struct.rockchip_domain_info, ptr %8, i32 0, i32 5
  br label %42

42:                                               ; preds = %52, %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %43 = load ptr, ptr %39, align 4
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @regmap_read(ptr noundef %43, i32 noundef %46, ptr noundef nonnull %6) #8
  %48 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %49 = load i32, ptr %41, align 4
  %50 = and i32 %49, %48
  %51 = icmp eq i32 %50, %36
  br i1 %51, label %64, label %52

52:                                               ; preds = %42
  %53 = call i64 @ktime_get() #8
  %54 = icmp sgt i64 %53, %38
  br i1 %54, label %55, label %42

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %56 = load ptr, ptr %39, align 4
  %57 = load ptr, ptr %40, align 4
  %58 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = call i32 @regmap_read(ptr noundef %56, i32 noundef %59, ptr noundef nonnull %5) #8
  %61 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %62 = load i32, ptr %41, align 4
  %63 = and i32 %62, %61
  br label %64

64:                                               ; preds = %55, %42
  %65 = phi i32 [ %63, %55 ], [ %50, %42 ]
  %66 = phi i32 [ %61, %55 ], [ %48, %42 ]
  %67 = icmp eq i32 %65, %36
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %10, align 4
  %70 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %71 = load ptr, ptr %70, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.17, ptr noundef %71, i32 noundef %66) #9
  br label %117

72:                                               ; preds = %64
  %73 = call i64 @ktime_get() #8
  %74 = add i64 %73, 10000000
  br label %75

75:                                               ; preds = %91, %72
  %76 = load ptr, ptr %9, align 4
  %77 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %78 = getelementptr inbounds %struct.rockchip_pmu, ptr %76, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.rockchip_pmu, ptr %76, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %81, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @regmap_read(ptr noundef %79, i32 noundef %83, ptr noundef nonnull %4) #8
  %85 = load i32, ptr %4, align 4
  %86 = getelementptr inbounds %struct.rockchip_domain_info, ptr %77, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %90 = xor i1 %89, %1
  br i1 %90, label %91, label %109

91:                                               ; preds = %75
  %92 = call i64 @ktime_get() #8
  %93 = icmp sgt i64 %92, %74
  br i1 %93, label %94, label %75

94:                                               ; preds = %91
  %95 = load ptr, ptr %9, align 4
  %96 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %97 = getelementptr inbounds %struct.rockchip_pmu, ptr %95, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.rockchip_pmu, ptr %95, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %100, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = call i32 @regmap_read(ptr noundef %98, i32 noundef %102, ptr noundef nonnull %3) #8
  %104 = load i32, ptr %3, align 4
  %105 = getelementptr inbounds %struct.rockchip_domain_info, ptr %96, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %109

109:                                              ; preds = %94, %75
  %110 = phi i1 [ %108, %94 ], [ %89, %75 ]
  %111 = xor i1 %110, %1
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = zext i1 %110 to i32
  %114 = load ptr, ptr %10, align 4
  %115 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %116 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.18, ptr noundef %116, i32 noundef %113) #9
  br label %117

117:                                              ; preds = %112, %109, %68, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rockchip_do_pmu_set_power_domain(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rockchip_domain_info, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %116, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rockchip_domain_info, ptr %10, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.rockchip_pmu, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rockchip_pmu, ptr %8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  br i1 %17, label %27, label %23

23:                                               ; preds = %14
  %24 = select i1 %1, i32 0, i32 %12
  %25 = or i32 %16, %24
  %26 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %22, i32 noundef %25) #8
  br label %31

27:                                               ; preds = %14
  %28 = xor i1 %1, true
  %29 = sext i1 %28 to i32
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %22, i32 noundef %12, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %31

31:                                               ; preds = %27, %23
  tail call void asm sideeffect "dsb sy", "~{memory}"() #8, !srcloc !12
  %32 = tail call i64 @ktime_get() #8
  %33 = add i64 %32, 10000000
  br label %34

34:                                               ; preds = %70, %31
  %35 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %36 = load ptr, ptr %9, align 8
  %37 = getelementptr inbounds %struct.rockchip_domain_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %41 = getelementptr inbounds %struct.rockchip_pmu, ptr %35, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rockchip_pmu, ptr %35, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @regmap_read(ptr noundef %42, i32 noundef %46, ptr noundef nonnull %5) #8
  %48 = load i32, ptr %5, align 4
  %49 = getelementptr inbounds %struct.rockchip_domain_info, ptr %36, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, %48
  %52 = icmp ne i32 %51, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %67

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.rockchip_pmu, ptr %35, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rockchip_pmu, ptr %35, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = call i32 @regmap_read(ptr noundef %55, i32 noundef %59, ptr noundef nonnull %6) #8
  %61 = load i32, ptr %6, align 4
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds %struct.rockchip_domain_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %53, %40
  %68 = phi i1 [ %52, %40 ], [ %66, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %69 = xor i1 %68, %1
  br i1 %69, label %70, label %108

70:                                               ; preds = %67
  %71 = call i64 @ktime_get() #8
  %72 = icmp sgt i64 %71, %33
  br i1 %72, label %73, label %34

73:                                               ; preds = %70
  %74 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %75 = load ptr, ptr %9, align 8
  %76 = getelementptr inbounds %struct.rockchip_domain_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %80 = getelementptr inbounds %struct.rockchip_pmu, ptr %74, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.rockchip_pmu, ptr %74, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = call i32 @regmap_read(ptr noundef %81, i32 noundef %85, ptr noundef nonnull %3) #8
  %87 = load i32, ptr %3, align 4
  %88 = getelementptr inbounds %struct.rockchip_domain_info, ptr %75, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, %87
  %91 = icmp ne i32 %90, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %106

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.rockchip_pmu, ptr %74, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.rockchip_pmu, ptr %74, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = call i32 @regmap_read(ptr noundef %94, i32 noundef %98, ptr noundef nonnull %4) #8
  %100 = load i32, ptr %4, align 4
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr inbounds %struct.rockchip_domain_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, %100
  %105 = icmp eq i32 %104, 0
  br label %106

106:                                              ; preds = %92, %79
  %107 = phi i1 [ %91, %79 ], [ %105, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %108

108:                                              ; preds = %106, %67
  %109 = phi i1 [ %107, %106 ], [ %68, %67 ]
  %110 = xor i1 %109, %1
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = zext i1 %109 to i32
  %113 = load ptr, ptr %8, align 4
  %114 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %115 = load ptr, ptr %114, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.19, ptr noundef %115, i32 noundef %112) #9
  br label %116

116:                                              ; preds = %111, %108, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151508431}
!12 = !{i64 2151513822}
