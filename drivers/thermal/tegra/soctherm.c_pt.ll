; ModuleID = '/llk/IR/drivers/thermal/tegra/soctherm.c_pt.bc'
source_filename = "../drivers/thermal/tegra/soctherm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_soctherm_soc = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, ptr }
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
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soctherm_oc_irq_chip_data = type { %struct.mutex, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsensor_shared_calib = type { i32, i32, i32, i32 }
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
%struct.tegra_soctherm = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, [7 x %struct.soctherm_throt_cfg], ptr, %struct.mutex }
%struct.soctherm_throt_cfg = type { ptr, i32, i8, i8, i32, i32, %struct.soctherm_oc_cfg, ptr, i8 }
%struct.soctherm_oc_cfg = type { i32, i32, i32, i32, i32, i8 }
%struct.tegra_tsensor = type { ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tegra_tsensor_group = type { ptr, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.tegra_thermctl_zone = type { ptr, ptr, ptr, ptr, ptr }
%struct.tsensor_group_thermtrips = type { i8, i32 }
%struct.tegra_tsensor_configuration = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@tegra_soctherm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-soctherm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soctherm }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author218 = internal constant [47 x i8] c"author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description219 = internal constant [60 x i8] c"description=NVIDIA Tegra SOCTHERM thermal management driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license220 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@tegra124_soctherm = external dso_local constant %struct.tegra_soctherm_soc, align 4
@tegra_soctherm_driver = internal global %struct.platform_driver { ptr @tegra_soctherm_probe, ptr @tegra_soctherm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_soctherm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_soctherm_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"tegra_soctherm\00", align 1
@tegra_soctherm_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @soctherm_suspend, ptr @soctherm_resume, ptr @soctherm_suspend, ptr @soctherm_resume, ptr @soctherm_suspend, ptr @soctherm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_soctherm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"&tegra->thermctl_lock\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"soctherm-reg\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"can't get soctherm registers\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"car-reg\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"can't get car clk registers\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ccroc-reg\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't get ccroc registers\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"soctherm\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"can't get soctherm reset\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"tsensor\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"can't get tsensor clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"can't get soctherm clock\0A\00", align 1
@tegra_of_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @tegra_thermctl_get_temp, ptr @tegra_thermctl_get_trend, ptr @tegra_thermctl_set_trips, ptr null, ptr @tegra_thermctl_set_trip_temp }, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"failed to register sensor: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"nvidia,thermtrips\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"missing thermtrips, will use critical trips as shut down temp\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"invalid num ele: thermtrips:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"throttle-cfgs\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"throttle-cfg: no throttle-cfgs - not enabling\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"throttle-cfg: could not find %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"throttle-cfg: %s: redefined!\0A\00", align 1
@throt_cooling_ops = internal constant %struct.thermal_cooling_device_ops { ptr @throt_get_cdev_max_state, ptr @throt_get_cdev_cur_state, ptr @throt_set_cdev_state, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [53 x i8] c"throttle-cfg: %s: failed to register cooling device\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"heavy\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"oc1\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"oc2\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"oc3\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"oc4\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"oc5\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"nvidia,priority\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"throttle-cfg: %s: invalid priority\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"nvidia,cpu-throt-level\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"nvidia,cpu-throt-percent\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"nvidia,gpu-throt-level\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"throttle-cfg: %s: no throt prop or invalid prop\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"nvidia,polarity-active-low\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"nvidia,count-threshold\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"nvidia,throttle-period-us\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"nvidia,alarm-filter\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"invalid throt id %d - assuming HEAVY\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"thermtrip: %s: error during enable\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"thermtrip: will shut down when %s reaches %d mC\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"throttrip: %s: missing hot temperature\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"throttrip: %s: error during enable\0A\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"throttrip: will throttle when %s reaches %d mC\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"soctherm_oc_int_init failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"request_irq 'thermal_irq' failed.\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"soctherm_edp\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"request_irq 'edp_irq' failed.\0A\00", align 1
@__func__.soctherm_oc_int_init = private unnamed_addr constant [21 x i8] c"soctherm_oc_int_init\00", align 1
@soctherm_oc_int_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@soc_irq_cdata = internal global %struct.soctherm_oc_irq_chip_data zeroinitializer, align 4
@.str.51 = private unnamed_addr constant [24 x i8] c"&soc_irq_cdata.irq_lock\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"soc_therm_oc\00", align 1
@soctherm_oc_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @soctherm_oc_irq_map, ptr null, ptr @soctherm_irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [35 x i8] c"\013%s: Failed to create IRQ domain\0A\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"drivers/thermal/tegra/soctherm.c\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"\013soctherm: Ignored unexpected INTRs 0x%08x\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"\013soctherm: OC ALARM 0x%08x\0A\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"\013soctherm: Ignored unexpected OC ALARM 0x%08x\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"reg_contents\00", align 1
@regs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.60 = private unnamed_addr constant [31 x i8] c"-----TSENSE (convert HW)-----\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"En(%d) \00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"tiddq(%d) \00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"ten_count(%d) \00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"tsample(%d) \00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"Temp(%d/\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"%d) \00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Capture(%d/\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Stop(%d) \00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"Tall(%d) \00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"Over(%d/\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"%d/\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"Therm_A/B(%d/\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%d)\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"PDIV: 0x%x\0A\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"HOTSPOT: 0x%x\0A\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"-----SOC_THERM-----\0A\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Temperatures: CPU(%d) \00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c" GPU(%d) \00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c" PLLX(%d) \00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c" MEM(%d)\0A\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"   %d: Up/Dn(%d /\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%d ) \00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"CPU Throt\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"H+L\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"GPU Throt\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"Status(%s)\0A\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"Res\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"STATS: Up(%s) Dn(%s)\0A\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"  Level_%d Up(%d) \00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"Dn(%d)\0A\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"Thermtrip Any En(%d)\0A\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"     %s En(%d) \00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"Thresh(%d)\0A\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"GLOBAL THROTTLE CONFIG: 0x%08x\0A\00", align 1
@.str.107 = private unnamed_addr constant [53 x i8] c"---------------------------------------------------\0A\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"THROT STATUS: breach(%d) \00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"state(%d) \00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"enabled(%d)\0A\00", align 1
@.str.111 = private unnamed_addr constant [31 x i8] c"CPU PSKIP STATUS: enabled(%d)\0A\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"CPU PSKIP STATUS: M(%d) \00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"N(%d) \00", align 1
@.str.114 = private unnamed_addr constant [37 x i8] c"Resume failed: enable clocks failed\0A\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"Resume failed: set hwtrips failed\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author218, ptr @__UNIQUE_ID_description219, ptr @__UNIQUE_ID_license220], section "llvm.metadata"
@switch.table.soctherm_init = private unnamed_addr constant [3 x i32] [i32 1, i32 3, i32 7], align 4
@switch.table.regs_show.116 = private unnamed_addr constant [3 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.90], align 4

@__mod_of__tegra_soctherm_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tegra_soctherm_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_soctherm_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_soctherm_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_soctherm_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.tsensor_shared_calib, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_soctherm_of_match, ptr noundef %5) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %169, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 4
  br i1 %13, label %169, label %14

14:                                               ; preds = %8
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 432, i32 noundef 3520) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %169, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_soctherm_probe.__key) #11
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 10
  store ptr %10, ptr %20, align 4
  %21 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  %22 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #12
  %25 = load ptr, ptr %22, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %169

27:                                               ; preds = %17
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %28, i32 0, i32 7
  %30 = load i8, ptr %29, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  %34 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #12
  %37 = load ptr, ptr %34, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %169

39:                                               ; preds = %27
  %40 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  %41 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 5
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #12
  %44 = load ptr, ptr %41, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %169

46:                                               ; preds = %39, %32
  %47 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  store ptr %47, ptr %15, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #12
  %50 = load ptr, ptr %15, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %169

52:                                               ; preds = %46
  %53 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.10) #11
  %54 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #12
  %57 = load ptr, ptr %54, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %169

59:                                               ; preds = %52
  %60 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.8) #11
  %61 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 2
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #12
  %64 = load ptr, ptr %61, align 4
  %65 = ptrtoint ptr %64 to i32
  br label %169

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %10, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 4) #11
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %71, label %73, !prof !10

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 8
  store ptr null, ptr %72, align 4
  br label %169

73:                                               ; preds = %66
  %74 = extractvalue { i32, i1 } %69, 0
  %75 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %74, i32 noundef 3520) #11
  %76 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 8
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %169, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %10, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @tegra_calc_shared_calib(ptr noundef %80, ptr noundef nonnull %2) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %169

83:                                               ; preds = %78
  %84 = load i32, ptr %67, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %90

86:                                               ; preds = %90
  %87 = add nuw i32 %91, 1
  %88 = load i32, ptr %67, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %87, %86 ], [ 0, %83 ]
  %92 = load ptr, ptr %10, align 4
  %93 = getelementptr %struct.tegra_tsensor, ptr %92, i32 %91
  %94 = load ptr, ptr %76, align 4
  %95 = getelementptr i32, ptr %94, i32 %91
  %96 = call i32 @tegra_calc_tsensor_calib(ptr noundef %93, ptr noundef nonnull %2, ptr noundef %95) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %86, label %169

98:                                               ; preds = %86, %83
  %99 = load i32, ptr %11, align 4
  %100 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %99, i32 4) #11
  %101 = extractvalue { i32, i1 } %100, 1
  br i1 %101, label %102, label %104, !prof !10

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 9
  store ptr null, ptr %103, align 4
  br label %169

104:                                              ; preds = %98
  %105 = extractvalue { i32, i1 } %100, 0
  %106 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %105, i32 noundef 3520) #11
  %107 = getelementptr inbounds %struct.tegra_soctherm, ptr %15, i32 0, i32 9
  store ptr %106, ptr %107, align 4
  %108 = icmp eq ptr %106, null
  br i1 %108, label %169, label %109

109:                                              ; preds = %104
  %110 = call fastcc i32 @soctherm_clk_enable(ptr noundef %0, i1 noundef zeroext true)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %169

112:                                              ; preds = %109
  call fastcc void @soctherm_thermtrips_parse(ptr noundef %0)
  call fastcc void @soctherm_init_hw_throt_cdev(ptr noundef %0)
  call fastcc void @soctherm_init(ptr noundef %0)
  %113 = load i32, ptr %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %165, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %10, i32 0, i32 2
  br label %121

