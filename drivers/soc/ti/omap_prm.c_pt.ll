; ModuleID = '/llk/IR/drivers/soc/ti/omap_prm.c_pt.bc'
source_filename = "../drivers/soc/ti/omap_prm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.omap_rst_map = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_prm_data = type { i32, ptr, ptr, i16, i16, ptr, i16, i16, ptr, i8 }
%struct.omap_prm_domain_map = type { i32, i8 }
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
%struct.omap_prm = type { ptr, ptr, ptr }
%struct.omap_prm_domain = type { ptr, ptr, %struct.generic_pm_domain, i16, i16, ptr, i32, i8 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.ti_prm_platform_data = type { ptr, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.omap_reset_data = type { %struct.reset_controller_dev, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain_data = type { %struct.pm_domain_data, %struct.gpd_timing_data, %struct.notifier_block, ptr, i32, i32, i32, i32, i64, ptr }
%struct.pm_domain_data = type { %struct.list_head, ptr }
%struct.gpd_timing_data = type { i64, i64, i64, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_omap_prm__162_997_omap_prm_driver_init6 = internal global ptr @omap_prm_driver_init, section ".initcall6.init", align 4
@omap_prm_driver = internal global %struct.platform_driver { ptr @omap_prm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_prm_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"omap_prm\00", align 1
@omap_prm_id_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4_prm_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"prm_%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: %s timed out\0A\00", align 1
@__func__.omap_prm_domain_power_on = private unnamed_addr constant [25 x i8] c"omap_prm_domain_power_on\00", align 1
@__func__.omap_prm_domain_power_off = private unnamed_addr constant [26 x i8] c"omap_prm_domain_power_off\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%s: unusupported #power-domain-cells: %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"simple-pm-bus\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@omap_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @omap_reset_assert, ptr @omap_reset_deassert, ptr @omap_reset_status }, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"%s_clkdm\00", align 1
@rst_map_012 = internal constant [4 x %struct.omap_rst_map] [%struct.omap_rst_map zeroinitializer, %struct.omap_rst_map { i8 1, i8 1 }, %struct.omap_rst_map { i8 2, i8 2 }, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"\013%s: timedout waiting for %s:%lu\0A\00", align 1
@__func__.omap_reset_deassert = private unnamed_addr constant [20 x i8] c"omap_reset_deassert\00", align 1
@omap4_prm_data = internal constant [16 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1244685056, ptr @.str.14, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244685312, ptr @.str.15, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1244685568, ptr @.str.16, ptr null, i16 0, i16 4, ptr @omap_prm_all, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244685824, ptr @.str.17, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244686080, ptr @.str.18, ptr @.str.19, i16 0, i16 4, ptr @omap_prm_reton, i16 528, i16 532, ptr @rst_map_012, i8 8 }, %struct.omap_prm_data { i32 1244688128, ptr @.str.20, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1244688384, ptr @.str.21, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244688640, ptr @.str.22, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244688896, ptr @.str.23, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244689152, ptr @.str.24, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244689408, ptr @.str.25, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 8 }, %struct.omap_prm_data { i32 1244689920, ptr @.str.26, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244690176, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244690688, ptr @.str.28, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244691200, ptr @.str.29, ptr null, i16 0, i16 0, ptr null, i16 0, i16 4, ptr @rst_map_01, i8 5 }, %struct.omap_prm_data zeroinitializer], align 4
@omap5_prm_data = internal constant [15 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1256219392, ptr @.str.14, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256219648, ptr @.str.30, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256219904, ptr @.str.16, ptr null, i16 0, i16 4, ptr @omap_prm_nooff, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256220160, ptr @.str.31, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256220416, ptr @.str.18, ptr @.str.32, i16 0, i16 4, ptr @omap_prm_reton, i16 528, i16 532, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256223232, ptr @.str.33, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256223488, ptr @.str.21, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256223744, ptr @.str.22, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224000, ptr @.str.34, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224256, ptr @.str.24, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224512, ptr @.str.35, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224768, ptr @.str.36, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225280, ptr @.str.28, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225792, ptr @.str.29, ptr null, i16 0, i16 0, ptr null, i16 0, i16 4, ptr @rst_map_01, i8 5 }, %struct.omap_prm_data zeroinitializer], align 4
@dra7_prm_data = internal constant [22 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1256219392, ptr @.str.14, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256219648, ptr @.str.37, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256219904, ptr @.str.32, ptr @.str.38, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256220200, ptr @.str.31, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256220416, ptr @.str.18, ptr @.str.39, i16 0, i16 4, ptr @omap_prm_alwon, i16 528, i16 532, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256222464, ptr @.str.33, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256222720, ptr @.str.21, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256222976, ptr @.str.22, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256223232, ptr @.str.34, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256223488, ptr @.str.24, ptr @.str.40, i16 0, i16 4, ptr @omap_prm_alwon, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256223744, ptr @.str.25, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224256, ptr @.str.35, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224548, ptr @.str.36, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225024, ptr @.str.28, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225536, ptr @.str.41, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225600, ptr @.str.42, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225664, ptr @.str.43, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225728, ptr @.str.44, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225792, ptr @.str.45, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225888, ptr @.str.46, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225920, ptr @.str.47, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data zeroinitializer], align 4
@am3_prm_data = internal constant [8 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1155533824, ptr @.str.48, ptr @.str.49, i16 12, i16 8, ptr @omap_prm_noinact, i16 0, i16 0, ptr @am3_per_rst_map, i8 1 }, %struct.omap_prm_data { i32 1155534080, ptr @.str.27, ptr null, i16 4, i16 4, ptr @omap_prm_alwon, i16 0, i16 12, ptr @am3_wkup_rst_map, i8 5 }, %struct.omap_prm_data { i32 1155534336, ptr @.str.14, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155534592, ptr @.str.29, ptr null, i16 0, i16 0, ptr null, i16 0, i16 8, ptr @rst_map_01, i8 5 }, %struct.omap_prm_data { i32 1155534848, ptr @.str.46, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155535104, ptr @.str.23, ptr @.str.50, i16 0, i16 16, ptr @omap_prm_noinact, i16 4, i16 20, ptr @rst_map_0, i8 0 }, %struct.omap_prm_data { i32 1155535360, ptr @.str.26, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data zeroinitializer], align 4
@am4_prm_data = internal constant [9 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1155465984, ptr @.str.14, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155466240, ptr @.str.23, ptr @.str.50, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_0, i8 0 }, %struct.omap_prm_data { i32 1155466496, ptr @.str.46, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155466752, ptr @.str.51, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155467008, ptr @.str.26, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155467264, ptr @.str.48, ptr @.str.49, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @am4_per_rst_map, i8 0 }, %struct.omap_prm_data { i32 1155473408, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 16, i16 20, ptr @am3_wkup_rst_map, i8 4 }, %struct.omap_prm_data { i32 1155481600, ptr @.str.29, ptr null, i16 0, i16 0, ptr null, i16 0, i16 4, ptr @am4_device_rst_map, i8 5 }, %struct.omap_prm_data zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap_prm_reton = internal constant %struct.omap_prm_domain_map { i32 10, i8 3 }, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"tesla\00", align 1
@omap_prm_noinact = internal constant %struct.omap_prm_domain_map { i32 11, i8 3 }, align 4
@rst_map_01 = internal constant [3 x %struct.omap_rst_map] [%struct.omap_rst_map zeroinitializer, %struct.omap_rst_map { i8 1, i8 1 }, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"abe\00", align 1
@omap_prm_all = internal constant %struct.omap_prm_domain_map { i32 15, i8 3 }, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"always_on_core\00", align 1
@omap_prm_alwon = internal constant %struct.omap_prm_domain_map { i32 8, i8 0 }, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ducati\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ivahd\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"cam\00", align 1
@omap_prm_onoff_noauto = internal constant %struct.omap_prm_domain_map { i32 9, i8 1 }, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"dss\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"l3init\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"l4per\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"cefuse\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"wkup\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"emu\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"dsp\00", align 1
@omap_prm_nooff = internal constant %struct.omap_prm_domain_map { i32 14, i8 3 }, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"coreaon\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ipu\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"custefuse\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"wkupaon\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"dsp1\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"ipu1\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"ipu2\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"dsp2\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"eve1\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"eve2\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"eve3\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"eve4\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"vpe\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"pruss_ocp\00", align 1
@am3_per_rst_map = internal constant [2 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 1, i8 0 }, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@am3_wkup_rst_map = internal constant [2 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 3, i8 5 }, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"gfx_l3\00", align 1
@rst_map_0 = internal constant [2 x %struct.omap_rst_map] [%struct.omap_rst_map zeroinitializer, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"tamper\00", align 1
@am4_per_rst_map = internal constant [2 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 1, i8 0 }, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@am4_device_rst_map = internal constant [3 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 0, i8 1 }, %struct.omap_rst_map { i8 1, i8 0 }, %struct.omap_rst_map { i8 -1, i8 0 }], align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_omap_prm__162_997_omap_prm_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_prm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_prm_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_prm_probe(ptr noundef %0) #2 {
  %2 = alloca [32 x i8], align 1
  %3 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %185, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @omap_prm_id_table, ptr noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %185, label %9

9:                                                ; preds = %5
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 12, i32 noundef 3520) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %185, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr %14, align 4
  %17 = icmp eq i32 %16, %15
  br i1 %17, label %26, label %18

18:                                               ; preds = %22, %12
  %19 = phi i32 [ %24, %22 ], [ %16, %12 ]
  %20 = phi ptr [ %23, %22 ], [ %14, %12 ]
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %185, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.omap_prm_data, ptr %20, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %15
  br i1 %25, label %26, label %18

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %14, %12 ], [ %23, %22 ]
  store ptr %27, ptr %10, align 4
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef nonnull %3) #9
  %29 = getelementptr inbounds %struct.omap_prm, ptr %10, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i32
  br label %185

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @of_find_property(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef null) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8
  tail call void @of_node_put(ptr noundef %39) #9
  %40 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 824, i32 noundef 3520) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %185, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.omap_prm_data, ptr %27, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %6, i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %44) #9
  store ptr %6, ptr %40, align 8
  %46 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 1
  store ptr %10, ptr %46, align 4
  %47 = getelementptr inbounds %struct.omap_prm_data, ptr %27, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 5
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.omap_prm_data, ptr %27, i32 0, i32 3
  %51 = load i16, ptr %50, align 4
  %52 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 3
  store i16 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.omap_prm_data, ptr %27, i32 0, i32 4
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 4
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2
  %57 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2, i32 10
  store ptr %45, ptr %57, align 4
  %58 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2, i32 19
  store ptr @omap_prm_domain_power_on, ptr %58, align 8
  %59 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2, i32 18
  store ptr @omap_prm_domain_power_off, ptr %59, align 4
  %60 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2, i32 30
  store ptr @omap_prm_domain_attach_dev, ptr %60, align 4
  %61 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2, i32 31
  store ptr @omap_prm_domain_detach_dev, ptr %61, align 8
  %62 = getelementptr inbounds %struct.omap_prm_domain, ptr %40, i32 0, i32 2, i32 32
  store i32 1, ptr %62, align 4
  %63 = tail call i32 @pm_genpd_init(ptr noundef %56, ptr noundef null, i1 noundef zeroext true) #9
  %64 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %35, ptr noundef %56) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %42
  %67 = tail call i32 @pm_genpd_remove(ptr noundef %56) #9
  br label %185

