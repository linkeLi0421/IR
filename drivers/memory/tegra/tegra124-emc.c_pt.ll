; ModuleID = '/llk/IR/drivers/memory/tegra/tegra124-emc.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra124-emc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.tegra_emc = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.emc_timing, ptr, i32, %struct.anon.68, %struct.icc_provider, [2 x %struct.emc_rate_request], %struct.mutex }
%struct.emc_timing = type { i32, [143 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.68 = type { ptr, i32, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.emc_rate_request = type { i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.67 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.67 = type { ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.icc_node_data = type { ptr, i32 }

@__initcall__kmod_tegra124_emc__220_1532_tegra_emc_driver_init6 = internal global ptr @tegra_emc_driver_init, section ".initcall6.init", align 4
@tegra_emc_driver = internal global %struct.platform_driver { ptr @tegra_emc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_emc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_emc_driver_exit = internal global ptr @tegra_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author221 = internal constant [60 x i8] c"tegra124_emc.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description222 = internal constant [52 x i8] c"tegra124_emc.description=NVIDIA Tegra124 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file223 = internal constant [52 x i8] c"tegra124_emc.file=drivers/memory/tegra/tegra124-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [28 x i8] c"tegra124_emc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-emc\00", align 1
@tegra_emc_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_emc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&emc->rate_lock\00", align 1
@tegra_emc_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"no memory timings for RAM code %u found in DT\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to get EMC clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"nvidia,ram-code\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"timing %pOFn: failed to read rate: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"nvidia,emc-configuration\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"timing %pOFn: failed to read emc burst data: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"nvidia,emc-auto-cal-config\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"timing %pOFn: failed to read emc_auto_cal_config: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"nvidia,emc-auto-cal-config2\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"timing %pOFn: failed to read emc_auto_cal_config2: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"nvidia,emc-auto-cal-config3\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"timing %pOFn: failed to read emc_auto_cal_config3: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"nvidia,emc-auto-cal-interval\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"timing %pOFn: failed to read emc_auto_cal_interval: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"nvidia,emc-bgbias-ctl0\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"timing %pOFn: failed to read emc_bgbias_ctl0: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"nvidia,emc-cfg\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"timing %pOFn: failed to read emc_cfg: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"nvidia,emc-cfg-2\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"timing %pOFn: failed to read emc_cfg_2: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"nvidia,emc-ctt-term-ctrl\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"timing %pOFn: failed to read emc_ctt_term_ctrl: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"nvidia,emc-mode-1\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"timing %pOFn: failed to read emc_mode_1: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"nvidia,emc-mode-2\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"timing %pOFn: failed to read emc_mode_2: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"nvidia,emc-mode-4\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"timing %pOFn: failed to read emc_mode_4: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"nvidia,emc-mode-reset\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"timing %pOFn: failed to read emc_mode_reset: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"nvidia,emc-mrs-wait-cnt\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"timing %pOFn: failed to read emc_mrs_wait_cnt: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"nvidia,emc-sel-dpd-ctrl\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"timing %pOFn: failed to read emc_sel_dpd_ctrl: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"nvidia,emc-xm2dqspadctrl2\00", align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"timing %pOFn: failed to read emc_xm2dqspadctrl2: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"nvidia,emc-zcal-cnt-long\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"timing %pOFn: failed to read emc_zcal_cnt_long: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"nvidia,emc-zcal-interval\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"timing %pOFn: failed to read emc_zcal_interval: %d\0A\00", align 1
@emc_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"%ubit DRAM bus\0A\00", align 1
@emc_burst_regs = internal unnamed_addr constant [143 x i32] [i32 44, i32 48, i32 192, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 184, i32 92, i32 720, i32 96, i32 1384, i32 1128, i32 332, i32 336, i32 340, i32 1388, i32 1396, i32 1012, i32 1016, i32 1344, i32 100, i32 104, i32 108, i32 716, i32 112, i32 116, i32 988, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 996, i32 148, i32 344, i32 348, i32 152, i32 156, i32 160, i32 164, i32 168, i32 276, i32 176, i32 180, i32 260, i32 700, i32 704, i32 808, i32 812, i32 816, i32 820, i32 824, i32 828, i32 832, i32 836, i32 1184, i32 1188, i32 1192, i32 1196, i32 1200, i32 1204, i32 1208, i32 1212, i32 840, i32 844, i32 848, i32 852, i32 856, i32 860, i32 864, i32 868, i32 1132, i32 1136, i32 1140, i32 1360, i32 1364, i32 1368, i32 1216, i32 1220, i32 1224, i32 1228, i32 1232, i32 1236, i32 1240, i32 1244, i32 936, i32 940, i32 944, i32 948, i32 952, i32 956, i32 960, i32 964, i32 1312, i32 1316, i32 1320, i32 1324, i32 1328, i32 1332, i32 1336, i32 1340, i32 872, i32 876, i32 880, i32 884, i32 1248, i32 1252, i32 1256, i32 1260, i32 752, i32 1156, i32 1160, i32 772, i32 1356, i32 776, i32 1020, i32 780, i32 784, i32 788, i32 792, i32 248, i32 800, i32 1348, i32 1352, i32 1148, i32 1152, i32 256, i32 740, i32 196, i32 188, i32 728, i32 1376, i32 992, i32 1380], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = private unnamed_addr constant [24 x i8] c"no timing for rate %lu\0A\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"timing update timed out\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"auto cal disable timed out\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"clock change timed out\0A\00", align 1
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@.str.50 = private unnamed_addr constant [36 x i8] c"failed to set OPP supported HW: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"OPP table not found, please update your device tree\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"failed to add OPP table: %d\0A\00", align 1
@tegra_emc_opp_table_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"OPP HW ver. 0x%x, current clock rate %lu MHz\0A\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"failed to initialize OPP clock: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"failed to set rate range [%lu-%lu] for %pC\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"available_rates\00", align 1
@tegra_emc_debug_available_rates_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_available_rates_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.57 = private unnamed_addr constant [9 x i8] c"min_rate\00", align 1
@tegra_emc_debug_min_rate_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.58 = private unnamed_addr constant [9 x i8] c"max_rate\00", align 1
@tegra_emc_debug_max_rate_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.59 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%s%lu\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@emc_request_rate._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.emc_request_rate = private unnamed_addr constant [17 x i8] c"emc_request_rate\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"%s: type %u: out of range: %lu %lu\0A\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"External Memory Controller\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"External Memory (DRAM)\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"failed to initialize ICC: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_description222, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__exitcall_tegra_emc_driver_exit, ptr @__initcall__kmod_tegra124_emc__220_1532_tegra_emc_driver_init6, ptr @tegra_emc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_emc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_emc_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_emc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_emc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 784, i32 noundef 3520) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %286, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_emc_probe.__key) #11
  store ptr %5, ptr %6, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  %11 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %286

15:                                               ; preds = %8
  %16 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %5) #11
  %17 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %286

21:                                               ; preds = %15
  %22 = tail call i32 @tegra_read_ram_code() #11
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @of_get_next_child(ptr noundef %24, ptr noundef null) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %191, label %27

27:                                               ; preds = %34, %21
  %28 = phi ptr [ %35, %34 ], [ %25, %21 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %28, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #11
  %30 = icmp sgt i32 %29, -1
  %31 = load i32, ptr %4, align 4
  %32 = icmp eq i32 %31, %22
  %33 = select i1 %30, i1 %32, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = call ptr @of_get_next_child(ptr noundef %24, ptr noundef nonnull %28) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %191, label %27

37:                                               ; preds = %27
  %38 = call ptr @of_get_next_child(ptr noundef nonnull %28, ptr noundef null) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %40, %37
  %41 = phi i32 [ %43, %40 ], [ 0, %37 ]
  %42 = phi ptr [ %44, %40 ], [ %38, %37 ]
  %43 = add i32 %41, 1
  %44 = call ptr @of_get_next_child(ptr noundef %28, ptr noundef nonnull %42) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %40

46:                                               ; preds = %40, %37
  %47 = phi i32 [ 0, %37 ], [ %43, %40 ]
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 644) #11
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %50, label %52, !prof !9

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 8
  store ptr null, ptr %51, align 4
  br label %186

52:                                               ; preds = %46
  %53 = load ptr, ptr %6, align 4
  %54 = extractvalue { i32, i1 } %48, 0
  %55 = call noalias ptr @devm_kmalloc(ptr noundef %53, i32 noundef %54, i32 noundef 3520) #11
  %56 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 8
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %186, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 9
  store i32 %47, ptr %59, align 4
  %60 = call ptr @of_get_next_child(ptr noundef %28, ptr noundef null) #11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %188, label %62

62:                                               ; preds = %182, %58
  %63 = phi i32 [ %183, %182 ], [ 0, %58 ]
  %64 = phi ptr [ %184, %182 ], [ %60, %58 ]
  %65 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %66 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.8, ptr noundef nonnull %64, i32 noundef %66) #12
  br label %180

70:                                               ; preds = %62
  %71 = getelementptr %struct.emc_timing, ptr %65, i32 %63
  %72 = load i32, ptr %3, align 4
  store i32 %72, ptr %71, align 4
  %73 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 1
  %74 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.9, ptr noundef %73, i32 noundef 143, i32 noundef 0) #11
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.10, ptr noundef nonnull %64, i32 noundef %74) #12
  br label %180

78:                                               ; preds = %70
  %79 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 2
  %80 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.11, ptr noundef %79, i32 noundef 1, i32 noundef 0) #11
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.12, ptr noundef nonnull %64, i32 noundef %80) #12
  br label %180