117:                                              ; preds = %150
  %118 = add nuw i32 %122, 1
  %119 = load i32, ptr %11, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %165

121:                                              ; preds = %117, %115
  %122 = phi i32 [ 0, %115 ], [ %118, %117 ]
  %123 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #11
  %124 = icmp eq ptr %123, null
  br i1 %124, label %166, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %22, align 4
  %127 = load ptr, ptr %116, align 4
  %128 = getelementptr ptr, ptr %127, i32 %122
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %129, i32 0, i32 2
  %131 = load i16, ptr %130, align 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %126, i32 %132
  store ptr %133, ptr %123, align 4
  %134 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %123, i32 0, i32 1
  store ptr %3, ptr %134, align 4
  %135 = load ptr, ptr %116, align 4
  %136 = getelementptr ptr, ptr %135, i32 %122
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %123, i32 0, i32 4
  store ptr %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %123, i32 0, i32 2
  store ptr %15, ptr %139, align 4
  %140 = load ptr, ptr %116, align 4
  %141 = getelementptr ptr, ptr %140, i32 %122
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %142, i32 0, i32 1
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i32
  %146 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef %145, ptr noundef nonnull %123, ptr noundef nonnull @tegra_of_thermal_ops) #11
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %150

148:                                              ; preds = %125
  %149 = ptrtoint ptr %146 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %149) #12
  br label %166

150:                                              ; preds = %125
  %151 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %123, i32 0, i32 3
  store ptr %146, ptr %151, align 4
  %152 = load ptr, ptr %107, align 4
  %153 = load ptr, ptr %116, align 4
  %154 = getelementptr ptr, ptr %153, i32 %122
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %155, i32 0, i32 1
  %157 = load i8, ptr %156, align 4
  %158 = zext i8 %157 to i32
  %159 = getelementptr ptr, ptr %152, i32 %158
  store ptr %146, ptr %159, align 4
  %160 = load ptr, ptr %116, align 4
  %161 = getelementptr ptr, ptr %160, i32 %122
  %162 = load ptr, ptr %161, align 4
  %163 = call fastcc i32 @tegra_soctherm_set_hwtrips(ptr noundef %3, ptr noundef %162, ptr noundef %146)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %117, label %166

165:                                              ; preds = %117, %112
  call fastcc void @soctherm_interrupts_init(ptr noundef %0, ptr noundef nonnull %15)
  call fastcc void @soctherm_debug_init(ptr noundef %0)
  br label %169

166:                                              ; preds = %150, %148, %121
  %167 = phi i32 [ %149, %148 ], [ -12, %121 ], [ %163, %150 ]
  %168 = call fastcc i32 @soctherm_clk_enable(ptr noundef %0, i1 noundef zeroext false)
  br label %169

169:                                              ; preds = %166, %165, %109, %104, %102, %90, %78, %73, %71, %63, %56, %49, %43, %36, %24, %14, %8, %1
  %170 = phi i32 [ %26, %24 ], [ %45, %43 ], [ %51, %49 ], [ %58, %56 ], [ %65, %63 ], [ %167, %166 ], [ 0, %165 ], [ %38, %36 ], [ -19, %1 ], [ -22, %8 ], [ -12, %14 ], [ -12, %73 ], [ %81, %78 ], [ -12, %104 ], [ %110, %109 ], [ -12, %71 ], [ -12, %102 ], [ %96, %90 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_soctherm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void @debugfs_remove(ptr noundef %5) #11
  %6 = tail call fastcc i32 @soctherm_clk_enable(ptr noundef %0, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_calc_shared_calib(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_calc_tsensor_calib(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @soctherm_clk_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_soctherm, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_soctherm, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @reset_control_assert(ptr noundef %13) #11
  br i1 %1, label %15, label %29

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = tail call i32 @clk_enable(ptr noundef %16) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load ptr, ptr %9, align 4
  %24 = tail call i32 @clk_prepare(ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = tail call i32 @clk_enable(ptr noundef %23) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %31

29:                                               ; preds = %12
  %30 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %30) #11
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ %23, %26 ]
  %33 = phi i32 [ 0, %29 ], [ %27, %26 ]
  tail call void @clk_unprepare(ptr noundef %32) #11
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi i32 [ %24, %22 ], [ %33, %31 ]
  %36 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %36) #11
  br label %37

37:                                               ; preds = %34, %19
  %38 = phi ptr [ %16, %19 ], [ %36, %34 ]
  %39 = phi i32 [ %20, %19 ], [ %35, %34 ]
  tail call void @clk_unprepare(ptr noundef %38) #11
  br label %40

40:                                               ; preds = %37, %26, %15
  %41 = phi i32 [ %17, %15 ], [ 0, %26 ], [ %39, %37 ]
  %42 = load ptr, ptr %4, align 4
  %43 = tail call i32 @reset_control_deassert(ptr noundef %42) #11
  br label %44

44:                                               ; preds = %40, %8, %2
  %45 = phi i32 [ -22, %8 ], [ -22, %2 ], [ %41, %40 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @soctherm_thermtrips_parse(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_soctherm, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 1
  %12 = icmp eq ptr %8, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @of_property_count_elems_of_size(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef 4) #11
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.15) #12
  br label %52

19:                                               ; preds = %13
  %20 = tail call i32 @llvm.smin.i32(i32 %11, i32 %16)
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #11
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %52, label %23, !prof !10

23:                                               ; preds = %19
  %24 = extractvalue { i32, i1 } %21, 0
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %24, i32 noundef 3520) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %14, align 8
  %29 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef nonnull %25, i32 noundef %20, i32 noundef 0) #11
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = icmp sgt i32 %20, 0
  br i1 %32, label %34, label %52

33:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %29) #12
  br label %52

34:                                               ; preds = %48, %31
  %35 = phi i32 [ %50, %48 ], [ 0, %31 ]
  %36 = phi i32 [ %49, %48 ], [ 0, %31 ]
  %37 = getelementptr i32, ptr %25, i32 %35
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = trunc i32 %38 to i8
  %42 = getelementptr %struct.tsensor_group_thermtrips, ptr %8, i32 %36
  store i8 %41, ptr %42, align 4
  %43 = or i32 %35, 1
  %44 = getelementptr i32, ptr %25, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.tsensor_group_thermtrips, ptr %8, i32 %36, i32 1
  store i32 %45, ptr %46, align 4
  %47 = add i32 %36, 1
  br label %48

48:                                               ; preds = %40, %34
  %49 = phi i32 [ %36, %34 ], [ %47, %40 ]
  %50 = add nuw nsw i32 %35, 2
  %51 = icmp slt i32 %50, %20
  br i1 %51, label %34, label %52

52:                                               ; preds = %48, %33, %31, %23, %19, %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @soctherm_init_hw_throt_cdev(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 0
  store ptr @.str.22, ptr %6, align 4
  %7 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 0, i32 8
  store i8 0, ptr %8, align 4
  %9 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 1
  store ptr @.str.23, ptr %9, align 4
  %10 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 1, i32 1
  store i32 1, ptr %10, align 4
  %11 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 1, i32 8
  store i8 0, ptr %11, align 4
  %12 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 2
  store ptr @.str.24, ptr %12, align 4
  %13 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 2, i32 1
  store i32 2, ptr %13, align 4
  %14 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 2, i32 8
  store i8 0, ptr %14, align 4
  %15 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 3
  store ptr @.str.25, ptr %15, align 4
  %16 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 3, i32 1
  store i32 3, ptr %16, align 4
  %17 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 3, i32 8
  store i8 0, ptr %17, align 4
  %18 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 4
  store ptr @.str.26, ptr %18, align 4
  %19 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 4, i32 1
  store i32 4, ptr %19, align 4
  %20 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 4, i32 8
  store i8 0, ptr %20, align 4
  %21 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 5
  store ptr @.str.27, ptr %21, align 4
  %22 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 5, i32 1
  store i32 5, ptr %22, align 4
  %23 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 5, i32 8
  store i8 0, ptr %23, align 4
  %24 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 6
  store ptr @.str.28, ptr %24, align 4
  %25 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 6, i32 1
  store i32 6, ptr %25, align 4
  %26 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 6, i32 8
  store i8 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr @of_get_child_by_name(ptr noundef %29, ptr noundef nonnull @.str.17) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.18) #12
  br label %147

33:                                               ; preds = %1
  %34 = tail call ptr @of_get_next_child(ptr noundef nonnull %30, ptr noundef null) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %146, label %36

36:                                               ; preds = %143, %33
  %37 = phi ptr [ %144, %143 ], [ %34, %33 ]
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = call i32 @strcmp(ptr noundef nonnull %39, ptr noundef %38) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %50, %41
  %45 = phi i32 [ %46, %50 ], [ 0, %41 ]
  %46 = add i32 %45, 1
  %47 = getelementptr %struct.tegra_soctherm, ptr %5, i32 0, i32 11, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = call i32 @strcmp(ptr noundef nonnull %48, ptr noundef %38) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %44

53:                                               ; preds = %50, %41
  %54 = phi ptr [ %6, %41 ], [ %47, %50 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %44, %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.19, ptr noundef %38) #12
  br label %143

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 8
  %59 = load i8, ptr %58, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %142

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.29, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load i32, ptr %3, align 4
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 2
  store i8 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.tegra_soctherm, ptr %62, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %70, i32 0, i32 7
  %72 = load i8, ptr %71, align 4, !range !9
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, ptr @.str.32, ptr @.str.31
  %75 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull %74, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %100

77:                                               ; preds = %65
  %78 = load ptr, ptr %69, align 4
  %79 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %78, i32 0, i32 7
  %80 = load i8, ptr %79, align 4, !range !9
  %81 = icmp ne i8 %80, 0
  %82 = load i32, ptr %3, align 4
  %83 = icmp ult i32 %82, 4
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = trunc i32 %82 to i8
  %87 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 3
  store i8 %86, ptr %87, align 1
  br label %94

88:                                               ; preds = %77
  %89 = xor i1 %81, true
  %90 = icmp ult i32 %82, 101
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 4
  store i32 %82, ptr %93, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.33, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %96 = icmp sgt i32 %95, -1
  %97 = load i32, ptr %3, align 4
  %98 = icmp ult i32 %97, 4
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %103, label %100