68:                                               ; preds = %42
  %69 = getelementptr inbounds %struct.omap_prm, ptr %10, i32 0, i32 2
  store ptr %40, ptr %69, align 4
  %70 = load ptr, ptr %10, align 4
  br label %71

71:                                               ; preds = %68, %33
  %72 = phi ptr [ %27, %33 ], [ %70, %68 ]
  %73 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %74 = load ptr, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #9, !annotation !8
  %75 = getelementptr inbounds %struct.omap_prm_data, ptr %72, i32 0, i32 6
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.omap_prm_data, ptr %72, i32 0, i32 9
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %185

84:                                               ; preds = %78, %71
  %85 = icmp eq ptr %74, null
  br i1 %85, label %173, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.ti_prm_platform_data, ptr %74, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %173, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %74, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %173, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ti_prm_platform_data, ptr %74, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %173, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.omap_prm_data, ptr %72, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %173, label %101

101:                                              ; preds = %97
  %102 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 64, i32 noundef 3520) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %173, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.reset_controller_dev, ptr %102, i32 0, i32 1
  store ptr null, ptr %105, align 4
  store ptr @omap_reset_ops, ptr %102, align 4
  %106 = load ptr, ptr %34, align 8
  %107 = getelementptr inbounds %struct.reset_controller_dev, ptr %102, i32 0, i32 5
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.reset_controller_dev, ptr %102, i32 0, i32 8
  store i32 8, ptr %108, align 4
  %109 = getelementptr inbounds %struct.reset_controller_dev, ptr %102, i32 0, i32 7
  store ptr @omap_prm_reset_xlate, ptr %109, align 4
  %110 = getelementptr inbounds %struct.reset_controller_dev, ptr %102, i32 0, i32 6
  store i32 1, ptr %110, align 4
  %111 = getelementptr inbounds %struct.omap_reset_data, ptr %102, i32 0, i32 5
  store ptr %6, ptr %111, align 4
  %112 = getelementptr inbounds %struct.omap_reset_data, ptr %102, i32 0, i32 3
  store i32 0, ptr %112, align 4
  %113 = getelementptr inbounds %struct.omap_reset_data, ptr %102, i32 0, i32 1
  store ptr %10, ptr %113, align 4
  %114 = load ptr, ptr %10, align 4
  %115 = getelementptr inbounds %struct.omap_prm_data, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.omap_prm_data, ptr %114, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %104
  %122 = phi ptr [ %120, %118 ], [ %116, %104 ]
  %123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, ptr noundef %122) #9
  %124 = load ptr, ptr %10, align 4
  %125 = getelementptr inbounds %struct.omap_prm_data, ptr %124, i32 0, i32 9
  %126 = load i8, ptr %125, align 4
  %127 = and i8 %126, 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load ptr, ptr %87, align 4
  %131 = call ptr %130(ptr noundef nonnull %2) #9
  %132 = getelementptr inbounds %struct.omap_reset_data, ptr %102, i32 0, i32 4
  store ptr %131, ptr %132, align 4
  %133 = icmp eq ptr %131, null
  br i1 %133, label %173, label %134