84:                                               ; preds = %78
  %85 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 3
  %86 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.13, ptr noundef %85, i32 noundef 1, i32 noundef 0) #11
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.14, ptr noundef nonnull %64, i32 noundef %86) #12
  br label %180

90:                                               ; preds = %84
  %91 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 4
  %92 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.15, ptr noundef %91, i32 noundef 1, i32 noundef 0) #11
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.16, ptr noundef nonnull %64, i32 noundef %92) #12
  br label %180

96:                                               ; preds = %90
  %97 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 5
  %98 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.17, ptr noundef %97, i32 noundef 1, i32 noundef 0) #11
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.18, ptr noundef nonnull %64, i32 noundef %98) #12
  br label %180

102:                                              ; preds = %96
  %103 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 6
  %104 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.19, ptr noundef %103, i32 noundef 1, i32 noundef 0) #11
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.20, ptr noundef nonnull %64, i32 noundef %104) #12
  br label %180

108:                                              ; preds = %102
  %109 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 7
  %110 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.21, ptr noundef %109, i32 noundef 1, i32 noundef 0) #11
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.22, ptr noundef nonnull %64, i32 noundef %110) #12
  br label %180

114:                                              ; preds = %108
  %115 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 8
  %116 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.23, ptr noundef %115, i32 noundef 1, i32 noundef 0) #11
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.24, ptr noundef nonnull %64, i32 noundef %116) #12
  br label %180

120:                                              ; preds = %114
  %121 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 9
  %122 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.25, ptr noundef %121, i32 noundef 1, i32 noundef 0) #11
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.26, ptr noundef nonnull %64, i32 noundef %122) #12
  br label %180

126:                                              ; preds = %120
  %127 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 10
  %128 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.27, ptr noundef %127, i32 noundef 1, i32 noundef 0) #11
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.28, ptr noundef nonnull %64, i32 noundef %128) #12
  br label %180

132:                                              ; preds = %126
  %133 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 11
  %134 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.29, ptr noundef %133, i32 noundef 1, i32 noundef 0) #11
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.30, ptr noundef nonnull %64, i32 noundef %134) #12
  br label %180

138:                                              ; preds = %132
  %139 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 12
  %140 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.31, ptr noundef %139, i32 noundef 1, i32 noundef 0) #11
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.32, ptr noundef nonnull %64, i32 noundef %140) #12
  br label %180

144:                                              ; preds = %138
  %145 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 13
  %146 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.33, ptr noundef %145, i32 noundef 1, i32 noundef 0) #11
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.34, ptr noundef nonnull %64, i32 noundef %146) #12
  br label %180

150:                                              ; preds = %144
  %151 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 14
  %152 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.35, ptr noundef %151, i32 noundef 1, i32 noundef 0) #11
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.36, ptr noundef nonnull %64, i32 noundef %152) #12
  br label %180

156:                                              ; preds = %150
  %157 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 15
  %158 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.37, ptr noundef %157, i32 noundef 1, i32 noundef 0) #11
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.38, ptr noundef nonnull %64, i32 noundef %158) #12
  br label %180

162:                                              ; preds = %156
  %163 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 16
  %164 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.39, ptr noundef %163, i32 noundef 1, i32 noundef 0) #11
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.40, ptr noundef nonnull %64, i32 noundef %164) #12
  br label %180

168:                                              ; preds = %162
  %169 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 17
  %170 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.41, ptr noundef %169, i32 noundef 1, i32 noundef 0) #11
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.42, ptr noundef nonnull %64, i32 noundef %170) #12
  br label %180