100:                                              ; preds = %94, %88, %65, %61
  %101 = phi ptr [ @.str.30, %61 ], [ @.str.34, %94 ], [ @.str.34, %88 ], [ @.str.34, %65 ]
  %102 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %101, ptr noundef %102) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %143

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 5
  store i32 %97, ptr %104, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %105 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %133

108:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %109 = call ptr @of_find_property(ptr noundef nonnull %37, ptr noundef nonnull @.str.35, ptr noundef null) #11
  %110 = icmp ne ptr %109, null
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 6
  store i32 %111, ptr %112, align 4
  %113 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.36, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 6, i32 5
  store i8 1, ptr %116, align 4
  %117 = load i32, ptr %2, align 4
  %118 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 6, i32 2
  store i32 %117, ptr %118, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.37, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, ptr %2, align 4
  %124 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 6, i32 1
  store i32 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.38, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, ptr %2, align 4
  %130 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 6, i32 3
  store i32 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 6, i32 4
  store i32 2, ptr %132, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %141

133:                                              ; preds = %103
  %134 = call ptr @thermal_of_cooling_device_register(ptr noundef nonnull %37, ptr noundef %38, ptr noundef %5, ptr noundef nonnull @throt_cooling_ops) #11
  %135 = icmp eq ptr %134, null
  %136 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  %137 = or i1 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.21, ptr noundef %38) #12
  br label %143

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %54, i32 0, i32 7
  store ptr %134, ptr %140, align 4
  br label %141

141:                                              ; preds = %139, %131
  store i8 1, ptr %58, align 4
  br label %143

142:                                              ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20, ptr noundef %38) #12
  call void @of_node_put(ptr noundef nonnull %37) #11
  br label %146

143:                                              ; preds = %141, %138, %100, %56
  %144 = call ptr @of_get_next_child(ptr noundef nonnull %30, ptr noundef nonnull %37) #11
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %36

146:                                              ; preds = %143, %142, %33
  call void @of_node_put(ptr noundef nonnull %30) #11
  br label %147

147:                                              ; preds = %146, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @soctherm_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 3
  %13 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 8
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %5, %11 ], [ %45, %14 ]
  %16 = phi i32 [ 0, %11 ], [ %44, %14 ]
  %17 = load ptr, ptr %15, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr %struct.tegra_tsensor, ptr %17, i32 %16, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = getelementptr %struct.tegra_tsensor, ptr %17, i32 %16, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %25) #11, !srcloc !12
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 2147483647
  %30 = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %26, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 15
  %33 = getelementptr inbounds %struct.tegra_tsensor_configuration, ptr %26, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 24
  %36 = or i32 %29, %32
  %37 = or i32 %36, %35
  %38 = or i32 %37, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %39 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr i32, ptr %40, i32 %16
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #11, !srcloc !12
  %44 = add nuw i32 %16, 1
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %14, label %49

49:                                               ; preds = %14, %1
  %50 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 448
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr i8, ptr %54, i32 452
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %101, label %61

61:                                               ; preds = %97, %49
  %62 = phi i32 [ %99, %97 ], [ 0, %49 ]
  %63 = phi i32 [ %79, %97 ], [ %53, %49 ]
  %64 = phi i32 [ %98, %97 ], [ %56, %49 ]
  %65 = getelementptr ptr, ptr %7, i32 %62
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %66, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %63, %69
  %71 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %66, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @llvm.cttz.i32(i32 %68, i1 true), !range !18
  %74 = icmp eq i32 %68, 0
  %75 = select i1 %74, i32 -1, i32 %73
  %76 = lshr i32 %68, %75
  %77 = and i32 %76, %72
  %78 = shl i32 %77, %75
  %79 = or i32 %78, %70
  %80 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %66, i32 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, 3
  br i1 %82, label %97, label %83

83:                                               ; preds = %61
  %84 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %66, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %64, %86
  %88 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %66, i32 0, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 @llvm.cttz.i32(i32 %85, i1 true), !range !18
  %91 = icmp eq i32 %85, 0
  %92 = select i1 %91, i32 -1, i32 %90
  %93 = lshr i32 %85, %92
  %94 = and i32 %93, %89
  %95 = shl i32 %94, %92
  %96 = or i32 %95, %87
  br label %97

97:                                               ; preds = %83, %61
  %98 = phi i32 [ %64, %61 ], [ %96, %83 ]
  %99 = add nuw i32 %62, 1
  %100 = icmp eq i32 %99, %59
  br i1 %100, label %101, label %61

101:                                              ; preds = %97, %49
  %102 = phi i32 [ %56, %49 ], [ %98, %97 ]
  %103 = phi i32 [ %53, %49 ], [ %79, %97 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %104 = load ptr, ptr %50, align 4
  %105 = getelementptr i8, ptr %104, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %106 = load ptr, ptr %50, align 4
  %107 = getelementptr i8, ptr %106, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %102) #11, !srcloc !12
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds %struct.tegra_soctherm, ptr %108, i32 0, i32 10
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %110, i32 0, i32 7
  %112 = load i8, ptr %111, align 4, !range !9
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %158, label %114

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.tegra_soctherm, ptr %108, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 348
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %119 = and i32 %118, -16777216
  %120 = or i32 %119, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %121 = load ptr, ptr %115, align 4
  %122 = getelementptr i8, ptr %121, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #11, !srcloc !12
  %123 = load ptr, ptr %115, align 4
  %124 = getelementptr i8, ptr %123, i32 352
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %126 = and i32 %125, 2147418112
  %127 = or i32 %126, -2147450881
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %128 = load ptr, ptr %115, align 4
  %129 = getelementptr i8, ptr %128, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #11, !srcloc !12
  %130 = load ptr, ptr %115, align 4
  %131 = getelementptr i8, ptr %130, i32 360
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %133 = and i32 %132, -16777216
  %134 = or i32 %133, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %135 = load ptr, ptr %115, align 4
  %136 = getelementptr i8, ptr %135, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #11, !srcloc !12
  %137 = load ptr, ptr %115, align 4
  %138 = getelementptr i8, ptr %137, i32 364
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %140 = and i32 %139, 2147418112
  %141 = or i32 %140, -2147467265
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %142 = load ptr, ptr %115, align 4
  %143 = getelementptr i8, ptr %142, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #11, !srcloc !12
  %144 = load ptr, ptr %115, align 4
  %145 = getelementptr i8, ptr %144, i32 372
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %147 = and i32 %146, -16777216
  %148 = or i32 %147, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %149 = load ptr, ptr %115, align 4
  %150 = getelementptr i8, ptr %149, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #11, !srcloc !12
  %151 = load ptr, ptr %115, align 4
  %152 = getelementptr i8, ptr %151, i32 376
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %154 = and i32 %153, 2147418112
  %155 = or i32 %154, -2147470593
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %156 = load ptr, ptr %115, align 4
  %157 = getelementptr i8, ptr %156, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #11, !srcloc !12
  br label %158

158:                                              ; preds = %114, %101
  %159 = getelementptr inbounds %struct.tegra_soctherm, ptr %108, i32 0, i32 3
  br label %160

160:                                              ; preds = %310, %158
  %161 = phi i32 [ 0, %158 ], [ %311, %310 ]
  %162 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161
  %163 = getelementptr inbounds i8, ptr %162, i32 8
  %164 = load i8, ptr %163, align 4
  %165 = getelementptr inbounds i8, ptr %162, i32 48
  %166 = load i8, ptr %165, align 4
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %310, label %169

169:                                              ; preds = %160
  %170 = icmp ugt i32 %161, 1
  br i1 %170, label %171, label %222

171:                                              ; preds = %169
  %172 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 6, i32 4
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %310, label %175

175:                                              ; preds = %171
  %176 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 6
  %177 = shl i32 %173, 2
  %178 = and i32 %177, 12
  %179 = load i32, ptr %176, align 4
  %180 = shl i32 %179, 1
  %181 = and i32 %180, 2
  %182 = or i32 %178, %181
  %183 = or i32 %182, 33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  tail call void @arm_heavy_mb() #11
  %184 = load ptr, ptr %159, align 4
  %185 = mul nuw nsw i32 %161, 20
  %186 = add nuw nsw i32 %185, 744
  %187 = getelementptr i8, ptr %184, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %183) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %188 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 6, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = load ptr, ptr %159, align 4
  %191 = add nuw nsw i32 %185, 752
  %192 = getelementptr i8, ptr %190, i32 %191
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %189) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %193 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 6, i32 2
  %194 = load i32, ptr %193, align 4
  %195 = load ptr, ptr %159, align 4
  %196 = add nuw nsw i32 %185, 748
  %197 = getelementptr i8, ptr %195, i32 %196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %194) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %198 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 6, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = load ptr, ptr %159, align 4
  %201 = add nuw nsw i32 %185, 760
  %202 = getelementptr i8, ptr %200, i32 %201
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %199) #11, !srcloc !12
  %203 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 6, i32 5
  %204 = load i8, ptr %203, align 4, !range !9
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %175
  %207 = load ptr, ptr %159, align 4
  %208 = getelementptr i8, ptr %207, i32 928
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  switch i32 %161, label %218 [
    i32 2, label %210
    i32 3, label %212
    i32 4, label %214
    i32 5, label %216
  ]

210:                                              ; preds = %206
  %211 = or i32 %209, 1
  br label %218

212:                                              ; preds = %206
  %213 = or i32 %209, 2
  br label %218

214:                                              ; preds = %206
  %215 = or i32 %209, 4
  br label %218

216:                                              ; preds = %206
  %217 = or i32 %209, 8
  br label %218

218:                                              ; preds = %216, %214, %212, %210, %206
  %219 = phi i32 [ %217, %216 ], [ %215, %214 ], [ %213, %212 ], [ %211, %210 ], [ 0, %206 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %220 = load ptr, ptr %159, align 4
  %221 = getelementptr i8, ptr %220, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %219) #11, !srcloc !12
  br label %222

222:                                              ; preds = %218, %175, %169
  %223 = load ptr, ptr %109, align 4
  %224 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %223, i32 0, i32 7
  %225 = load i8, ptr %224, align 4, !range !9
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %253, label %227