134:                                              ; preds = %129, %121
  %135 = load i8, ptr %99, align 1
  %136 = icmp sgt i8 %135, -1
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.omap_reset_data, ptr %102, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  br label %140

140:                                              ; preds = %140, %137
  %141 = phi i32 [ %139, %137 ], [ %146, %140 ]
  %142 = phi i8 [ %135, %137 ], [ %148, %140 ]
  %143 = phi ptr [ %99, %137 ], [ %147, %140 ]
  %144 = zext i8 %142 to i32
  %145 = shl nuw i32 1, %144
  %146 = or i32 %145, %141
  store i32 %146, ptr %138, align 4
  %147 = getelementptr %struct.omap_rst_map, ptr %143, i32 1
  %148 = load i8, ptr %147, align 1
  %149 = icmp sgt i8 %148, -1
  br i1 %149, label %140, label %150

150:                                              ; preds = %140, %134
  %151 = load ptr, ptr %10, align 4
  %152 = getelementptr inbounds %struct.omap_prm_data, ptr %151, i32 0, i32 8
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, @rst_map_012
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load ptr, ptr %29, align 4
  %157 = getelementptr inbounds %struct.omap_prm_data, ptr %151, i32 0, i32 6
  %158 = load i16, ptr %157, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr i8, ptr %156, i32 %159
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #9, !srcloc !9
  %162 = getelementptr inbounds %struct.omap_reset_data, ptr %102, i32 0, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, %163
  br i1 %165, label %175, label %166