174:                                              ; preds = %168
  %175 = getelementptr %struct.emc_timing, ptr %65, i32 %63, i32 18
  %176 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %64, ptr noundef nonnull @.str.43, ptr noundef %175, i32 noundef 1, i32 noundef 0) #11
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.44, ptr noundef nonnull %64, i32 noundef %176) #12
  br label %180

180:                                              ; preds = %178, %172, %166, %160, %154, %148, %142, %136, %130, %124, %118, %112, %106, %100, %94, %88, %82, %76, %68
  %181 = phi i32 [ %176, %178 ], [ %170, %172 ], [ %164, %166 ], [ %158, %160 ], [ %152, %154 ], [ %146, %148 ], [ %140, %142 ], [ %134, %136 ], [ %128, %130 ], [ %122, %124 ], [ %116, %118 ], [ %110, %112 ], [ %104, %106 ], [ %98, %100 ], [ %92, %94 ], [ %86, %88 ], [ %80, %82 ], [ %74, %76 ], [ %66, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @of_node_put(ptr noundef nonnull %64) #11
  br label %186

182:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %183 = add i32 %63, 1
  %184 = call ptr @of_get_next_child(ptr noundef %28, ptr noundef nonnull %64) #11
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %62

186:                                              ; preds = %180, %52, %50
  %187 = phi i32 [ -12, %50 ], [ -12, %52 ], [ %181, %180 ]
  call void @of_node_put(ptr noundef nonnull %28) #11
  br label %286

188:                                              ; preds = %182, %58
  %189 = load ptr, ptr %56, align 4
  %190 = load i32, ptr %59, align 4
  call void @sort(ptr noundef %189, i32 noundef %190, i32 noundef 644, ptr noundef nonnull @cmp_timings, ptr noundef null) #11
  call void @of_node_put(ptr noundef nonnull %28) #11
  br label %194

191:                                              ; preds = %34, %21
  %192 = load i1, ptr @tegra_emc_probe.__print_once, align 1
  br i1 %192, label %194, label %193

193:                                              ; preds = %191
  store i1 true, ptr @tegra_emc_probe.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %22) #12
  br label %194

194:                                              ; preds = %193, %191, %188
  %195 = load ptr, ptr %11, align 4
  %196 = getelementptr i8, ptr %195, i32 260
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %198 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 4
  store i32 %197, ptr %198, align 4
  %199 = and i32 %197, 16
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, i32 32, i32 64
  %202 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 5
  store i32 %201, ptr %202, align 4
  %203 = load i1, ptr @emc_init.__print_once, align 1
  br i1 %203, label %207, label %204

204:                                              ; preds = %194
  store i1 true, ptr @emc_init.__print_once, align 1
  %205 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %205, ptr noundef nonnull @.str.45, i32 noundef %201) #12
  %206 = load i32, ptr %198, align 4
  br label %207

207:                                              ; preds = %204, %194
  %208 = phi i32 [ %197, %194 ], [ %206, %204 ]
  %209 = and i32 %208, 3
  store i32 %209, ptr %198, align 4
  %210 = load ptr, ptr %17, align 4
  %211 = call i32 @tegra_mc_get_emem_device_count(ptr noundef %210) #11
  %212 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 6
  store i32 %211, ptr %212, align 4
  br label %213

213:                                              ; preds = %213, %207
  %214 = phi i32 [ 0, %207 ], [ %221, %213 ]
  %215 = load ptr, ptr %11, align 4
  %216 = getelementptr [143 x i32], ptr @emc_burst_regs, i32 0, i32 %214
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr i8, ptr %215, i32 %217
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %220 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 7, i32 1, i32 %214
  store i32 %219, ptr %220, align 4
  %221 = add nuw nsw i32 %214, 1
  %222 = icmp eq i32 %221, 143
  br i1 %222, label %223, label %213

223:                                              ; preds = %213
  %224 = load ptr, ptr %11, align 4
  %225 = getelementptr i8, ptr %224, i32 12
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %227 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 7, i32 7
  store i32 %226, ptr %227, align 4
  %228 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 7, i32 5
  store i32 0, ptr %228, align 4
  %229 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 7, i32 17
  store i32 0, ptr %229, align 4
  %230 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 7, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %230, i8 0, i64 16, i1 false) #11
  %231 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %231, align 8
  call void @tegra124_clk_set_emc_callbacks(ptr noundef nonnull @tegra_emc_prepare_timing_change, ptr noundef nonnull @tegra_emc_complete_timing_change) #11
  %232 = call i32 @devm_add_action(ptr noundef %5, ptr noundef nonnull @devm_tegra_emc_unset_callback, ptr noundef null) #11
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %223
  call void @tegra124_clk_set_emc_callbacks(ptr noundef null, ptr noundef null) #11
  br label %286

235:                                              ; preds = %223
  %236 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.4) #11
  %237 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 3
  store ptr %236, ptr %237, align 4
  %238 = icmp ugt ptr %236, inttoptr (i32 -4096 to ptr)
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = ptrtoint ptr %236 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %240) #12
  br label %286

241:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %242 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %243 = shl nuw i32 1, %242
  store i32 %243, ptr %2, align 4
  %244 = load ptr, ptr %6, align 4
  %245 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef %244, ptr noundef nonnull %2, i32 noundef 1) #11
  %246 = icmp ugt ptr %245, inttoptr (i32 -4096 to ptr)
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = ptrtoint ptr %245 to i32
  %249 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.50, i32 noundef %248) #12
  br label %277

250:                                              ; preds = %241
  %251 = load ptr, ptr %6, align 4
  %252 = call i32 @dev_pm_opp_of_add_table(ptr noundef %251) #11
  switch i32 %252, label %255 [
    i32 0, label %257
    i32 -19, label %253
  ]

253:                                              ; preds = %250
  %254 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %254, ptr noundef nonnull @.str.51) #12
  br label %275

255:                                              ; preds = %250
  %256 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.52, i32 noundef %252) #12
  br label %275

257:                                              ; preds = %250
  %258 = load i1, ptr @tegra_emc_opp_table_init.__print_once, align 1
  br i1 %258, label %265, label %259

259:                                              ; preds = %257
  store i1 true, ptr @tegra_emc_opp_table_init.__print_once, align 1
  %260 = load ptr, ptr %6, align 4
  %261 = load i32, ptr %2, align 4
  %262 = load ptr, ptr %237, align 4
  %263 = call i32 @clk_get_rate(ptr noundef %262) #11
  %264 = udiv i32 %263, 1000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %260, ptr noundef nonnull @.str.53, i32 noundef %261, i32 noundef %264) #12
  br label %265