227:                                              ; preds = %222
  %228 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 3
  %229 = load i8, ptr %228, align 1
  %230 = add i8 %229, -1
  %231 = icmp ult i8 %230, 3
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = sext i8 %230 to i32
  %234 = getelementptr inbounds [3 x i32], ptr @switch.table.soctherm_init, i32 0, i32 %233
  %235 = load i32, ptr %234, align 4
  br label %236

236:                                              ; preds = %232, %227
  %237 = phi i32 [ %235, %232 ], [ 0, %227 ]
  %238 = load ptr, ptr %159, align 4
  %239 = mul nuw nsw i32 %161, 48
  %240 = add nuw nsw i32 %239, 1072
  %241 = getelementptr i8, ptr %238, i32 %240
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !29
  %243 = and i32 %242, 2147481848
  %244 = shl nuw nsw i32 %237, 8
  %245 = or i32 %243, %244
  %246 = or i32 %245, %237
  %247 = or i32 %246, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %248 = load ptr, ptr %159, align 4
  %249 = getelementptr i8, ptr %248, i32 %240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %247) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !31
  tail call void @arm_heavy_mb() #11
  %250 = load ptr, ptr %159, align 4
  %251 = add nuw nsw i32 %239, 1076
  %252 = getelementptr i8, ptr %250, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 -2147483648) #11, !srcloc !12
  br label %280

253:                                              ; preds = %222
  %254 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 4
  %255 = load i32, ptr %254, align 4
  %256 = mul i32 %255, -256
  %257 = add i32 %256, 25600
  %258 = sdiv i32 %257, 100
  %259 = load ptr, ptr %159, align 4
  %260 = mul nuw nsw i32 %161, 48
  %261 = add nuw nsw i32 %260, 1072
  %262 = getelementptr i8, ptr %259, i32 %261
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !32
  %264 = and i32 %263, 2147418112
  %265 = shl i32 %258, 8
  %266 = add i32 %265, 65280
  %267 = and i32 %266, 65280
  %268 = or i32 %264, %267
  %269 = or i32 %268, -2147483393
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %270 = load ptr, ptr %159, align 4
  %271 = getelementptr i8, ptr %270, i32 %261
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #11, !srcloc !12
  %272 = load ptr, ptr %159, align 4
  %273 = add nuw nsw i32 %260, 1076
  %274 = getelementptr i8, ptr %272, i32 %273
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !34
  %276 = and i32 %275, -16777216
  %277 = or i32 %276, 65295
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %278 = load ptr, ptr %159, align 4
  %279 = getelementptr i8, ptr %278, i32 %273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %277) #11, !srcloc !12
  br label %280

280:                                              ; preds = %253, %236
  %281 = phi i32 [ %260, %253 ], [ %239, %236 ]
  %282 = getelementptr %struct.tegra_soctherm, ptr %108, i32 0, i32 11, i32 %161, i32 5
  %283 = load i32, ptr %282, align 4
  %284 = load ptr, ptr %159, align 4
  %285 = add i32 %281, 1080
  %286 = getelementptr i8, ptr %284, i32 %285
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %288 = and i32 %287, 2147024895
  %289 = shl i32 -65536, %283
  %290 = and i32 %289, 458752
  %291 = or i32 %288, %290
  %292 = xor i32 %291, -2147024896
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %293 = load ptr, ptr %159, align 4
  %294 = getelementptr i8, ptr %293, i32 %285
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %292) #11, !srcloc !12
  %295 = zext i8 %164 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  %296 = load ptr, ptr %159, align 4
  %297 = add i32 %281, 1092
  %298 = getelementptr i8, ptr %296, i32 %297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %295) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %299 = load ptr, ptr %159, align 4
  %300 = add i32 %281, 1096
  %301 = getelementptr i8, ptr %299, i32 %300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 0) #11, !srcloc !12
  %302 = load ptr, ptr %159, align 4
  %303 = getelementptr i8, ptr %302, i32 1060
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %305 = and i32 %304, 255
  %306 = icmp ult i32 %305, %295
  br i1 %306, label %307, label %310

307:                                              ; preds = %280
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %308 = load ptr, ptr %159, align 4
  %309 = getelementptr i8, ptr %308, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %295) #11, !srcloc !12
  br label %310

310:                                              ; preds = %307, %280, %171, %160
  %311 = add nuw nsw i32 %161, 1
  %312 = icmp eq i32 %311, 7
  br i1 %312, label %313, label %160

313:                                              ; preds = %310
  %314 = load ptr, ptr %109, align 4
  %315 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %314, i32 0, i32 7
  %316 = load i8, ptr %315, align 4, !range !9
  %317 = icmp eq i8 %316, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  br i1 %317, label %328, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.tegra_soctherm, ptr %108, i32 0, i32 5
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr i8, ptr %320, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 1) #11, !srcloc !12
  %322 = load ptr, ptr %319, align 4
  %323 = getelementptr i8, ptr %322, i32 36
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %325 = or i32 %324, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %326 = load ptr, ptr %319, align 4
  %327 = getelementptr i8, ptr %326, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %325) #11, !srcloc !12
  br label %338

328:                                              ; preds = %313
  %329 = load ptr, ptr %159, align 4
  %330 = getelementptr i8, ptr %329, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 1) #11, !srcloc !12
  %331 = getelementptr inbounds %struct.tegra_soctherm, ptr %108, i32 0, i32 4
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr i8, ptr %332, i32 876
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %335 = or i32 %334, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  tail call void @arm_heavy_mb() #11
  %336 = load ptr, ptr %331, align 4
  %337 = getelementptr i8, ptr %336, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %335) #11, !srcloc !12
  br label %338

338:                                              ; preds = %328, %318
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !44
  tail call void @arm_heavy_mb() #11
  %339 = load ptr, ptr %159, align 4
  %340 = getelementptr i8, ptr %339, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 15) #11, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_soctherm_set_hwtrips(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %8 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_soctherm, ptr %7, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt i8 %9, 3
  %15 = icmp eq ptr %13, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %11, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %26, %17
  %22 = phi i32 [ %27, %26 ], [ 0, %17 ]
  %23 = getelementptr %struct.tsensor_group_thermtrips, ptr %13, i32 %22
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, %9
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = add nuw i32 %22, 1
  %28 = icmp eq i32 %27, %19
  br i1 %28, label %29, label %21

29:                                               ; preds = %26, %17, %3
  store i32 -127000, ptr %5, align 4
  br label %34

30:                                               ; preds = %21
  %31 = getelementptr %struct.tsensor_group_thermtrips, ptr %13, i32 %22, i32 1
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %5, align 4
  %33 = icmp eq i32 %32, -127000
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %29
  %35 = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %2, ptr noundef nonnull %5) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, ptr %5, align 4
  br label %44

43:                                               ; preds = %34
  store i32 127000, ptr %5, align 4
  br label %44

44:                                               ; preds = %43, %41, %30
  %45 = phi i32 [ %42, %41 ], [ 127000, %43 ], [ %32, %30 ]
  %46 = load ptr, ptr %6, align 8
  %47 = icmp eq ptr %1, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %53) #12
  br label %166

54:                                               ; preds = %48
  %55 = call i32 @llvm.smax.i32(i32 %45, i32 -127000) #11
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 127000) #11
  %57 = getelementptr inbounds %struct.tegra_soctherm, ptr %46, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = sdiv i32 %56, %60
  %62 = getelementptr inbounds %struct.tegra_soctherm, ptr %46, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 128
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %66 = load i32, ptr %49, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @llvm.cttz.i32(i32 %66, i1 true) #11, !range !18
  %70 = icmp eq i32 %66, 0
  %71 = select i1 %70, i32 -1, i32 %69
  %72 = lshr i32 %66, %71
  %73 = and i32 %72, %61
  %74 = shl i32 %73, %71
  %75 = or i32 %74, %68
  %76 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = call i32 @llvm.cttz.i32(i32 %77, i1 true) #11, !range !18
  %81 = icmp eq i32 %77, 0
  %82 = select i1 %81, i32 -1, i32 %80
  %83 = lshr i32 %77, %82
  %84 = and i32 %83, 1
  %85 = shl nuw i32 %84, %82
  %86 = or i32 %79, %85
  %87 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 10
  %88 = load i32, ptr %87, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %86, %89
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  call void @arm_heavy_mb() #11
  %91 = load ptr, ptr %62, align 4
  %92 = getelementptr i8, ptr %91, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #11, !srcloc !12
  %93 = load ptr, ptr %1, align 4
  %94 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %93, i32 noundef %94) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %95 = call i32 @of_thermal_get_ntrips(ptr noundef %2) #11
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %54
  %98 = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 20
  br label %99

99:                                               ; preds = %115, %97
  %100 = phi i32 [ 0, %97 ], [ %116, %115 ]
  %101 = load ptr, ptr %98, align 4
  %102 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %101, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %2, i32 noundef %100, ptr noundef nonnull %4) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %99
  %107 = load i32, ptr %4, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load ptr, ptr %98, align 4
  %111 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %110, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = call i32 %112(ptr noundef %2, i32 noundef %100, ptr noundef nonnull %5) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %122

115:                                              ; preds = %106
  %116 = add nuw nsw i32 %100, 1
  %117 = icmp eq i32 %116, %95
  br i1 %117, label %122, label %99

118:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %119 = getelementptr %struct.tegra_soctherm, ptr %7, i32 0, i32 11, i32 0, i32 8
  %120 = load i8, ptr %119, align 4, !range !9
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %157, label %124

122:                                              ; preds = %115, %109, %99, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %123 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %123) #12
  br label %166

124:                                              ; preds = %118
  %125 = getelementptr %struct.tegra_soctherm, ptr %7, i32 0, i32 11, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = call ptr @get_thermal_instance(ptr noundef %2, ptr noundef %126, i32 noundef %100) #11
  %128 = icmp eq ptr %127, null
  br i1 %128, label %157, label %129

129:                                              ; preds = %161, %124
  %130 = phi ptr [ %126, %124 ], [ %163, %161 ]
  %131 = getelementptr inbounds %struct.thermal_cooling_device, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr %struct.tegra_soctherm, ptr %7, i32 0, i32 11, i32 0
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %129
  %137 = call i32 @strcmp(ptr noundef nonnull %134, ptr noundef %132) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %145, %136
  %140 = phi i32 [ %141, %145 ], [ 0, %136 ]
  %141 = add i32 %140, 1
  %142 = getelementptr %struct.tegra_soctherm, ptr %7, i32 0, i32 11, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = call i32 @strcmp(ptr noundef nonnull %143, ptr noundef %132) #11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %139