166:                                              ; preds = %155
  %167 = load ptr, ptr %29, align 4
  %168 = load ptr, ptr %10, align 4
  %169 = getelementptr inbounds %struct.omap_prm_data, ptr %168, i32 0, i32 6
  %170 = load i16, ptr %169, align 4
  %171 = zext i16 %170 to i32
  %172 = getelementptr i8, ptr %167, i32 %171
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %163) #9, !srcloc !10
  br label %175

173:                                              ; preds = %129, %101, %97, %93, %90, %86, %84
  %174 = phi i32 [ -22, %129 ], [ -12, %101 ], [ -22, %97 ], [ -22, %84 ], [ -22, %86 ], [ -22, %90 ], [ -22, %93 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %178

175:                                              ; preds = %166, %155, %150
  %176 = call i32 @devm_reset_controller_register(ptr noundef %6, ptr noundef nonnull %102) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %175, %173
  %179 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %180 = load ptr, ptr %34, align 8
  call void @of_genpd_del_provider(ptr noundef %180) #9
  %181 = getelementptr inbounds %struct.omap_prm, ptr %10, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.omap_prm_domain, ptr %182, i32 0, i32 2
  %184 = call i32 @pm_genpd_remove(ptr noundef %183) #9
  br label %185

185:                                              ; preds = %178, %175, %83, %66, %38, %31, %18, %9, %5, %1
  %186 = phi i32 [ %32, %31 ], [ %179, %178 ], [ -19, %1 ], [ -524, %5 ], [ -12, %9 ], [ 0, %175 ], [ -12, %38 ], [ %64, %66 ], [ 0, %83 ], [ -22, %18 ]
  ret i32 %186
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_prm_domain_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 804
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %77, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 808
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.omap_prm, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 800
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !9
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i32 [ %19, %10 ], [ %8, %6 ]
  %22 = getelementptr i8, ptr %0, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.omap_prm_data, ptr %24, i32 0, i32 9
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 3, i32 1
  %30 = and i32 %21, -4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.omap_prm, ptr %23, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %0, i32 800
  %35 = load i16, ptr %34, align 8
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %31) #9, !srcloc !10
  %38 = tail call i64 @ktime_get() #9
  %39 = add i64 %38, 10000000
  %40 = getelementptr i8, ptr %0, i32 802
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr inbounds %struct.omap_prm, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i16, ptr %40, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !9
  %48 = and i32 %47, 1048576
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %53, %20
  %51 = tail call i64 @ktime_get() #9
  %52 = icmp sgt i64 %51, %39
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %54 = load ptr, ptr %22, align 4
  %55 = getelementptr inbounds %struct.omap_prm, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load i16, ptr %40, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !9
  %61 = and i32 %60, 1048576
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %50