265:                                              ; preds = %259, %257
  %266 = load ptr, ptr %6, align 4
  %267 = load ptr, ptr %237, align 4
  %268 = call i32 @clk_get_rate(ptr noundef %267) #11
  %269 = call i32 @dev_pm_opp_set_rate(ptr noundef %266, i32 noundef %268) #11
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %280

272:                                              ; preds = %265
  %273 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.54, i32 noundef %269) #12
  %274 = load ptr, ptr %6, align 4
  call void @dev_pm_opp_of_remove_table(ptr noundef %274) #11
  br label %275

275:                                              ; preds = %272, %255, %253
  %276 = phi i32 [ -19, %253 ], [ %252, %255 ], [ %269, %272 ]
  call void @dev_pm_opp_put_supported_hw(ptr noundef %245) #11
  br label %277

277:                                              ; preds = %275, %247
  %278 = phi i32 [ %248, %247 ], [ %276, %275 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %277, %271
  %281 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 12, i32 0
  store i32 0, ptr %281, align 4
  %282 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 12, i32 0, i32 1
  store i32 -1, ptr %282, align 4
  %283 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 12, i32 1
  store i32 0, ptr %283, align 4
  %284 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 12, i32 1, i32 1
  store i32 -1, ptr %284, align 4
  call fastcc void @emc_debugfs_init(ptr noundef %5, ptr noundef nonnull %6)
  call fastcc void @tegra_emc_interconnect_init(ptr noundef nonnull %6)
  %285 = call zeroext i1 @try_module_get(ptr noundef null) #11
  br label %286

286:                                              ; preds = %280, %277, %239, %234, %186, %19, %13, %1
  %287 = phi i32 [ %14, %13 ], [ %20, %19 ], [ %240, %239 ], [ 0, %280 ], [ -12, %1 ], [ %232, %234 ], [ %278, %277 ], [ %187, %186 ]
  ret i32 %287
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra124_clk_set_emc_callbacks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_prepare_timing_change(ptr noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  br label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ 0, %6 ], [ %10, %9 ]
  %14 = getelementptr %struct.emc_timing, ptr %8, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %17, %9, %2
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.46, i32 noundef %1) #12
  br label %435

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %24, %27
  %29 = icmp eq i32 %27, 0
  %30 = or i1 %28, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %31 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 16) #11, !srcloc !15
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr i8, ptr %33, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %36 = and i32 %35, -268173312
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %21
  %39 = and i32 %35, 268173311
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !15
  br label %42

42:                                               ; preds = %38, %21
  %43 = phi i32 [ 5, %38 ], [ 0, %21 ]
  %44 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 316, i32 300
  %48 = load ptr, ptr %31, align 4
  %49 = getelementptr i8, ptr %48, i32 984
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %51 = and i32 %50, %47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = xor i32 %47, -1
  %55 = and i32 %50, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %56 = load ptr, ptr %31, align 4
  %57 = getelementptr i8, ptr %56, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !15
  br label %58

58:                                               ; preds = %53, %42
  %59 = load ptr, ptr %31, align 4
  %60 = getelementptr i8, ptr %59, i32 1392
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %62 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 8
  %65 = icmp ne i32 %64, 0
  %66 = and i32 %61, 8
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  %69 = xor i1 %68, true
  %70 = and i32 %61, 6
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %71, i1 true, i1 %69
  br i1 %72, label %73, label %80

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, -9
  %77 = select i1 %68, i32 %75, i32 %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %78 = load ptr, ptr %31, align 4
  %79 = getelementptr i8, ptr %78, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #11, !srcloc !15
  br label %80

80:                                               ; preds = %73, %58
  %81 = phi i32 [ 5, %73 ], [ %43, %58 ]
  %82 = load ptr, ptr %31, align 4
  %83 = getelementptr i8, ptr %82, i32 764
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %85 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 16
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %84, 32
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  %92 = or i32 %84, 32
  %93 = select i1 %91, i32 %92, i32 %84
  %94 = and i32 %86, 1
  %95 = icmp ne i32 %94, 0
  %96 = and i32 %93, 1
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  %99 = select i1 %98, i1 true, i1 %91
  br i1 %99, label %100, label %105

100:                                              ; preds = %80
  %101 = zext i1 %98 to i32
  %102 = or i32 %93, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  tail call void @arm_heavy_mb() #11
  %103 = load ptr, ptr %31, align 4
  %104 = getelementptr i8, ptr %103, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #11, !srcloc !15
  br label %107

105:                                              ; preds = %80
  %106 = icmp eq i32 %81, 0
  br i1 %106, label %126, label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ 30, %100 ], [ %81, %105 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %109 = load ptr, ptr %31, align 4
  %110 = getelementptr i8, ptr %109, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 1) #11, !srcloc !15
  br label %111

111:                                              ; preds = %118, %107
  %112 = phi i32 [ 0, %107 ], [ %120, %118 ]
  %113 = load ptr, ptr %31, align 4
  %114 = getelementptr i8, ptr %113, i32 692
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %116 = and i32 %115, 8388608
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #11
  %120 = add nuw nsw i32 %112, 1
  %121 = icmp eq i32 %120, 1000
  br i1 %121, label %122, label %111

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.47) #12
  br label %124

124:                                              ; preds = %122, %111
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %108) #11
  br label %126

126:                                              ; preds = %124, %105
  %127 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 9
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %166, label %132

132:                                              ; preds = %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %133 = load ptr, ptr %31, align 4
  %134 = getelementptr i8, ptr %133, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 0) #11, !srcloc !15
  br label %135

135:                                              ; preds = %141, %132
  %136 = phi i32 [ 0, %132 ], [ %143, %141 ]
  %137 = load ptr, ptr %31, align 4
  %138 = getelementptr i8, ptr %137, i32 684
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748) #11
  %143 = add nuw nsw i32 %136, 1
  %144 = icmp eq i32 %143, 1000
  br i1 %144, label %145, label %135

145:                                              ; preds = %141
  %146 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.48) #12
  br label %147

147:                                              ; preds = %145, %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %148 = load i32, ptr %129, align 4
  %149 = load ptr, ptr %31, align 4
  %150 = getelementptr i8, ptr %149, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %151 = load ptr, ptr %31, align 4
  %152 = getelementptr i8, ptr %151, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 1) #11, !srcloc !15
  br label %153