148:                                              ; preds = %145, %139, %136, %129
  %149 = phi ptr [ null, %129 ], [ %133, %136 ], [ %142, %145 ], [ null, %139 ]
  %150 = load i32, ptr %5, align 4
  %151 = call fastcc i32 @throttrip_program(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %149, i32 noundef %150)
  %152 = icmp eq i32 %151, 0
  %153 = load ptr, ptr %1, align 4
  br i1 %152, label %155, label %154

154:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %153) #12
  br label %166

155:                                              ; preds = %148
  %156 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %153, i32 noundef %156) #12
  br label %166

157:                                              ; preds = %124, %118
  %158 = getelementptr %struct.tegra_soctherm, ptr %7, i32 0, i32 11, i32 1, i32 8
  %159 = load i8, ptr %158, align 4, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = getelementptr %struct.tegra_soctherm, ptr %7, i32 0, i32 11, i32 1, i32 7
  %163 = load ptr, ptr %162, align 4
  %164 = call ptr @get_thermal_instance(ptr noundef %2, ptr noundef %163, i32 noundef %100) #11
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %129

166:                                              ; preds = %161, %157, %155, %154, %122, %52
  %167 = phi i32 [ -22, %52 ], [ 0, %122 ], [ %151, %154 ], [ 0, %155 ], [ 0, %161 ], [ 0, %157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %167
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @soctherm_interrupts_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @__mutex_init(ptr noundef nonnull @soc_irq_cdata, ptr noundef nonnull @.str.51, ptr noundef nonnull @soctherm_oc_int_init.__key) #11
  store i32 0, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  store ptr @.str.52, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 1), align 4
  store ptr @soctherm_oc_irq_lock, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 15), align 4
  store ptr @soctherm_oc_irq_sync_unlock, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 16), align 4
  store ptr @soctherm_oc_irq_disable, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 5), align 4
  store ptr @soctherm_oc_irq_enable, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 4), align 4
  store ptr @soctherm_oc_irq_set_type, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 13), align 4
  store ptr null, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 1, i32 14), align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call ptr @__irq_domain_add(ptr noundef %8, i32 noundef 5, i32 noundef 5, i32 noundef 0, ptr noundef nonnull @soctherm_oc_domain_ops, ptr noundef nonnull @soc_irq_cdata) #11
  store ptr %9, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.soctherm_oc_int_init) #12
  br label %36

13:                                               ; preds = %2
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %15 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  %16 = icmp slt i32 %14, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #11
  %19 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 7
  store i32 %18, ptr %19, align 4
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %15, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %24, %21 ]
  %30 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %22, ptr noundef nonnull @soctherm_thermal_isr, ptr noundef nonnull @soctherm_thermal_isr_thread, i32 noundef 8192, ptr noundef %29, ptr noundef %1) #11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %19, align 4
  %34 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %33, ptr noundef nonnull @soctherm_edp_isr, ptr noundef nonnull @soctherm_edp_isr_thread, i32 noundef 8192, ptr noundef nonnull @.str.48, ptr noundef %1) #11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28, %11
  %37 = phi ptr [ @.str.46, %11 ], [ @.str.47, %28 ], [ @.str.49, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %37) #12
  br label %38

38:                                               ; preds = %36, %32, %17, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @soctherm_debug_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.8, ptr noundef null) #11
  %5 = getelementptr inbounds %struct.tegra_soctherm, ptr %3, i32 0, i32 12
  store ptr %4, ptr %5, align 4
  %6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 420, ptr noundef %4, ptr noundef %0, ptr noundef nonnull @regs_fops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @throt_get_cdev_max_state(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 1, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @throt_get_cdev_cur_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_soctherm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1064
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  %9 = and i32 %8, 4080
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @throt_set_cdev_state(ptr nocapture noundef readnone %0, i32 noundef %1) #9 {
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  %5 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !18
  %11 = icmp eq i32 %8, 0
  %12 = select i1 %11, i32 -1, i32 %10
  %13 = lshr i32 %9, %12
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = mul nuw nsw i32 %15, 1000
  %17 = and i32 %13, 128
  %18 = icmp eq i32 %17, 0
  %19 = add nuw nsw i32 %16, 500
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = and i32 %13, 1
  %22 = icmp eq i32 %21, 0
  %23 = sub nsw i32 0, %20
  %24 = select i1 %22, i32 %20, i32 %23
  store i32 %24, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_get_trend(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef nonnull %6, i32 noundef %1, ptr noundef nonnull %4) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 13
  %17 = load volatile i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 14
  %19 = load volatile i32, ptr %18, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp sgt i32 %17, %20
  %22 = icmp sge i32 %17, %19
  %23 = zext i1 %22 to i32
  %24 = icmp slt i32 %17, %20
  %25 = select i1 %24, i32 2, i32 0
  %26 = select i1 %21, i32 %23, i32 %25
  store i32 %26, ptr %2, align 4
  br label %27

27:                                               ; preds = %15, %8, %3
  %28 = phi i32 [ -22, %3 ], [ %13, %8 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_set_trips(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_soctherm, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.tegra_soctherm, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !49
  %12 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %13, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !50
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.tegra_soctherm, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #11, !srcloc !12
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.tegra_soctherm, ptr %22, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %23) #11
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.tegra_soctherm, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %27, i32 0, i32 13
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  %33 = and i32 %32, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !52
  tail call void @arm_heavy_mb() #11
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.tegra_soctherm, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %37, i32 0, i32 13
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %33) #11, !srcloc !12
  %42 = tail call i32 @llvm.smax.i32(i32 %1, i32 -127000) #11
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 127000) #11
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.tegra_soctherm, ptr %44, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = sdiv i32 %43, %48
  %50 = tail call i32 @llvm.smax.i32(i32 %2, i32 -127000) #11
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 127000) #11
  %52 = sdiv i32 %51, %48
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %53, i32 0, i32 14
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %32, %56
  %58 = tail call i32 @llvm.cttz.i32(i32 %55, i1 true), !range !18
  %59 = icmp eq i32 %55, 0
  %60 = select i1 %59, i32 -1, i32 %58
  %61 = lshr i32 %55, %60
  %62 = and i32 %61, %52
  %63 = shl i32 %62, %60
  %64 = or i32 %63, %57
  %65 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %53, i32 0, i32 15
  %66 = load i32, ptr %65, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %64, %67
  %69 = tail call i32 @llvm.cttz.i32(i32 %66, i1 true), !range !18
  %70 = icmp eq i32 %66, 0
  %71 = select i1 %70, i32 -1, i32 %69
  %72 = lshr i32 %66, %71
  %73 = and i32 %72, %49
  %74 = shl i32 %73, %71
  %75 = or i32 %74, %68
  %76 = or i32 %75, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !53
  tail call void @arm_heavy_mb() #11
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.tegra_soctherm, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %12, align 4
  %81 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %80, i32 0, i32 13
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %79, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %76) #11, !srcloc !12
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.tegra_soctherm, ptr %85, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %86) #11
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr inbounds %struct.tegra_soctherm, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 136
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !54
  %92 = load ptr, ptr %12, align 4
  %93 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %92, i32 0, i32 12
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = tail call i32 @llvm.cttz.i32(i32 %94, i1 true) #11, !range !18
  %98 = icmp eq i32 %94, 0
  %99 = select i1 %98, i32 -1, i32 %97
  %100 = lshr i32 %94, %99
  %101 = and i32 %100, 3
  %102 = shl i32 %101, %99
  %103 = or i32 %102, %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !55
  tail call void @arm_heavy_mb() #11
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr inbounds %struct.tegra_soctherm, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %103) #11, !srcloc !12
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr inbounds %struct.tegra_soctherm, ptr %108, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %109) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_thermctl_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_thermctl_zone, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %183, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef nonnull %6, i32 noundef %1, ptr noundef nonnull %4) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %183

21:                                               ; preds = %14
  %22 = load i32, ptr %4, align 4
  switch i32 %22, label %183 [
    i32 3, label %27
    i32 2, label %23
  ]

23:                                               ; preds = %21
  %24 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 0, i32 8
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %126, label %100

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %10, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tegra_soctherm, ptr %8, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ugt i8 %29, 3
  %35 = icmp eq ptr %33, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %31, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %46, %37
  %42 = phi i32 [ %47, %46 ], [ 0, %37 ]
  %43 = getelementptr %struct.tsensor_group_thermtrips, ptr %33, i32 %42
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, %29
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = add nuw i32 %42, 1
  %48 = icmp eq i32 %47, %39
  br i1 %48, label %53, label %41

49:                                               ; preds = %41
  %50 = getelementptr %struct.tsensor_group_thermtrips, ptr %33, i32 %42, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, -127000
  br i1 %52, label %53, label %183

53:                                               ; preds = %49, %46, %37, %27
  %54 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %10, null
  br i1 %56, label %183, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %10, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %183, label %61

61:                                               ; preds = %57
  %62 = call i32 @llvm.smax.i32(i32 %2, i32 -127000) #11
  %63 = call i32 @llvm.smin.i32(i32 %62, i32 127000) #11
  %64 = getelementptr inbounds %struct.tegra_soctherm, ptr %55, i32 0, i32 10
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = sdiv i32 %63, %67
  %69 = getelementptr inbounds %struct.tegra_soctherm, ptr %55, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 128
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %73 = load i32, ptr %58, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = call i32 @llvm.cttz.i32(i32 %73, i1 true) #11, !range !18
  %77 = icmp eq i32 %73, 0
  %78 = select i1 %77, i32 -1, i32 %76
  %79 = lshr i32 %73, %78
  %80 = and i32 %79, %68
  %81 = shl i32 %80, %78
  %82 = or i32 %81, %75
  %83 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %10, i32 0, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %82, %85
  %87 = call i32 @llvm.cttz.i32(i32 %84, i1 true) #11, !range !18
  %88 = icmp eq i32 %84, 0
  %89 = select i1 %88, i32 -1, i32 %87
  %90 = lshr i32 %84, %89
  %91 = and i32 %90, 1
  %92 = shl nuw i32 %91, %89
  %93 = or i32 %86, %92
  %94 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %10, i32 0, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %93, %96
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  call void @arm_heavy_mb() #11
  %98 = load ptr, ptr %69, align 4
  %99 = getelementptr i8, ptr %98, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #11, !srcloc !12
  br label %183