63:                                               ; preds = %50
  %64 = load ptr, ptr %22, align 4
  %65 = getelementptr inbounds %struct.omap_prm, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i16, ptr %40, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !9
  %71 = and i32 %70, 1048576
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.4, ptr noundef %76, ptr noundef nonnull @__func__.omap_prm_domain_power_on) #10
  br label %77

77:                                               ; preds = %73, %63, %53, %20, %1
  %78 = phi i32 [ 0, %1 ], [ -110, %73 ], [ 0, %63 ], [ 0, %20 ], [ 0, %53 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_prm_domain_power_off(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 804
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_prm, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 800
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  %16 = getelementptr i8, ptr %0, i32 808
  store i32 %15, ptr %16, align 8
  %17 = and i32 %15, -8
  %18 = load ptr, ptr %3, align 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 false) #9, !range !11
  %21 = getelementptr inbounds %struct.omap_prm_domain_map, ptr %18, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = shl i8 %22, 4
  %24 = and i8 %23, 16
  %25 = zext i8 %24 to i32
  %26 = and i32 %20, 59
  %27 = or i32 %26, %17
  %28 = or i32 %27, %25
  %29 = shl i8 %22, 1
  %30 = and i8 %29, 4
  %31 = xor i8 %30, 4
  %32 = zext i8 %31 to i32
  %33 = or i32 %28, %32
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr inbounds %struct.omap_prm, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i16, ptr %11, align 8
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %33) #9, !srcloc !10
  %40 = tail call i64 @ktime_get() #9
  %41 = add i64 %40, 10000000
  %42 = getelementptr i8, ptr %0, i32 802
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.omap_prm, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load i16, ptr %42, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !9
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %55, %6
  %53 = tail call i64 @ktime_get() #9
  %54 = icmp sgt i64 %53, %41
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.omap_prm, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load i16, ptr %42, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !9
  %63 = and i32 %62, 1048576
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %79, label %52