153:                                              ; preds = %160, %147
  %154 = phi i32 [ 0, %147 ], [ %162, %160 ]
  %155 = load ptr, ptr %31, align 4
  %156 = getelementptr i8, ptr %155, i32 692
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %158 = and i32 %157, 8388608
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748) #11
  %162 = add nuw nsw i32 %154, 1
  %163 = icmp eq i32 %162, 1000
  br i1 %163, label %164, label %153

164:                                              ; preds = %160
  %165 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.47) #12
  br label %166

166:                                              ; preds = %164, %153, %126
  br label %167

167:                                              ; preds = %167, %166
  %168 = phi i32 [ %175, %167 ], [ 0, %166 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !29
  tail call void @arm_heavy_mb() #11
  %169 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 1, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = load ptr, ptr %31, align 4
  %172 = getelementptr [143 x i32], ptr @emc_burst_regs, i32 0, i32 %168
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr i8, ptr %171, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %170) #11, !srcloc !15
  %175 = add nuw nsw i32 %168, 1
  %176 = icmp eq i32 %175, 143
  br i1 %176, label %177, label %167

177:                                              ; preds = %167
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %178 = load i32, ptr %85, align 4
  %179 = load ptr, ptr %31, align 4
  %180 = getelementptr i8, ptr %179, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !31
  tail call void @arm_heavy_mb() #11
  %181 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 18
  %182 = load i32, ptr %181, align 4
  %183 = load ptr, ptr %31, align 4
  %184 = getelementptr i8, ptr %183, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #11, !srcloc !15
  %185 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %14, align 4
  %188 = tail call i32 @tegra_mc_write_emem_configuration(ptr noundef %186, i32 noundef %187) #11
  %189 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 7
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 268173311
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %192 = load ptr, ptr %31, align 4
  %193 = getelementptr i8, ptr %192, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %194 = load ptr, ptr %31, align 4
  %195 = getelementptr i8, ptr %194, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 12) #11, !srcloc !15
  %196 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %206, label %201

201:                                              ; preds = %177
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %202 = load ptr, ptr %31, align 4
  %203 = getelementptr i8, ptr %202, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %197) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %204 = load ptr, ptr %31, align 4
  %205 = getelementptr i8, ptr %204, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 1112) #11, !srcloc !15
  br label %206

206:                                              ; preds = %201, %177
  %207 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 4
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %206
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %213 = load ptr, ptr %31, align 4
  %214 = getelementptr i8, ptr %213, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %208) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %215 = load ptr, ptr %31, align 4
  %216 = getelementptr i8, ptr %215, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 1116) #11, !srcloc !15
  br label %217

217:                                              ; preds = %212, %206
  %218 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %217
  %224 = and i32 %219, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %225 = load ptr, ptr %31, align 4
  %226 = getelementptr i8, ptr %225, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %224) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %227 = load ptr, ptr %31, align 4
  %228 = getelementptr i8, ptr %227, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 676) #11, !srcloc !15
  br label %229

229:                                              ; preds = %223, %217
  %230 = load i32, ptr %44, align 4
  %231 = icmp ne i32 %230, 0
  %232 = or i1 %30, %231
  br i1 %232, label %257, label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %181, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 18
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 6
  %242 = load i32, ptr %241, align 4
  %243 = mul i32 %242, -256
  %244 = add i32 %243, 512
  br label %245

245:                                              ; preds = %240, %236, %233
  %246 = phi i32 [ %244, %240 ], [ 512, %236 ], [ 512, %233 ]
  %247 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 14
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 1023
  %250 = tail call i32 @llvm.umax.i32(i32 %246, i32 %249)
  %251 = and i32 %248, -67043329
  %252 = shl i32 %250, 16
  %253 = and i32 %252, 67043328
  %254 = or i32 %253, %251
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %255 = load ptr, ptr %31, align 4
  %256 = getelementptr i8, ptr %255, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 %254) #11, !srcloc !15
  br label %257

257:                                              ; preds = %245, %229
  %258 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 8
  %259 = load i32, ptr %258, align 4
  %260 = and i32 %259, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %261 = load ptr, ptr %31, align 4
  %262 = getelementptr i8, ptr %261, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %263 = load ptr, ptr %31, align 4
  %264 = getelementptr i8, ptr %263, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 696) #11, !srcloc !15
  %265 = load i32, ptr %44, align 4
  %266 = or i32 %27, %265
  %267 = icmp ne i32 %266, 0
  %268 = or i1 %28, %267
  br i1 %268, label %275, label %269

269:                                              ; preds = %257
  %270 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %271 = load ptr, ptr %31, align 4
  %272 = getelementptr i8, ptr %271, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %273 = load ptr, ptr %31, align 4
  %274 = getelementptr i8, ptr %273, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 208) #11, !srcloc !15
  br label %275

275:                                              ; preds = %269, %257
  %276 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = icmp ult i32 %277, 2
  %279 = select i1 %278, i32 2, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %280 = load ptr, ptr %31, align 4
  %281 = getelementptr i8, ptr %280, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %282 = load ptr, ptr %31, align 4
  %283 = getelementptr i8, ptr %282, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 32) #11, !srcloc !15
  %284 = load i32, ptr %44, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %275
  %287 = load i32, ptr %276, align 4
  %288 = icmp ugt i32 %287, 1
  %289 = select i1 %288, i32 1, i32 -2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %290 = load ptr, ptr %31, align 4
  %291 = getelementptr i8, ptr %290, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %289) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %292 = load ptr, ptr %31, align 4
  %293 = getelementptr i8, ptr %292, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 224) #11, !srcloc !15
  br label %294

294:                                              ; preds = %286, %275
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %295 = load ptr, ptr %31, align 4
  %296 = getelementptr i8, ptr %295, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 1) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %297 = load ptr, ptr %31, align 4
  %298 = getelementptr i8, ptr %297, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 972) #11, !srcloc !15
  %299 = load i32, ptr %44, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %294
  %302 = load i32, ptr %276, align 4
  %303 = icmp ugt i32 %302, 1
  %304 = select i1 %303, i32 0, i32 -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %305 = load ptr, ptr %31, align 4
  %306 = getelementptr i8, ptr %305, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %304) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %307 = load ptr, ptr %31, align 4
  %308 = getelementptr i8, ptr %307, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 224) #11, !srcloc !15
  br label %309

309:                                              ; preds = %301, %294
  %310 = load i32, ptr %276, align 4
  %311 = icmp ult i32 %310, 2
  %312 = select i1 %311, i32 -2147483646, i32 -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %313 = load ptr, ptr %31, align 4
  %314 = getelementptr i8, ptr %313, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %312) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %315 = load ptr, ptr %31, align 4
  %316 = getelementptr i8, ptr %315, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 32) #11, !srcloc !15
  %317 = load i32, ptr %44, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %354