100:                                              ; preds = %23
  %101 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 0, i32 7
  %102 = load ptr, ptr %101, align 4
  %103 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %102, i32 noundef %1) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %105

105:                                              ; preds = %175, %166, %157, %148, %139, %130, %100
  %106 = phi ptr [ %102, %100 ], [ %132, %130 ], [ %141, %139 ], [ %150, %148 ], [ %159, %157 ], [ %168, %166 ], [ %177, %175 ]
  %107 = getelementptr inbounds %struct.thermal_cooling_device, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 0
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = call i32 @strcmp(ptr noundef nonnull %110, ptr noundef %108) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %180, label %117

115:                                              ; preds = %105
  %116 = call fastcc i32 @throttrip_program(ptr noundef %12, ptr noundef %10, ptr noundef null, i32 noundef %2)
  br label %183

117:                                              ; preds = %123, %112
  %118 = phi i32 [ %119, %123 ], [ 0, %112 ]
  %119 = add i32 %118, 1
  %120 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 %119
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %180, label %123

123:                                              ; preds = %117
  %124 = call i32 @strcmp(ptr noundef nonnull %121, ptr noundef %108) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %180, label %117

126:                                              ; preds = %100, %23
  %127 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 1, i32 8
  %128 = load i8, ptr %127, align 4, !range !9
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 1, i32 7
  %132 = load ptr, ptr %131, align 4
  %133 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %132, i32 noundef %1) #11
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %105

135:                                              ; preds = %130, %126
  %136 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 2, i32 8
  %137 = load i8, ptr %136, align 4, !range !9
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 2, i32 7
  %141 = load ptr, ptr %140, align 4
  %142 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %141, i32 noundef %1) #11
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %105

144:                                              ; preds = %139, %135
  %145 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 3, i32 8
  %146 = load i8, ptr %145, align 4, !range !9
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 3, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %150, i32 noundef %1) #11
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %105

153:                                              ; preds = %148, %144
  %154 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 4, i32 8
  %155 = load i8, ptr %154, align 4, !range !9
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 4, i32 7
  %159 = load ptr, ptr %158, align 4
  %160 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %159, i32 noundef %1) #11
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %105

162:                                              ; preds = %157, %153
  %163 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 5, i32 8
  %164 = load i8, ptr %163, align 4, !range !9
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 5, i32 7
  %168 = load ptr, ptr %167, align 4
  %169 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %168, i32 noundef %1) #11
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %105

171:                                              ; preds = %166, %162
  %172 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 6, i32 8
  %173 = load i8, ptr %172, align 4, !range !9
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = getelementptr %struct.tegra_soctherm, ptr %8, i32 0, i32 11, i32 6, i32 7
  %177 = load ptr, ptr %176, align 4
  %178 = call ptr @get_thermal_instance(ptr noundef nonnull %6, ptr noundef %177, i32 noundef %1) #11
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %105

180:                                              ; preds = %123, %117, %112
  %181 = phi ptr [ %109, %112 ], [ null, %117 ], [ %120, %123 ]
  %182 = call fastcc i32 @throttrip_program(ptr noundef %12, ptr noundef %10, ptr noundef %181, i32 noundef %2)
  br label %183

183:                                              ; preds = %180, %175, %171, %115, %61, %57, %53, %49, %21, %14, %3
  %184 = phi i32 [ %182, %180 ], [ -22, %3 ], [ %19, %14 ], [ 0, %49 ], [ 0, %61 ], [ -22, %57 ], [ -22, %53 ], [ %116, %115 ], [ 0, %171 ], [ 0, %175 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %184
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_thermal_instance(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @throttrip_program(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %68

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %2, i32 0, i32 8
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %68, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @llvm.smax.i32(i32 %3, i32 -127000) #11
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 127000) #11
  %17 = getelementptr inbounds %struct.tegra_soctherm, ptr %6, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = sdiv i32 %16, %20
  %22 = getelementptr inbounds %struct.soctherm_throt_cfg, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 13
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = shl i32 %23, 5
  %28 = add i32 %27, 32
  %29 = add i32 %28, %26
  switch i32 %23, label %30 [
    i32 0, label %32
    i32 1, label %31
  ]

30:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %23) #12
  br label %32

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %30, %14
  %33 = phi i32 [ 2, %30 ], [ 1, %14 ], [ 2, %31 ]
  %34 = getelementptr inbounds %struct.tegra_soctherm, ptr %6, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %29
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !56
  %38 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 14
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %37, %40
  %42 = tail call i32 @llvm.cttz.i32(i32 %39, i1 true), !range !18
  %43 = icmp eq i32 %39, 0
  %44 = select i1 %43, i32 -1, i32 %42
  %45 = lshr i32 %39, %44
  %46 = and i32 %45, %21
  %47 = shl i32 %46, %44
  %48 = or i32 %47, %41
  %49 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %1, i32 0, i32 15
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = tail call i32 @llvm.cttz.i32(i32 %50, i1 true), !range !18
  %54 = icmp eq i32 %50, 0
  %55 = select i1 %54, i32 -1, i32 %53
  %56 = lshr i32 %50, %55
  %57 = and i32 %56, %21
  %58 = shl i32 %57, %55
  %59 = or i32 %52, %58
  %60 = and i32 %59, -377
  %61 = shl nuw nsw i32 %33, 5
  %62 = or i32 %60, %61
  %63 = shl nuw nsw i32 %33, 3
  %64 = or i32 %62, %63
  %65 = or i32 %64, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !57
  tail call void @arm_heavy_mb() #11
  %66 = load ptr, ptr %34, align 4
  %67 = getelementptr i8, ptr %66, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #11, !srcloc !12
  br label %68

68:                                               ; preds = %32, %10, %4
  %69 = phi i32 [ 0, %32 ], [ -22, %10 ], [ -22, %4 ]
  ret i32 %69
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_thermal_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 132
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !58
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !59
  tail call void @arm_heavy_mb() #11
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !12
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_thermal_isr_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 132
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !60
  %7 = and i32 %6, 196608
  %8 = and i32 %6, 3
  %9 = and i32 %6, 50331648
  %10 = and i32 %6, 50529027
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %2
  %13 = and i32 %6, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !61
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %10) #11, !srcloc !12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  tail call void @thermal_zone_device_update(ptr noundef %20, i32 noundef 0) #11
  br label %21

21:                                               ; preds = %17, %12
  %22 = icmp eq i32 %7, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %25, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @thermal_zone_device_update(ptr noundef %27, i32 noundef 0) #11
  br label %28

28:                                               ; preds = %23, %21
  %29 = icmp eq i32 %8, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr ptr, ptr %32, i32 3
  %34 = load ptr, ptr %33, align 4
  tail call void @thermal_zone_device_update(ptr noundef %34, i32 noundef 0) #11
  br label %35

35:                                               ; preds = %30, %28
  %36 = icmp eq i32 %9, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void @thermal_zone_device_update(ptr noundef %41, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %37, %35, %2
  %43 = phi i32 [ 0, %37 ], [ 0, %35 ], [ %6, %2 ]
  %44 = xor i32 %10, 50529027
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %45) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !62
  tail call void @arm_heavy_mb() #11
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #11, !srcloc !12
  br label %51

51:                                               ; preds = %47, %42
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_edp_isr(i32 noundef %0, ptr noundef readonly %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 924
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !63
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !64
  tail call void @arm_heavy_mb() #11
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !12
  br label %11

11:                                               ; preds = %4, %2
  %12 = phi i32 [ 2, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_edp_isr_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.tegra_soctherm, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 924
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !65
  %11 = and i32 %10, 2
  %12 = and i32 %10, 4
  %13 = and i32 %10, 8
  %14 = and i32 %10, 15
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %14) #12
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %101, label %17

17:                                               ; preds = %2
  %18 = and i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %10) #11, !srcloc !12
  %21 = and i32 %10, -16
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 928
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %27 = or i32 %26, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !12
  br label %30

30:                                               ; preds = %23, %17
  %31 = icmp eq i32 %11, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr i8, ptr %33, i32 928
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %36 = or i32 %35, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %37, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !12
  br label %39

39:                                               ; preds = %32, %30
  %40 = icmp eq i32 %12, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 928
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %45 = or i32 %44, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #11, !srcloc !12
  br label %48

48:                                               ; preds = %41, %39
  %49 = icmp eq i32 %13, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 928
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %54 = or i32 %53, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr i8, ptr %55, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #11, !srcloc !12
  br label %57

57:                                               ; preds = %50, %48
  br i1 %22, label %68, label %58

58:                                               ; preds = %57
  %59 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %64 = call ptr @__irq_resolve_mapping(ptr noundef %63, i32 noundef 0, ptr noundef nonnull %6) #11
  %65 = icmp eq ptr %64, null
  %66 = load i32, ptr %6, align 4
  %67 = select i1 %65, i32 0, i32 %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @handle_nested_irq(i32 noundef %67) #11
  br label %68

68:                                               ; preds = %62, %58, %57
  br i1 %31, label %79, label %69

69:                                               ; preds = %68
  %70 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %75 = call ptr @__irq_resolve_mapping(ptr noundef %74, i32 noundef 1, ptr noundef nonnull %5) #11
  %76 = icmp eq ptr %75, null
  %77 = load i32, ptr %5, align 4
  %78 = select i1 %76, i32 0, i32 %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @handle_nested_irq(i32 noundef %78) #11
  br label %79

79:                                               ; preds = %73, %69, %68
  br i1 %40, label %90, label %80

80:                                               ; preds = %79
  %81 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %82 = and i32 %81, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %86 = call ptr @__irq_resolve_mapping(ptr noundef %85, i32 noundef 2, ptr noundef nonnull %4) #11
  %87 = icmp eq ptr %86, null
  %88 = load i32, ptr %4, align 4
  %89 = select i1 %87, i32 0, i32 %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @handle_nested_irq(i32 noundef %89) #11
  br label %90

90:                                               ; preds = %84, %80, %79
  br i1 %49, label %101, label %91