65:                                               ; preds = %52
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.omap_prm, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load i16, ptr %42, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !9
  %73 = and i32 %72, 1048576
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap_prm_domain_power_off, ptr noundef %78) #10
  br label %79

79:                                               ; preds = %75, %65, %55, %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_prm_domain_attach_dev(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %14, i32 noundef %10) #10
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.pm_subsys_data, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %19, i32 0, i32 9
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.10) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %15
  %25 = call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef null) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = call i32 @pm_clk_create(ptr noundef %1) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = call i32 @of_pm_clk_add_clks(ptr noundef %1) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @pm_clk_destroy(ptr noundef %1) #9
  br label %38

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 812
  %36 = load i8, ptr %35, align 4
  %37 = or i8 %36, 1
  store i8 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %33, %27, %24, %15, %2
  %39 = phi i32 [ %6, %2 ], [ %31, %33 ], [ 0, %34 ], [ 0, %15 ], [ 0, %24 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_prm_domain_detach_dev(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 812
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @pm_clk_destroy(ptr noundef %1) #9
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pm_subsys_data, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %12, i32 0, i32 9
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pm_clk_add_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @omap_prm_reset_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -22, i32 %4
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_reset_assert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_prm, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.omap_prm_data, ptr %9, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !9
  %15 = shl nuw i32 1, %1
  %16 = or i32 %14, %15
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.omap_prm, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.omap_prm_data, ptr %20, i32 0, i32 6
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %16) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_reset_deassert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.omap_prm_data, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %14, label %27

14:                                               ; preds = %23, %2
  %15 = phi i8 [ %25, %23 ], [ %12, %2 ]
  %16 = phi ptr [ %24, %23 ], [ %11, %2 ]
  %17 = zext i8 %15 to i32
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.omap_rst_map, ptr %16, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  br label %27

23:                                               ; preds = %14
  %24 = getelementptr %struct.omap_rst_map, ptr %16, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %14, label %27

27:                                               ; preds = %23, %19, %2
  %28 = phi i32 [ %22, %19 ], [ %1, %2 ], [ %1, %23 ]
  %29 = getelementptr inbounds %struct.omap_prm_data, ptr %9, i32 0, i32 7
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.omap_prm_data, ptr %9, i32 0, i32 9
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32, %27
  %38 = getelementptr inbounds %struct.omap_prm, ptr %8, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.omap_prm_data, ptr %9, i32 0, i32 6
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !9
  %45 = shl nuw i32 1, %1
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.omap_prm, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %49, align 4
  %53 = getelementptr inbounds %struct.omap_prm_data, ptr %52, i32 0, i32 7
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %51, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !9
  %58 = shl nuw i32 1, %28
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %235

61:                                               ; preds = %48, %37, %32
  %62 = load ptr, ptr %7, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.omap_prm_data, ptr %63, i32 0, i32 7
  %65 = load i16, ptr %64, align 2
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.omap_prm_data, ptr %63, i32 0, i32 9
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %67, %61
  %73 = getelementptr inbounds %struct.omap_prm_data, ptr %63, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = load i8, ptr %74, align 1
  %76 = icmp sgt i8 %75, -1
  br i1 %76, label %77, label %90

77:                                               ; preds = %86, %72
  %78 = phi i8 [ %88, %86 ], [ %75, %72 ]
  %79 = phi ptr [ %87, %86 ], [ %74, %72 ]
  %80 = zext i8 %78 to i32
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.omap_rst_map, ptr %79, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = sext i8 %84 to i32
  br label %90

86:                                               ; preds = %77
  %87 = getelementptr %struct.omap_rst_map, ptr %79, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %77, label %90

90:                                               ; preds = %86, %82, %72
  %91 = phi i32 [ %85, %82 ], [ %1, %72 ], [ %1, %86 ]
  %92 = shl nuw i32 1, %91
  %93 = getelementptr inbounds %struct.omap_prm, ptr %62, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = zext i16 %65 to i32
  %96 = getelementptr i8, ptr %94, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %92) #9, !srcloc !10
  br label %97