319:                                              ; preds = %309
  %320 = load i32, ptr %25, align 4
  %321 = load i32, ptr %22, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %328, label %323

323:                                              ; preds = %319
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %324 = load ptr, ptr %31, align 4
  %325 = getelementptr i8, ptr %324, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 %320) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %326 = load ptr, ptr %31, align 4
  %327 = getelementptr i8, ptr %326, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 208) #11, !srcloc !15
  br label %328

328:                                              ; preds = %323, %319
  %329 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 11
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 11
  %332 = load i32, ptr %331, align 4
  %333 = icmp eq i32 %330, %332
  br i1 %333, label %339, label %334

334:                                              ; preds = %328
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %335 = load ptr, ptr %31, align 4
  %336 = getelementptr i8, ptr %335, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %330) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %337 = load ptr, ptr %31, align 4
  %338 = getelementptr i8, ptr %337, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 300) #11, !srcloc !15
  br label %339

339:                                              ; preds = %334, %328
  %340 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 13
  %341 = load i32, ptr %340, align 4
  %342 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 13
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %341, %343
  %345 = and i1 %30, %344
  br i1 %345, label %385, label %346

346:                                              ; preds = %339
  %347 = or i32 %341, 67109120
  %348 = and i32 %341, -257
  %349 = select i1 %30, i32 %348, i32 %347
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %350 = load ptr, ptr %31, align 4
  %351 = getelementptr i8, ptr %350, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 %349) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %352 = load ptr, ptr %31, align 4
  %353 = getelementptr i8, ptr %352, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 204) #11, !srcloc !15
  br label %385

354:                                              ; preds = %309
  %355 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 11
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 11
  %358 = load i32, ptr %357, align 4
  %359 = icmp eq i32 %356, %358
  br i1 %359, label %365, label %360

360:                                              ; preds = %354
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %361 = load ptr, ptr %31, align 4
  %362 = getelementptr i8, ptr %361, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %362, i32 %356) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %363 = load ptr, ptr %31, align 4
  %364 = getelementptr i8, ptr %363, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %364, i32 308) #11, !srcloc !15
  br label %365

365:                                              ; preds = %360, %354
  %366 = load i32, ptr %25, align 4
  %367 = load i32, ptr %22, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %374, label %369

369:                                              ; preds = %365
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %370 = load ptr, ptr %31, align 4
  %371 = getelementptr i8, ptr %370, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 %366) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %372 = load ptr, ptr %31, align 4
  %373 = getelementptr i8, ptr %372, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %373, i32 232) #11, !srcloc !15
  br label %374

374:                                              ; preds = %369, %365
  %375 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 12
  %376 = load i32, ptr %375, align 4
  %377 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 12
  %378 = load i32, ptr %377, align 4
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %385, label %380

380:                                              ; preds = %374
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %381 = load ptr, ptr %31, align 4
  %382 = getelementptr i8, ptr %381, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %376) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %383 = load ptr, ptr %31, align 4
  %384 = getelementptr i8, ptr %383, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 316) #11, !srcloc !15
  br label %385

385:                                              ; preds = %380, %374, %346, %339
  %386 = load i32, ptr %181, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %404, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 18
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %404

392:                                              ; preds = %388
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %393 = load ptr, ptr %31, align 4
  %394 = getelementptr i8, ptr %393, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %394, i32 -2147483631) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %395 = load ptr, ptr %31, align 4
  %396 = getelementptr i8, ptr %395, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 748) #11, !srcloc !15
  %397 = load i32, ptr %276, align 4
  %398 = icmp ugt i32 %397, 1
  br i1 %398, label %399, label %404

399:                                              ; preds = %392
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %400 = load ptr, ptr %31, align 4
  %401 = getelementptr i8, ptr %400, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 1073741841) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %402 = load ptr, ptr %31, align 4
  %403 = getelementptr i8, ptr %402, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 748) #11, !srcloc !15
  br label %404

404:                                              ; preds = %399, %392, %388, %385
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %405 = load ptr, ptr %31, align 4
  %406 = getelementptr i8, ptr %405, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 0) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %407 = load ptr, ptr %31, align 4
  %408 = getelementptr i8, ptr %407, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 1008) #11, !srcloc !15
  %409 = load i32, ptr %258, align 4
  %410 = and i32 %409, 64
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %404
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %413 = load ptr, ptr %31, align 4
  %414 = getelementptr i8, ptr %413, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %409) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %415 = load ptr, ptr %31, align 4
  %416 = getelementptr i8, ptr %415, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %416, i32 696) #11, !srcloc !15
  br label %417

417:                                              ; preds = %412, %404
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %418 = load ptr, ptr %31, align 4
  %419 = getelementptr i8, ptr %418, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 0) #11, !srcloc !15
  br label %420

420:                                              ; preds = %426, %417
  %421 = phi i32 [ 0, %417 ], [ %428, %426 ]
  %422 = load ptr, ptr %31, align 4
  %423 = getelementptr i8, ptr %422, i32 684
  %424 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %423) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %425 = icmp sgt i32 %424, -1
  br i1 %425, label %432, label %426

426:                                              ; preds = %420
  %427 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %427(i32 noundef 214748) #11
  %428 = add nuw nsw i32 %421, 1
  %429 = icmp eq i32 %428, 1000
  br i1 %429, label %430, label %420

430:                                              ; preds = %426
  %431 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %431, ptr noundef nonnull @.str.48) #12
  br label %432

432:                                              ; preds = %430, %420
  %433 = load ptr, ptr %31, align 4
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !35
  br label %435

435:                                              ; preds = %432, %19
  %436 = phi i32 [ 0, %432 ], [ -2, %19 ]
  ret i32 %436
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_emc_complete_timing_change(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  br label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ 0, %6 ], [ %10, %9 ]
  %14 = getelementptr %struct.emc_timing, ptr %8, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %17, %9, %2
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.46, i32 noundef %1) #12
  br label %110

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7
  %23 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2
  br label %24

24:                                               ; preds = %30, %21
  %25 = phi i32 [ 0, %21 ], [ %32, %30 ]
  %26 = load ptr, ptr %23, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #11
  %32 = add nuw nsw i32 %25, 1
  %33 = icmp eq i32 %32, 1000
  br i1 %33, label %34, label %24

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.49) #12
  br label %36