91:                                               ; preds = %90
  %92 = load i32, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 3), align 4
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr getelementptr inbounds (%struct.soctherm_oc_irq_chip_data, ptr @soc_irq_cdata, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %97 = call ptr @__irq_resolve_mapping(ptr noundef %96, i32 noundef 3, ptr noundef nonnull %3) #11
  %98 = icmp eq ptr %97, null
  %99 = load i32, ptr %3, align 4
  %100 = select i1 %98, i32 0, i32 %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @handle_nested_irq(i32 noundef %100) #11
  br label %101

101:                                              ; preds = %95, %91, %90, %2
  %102 = phi i32 [ %21, %95 ], [ %21, %91 ], [ %21, %90 ], [ %10, %2 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %102) #12
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !67
  call void @arm_heavy_mb() #11
  %106 = load ptr, ptr %7, align 4
  %107 = getelementptr i8, ptr %106, i32 924
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %102) #11, !srcloc !12
  br label %108

108:                                              ; preds = %104, %101
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @soctherm_oc_irq_lock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @soctherm_oc_irq_sync_unlock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @soctherm_oc_irq_disable(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.soctherm_oc_irq_chip_data, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @soctherm_oc_irq_enable(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.soctherm_oc_irq_chip_data, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @soctherm_oc_irq_set_type(ptr nocapture noundef readnone %0, i32 noundef %1) #9 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_oc_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.soctherm_oc_irq_chip_data, ptr %5, i32 0, i32 1
  %8 = tail call i32 @irq_set_chip(i32 noundef %1, ptr noundef %7) #11
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_irq_domain_xlate_twocell(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = icmp ult i32 %3, 2
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 1230, i32 noundef 9, ptr noundef null) #11
  br label %15

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %4, align 4
  %12 = getelementptr i32, ptr %2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, ptr %5, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @regs_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tegra_soctherm, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.60) #11
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %89, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tegra_soctherm, ptr %6, i32 0, i32 3
  br label %18

18:                                               ; preds = %83, %16
  %19 = phi i32 [ 0, %16 ], [ %84, %83 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr %struct.tegra_tsensor, ptr %9, i32 %19
  %22 = getelementptr %struct.tegra_tsensor, ptr %9, i32 %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %20, i32 4
  %25 = getelementptr i8, ptr %24, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !68
  %27 = lshr i32 %26, 31
  %28 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %28) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %27) #11
  %29 = icmp sgt i32 %26, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.63) #11
  br label %83

31:                                               ; preds = %18
  %32 = lshr i32 %26, 15
  %33 = and i32 %32, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %33) #11
  %34 = lshr i32 %26, 24
  %35 = and i32 %34, 63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %35) #11
  %36 = and i32 %26, 1023
  %37 = add nuw nsw i32 %36, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %37) #11
  %38 = load ptr, ptr %17, align 4
  %39 = load i32, ptr %22, align 4
  %40 = getelementptr i8, ptr %38, i32 16
  %41 = getelementptr i8, ptr %40, i32 %39
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !69
  %43 = lshr i32 %42, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %43) #11
  %44 = lshr i32 %42, 8
  %45 = and i32 %44, 255
  %46 = mul nuw nsw i32 %45, 1000
  %47 = and i32 %42, 128
  %48 = icmp eq i32 %47, 0
  %49 = add nuw nsw i32 %46, 500
  %50 = select i1 %48, i32 %46, i32 %49
  %51 = and i32 %42, 1
  %52 = icmp eq i32 %51, 0
  %53 = sub nsw i32 0, %50
  %54 = select i1 %52, i32 %50, i32 %53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %54) #11
  %55 = load ptr, ptr %17, align 4
  %56 = load i32, ptr %22, align 4
  %57 = getelementptr i8, ptr %55, i32 12
  %58 = getelementptr i8, ptr %57, i32 %56
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !70
  %60 = lshr i32 %59, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %60) #11
  %61 = and i32 %59, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %61) #11
  %62 = load ptr, ptr %17, align 4
  %63 = load i32, ptr %22, align 4
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !71
  %66 = and i32 %65, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %66) #11
  %67 = lshr i32 %65, 8
  %68 = and i32 %67, 1048575
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef %68) #11
  %69 = lshr i32 %65, 4
  %70 = and i32 %69, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %70) #11
  %71 = lshr i32 %65, 3
  %72 = and i32 %71, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %72) #11
  %73 = lshr i32 %65, 2
  %74 = and i32 %73, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %74) #11
  %75 = load ptr, ptr %17, align 4
  %76 = load i32, ptr %22, align 4
  %77 = getelementptr i8, ptr %75, i32 8
  %78 = getelementptr i8, ptr %77, i32 %76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !72
  %80 = lshr i32 %79, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %80) #11
  %81 = shl i32 %79, 16
  %82 = ashr exact i32 %81, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %82) #11
  br label %83

83:                                               ; preds = %31, %30
  %84 = add nuw i32 %19, 1
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %18, label %89

89:                                               ; preds = %83, %2
  %90 = getelementptr inbounds %struct.tegra_soctherm, ptr %6, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 448
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %93) #11
  %94 = load ptr, ptr %90, align 4
  %95 = getelementptr i8, ptr %94, i32 452
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !74
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %96) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.63) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.78) #11
  %97 = load ptr, ptr %90, align 4
  %98 = getelementptr i8, ptr %97, i32 456
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !75
  %100 = lshr i32 %99, 24
  %101 = mul nuw nsw i32 %100, 1000
  %102 = and i32 %99, 8388608
  %103 = icmp eq i32 %102, 0
  %104 = add nuw nsw i32 %101, 500
  %105 = select i1 %103, i32 %101, i32 %104
  %106 = and i32 %99, 65536
  %107 = icmp eq i32 %106, 0
  %108 = sub nsw i32 0, %105
  %109 = select i1 %107, i32 %105, i32 %108
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.79, i32 noundef %109) #11
  %110 = lshr i32 %99, 8
  %111 = and i32 %110, 255
  %112 = mul nuw nsw i32 %111, 1000
  %113 = and i32 %99, 128
  %114 = icmp eq i32 %113, 0
  %115 = add nuw nsw i32 %112, 500
  %116 = select i1 %114, i32 %112, i32 %115
  %117 = and i32 %99, 1
  %118 = icmp eq i32 %117, 0
  %119 = sub nsw i32 0, %116
  %120 = select i1 %118, i32 %116, i32 %119
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %120) #11
  %121 = load ptr, ptr %90, align 4
  %122 = getelementptr i8, ptr %121, i32 460
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !76
  %124 = lshr i32 %123, 8
  %125 = and i32 %124, 255
  %126 = mul nuw nsw i32 %125, 1000
  %127 = and i32 %123, 128
  %128 = icmp eq i32 %127, 0
  %129 = add nuw nsw i32 %126, 500
  %130 = select i1 %128, i32 %126, i32 %129
  %131 = and i32 %123, 1
  %132 = icmp eq i32 %131, 0
  %133 = sub nsw i32 0, %130
  %134 = select i1 %132, i32 %130, i32 %133
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.81, i32 noundef %134) #11
  %135 = lshr i32 %123, 24
  %136 = mul nuw nsw i32 %135, 1000
  %137 = and i32 %123, 8388608
  %138 = icmp eq i32 %137, 0
  %139 = add nuw nsw i32 %136, 500
  %140 = select i1 %138, i32 %136, i32 %139
  %141 = and i32 %123, 65536
  %142 = icmp eq i32 %141, 0
  %143 = sub nsw i32 0, %140
  %144 = select i1 %142, i32 %140, i32 %143
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %144) #11
  %145 = load ptr, ptr %7, align 4
  %146 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %145, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %234, label %149

149:                                              ; preds = %228, %89
  %150 = phi i32 [ %229, %228 ], [ 0, %89 ]
  %151 = getelementptr ptr, ptr %11, i32 %150
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %153) #11
  br label %154

154:                                              ; preds = %224, %149
  %155 = phi i32 [ 0, %149 ], [ %226, %224 ]
  %156 = load ptr, ptr %151, align 4
  %157 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %156, i32 0, i32 13
  %158 = load i16, ptr %157, align 4
  %159 = load ptr, ptr %90, align 4
  %160 = zext i16 %158 to i32
  %161 = shl i32 %155, 5
  %162 = add i32 %161, %160
  %163 = getelementptr i8, ptr %159, i32 %162
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !77
  %165 = load ptr, ptr %151, align 4
  %166 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %165, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, %164
  %169 = tail call i32 @llvm.cttz.i32(i32 %167, i1 true), !range !18
  %170 = icmp eq i32 %167, 0
  %171 = select i1 %170, i32 -1, i32 %169
  %172 = lshr i32 %168, %171
  %173 = load ptr, ptr %7, align 4
  %174 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %173, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = sub i32 32, %175
  %177 = and i32 %176, 255
  %178 = shl i32 %172, %177
  %179 = ashr i32 %178, %177
  %180 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %173, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = mul i32 %179, %181
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, i32 noundef %155, i32 noundef %182) #11
  %183 = load ptr, ptr %151, align 4
  %184 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %183, i32 0, i32 15
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, %164
  %187 = tail call i32 @llvm.cttz.i32(i32 %185, i1 true), !range !18
  %188 = icmp eq i32 %185, 0
  %189 = select i1 %188, i32 -1, i32 %187
  %190 = lshr i32 %186, %189
  %191 = load ptr, ptr %7, align 4
  %192 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %191, i32 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = sub i32 32, %193
  %195 = and i32 %194, 255
  %196 = shl i32 %190, %195
  %197 = ashr i32 %196, %195
  %198 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %191, i32 0, i32 5
  %199 = load i32, ptr %198, align 4
  %200 = mul i32 %197, %199
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %200) #11
  %201 = lshr i32 %164, 8
  %202 = and i32 %201, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %202) #11
  %203 = lshr i32 %164, 5
  %204 = and i32 %203, 3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.86) #11
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %209, label %206

206:                                              ; preds = %154
  %207 = getelementptr inbounds [3 x ptr], ptr @switch.table.regs_show.116, i32 0, i32 %204
  %208 = load ptr, ptr %207, align 4
  br label %209