97:                                               ; preds = %90, %67
  %98 = phi i1 [ true, %90 ], [ false, %67 ]
  %99 = phi i32 [ %91, %90 ], [ 0, %67 ]
  %100 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %6, align 4
  tail call void %104(ptr noundef nonnull %101) #9
  br label %105

105:                                              ; preds = %103, %97
  %106 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 3
  %107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %106) #9
  %108 = load ptr, ptr %7, align 4
  %109 = getelementptr inbounds %struct.omap_prm, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %108, align 4
  %112 = getelementptr inbounds %struct.omap_prm_data, ptr %111, i32 0, i32 6
  %113 = load i16, ptr %112, align 4
  %114 = zext i16 %113 to i32
  %115 = getelementptr i8, ptr %110, i32 %114
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #9, !srcloc !9
  %117 = shl nuw i32 1, %1
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load ptr, ptr %7, align 4
  %121 = getelementptr inbounds %struct.omap_prm, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %120, align 4
  %124 = getelementptr inbounds %struct.omap_prm_data, ptr %123, i32 0, i32 6
  %125 = load i16, ptr %124, align 4
  %126 = zext i16 %125 to i32
  %127 = getelementptr i8, ptr %122, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %119) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %107) #9
  %128 = tail call i64 @ktime_get() #9
  %129 = add i64 %128, 10000000
  %130 = load ptr, ptr %7, align 4
  %131 = getelementptr inbounds %struct.omap_prm, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %130, align 4
  %134 = getelementptr inbounds %struct.omap_prm_data, ptr %133, i32 0, i32 6
  %135 = load i16, ptr %134, align 4
  %136 = zext i16 %135 to i32
  %137 = getelementptr i8, ptr %132, i32 %136
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #9, !srcloc !9
  %139 = and i32 %138, %117
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %175, label %141

141:                                              ; preds = %144, %105
  %142 = tail call i64 @ktime_get() #9
  %143 = icmp sgt i64 %142, %129
  br i1 %143, label %157, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748) #9
  %146 = load ptr, ptr %7, align 4
  %147 = getelementptr inbounds %struct.omap_prm, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %146, align 4
  %150 = getelementptr inbounds %struct.omap_prm_data, ptr %149, i32 0, i32 6
  %151 = load i16, ptr %150, align 4
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %148, i32 %152
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #9, !srcloc !9
  %155 = and i32 %154, %117
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %175, label %141

157:                                              ; preds = %141
  %158 = load ptr, ptr %7, align 4
  %159 = getelementptr inbounds %struct.omap_prm, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %158, align 4
  %162 = getelementptr inbounds %struct.omap_prm_data, ptr %161, i32 0, i32 6
  %163 = load i16, ptr %162, align 4
  %164 = zext i16 %163 to i32
  %165 = getelementptr i8, ptr %160, i32 %164
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #9, !srcloc !9
  %167 = and i32 %166, %117
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %157
  %170 = load ptr, ptr %7, align 4
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.omap_prm_data, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.omap_reset_deassert, ptr noundef %173, i32 noundef %1) #10
  br label %175

175:                                              ; preds = %169, %157, %144, %105
  %176 = phi i32 [ -110, %169 ], [ 0, %157 ], [ 0, %105 ], [ 0, %144 ]
  br i1 %98, label %177, label %228