36:                                               ; preds = %34, %24
  %37 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %43 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %23, align 4
  %46 = getelementptr i8, ptr %45, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !15
  br label %47

47:                                               ; preds = %42, %36
  %48 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -268173312
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  %53 = load i32, ptr %48, align 4
  %54 = load ptr, ptr %23, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !15
  br label %56

56:                                               ; preds = %52, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %57 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 17
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %23, align 4
  %60 = getelementptr i8, ptr %59, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #11, !srcloc !15
  %61 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %83 [
    i32 2, label %63
    i32 0, label %72
  ]

63:                                               ; preds = %56
  %64 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %63
  %69 = or i32 %65, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !40
  tail call void @arm_heavy_mb() #11
  %70 = load ptr, ptr %23, align 4
  %71 = getelementptr i8, ptr %70, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #11, !srcloc !15
  br label %88

72:                                               ; preds = %56
  %73 = load ptr, ptr %23, align 4
  %74 = getelementptr i8, ptr %73, i32 1392
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !41
  %76 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !42
  tail call void @arm_heavy_mb() #11
  %80 = load i32, ptr %76, align 4
  %81 = load ptr, ptr %23, align 4
  %82 = getelementptr i8, ptr %81, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #11, !srcloc !15
  br label %83

83:                                               ; preds = %79, %72, %63, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  tail call void @arm_heavy_mb() #11
  %84 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %23, align 4
  %87 = getelementptr i8, ptr %86, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #11, !srcloc !15
  br label %88

88:                                               ; preds = %83, %68
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 429496) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !44
  tail call void @arm_heavy_mb() #11
  %90 = getelementptr %struct.emc_timing, ptr %8, i32 %13, i32 15
  %91 = load i32, ptr %90, align 4
  %92 = load ptr, ptr %23, align 4
  %93 = getelementptr i8, ptr %92, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %94 = load ptr, ptr %23, align 4
  %95 = getelementptr i8, ptr %94, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 1) #11, !srcloc !15
  br label %96

96:                                               ; preds = %103, %88
  %97 = phi i32 [ 0, %88 ], [ %105, %103 ]
  %98 = load ptr, ptr %23, align 4
  %99 = getelementptr i8, ptr %98, i32 692
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %101 = and i32 %100, 8388608
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748) #11
  %105 = add nuw nsw i32 %97, 1
  %106 = icmp eq i32 %105, 1000
  br i1 %106, label %107, label %96

107:                                              ; preds = %103
  %108 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.47) #12
  br label %109

109:                                              ; preds = %107, %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(644) %22, ptr noundef nonnull align 4 dereferenceable(644) %14, i32 644, i1 false)
  br label %110

110:                                              ; preds = %109, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_tegra_emc_unset_callback(ptr nocapture noundef readnone %0) #2 {
  tail call void @tegra124_clk_set_emc_callbacks(ptr noundef null, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @emc_debugfs_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 10
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 1
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 2
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %26, %9
  %13 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %14 = phi i32 [ -1, %9 ], [ %23, %26 ]
  %15 = phi i32 [ 0, %9 ], [ %28, %26 ]
  %16 = getelementptr %struct.emc_timing, ptr %11, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, %14
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  store i32 %17, ptr %4, align 4
  %20 = load i32, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ %17, %12 ]
  %23 = phi i32 [ %17, %19 ], [ %14, %12 ]
  %24 = icmp ugt i32 %22, %13
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 %22, ptr %5, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %13, %21 ], [ %22, %25 ]
  %28 = add nuw i32 %15, 1
  %29 = icmp eq i32 %28, %7
  br i1 %29, label %30, label %12

30:                                               ; preds = %26
  br i1 %8, label %31, label %35

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_get_rate(ptr noundef %33) #11
  store i32 %34, ptr %4, align 4
  store i32 %34, ptr %5, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i32 [ %34, %31 ], [ %27, %30 ]
  %37 = phi i32 [ %34, %31 ], [ %23, %30 ]
  %38 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_set_rate_range(ptr noundef %39, i32 noundef %37, i32 noundef %36) #11
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, ptr %4, align 4
  %44 = load i32, ptr %5, align 4
  %45 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %43, i32 noundef %44, ptr noundef %45) #12
  br label %53

46:                                               ; preds = %35
  %47 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef null) #11
  store ptr %47, ptr %3, align 4
  %48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 292, ptr noundef %47, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_available_rates_fops) #11
  %49 = load ptr, ptr %3, align 4
  %50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 420, ptr noundef %49, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_min_rate_fops) #11
  %51 = load ptr, ptr %3, align 4
  %52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 420, ptr noundef %51, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_max_rate_fops) #11
  br label %53

53:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_interconnect_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11, i32 8
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11, i32 2
  store ptr @emc_icc_set, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11, i32 11
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11, i32 3
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11, i32 7
  store ptr @emc_of_icc_xlate_extended, ptr %16, align 4
  %17 = tail call i32 @icc_provider_add(ptr noundef %7) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = tail call ptr @icc_node_create(i32 noundef 1001) #11
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %38

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.icc_node, ptr %20, i32 0, i32 1
  store ptr @.str.65, ptr %25, align 4
  tail call void @icc_node_add(ptr noundef %20, ptr noundef %7) #11
  %26 = tail call i32 @icc_link_create(ptr noundef %20, i32 noundef 1002) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = tail call ptr @icc_node_create(i32 noundef 1002) #11
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.icc_node, ptr %29, i32 0, i32 1
  store ptr @.str.66, ptr %34, align 4
  tail call void @icc_node_add(ptr noundef %29, ptr noundef %7) #11
  br label %44

35:                                               ; preds = %31, %24
  %36 = phi i32 [ %26, %24 ], [ %32, %31 ]
  %37 = tail call i32 @icc_nodes_remove(ptr noundef %7) #11
  br label %38

38:                                               ; preds = %35, %22
  %39 = phi i32 [ %23, %22 ], [ %36, %35 ]
  %40 = tail call i32 @icc_provider_del(ptr noundef %7) #11
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi i32 [ %17, %1 ], [ %39, %38 ]
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.67, i32 noundef %42) #12
  br label %44

44:                                               ; preds = %41, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_timings(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %3, %4
  %6 = icmp ne i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_get_emem_device_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_write_emem_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_available_rates_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_available_rates_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_available_rates_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %11) #11
  %12 = load i32, ptr %5, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %14, %8
  %15 = phi i32 [ %19, %14 ], [ 1, %8 ]
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr %struct.emc_timing, ptr %16, i32 %15
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %18) #11
  %19 = add nuw i32 %15, 1
  %20 = load i32, ptr %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %14, label %22, !llvm.loop !45