209:                                              ; preds = %206, %154
  %210 = phi ptr [ %208, %206 ], [ @.str.91, %154 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef nonnull %210) #11
  %211 = lshr i32 %164, 3
  %212 = and i32 %211, 3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.92) #11
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds [3 x ptr], ptr @switch.table.regs_show.116, i32 0, i32 %212
  %216 = load ptr, ptr %215, align 4
  br label %217

217:                                              ; preds = %214, %209
  %218 = phi ptr [ %216, %214 ], [ @.str.91, %209 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef nonnull %218) #11
  %219 = and i32 %164, 3
  switch i32 %219, label %220 [
    i32 0, label %224
    i32 1, label %223
  ]

220:                                              ; preds = %217
  %221 = icmp eq i32 %219, 2
  %222 = select i1 %221, ptr @.str.96, ptr @.str.97
  br label %224

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223, %220, %217
  %225 = phi ptr [ @.str.94, %217 ], [ %222, %220 ], [ @.str.95, %223 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull %225) #11
  %226 = add nuw nsw i32 %155, 1
  %227 = icmp eq i32 %226, 4
  br i1 %227, label %228, label %154

228:                                              ; preds = %224
  %229 = add nuw i32 %150, 1
  %230 = load ptr, ptr %7, align 4
  %231 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %230, i32 0, i32 3
  %232 = load i32, ptr %231, align 4
  %233 = icmp ult i32 %229, %232
  br i1 %233, label %149, label %234

234:                                              ; preds = %228, %89
  %235 = load ptr, ptr %90, align 4
  %236 = getelementptr i8, ptr %235, i32 148
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !78
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, ptr @.str.100, ptr @.str.99
  %241 = and i32 %237, 4
  %242 = icmp eq i32 %241, 0
  %243 = select i1 %242, ptr @.str.100, ptr @.str.99
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull %240, ptr noundef nonnull %243) #11
  %244 = load ptr, ptr %90, align 4
  %245 = getelementptr i8, ptr %244, i32 16
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef 0, i32 noundef %246) #11
  %247 = load ptr, ptr %90, align 4
  %248 = getelementptr i8, ptr %247, i32 20
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %249) #11
  %250 = load ptr, ptr %90, align 4
  %251 = getelementptr i8, ptr %250, i32 48
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef %252) #11
  %253 = load ptr, ptr %90, align 4
  %254 = getelementptr i8, ptr %253, i32 52
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %255) #11
  %256 = load ptr, ptr %90, align 4
  %257 = getelementptr i8, ptr %256, i32 80
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef 2, i32 noundef %258) #11
  %259 = load ptr, ptr %90, align 4
  %260 = getelementptr i8, ptr %259, i32 84
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %261) #11
  %262 = load ptr, ptr %90, align 4
  %263 = getelementptr i8, ptr %262, i32 112
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef 3, i32 noundef %264) #11
  %265 = load ptr, ptr %90, align 4
  %266 = getelementptr i8, ptr %265, i32 116
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %267) #11
  %268 = load ptr, ptr %90, align 4
  %269 = getelementptr i8, ptr %268, i32 128
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !81
  %271 = load ptr, ptr %11, align 4
  %272 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %271, i32 0, i32 10
  %273 = load i32, ptr %272, align 4
  %274 = and i32 %273, %270
  %275 = tail call i32 @llvm.cttz.i32(i32 %273, i1 true), !range !18
  %276 = icmp eq i32 %273, 0
  %277 = select i1 %276, i32 -1, i32 %275
  %278 = lshr i32 %274, %277
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.103, i32 noundef %278) #11
  %279 = load ptr, ptr %7, align 4
  %280 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %279, i32 0, i32 3
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %312, label %283

283:                                              ; preds = %283, %234
  %284 = phi i32 [ %307, %283 ], [ 0, %234 ]
  %285 = getelementptr ptr, ptr %11, i32 %284
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %286, i32 0, i32 9
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, %270
  %290 = tail call i32 @llvm.cttz.i32(i32 %288, i1 true), !range !18
  %291 = icmp eq i32 %288, 0
  %292 = select i1 %291, i32 -1, i32 %290
  %293 = lshr i32 %289, %292
  %294 = load ptr, ptr %286, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %294, i32 noundef %293) #11
  %295 = load ptr, ptr %285, align 4
  %296 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %295, i32 0, i32 11
  %297 = load i32, ptr %296, align 4
  %298 = and i32 %297, %270
  %299 = tail call i32 @llvm.cttz.i32(i32 %297, i1 true), !range !18
  %300 = icmp eq i32 %297, 0
  %301 = select i1 %300, i32 -1, i32 %299
  %302 = lshr i32 %298, %301
  %303 = load ptr, ptr %7, align 4
  %304 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %303, i32 0, i32 5
  %305 = load i32, ptr %304, align 4
  %306 = mul i32 %302, %305
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.105, i32 noundef %306) #11
  %307 = add nuw i32 %284, 1
  %308 = load ptr, ptr %7, align 4
  %309 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %308, i32 0, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = icmp ult i32 %307, %310
  br i1 %311, label %283, label %312

312:                                              ; preds = %283, %234
  %313 = load ptr, ptr %90, align 4
  %314 = getelementptr i8, ptr %313, i32 1024
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !82
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.63) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.106, i32 noundef %315) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.107) #11
  %316 = load ptr, ptr %90, align 4
  %317 = getelementptr i8, ptr %316, i32 1064
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !83
  %319 = lshr i32 %318, 12
  %320 = and i32 %319, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %320) #11
  %321 = lshr i32 %318, 4
  %322 = and i32 %321, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.109, i32 noundef %322) #11
  %323 = and i32 %318, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.110, i32 noundef %323) #11
  %324 = load ptr, ptr %90, align 4
  %325 = getelementptr i8, ptr %324, i32 1048
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %325) #11, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !84
  %327 = load ptr, ptr %7, align 4
  %328 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %327, i32 0, i32 7
  %329 = load i8, ptr %328, align 4, !range !9
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %312
  %332 = lshr i32 %326, 12
  %333 = and i32 %332, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef %333) #11
  %334 = lshr i32 %326, 4
  %335 = and i32 %334, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %335) #11
  br label %336

336:                                              ; preds = %331, %312
  %337 = phi ptr [ @.str.110, %331 ], [ @.str.111, %312 ]
  %338 = and i32 %326, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %337, i32 noundef %338) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = tail call fastcc i32 @soctherm_clk_enable(ptr noundef %2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soctherm_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_soctherm, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @soctherm_clk_enable(ptr noundef %2, i1 noundef zeroext true)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  tail call fastcc void @soctherm_init(ptr noundef %2)
  %10 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %6, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tegra_soctherm, ptr %4, i32 0, i32 9
  %15 = getelementptr inbounds %struct.tegra_soctherm_soc, ptr %6, i32 0, i32 2
  br label %20

16:                                               ; preds = %20
  %17 = add nuw i32 %21, 1
  %18 = load i32, ptr %10, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16, %13
  %21 = phi i32 [ 0, %13 ], [ %17, %16 ]
  %22 = load ptr, ptr %14, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr ptr, ptr %23, i32 %21
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_tsensor_group, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr ptr, ptr %22, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = tail call fastcc i32 @tegra_soctherm_set_hwtrips(ptr noundef %0, ptr noundef %25, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %16, label %33

33:                                               ; preds = %20, %1
  %34 = phi ptr [ @.str.114, %1 ], [ @.str.115, %20 ]
  %35 = phi i32 [ %7, %1 ], [ %31, %20 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %34) #12
  br label %36

36:                                               ; preds = %33, %16, %9
  %37 = phi i32 [ 0, %9 ], [ %35, %33 ], [ 0, %16 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152556647}
!12 = !{i64 4095707}
!13 = !{i64 2152557037}
!14 = !{i64 2152557347}
!15 = !{i64 4096125}
!16 = !{i64 2152647113}
!17 = !{i64 2152647459}
!18 = !{i32 0, i32 33}
!19 = !{i64 2152648193}
!20 = !{i64 2152648523}
!21 = !{i64 2152556467}
!22 = !{i64 2152555817}
!23 = !{i64 2152637569}
!24 = !{i64 2152638070}
!25 = !{i64 2152638603}
!26 = !{i64 2152639133}
!27 = !{i64 2152597249}
!28 = !{i64 2152598869}
!29 = !{i64 2152628791}
!30 = !{i64 2152629839}
!31 = !{i64 2152630727}
!32 = !{i64 2152631550}
!33 = !{i64 2152632604}
!34 = !{i64 2152633385}
!35 = !{i64 2152634082}
!36 = !{i64 2152634892}
!37 = !{i64 2152635802}
!38 = !{i64 2152639769}
!39 = !{i64 2152640344}
!40 = !{i64 2152640834}
!41 = !{i64 2152641245}
!42 = !{i64 2152642778}
!43 = !{i64 2152643336}
!44 = !{i64 2152643666}
!45 = !{i64 2152575311}
!46 = !{i64 2152576310}
!47 = !{i64 2152619630}
!48 = !{i64 2152557974}
!49 = !{i64 2152586404}
!50 = !{i64 2152586858}
!51 = !{i64 2152587409}
!52 = !{i64 2152587980}
!53 = !{i64 2152589963}
!54 = !{i64 2152585472}
!55 = !{i64 2152585932}
!56 = !{i64 2152577494}
!57 = !{i64 2152579040}
!58 = !{i64 2152594454}
!59 = !{i64 2152594640}
!60 = !{i64 2152595096}
!61 = !{i64 2152595947}
!62 = !{i64 2152596787}
!63 = !{i64 2152604937}
!64 = !{i64 2152605125}
!65 = !{i64 2152602389}
!66 = !{i64 2152603335}
!67 = !{i64 2152604474}
!68 = !{i64 2152608130}
!69 = !{i64 2152609015}
!70 = !{i64 2152609698}
!71 = !{i64 2152610373}
!72 = !{i64 2152611720}
!73 = !{i64 2152612243}
!74 = !{i64 2152612580}
!75 = !{i64 2152612917}
!76 = !{i64 2152613440}
!77 = !{i64 2152614091}
!78 = !{i64 2152614932}
!79 = !{i64 2152615410}
!80 = !{i64 2152615880}
!81 = !{i64 2152616213}
!82 = !{i64 2152616985}
!83 = !{i64 2152617322}
!84 = !{i64 2152618191}