177:                                              ; preds = %175
  %178 = tail call i64 @ktime_get() #9
  %179 = add i64 %178, 10000000
  %180 = load ptr, ptr %7, align 4
  %181 = getelementptr inbounds %struct.omap_prm, ptr %180, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = load ptr, ptr %180, align 4
  %184 = getelementptr inbounds %struct.omap_prm_data, ptr %183, i32 0, i32 7
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  %187 = getelementptr i8, ptr %182, i32 %186
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #9, !srcloc !9
  %189 = shl nuw i32 1, %99
  %190 = and i32 %188, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %218

192:                                              ; preds = %205, %177
  %193 = tail call i64 @ktime_get() #9
  %194 = icmp sgt i64 %193, %179
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load ptr, ptr %7, align 4
  %197 = getelementptr inbounds %struct.omap_prm, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %196, align 4
  %200 = getelementptr inbounds %struct.omap_prm_data, ptr %199, i32 0, i32 7
  %201 = load i16, ptr %200, align 2
  %202 = zext i16 %201 to i32
  %203 = getelementptr i8, ptr %198, i32 %202
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #9, !srcloc !9
  br label %218

205:                                              ; preds = %192
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %206(i32 noundef 214748) #9
  %207 = load ptr, ptr %7, align 4
  %208 = getelementptr inbounds %struct.omap_prm, ptr %207, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = load ptr, ptr %207, align 4
  %211 = getelementptr inbounds %struct.omap_prm_data, ptr %210, i32 0, i32 7
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  %214 = getelementptr i8, ptr %209, i32 %213
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #9, !srcloc !9
  %216 = and i32 %215, %189
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %192, label %218

218:                                              ; preds = %205, %195, %177
  %219 = phi i32 [ %204, %195 ], [ %188, %177 ], [ %215, %205 ]
  %220 = and i32 %219, %189
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load ptr, ptr %7, align 4
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.omap_prm_data, ptr %224, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.omap_reset_deassert, ptr noundef %226, i32 noundef %1) #10
  br label %228

228:                                              ; preds = %222, %218, %175
  %229 = phi i32 [ -110, %222 ], [ 0, %218 ], [ %176, %175 ]
  %230 = load ptr, ptr %100, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.ti_prm_platform_data, ptr %6, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  tail call void %234(ptr noundef nonnull %230) #9
  br label %235

235:                                              ; preds = %232, %228, %48
  %236 = phi i32 [ 0, %48 ], [ %229, %232 ], [ %229, %228 ]
  ret i32 %236
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap_reset_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_prm_data, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %10, label %23

10:                                               ; preds = %19, %2
  %11 = phi i8 [ %21, %19 ], [ %8, %2 ]
  %12 = phi ptr [ %20, %19 ], [ %7, %2 ]
  %13 = zext i8 %11 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.omap_rst_map, ptr %12, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  br label %23

19:                                               ; preds = %10
  %20 = getelementptr %struct.omap_rst_map, ptr %12, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %10, label %23

23:                                               ; preds = %19, %15, %2
  %24 = phi i32 [ %18, %15 ], [ %1, %2 ], [ %1, %19 ]
  %25 = getelementptr inbounds %struct.omap_prm_data, ptr %5, i32 0, i32 7
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.omap_prm_data, ptr %5, i32 0, i32 9
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds %struct.omap_prm, ptr %4, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.omap_prm_data, ptr %5, i32 0, i32 6
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !9
  %41 = shl nuw i32 1, %1
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.omap_prm, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.omap_prm_data, ptr %48, i32 0, i32 7
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %47, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !9
  %54 = xor i32 %53, -1
  %55 = lshr i32 %54, %24
  %56 = and i32 %55, 1
  br label %57

57:                                               ; preds = %44, %33, %28
  %58 = phi i32 [ %56, %44 ], [ -524, %28 ], [ 1, %33 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 3662050}
!10 = !{i64 3661632}
!11 = !{i32 0, i32 33}