22:                                               ; preds = %14, %8, %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.62) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_fops_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_min_rate_get, ptr noundef nonnull @tegra_emc_debug_min_rate_set, ptr noundef nonnull @.str.63) #11
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_set(ptr noundef %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %22, label %12

12:                                               ; preds = %16, %7
  %13 = phi i32 [ %14, %16 ], [ 0, %7 ]
  %14 = add nuw i32 %13, 1
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.emc_timing, ptr %9, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %12

20:                                               ; preds = %16, %12
  %21 = icmp ult i32 %14, %5
  br i1 %21, label %22, label %27

22:                                               ; preds = %20, %7
  %23 = tail call fastcc i32 @emc_set_min_rate(ptr noundef %0, i32 noundef %3, i32 noundef 0)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 1
  store i32 %3, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22, %20, %2
  %28 = phi i32 [ 0, %25 ], [ -22, %20 ], [ %23, %22 ], [ -22, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @emc_set_min_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 %2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %23, label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %10, %8 ], [ %1, %3 ]
  %16 = phi i32 [ %12, %8 ], [ %6, %3 ]
  %17 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %15) #11
  %20 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %16) #11
  br label %26

23:                                               ; preds = %8
  %24 = tail call i32 @llvm.umax.i32(i32 %10, i32 %1) #11
  %25 = tail call i32 @llvm.umin.i32(i32 %12, i32 %6) #11
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ %25, %23 ], [ %22, %14 ]
  %28 = phi i32 [ %24, %23 ], [ %19, %14 ]
  %29 = icmp ugt i32 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef %2, i32 noundef %28, i32 noundef %27) #12
  br label %41

35:                                               ; preds = %26
  %36 = load ptr, ptr %0, align 4
  %37 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %36, i32 noundef %28) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 %2
  store i32 %1, ptr %40, align 4
  store i32 %6, ptr %5, align 4
  br label %41

41:                                               ; preds = %39, %35, %33, %30
  %42 = phi i32 [ 0, %39 ], [ -34, %33 ], [ -34, %30 ], [ %37, %35 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_fops_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_max_rate_get, ptr noundef nonnull @tegra_emc_debug_max_rate_set, ptr noundef nonnull @.str.63) #11
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_set(ptr noundef %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %22, label %12

12:                                               ; preds = %16, %7
  %13 = phi i32 [ %14, %16 ], [ 0, %7 ]
  %14 = add nuw i32 %13, 1
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.emc_timing, ptr %9, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %12

20:                                               ; preds = %16, %12
  %21 = icmp ult i32 %14, %5
  br i1 %21, label %22, label %49

22:                                               ; preds = %20, %7
  %23 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12
  %24 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %24) #11
  %25 = load i32, ptr %23, align 4
  %26 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %25) #11
  %29 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %3) #11
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 0, i32 noundef %28, i32 noundef %31) #12
  br label %44

38:                                               ; preds = %22
  %39 = load ptr, ptr %0, align 4
  %40 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %39, i32 noundef %28) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  store i32 %25, ptr %23, align 4
  %43 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 12, i32 0, i32 1
  store i32 %3, ptr %43, align 4
  tail call void @mutex_unlock(ptr noundef %24) #11
  br label %47

44:                                               ; preds = %36, %33
  tail call void @mutex_unlock(ptr noundef %24) #11
  br label %49

45:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef %24) #11
  %46 = icmp slt i32 %40, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %45, %42
  %48 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 2
  store i32 %3, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %45, %44, %20, %2
  %50 = phi i32 [ 0, %47 ], [ -22, %20 ], [ %40, %45 ], [ -34, %44 ], [ -22, %2 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_icc_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw nsw i64 %7, 1000
  %9 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = mul nuw nsw i64 %11, 1000
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %8)
  %14 = getelementptr i8, ptr %4, i32 -672
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 2
  %17 = and i32 %16, 1073741822
  %18 = icmp ult i64 %13, 4294967296
  br i1 %18, label %19, label %23, !prof !47

19:                                               ; preds = %2
  %20 = trunc i64 %13 to i32
  %21 = udiv i32 %20, %17
  %22 = zext i32 %21 to i64
  br label %26

23:                                               ; preds = %2
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %13) #13, !srcloc !48
  %25 = extractvalue { i64, i64 } %24, 1
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i64 [ %22, %19 ], [ %25, %23 ]
  %28 = getelementptr i8, ptr %4, i32 -692
  %29 = tail call i64 @llvm.umin.i64(i64 %27, i64 4294967295)
  %30 = trunc i64 %29 to i32
  %31 = tail call fastcc i32 @emc_set_min_rate(ptr noundef %28, i32 noundef %30, i32 noundef 1)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @emc_of_icc_xlate_extended(ptr nocapture noundef readnone %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 1
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1002
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %6, i32 -20
  %18 = getelementptr inbounds %struct.icc_node_data, ptr %14, i32 0, i32 1
  store i32 1, ptr %18, align 4
  store ptr %17, ptr %14, align 8
  br label %19

19:                                               ; preds = %16, %12, %4
  %20 = phi ptr [ %14, %16 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -517 to ptr), %4 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
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
!10 = !{i64 4382419}
!11 = !{i64 2152503642}
!12 = !{i64 2152502970}
!13 = !{i64 2152503302}
!14 = !{i64 2152487977}
!15 = !{i64 4382001}
!16 = !{i64 2152488484}
!17 = !{i64 2152489313}
!18 = !{i64 2152490058}
!19 = !{i64 2152490249}
!20 = !{i64 2152490718}
!21 = !{i64 2152491320}
!22 = !{i64 2152491791}
!23 = !{i64 2152492474}
!24 = !{i64 2152482119}
!25 = !{i64 2152482588}
!26 = !{i64 2152483947}
!27 = !{i64 2152484417}
!28 = !{i64 2152493394}
!29 = !{i64 2152494262}
!30 = !{i64 2152494661}
!31 = !{i64 2152495049}
!32 = !{i64 2152481470}
!33 = !{i64 2152481797}
!34 = !{i64 2152496205}
!35 = !{i64 2152498359}
!36 = !{i64 2152485942}
!37 = !{i64 2152498576}
!38 = !{i64 2152499056}
!39 = !{i64 2152499420}
!40 = !{i64 2152500030}
!41 = !{i64 2152500499}
!42 = !{i64 2152500710}
!43 = !{i64 2152501096}
!44 = !{i64 2152502025}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2148690853, i64 2148691133, i64 2148691467, i64 2148691801}
