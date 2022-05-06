; ModuleID = '/llk/IR/drivers/memory/tegra/tegra30-emc.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra30-emc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_emc = type { ptr, ptr, %struct.icc_provider, %struct.notifier_block, ptr, ptr, i32, i8, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.anon.68, [2 x %struct.emc_rate_request], %struct.mutex }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.68 = type { ptr, i32, i32 }
%struct.emc_rate_request = type { i32, i32 }
%struct.emc_timing = type { i32, [89 x i32], i32, i32, i32, i32, i32, i8, i8 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.67 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.67 = type { ptr }
%struct.tegra_mc_timing = type { i32, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }
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

@__initcall__kmod_tegra30_emc__228_1649_tegra_emc_driver_init6 = internal global ptr @tegra_emc_driver_init, section ".initcall6.init", align 4
@tegra_emc_driver = internal global %struct.platform_driver { ptr @tegra_emc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_emc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_emc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_emc_driver_exit = internal global ptr @tegra_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [54 x i8] c"tegra30_emc.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [50 x i8] c"tegra30_emc.description=NVIDIA Tegra30 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [50 x i8] c"tegra30_emc.file=drivers/memory/tegra/tegra30-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [27 x i8] c"tegra30_emc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"tegra30-emc\00", align 1
@tegra_emc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_emc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_emc_suspend, ptr @tegra_emc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_emc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&emc->rate_lock\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"mc clock preparation failed: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"auto-cal finish timeout: %d\0A\00", align 1
@emc_timing_registers = internal unnamed_addr constant [89 x i16] [i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 84, i16 88, i16 184, i16 92, i16 96, i16 100, i16 104, i16 108, i16 112, i16 116, i16 988, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 996, i16 148, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172, i16 276, i16 176, i16 180, i16 260, i16 700, i16 704, i16 808, i16 812, i16 816, i16 820, i16 824, i16 828, i16 832, i16 836, i16 840, i16 844, i16 848, i16 852, i16 856, i16 860, i16 864, i16 868, i16 936, i16 940, i16 944, i16 948, i16 952, i16 956, i16 960, i16 964, i16 872, i16 876, i16 880, i16 884, i16 752, i16 764, i16 772, i16 776, i16 780, i16 784, i16 788, i16 792, i16 248, i16 732, i16 736, i16 740, i16 200, i16 676, i16 188, i16 728, i16 992, i16 256, i16 288], align 2
@.str.5 = private unnamed_addr constant [24 x i8] c"no timing for rate %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to update timing: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"timing configuration can't be reverted\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"emc-car handshake timeout: %d\0A\00", align 1
@emc_find_node_by_ram_code.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"device-tree doesn't have memory timings\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"nvidia,ram-code\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"no memory timings for RAM code %u found in device-tree\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"no memory timings in: %pOF\0A\00", align 1
@emc_load_timings_from_dt.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"got %u timings for RAM code %u (min %luMHz max %luMHz)\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"timing %pOF: failed to read rate: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"nvidia,emc-configuration\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"timing %pOF: failed to read emc timing data: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"nvidia,emc-auto-cal-interval\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"timing %pOFn: failed to read emc_auto_cal_interval: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"nvidia,emc-mode-1\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"timing %pOFn: failed to read emc_mode_1: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"nvidia,emc-mode-2\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"timing %pOFn: failed to read emc_mode_2: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"nvidia,emc-mode-reset\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"timing %pOFn: failed to read emc_mode_reset: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"nvidia,emc-zcal-cnt-long\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"timing %pOFn: failed to read emc_zcal_cnt_long: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"nvidia,emc-cfg-dyn-self-ref\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"nvidia,emc-cfg-periodic-qrst\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"emc/mc timings number mismatch: %u %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"emc/mc timing rate mismatch: %lu %lu\0A\00", align 1
@tegra_emc_isr._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tegra_emc_isr = private unnamed_addr constant [14 x i8] c"tegra_emc_isr\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"refresh request overflow timeout\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"failed to get EMC clock: %pe\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"failed to register clk notifier: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"no timing for rate %lu min %lu max %lu\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"failed to set rate range [%lu-%lu] for %pC\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"available_rates\00", align 1
@tegra_emc_debug_available_rates_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_available_rates_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"min_rate\00", align 1
@tegra_emc_debug_min_rate_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [9 x i8] c"max_rate\00", align 1
@tegra_emc_debug_max_rate_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"%s%lu\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@emc_request_rate._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.emc_request_rate = private unnamed_addr constant [17 x i8] c"emc_request_rate\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"%s: type %u: out of range: %lu %lu\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"External Memory Controller\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"External Memory (DRAM)\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"failed to initialize ICC: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.50 = private unnamed_addr constant [27 x i8] c"failed to acquire clk: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"drivers/memory/tegra/tegra30-emc.c\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"hardware in a bad state\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_tegra_emc_driver_exit, ptr @__initcall__kmod_tegra30_emc__228_1649_tegra_emc_driver_init6, ptr @tegra_emc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_emc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_emc_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_emc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_emc_driver) #9
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
  %4 = alloca %struct.tegra_core_opp_params, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 176, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %259, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %5) #9
  %10 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %259

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_emc_probe.__key) #9
  %16 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 3
  store ptr @emc_clk_change_notify, ptr %16, align 4
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @of_get_next_child(ptr noundef %18, ptr noundef null) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %14
  %22 = phi i32 [ %24, %21 ], [ 0, %14 ]
  %23 = phi ptr [ %25, %21 ], [ %19, %14 ]
  %24 = add i32 %22, 1
  %25 = tail call ptr @of_get_next_child(ptr noundef %18, ptr noundef nonnull %23) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %21

27:                                               ; preds = %21
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27, %14
  %30 = load i1, ptr @emc_find_node_by_ram_code.__print_once, align 1
  br i1 %30, label %49, label %31

31:                                               ; preds = %29
  store i1 true, ptr @emc_find_node_by_ram_code.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.9) #10
  br label %49

32:                                               ; preds = %27
  %33 = tail call i32 @tegra_read_ram_code() #9
  %34 = load ptr, ptr %17, align 8
  %35 = tail call ptr @of_get_next_child(ptr noundef %34, ptr noundef null) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %44, %32
  %38 = phi ptr [ %46, %44 ], [ %35, %32 ]
  %39 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %38, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %40 = icmp sgt i32 %39, -1
  %41 = load i32, ptr %3, align 4
  %42 = icmp eq i32 %41, %33
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %17, align 8
  %46 = call ptr @of_get_next_child(ptr noundef %45, ptr noundef nonnull %38) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %37

48:                                               ; preds = %44, %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %33) #10
  br label %49

49:                                               ; preds = %48, %31, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %180

50:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %51 = call ptr @of_get_next_child(ptr noundef nonnull %38, ptr noundef null) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ %56, %53 ], [ 0, %50 ]
  %55 = phi ptr [ %57, %53 ], [ %51, %50 ]
  %56 = add i32 %54, 1
  %57 = call ptr @of_get_next_child(ptr noundef %38, ptr noundef nonnull %55) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %53

59:                                               ; preds = %53
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %59, %50
  %62 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.12, ptr noundef %38) #10
  br label %177

63:                                               ; preds = %59
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 384) #9
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %66, label %68, !prof !9

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 9
  store ptr null, ptr %67, align 4
  br label %177

68:                                               ; preds = %63
  %69 = load ptr, ptr %6, align 4
  %70 = extractvalue { i32, i1 } %64, 0
  %71 = call noalias ptr @devm_kmalloc(ptr noundef %69, i32 noundef %70, i32 noundef 3520) #9
  %72 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 9
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %177, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 10
  store i32 %56, ptr %75, align 4
  %76 = call ptr @of_get_next_child(ptr noundef %38, ptr noundef null) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %136, label %78

78:                                               ; preds = %124, %74
  %79 = phi ptr [ %133, %124 ], [ %71, %74 ]
  %80 = phi ptr [ %134, %124 ], [ %76, %74 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %81 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.15, ptr noundef nonnull %80, i32 noundef %81) #10
  br label %122

85:                                               ; preds = %78
  %86 = load i32, ptr %2, align 4
  store i32 %86, ptr %79, align 4
  %87 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 1
  %88 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.16, ptr noundef %87, i32 noundef 89, i32 noundef 0) #9
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.17, ptr noundef nonnull %80, i32 noundef %88) #10
  br label %122

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 2
  %94 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.18, ptr noundef %93, i32 noundef 1, i32 noundef 0) #9
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.19, ptr noundef nonnull %80, i32 noundef %94) #10
  br label %122

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 3
  %100 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.20, ptr noundef %99, i32 noundef 1, i32 noundef 0) #9
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.21, ptr noundef nonnull %80, i32 noundef %100) #10
  br label %122

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 4
  %106 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.22, ptr noundef %105, i32 noundef 1, i32 noundef 0) #9
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.23, ptr noundef nonnull %80, i32 noundef %106) #10
  br label %122

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 5
  %112 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.24, ptr noundef %111, i32 noundef 1, i32 noundef 0) #9
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.25, ptr noundef nonnull %80, i32 noundef %112) #10
  br label %122

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 6
  %118 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %80, ptr noundef nonnull @.str.26, ptr noundef %117, i32 noundef 1, i32 noundef 0) #9
  %119 = icmp sgt i32 %118, -1
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.27, ptr noundef nonnull %80, i32 noundef %118) #10
  br label %122

122:                                              ; preds = %120, %114, %108, %102, %96, %90, %83
  %123 = phi i32 [ %118, %120 ], [ %112, %114 ], [ %106, %108 ], [ %100, %102 ], [ %94, %96 ], [ %88, %90 ], [ %81, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @of_node_put(ptr noundef nonnull %80) #9
  br label %177

124:                                              ; preds = %116
  %125 = call ptr @of_find_property(ptr noundef nonnull %80, ptr noundef nonnull @.str.28, ptr noundef null) #9
  %126 = icmp ne ptr %125, null
  %127 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 8
  %128 = zext i1 %126 to i8
  store i8 %128, ptr %127, align 1
  %129 = call ptr @of_find_property(ptr noundef nonnull %80, ptr noundef nonnull @.str.29, ptr noundef null) #9
  %130 = icmp ne ptr %129, null
  %131 = getelementptr inbounds %struct.emc_timing, ptr %79, i32 0, i32 7
  %132 = zext i1 %130 to i8
  store i8 %132, ptr %131, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %133 = getelementptr %struct.emc_timing, ptr %79, i32 1
  %134 = call ptr @of_get_next_child(ptr noundef %38, ptr noundef nonnull %80) #9
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %78

136:                                              ; preds = %124, %74
  %137 = load ptr, ptr %72, align 4
  %138 = load i32, ptr %75, align 4
  call void @sort(ptr noundef %137, i32 noundef %138, i32 noundef 384, ptr noundef nonnull @cmp_timings, ptr noundef null) #9
  %139 = load ptr, ptr %10, align 4
  %140 = load i32, ptr %75, align 4
  %141 = getelementptr inbounds %struct.tegra_mc, ptr %139, i32 0, i32 9
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = icmp eq i32 %140, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %144
  %147 = load ptr, ptr %72, align 4
  %148 = getelementptr inbounds %struct.tegra_mc, ptr %139, i32 0, i32 8
  %149 = load ptr, ptr %148, align 4
  br label %155

150:                                              ; preds = %136
  %151 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.30, i32 noundef %140, i32 noundef %142) #10
  br label %177

152:                                              ; preds = %155
  %153 = add nuw i32 %156, 1
  %154 = icmp eq i32 %153, %140
  br i1 %154, label %164, label %155

155:                                              ; preds = %152, %146
  %156 = phi i32 [ 0, %146 ], [ %153, %152 ]
  %157 = getelementptr %struct.emc_timing, ptr %147, i32 %156
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr %struct.tegra_mc_timing, ptr %149, i32 %156
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %152, label %162

162:                                              ; preds = %155
  %163 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.31, i32 noundef %158, i32 noundef %160) #10
  br label %177

164:                                              ; preds = %152, %144
  %165 = load i1, ptr @emc_load_timings_from_dt.__print_once, align 1
  br i1 %165, label %179, label %166

166:                                              ; preds = %164
  store i1 true, ptr @emc_load_timings_from_dt.__print_once, align 1
  %167 = load ptr, ptr %6, align 4
  %168 = call i32 @tegra_read_ram_code() #9
  %169 = load ptr, ptr %72, align 4
  %170 = load i32, ptr %169, align 4
  %171 = udiv i32 %170, 1000000
  %172 = load i32, ptr %75, align 4
  %173 = add i32 %172, -1
  %174 = getelementptr %struct.emc_timing, ptr %169, i32 %173
  %175 = load i32, ptr %174, align 4
  %176 = udiv i32 %175, 1000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %167, ptr noundef nonnull @.str.13, i32 noundef %140, i32 noundef %168, i32 noundef %171, i32 noundef %176) #10
  br label %179

177:                                              ; preds = %162, %150, %122, %68, %66, %61
  %178 = phi i32 [ -22, %162 ], [ -22, %150 ], [ -12, %66 ], [ -12, %68 ], [ -22, %61 ], [ %123, %122 ]
  call void @of_node_put(ptr noundef nonnull %38) #9
  br label %259

179:                                              ; preds = %166, %164
  call void @of_node_put(ptr noundef nonnull %38) #9
  br label %180

180:                                              ; preds = %179, %49
  %181 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %182 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 5
  store ptr %181, ptr %182, align 4
  %183 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = ptrtoint ptr %181 to i32
  br label %259

186:                                              ; preds = %180
  %187 = getelementptr i8, ptr %181, i32 260
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #9, !srcloc !10
  %189 = and i32 %188, 3
  %190 = load ptr, ptr %182, align 4
  %191 = getelementptr i8, ptr %190, i32 696
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #9, !srcloc !10
  %193 = icmp eq i32 %189, 2
  %194 = and i32 %192, -8
  %195 = select i1 %193, i32 3, i32 1
  %196 = or i32 %194, %195
  %197 = load ptr, ptr %182, align 4
  %198 = getelementptr i8, ptr %197, i32 696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #9, !srcloc !11
  %199 = load ptr, ptr %182, align 4
  %200 = getelementptr i8, ptr %199, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 8) #9, !srcloc !11
  %201 = load ptr, ptr %182, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 -1) #9, !srcloc !11
  %202 = load ptr, ptr %182, align 4
  %203 = getelementptr i8, ptr %202, i32 8
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #9, !srcloc !10
  %205 = and i32 %204, -16777224
  %206 = or i32 %205, 16777216
  %207 = load ptr, ptr %182, align 4
  %208 = getelementptr i8, ptr %207, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #9, !srcloc !11
  %209 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %259, label %211

211:                                              ; preds = %186
  %212 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 6
  store i32 %209, ptr %212, align 4
  %213 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load ptr, ptr %5, align 4
  br label %218

218:                                              ; preds = %216, %211
  %219 = phi ptr [ %217, %216 ], [ %214, %211 ]
  %220 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %209, ptr noundef nonnull @tegra_emc_isr, ptr noundef null, i32 noundef 0, ptr noundef %219, ptr noundef %6) #9
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %220) #10
  br label %259

223:                                              ; preds = %218
  call void @tegra20_clk_set_emc_round_callback(ptr noundef nonnull @emc_round_rate, ptr noundef %6) #9
  %224 = load ptr, ptr %6, align 4
  %225 = call i32 @devm_add_action(ptr noundef %224, ptr noundef nonnull @devm_tegra_emc_unset_callback, ptr noundef null) #9
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @tegra20_clk_set_emc_round_callback(ptr noundef null, ptr noundef null) #9
  br label %259

228:                                              ; preds = %223
  %229 = load ptr, ptr %6, align 4
  %230 = call ptr @devm_clk_get(ptr noundef %229, ptr noundef null) #9
  %231 = getelementptr inbounds %struct.tegra_emc, ptr %6, i32 0, i32 4
  store ptr %230, ptr %231, align 4
  %232 = icmp ugt ptr %230, inttoptr (i32 -4096 to ptr)
  br i1 %232, label %244, label %233

233:                                              ; preds = %228
  %234 = call i32 @clk_notifier_register(ptr noundef %230, ptr noundef %16) #9
  %235 = icmp eq i32 %234, 0
  %236 = load ptr, ptr %6, align 4
  br i1 %235, label %238, label %237

237:                                              ; preds = %233
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.34, i32 noundef %234) #10
  br label %259

238:                                              ; preds = %233
  %239 = call i32 @devm_add_action(ptr noundef %236, ptr noundef nonnull @devm_tegra_emc_unreg_clk_notifier, ptr noundef %6) #9
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %231, align 4
  %243 = call i32 @clk_notifier_unregister(ptr noundef %242, ptr noundef %16) #9
  br label %259

244:                                              ; preds = %228
  %245 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.33, ptr noundef nonnull %230) #10
  %246 = load ptr, ptr %231, align 4
  %247 = ptrtoint ptr %246 to i32
  %248 = icmp eq ptr %246, null
  br i1 %248, label %249, label %259

249:                                              ; preds = %244, %238
  store i8 1, ptr %4, align 1
  %250 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %5, ptr noundef nonnull %4) #9
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %253, align 8
  %254 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 18, i32 0
  store i32 0, ptr %254, align 4
  %255 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 18, i32 0, i32 1
  store i32 -1, ptr %255, align 4
  %256 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 18, i32 1
  store i32 0, ptr %256, align 4
  %257 = getelementptr %struct.tegra_emc, ptr %6, i32 0, i32 18, i32 1, i32 1
  store i32 -1, ptr %257, align 4
  call fastcc void @tegra_emc_debugfs_init(ptr noundef nonnull %6)
  call fastcc void @tegra_emc_interconnect_init(ptr noundef nonnull %6)
  %258 = call zeroext i1 @try_module_get(ptr noundef null) #9
  br label %259

259:                                              ; preds = %252, %249, %244, %241, %237, %227, %222, %186, %184, %177, %12, %1
  %260 = phi i32 [ %13, %12 ], [ %185, %184 ], [ %220, %222 ], [ 0, %252 ], [ -12, %1 ], [ %209, %186 ], [ %247, %244 ], [ %250, %249 ], [ %178, %177 ], [ %239, %241 ], [ %225, %227 ], [ %234, %237 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %260
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_clk_change_notify(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -64
  switch i32 %1, label %623 [
    i32 1, label %5
    i32 4, label %488
    i32 2, label %494
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load i32, ptr %6, align 4
  tail call void @disable_irq(i32 noundef %7) #9
  %8 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 36
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %0, i32 32
  %15 = load ptr, ptr %14, align 4
  br label %19

16:                                               ; preds = %19
  %17 = add nuw i32 %20, 1
  %18 = icmp eq i32 %17, %11
  br i1 %18, label %26, label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ 0, %13 ], [ %17, %16 ]
  %21 = getelementptr %struct.emc_timing, ptr %15, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %9
  br i1 %23, label %16, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %24, %16, %5
  %27 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.5, i32 noundef %9) #10
  br label %485

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 24
  %30 = load i8, ptr %29, align 4, !range !12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %485

32:                                               ; preds = %28
  store i8 1, ptr %29, align 4
  %33 = getelementptr i8, ptr %0, i32 -60
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tegra_mc, ptr %34, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tegra_mc, ptr %34, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %46, %38
  %42 = phi i32 [ 0, %38 ], [ %47, %46 ]
  %43 = getelementptr %struct.tegra_mc_timing, ptr %40, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = add nuw i32 %42, 1
  %48 = icmp eq i32 %47, %36
  br i1 %48, label %60, label %41

49:                                               ; preds = %41
  %50 = getelementptr %struct.tegra_mc_timing, ptr %40, i32 %42, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i32, ptr %51, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 134217728
  %55 = icmp ne i32 %54, 0
  %56 = getelementptr i8, ptr %0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @tegra20_clk_prepare_emc_mc_same_freq(ptr noundef %57, i1 noundef zeroext %55) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49, %46, %32
  %61 = phi i32 [ %58, %49 ], [ -22, %32 ], [ -22, %46 ]
  %62 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.3, i32 noundef %61) #10
  br label %485

63:                                               ; preds = %49
  %64 = getelementptr i8, ptr %0, i32 60
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, -2
  store i8 %66, ptr %64, align 4
  %67 = load ptr, ptr %33, align 4
  %68 = getelementptr inbounds %struct.tegra_mc, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 232
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !10
  %72 = getelementptr i8, ptr %0, i32 40
  store i32 %71, ptr %72, align 4
  %73 = getelementptr i8, ptr %0, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 12
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !10
  %77 = getelementptr i8, ptr %0, i32 44
  store i32 %76, ptr %77, align 4
  %78 = load ptr, ptr %73, align 4
  %79 = getelementptr i8, ptr %78, i32 8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !10
  %81 = load i8, ptr %64, align 4
  %82 = lshr i8 %81, 2
  %83 = and i8 %82, 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, %84
  %89 = icmp eq i32 %87, 0
  %90 = or i1 %89, %88
  %91 = xor i1 %90, true
  %92 = xor i1 %88, true
  %93 = and i1 %89, %92
  %94 = trunc i32 %86 to i8
  %95 = shl i8 %94, 2
  %96 = and i8 %95, 4
  %97 = and i8 %81, -5
  %98 = or i8 %96, %97
  store i8 %98, ptr %64, align 4
  %99 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 80
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %63
  %103 = load ptr, ptr %73, align 4
  %104 = getelementptr i8, ptr %103, i32 736
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #9, !srcloc !10
  %106 = icmp eq i32 %105, 0
  %107 = load i8, ptr %64, align 4
  br i1 %106, label %108, label %110

108:                                              ; preds = %102
  %109 = or i8 %107, 2
  br label %113

110:                                              ; preds = %102, %63
  %111 = phi i8 [ %98, %63 ], [ %107, %102 ]
  %112 = and i8 %111, -3
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i8 [ %112, %110 ], [ %109, %108 ]
  store i8 %114, ptr %64, align 4
  %115 = load ptr, ptr %73, align 4
  %116 = getelementptr i8, ptr %115, i32 260
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #9, !srcloc !10
  %118 = and i32 %117, 3
  %119 = load ptr, ptr %33, align 4
  %120 = tail call i32 @tegra_mc_get_emem_device_count(ptr noundef %119) #9
  %121 = load i32, ptr %77, align 4
  %122 = and i32 %121, 268435456
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %113
  %125 = and i32 %121, -268435457
  store i32 %125, ptr %77, align 4
  %126 = load ptr, ptr %73, align 4
  %127 = getelementptr i8, ptr %126, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #9, !srcloc !11
  br label %128

128:                                              ; preds = %124, %113
  %129 = phi i32 [ 5, %124 ], [ 3, %113 ]
  %130 = phi i32 [ 5, %124 ], [ 0, %113 ]
  %131 = load ptr, ptr %33, align 4
  %132 = getelementptr inbounds %struct.tegra_mc, ptr %131, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 148
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #9, !srcloc !10
  %136 = and i32 %135, 1073741824
  %137 = icmp eq i32 %136, 0
  %138 = and i32 %135, 511
  %139 = icmp ugt i32 %138, 80
  %140 = or i1 %137, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %128
  %142 = load ptr, ptr %33, align 4
  %143 = getelementptr inbounds %struct.tegra_mc, ptr %142, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %144, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 -1073741744) #9, !srcloc !11
  %146 = load ptr, ptr %33, align 4
  %147 = getelementptr inbounds %struct.tegra_mc, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 1) #9, !srcloc !11
  br label %150

150:                                              ; preds = %141, %128
  %151 = load i32, ptr %72, align 4
  %152 = and i32 %151, 3
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %33, align 4
  %156 = and i32 %151, -4
  %157 = getelementptr inbounds %struct.tegra_mc, ptr %155, i32 0, i32 3
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %156) #9, !srcloc !11
  br label %160

160:                                              ; preds = %154, %150
  %161 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 71
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %73, align 4
  %167 = getelementptr i8, ptr %166, i32 764
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #9, !srcloc !10
  %169 = and i32 %168, 32
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = or i32 %168, 32
  %173 = load ptr, ptr %73, align 4
  %174 = getelementptr i8, ptr %173, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #9, !srcloc !11
  br label %175

175:                                              ; preds = %171, %165, %160
  %176 = phi i1 [ false, %165 ], [ true, %171 ], [ false, %160 ]
  %177 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 78
  %178 = load i32, ptr %177, align 4
  %179 = and i32 %178, 32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr %73, align 4
  %183 = getelementptr i8, ptr %182, i32 248
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #9, !srcloc !10
  %185 = and i32 %184, 32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = or i32 %184, 32
  %189 = load ptr, ptr %73, align 4
  %190 = getelementptr i8, ptr %189, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #9, !srcloc !11
  br label %191

191:                                              ; preds = %187, %181, %175
  %192 = phi i1 [ %176, %181 ], [ true, %187 ], [ %176, %175 ]
  %193 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 77
  %194 = load i32, ptr %193, align 4
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %191
  %198 = load ptr, ptr %73, align 4
  %199 = getelementptr i8, ptr %198, i32 792
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #9, !srcloc !10
  %201 = and i32 %200, 16
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = or i32 %200, 16
  %205 = load ptr, ptr %73, align 4
  %206 = getelementptr i8, ptr %205, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #9, !srcloc !11
  br label %211

207:                                              ; preds = %197, %191
  %208 = xor i1 %123, true
  %209 = select i1 %192, i1 true, i1 %208
  %210 = select i1 %192, i32 %129, i32 %130
  br i1 %209, label %211, label %243

211:                                              ; preds = %207, %203
  %212 = phi i32 [ %210, %207 ], [ %129, %203 ]
  %213 = phi i8 [ 0, %207 ], [ 1, %203 ]
  %214 = load ptr, ptr %73, align 4
  %215 = getelementptr i8, ptr %214, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 1) #9, !srcloc !11
  %216 = tail call i64 @ktime_get() #9
  %217 = add i64 %216, 200000
  %218 = load ptr, ptr %73, align 4
  %219 = getelementptr i8, ptr %218, i32 692
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #9, !srcloc !10
  %221 = and i32 %220, 8388608
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %241, label %223

223:                                              ; preds = %226, %211
  %224 = tail call i64 @ktime_get() #9
  %225 = icmp sgt i64 %224, %217
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %227(i32 noundef 214748) #9
  %228 = load ptr, ptr %73, align 4
  %229 = getelementptr i8, ptr %228, i32 692
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #9, !srcloc !10
  %231 = and i32 %230, 8388608
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %241, label %223

233:                                              ; preds = %223
  %234 = load ptr, ptr %73, align 4
  %235 = getelementptr i8, ptr %234, i32 692
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #9, !srcloc !10
  %237 = and i32 %236, 8388608
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %233
  %240 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.6, i32 noundef -110) #10
  br label %485

241:                                              ; preds = %233, %226, %211
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %242(i32 noundef %212) #9
  br label %243

243:                                              ; preds = %241, %207
  %244 = phi i8 [ %213, %241 ], [ 0, %207 ]
  %245 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 2
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %285, label %248

248:                                              ; preds = %243
  %249 = load ptr, ptr %73, align 4
  %250 = getelementptr i8, ptr %249, i32 780
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %250) #9, !srcloc !10
  %252 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 74
  %253 = load i32, ptr %252, align 4
  %254 = xor i32 %253, %251
  %255 = and i32 %254, 1024
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %285, label %257

257:                                              ; preds = %248
  %258 = load ptr, ptr %73, align 4
  %259 = getelementptr i8, ptr %258, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 0) #9, !srcloc !11
  %260 = tail call i64 @ktime_get() #9
  %261 = add i64 %260, 300000
  %262 = load ptr, ptr %73, align 4
  %263 = getelementptr i8, ptr %262, i32 684
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #9, !srcloc !10
  %265 = icmp sgt i32 %264, -1
  br i1 %265, label %282, label %266

266:                                              ; preds = %269, %257
  %267 = tail call i64 @ktime_get() #9
  %268 = icmp sgt i64 %267, %261
  br i1 %268, label %275, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %270(i32 noundef 214748) #9
  %271 = load ptr, ptr %73, align 4
  %272 = getelementptr i8, ptr %271, i32 684
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #9, !srcloc !10
  %274 = icmp sgt i32 %273, -1
  br i1 %274, label %282, label %266

275:                                              ; preds = %266
  %276 = load ptr, ptr %73, align 4
  %277 = getelementptr i8, ptr %276, i32 684
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #9, !srcloc !10
  %279 = icmp sgt i32 %278, -1
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str.4, i32 noundef -110) #10
  br label %485

282:                                              ; preds = %275, %269, %257
  %283 = load i8, ptr %64, align 4
  %284 = or i8 %283, 1
  store i8 %284, ptr %64, align 4
  br label %285

285:                                              ; preds = %282, %248, %243
  br label %286

286:                                              ; preds = %297, %285
  %287 = phi i32 [ %298, %297 ], [ 0, %285 ]
  %288 = icmp eq i32 %287, 73
  br i1 %288, label %297, label %289

289:                                              ; preds = %286
  %290 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 %287
  %291 = load i32, ptr %290, align 4
  %292 = load ptr, ptr %73, align 4
  %293 = getelementptr [89 x i16], ptr @emc_timing_registers, i32 0, i32 %287
  %294 = load i16, ptr %293, align 2
  %295 = zext i16 %294 to i32
  %296 = getelementptr i8, ptr %292, i32 %295
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %291) #9, !srcloc !11
  br label %297

297:                                              ; preds = %289, %286
  %298 = add nuw nsw i32 %287, 1
  %299 = icmp eq i32 %298, 89
  br i1 %299, label %300, label %286

300:                                              ; preds = %297
  %301 = load ptr, ptr %33, align 4
  %302 = load i32, ptr %21, align 4
  %303 = tail call i32 @tegra_mc_write_emem_configuration(ptr noundef %301, i32 noundef %302) #9
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %485

305:                                              ; preds = %300
  %306 = icmp eq i32 %118, 0
  %307 = and i1 %306, %91
  br i1 %307, label %308, label %325

308:                                              ; preds = %305
  %309 = load i8, ptr %64, align 4
  %310 = and i8 %309, 2
  %311 = icmp eq i8 %310, 0
  %312 = mul i32 %120, -256
  %313 = add i32 %312, 512
  %314 = select i1 %311, i32 512, i32 %313
  %315 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 82
  %316 = load i32, ptr %315, align 4
  %317 = and i32 %316, 1023
  %318 = tail call i32 @llvm.umax.i32(i32 %314, i32 %317) #9
  %319 = and i32 %316, -67043329
  %320 = shl i32 %318, 16
  %321 = and i32 %320, 67043328
  %322 = or i32 %321, %319
  %323 = load ptr, ptr %73, align 4
  %324 = getelementptr i8, ptr %323, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %322) #9, !srcloc !11
  br label %325

325:                                              ; preds = %308, %305
  %326 = load ptr, ptr %73, align 4
  %327 = getelementptr i8, ptr %326, i32 984
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #9, !srcloc !10
  %329 = and i32 %328, 512
  %330 = icmp ne i32 %329, 0
  %331 = icmp eq i8 %244, 0
  %332 = or i1 %331, %330
  br i1 %332, label %345, label %333

333:                                              ; preds = %325
  %334 = lshr i32 %117, 13
  %335 = and i32 %334, 7
  %336 = add nsw i32 %335, -4
  %337 = icmp ult i32 %336, -2
  br i1 %337, label %348, label %338

338:                                              ; preds = %333
  %339 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 39
  %340 = load i32, ptr %339, align 4
  %341 = lshr i32 %340, 13
  %342 = and i32 %341, 7
  %343 = add nsw i32 %342, -4
  %344 = icmp ult i32 %343, -2
  br i1 %344, label %348, label %345

345:                                              ; preds = %338, %325
  %346 = load ptr, ptr %73, align 4
  %347 = getelementptr i8, ptr %346, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %347, i32 1) #9, !srcloc !11
  br label %360

348:                                              ; preds = %338, %333
  %349 = load ptr, ptr %73, align 4
  %350 = getelementptr i8, ptr %349, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 1) #9, !srcloc !11
  %351 = or i32 %80, 2
  %352 = load ptr, ptr %73, align 4
  %353 = getelementptr i8, ptr %352, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %351) #9, !srcloc !11
  %354 = load i32, ptr %77, align 4
  %355 = or i32 %354, 2097152
  %356 = load ptr, ptr %73, align 4
  %357 = getelementptr i8, ptr %356, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 %355) #9, !srcloc !11
  %358 = load ptr, ptr %73, align 4
  %359 = getelementptr i8, ptr %358, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %359, i32 %80) #9, !srcloc !11
  br label %360

360:                                              ; preds = %348, %345
  %361 = phi i1 [ false, %345 ], [ true, %348 ]
  %362 = icmp ugt i32 %120, 1
  %363 = select i1 %362, i32 0, i32 2
  %364 = load ptr, ptr %73, align 4
  %365 = getelementptr i8, ptr %364, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %363) #9, !srcloc !11
  br i1 %306, label %366, label %375

366:                                              ; preds = %360
  br i1 %93, label %367, label %371

367:                                              ; preds = %366
  %368 = load i32, ptr %85, align 4
  %369 = load ptr, ptr %73, align 4
  %370 = getelementptr i8, ptr %369, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %368) #9, !srcloc !11
  br label %371

371:                                              ; preds = %367, %366
  %372 = select i1 %362, i32 1, i32 -2147483647
  %373 = load ptr, ptr %73, align 4
  %374 = getelementptr i8, ptr %373, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %372) #9, !srcloc !11
  br label %375

375:                                              ; preds = %371, %360
  %376 = load ptr, ptr %73, align 4
  %377 = getelementptr i8, ptr %376, i32 972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %377, i32 1) #9, !srcloc !11
  %378 = or i32 %80, 2
  %379 = load ptr, ptr %73, align 4
  %380 = getelementptr i8, ptr %379, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %380, i32 %378) #9, !srcloc !11
  %381 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 1, i32 73
  %382 = load i32, ptr %381, align 4
  %383 = load ptr, ptr %73, align 4
  %384 = getelementptr i8, ptr %383, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %382) #9, !srcloc !11
  br i1 %361, label %385, label %389

385:                                              ; preds = %375
  %386 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 7
  %387 = load i8, ptr %386, align 4, !range !12
  %388 = load i32, ptr %77, align 4
  br label %397

389:                                              ; preds = %375
  %390 = load i32, ptr %77, align 4
  %391 = lshr i32 %390, 21
  %392 = and i32 %391, 1
  %393 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 7
  %394 = load i8, ptr %393, align 4, !range !12
  %395 = zext i8 %394 to i32
  %396 = icmp eq i32 %392, %395
  br i1 %396, label %406, label %397

397:                                              ; preds = %389, %385
  %398 = phi i32 [ %388, %385 ], [ %390, %389 ]
  %399 = phi i8 [ %387, %385 ], [ %394, %389 ]
  %400 = icmp eq i8 %399, 0
  %401 = and i32 %398, -2097153
  %402 = select i1 %400, i32 0, i32 2097152
  %403 = or i32 %401, %402
  store i32 %403, ptr %77, align 4
  %404 = load ptr, ptr %73, align 4
  %405 = getelementptr i8, ptr %404, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %405, i32 %403) #9, !srcloc !11
  br label %406

406:                                              ; preds = %397, %389
  %407 = load ptr, ptr %73, align 4
  %408 = getelementptr i8, ptr %407, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %80) #9, !srcloc !11
  br i1 %306, label %409, label %442

409:                                              ; preds = %406
  %410 = select i1 %362, i32 0, i32 -2147483648
  %411 = load ptr, ptr %73, align 4
  %412 = getelementptr i8, ptr %411, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %412, i32 %410) #9, !srcloc !11
  %413 = load i32, ptr %85, align 4
  %414 = getelementptr i8, ptr %0, i32 48
  %415 = load i32, ptr %414, align 4
  %416 = icmp eq i32 %413, %415
  br i1 %416, label %420, label %417

417:                                              ; preds = %409
  %418 = load ptr, ptr %73, align 4
  %419 = getelementptr i8, ptr %418, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 %413) #9, !srcloc !11
  br label %420

420:                                              ; preds = %417, %409
  %421 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 4
  %422 = load i32, ptr %421, align 4
  %423 = getelementptr i8, ptr %0, i32 52
  %424 = load i32, ptr %423, align 4
  %425 = icmp eq i32 %422, %424
  br i1 %425, label %429, label %426

426:                                              ; preds = %420
  %427 = load ptr, ptr %73, align 4
  %428 = getelementptr i8, ptr %427, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %428, i32 %422) #9, !srcloc !11
  br label %429

429:                                              ; preds = %426, %420
  %430 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 5
  %431 = load i32, ptr %430, align 4
  %432 = getelementptr i8, ptr %0, i32 56
  %433 = load i32, ptr %432, align 4
  %434 = icmp eq i32 %431, %433
  %435 = and i1 %90, %434
  br i1 %435, label %459, label %436

436:                                              ; preds = %429
  %437 = or i32 %431, 67109120
  %438 = and i32 %431, -257
  %439 = select i1 %90, i32 %438, i32 %437
  %440 = load ptr, ptr %73, align 4
  %441 = getelementptr i8, ptr %440, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 %439) #9, !srcloc !11
  br label %459

442:                                              ; preds = %406
  %443 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 4
  %444 = load i32, ptr %443, align 4
  %445 = getelementptr i8, ptr %0, i32 52
  %446 = load i32, ptr %445, align 4
  %447 = icmp eq i32 %444, %446
  br i1 %447, label %451, label %448

448:                                              ; preds = %442
  %449 = load ptr, ptr %73, align 4
  %450 = getelementptr i8, ptr %449, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %450, i32 %444) #9, !srcloc !11
  br label %451

451:                                              ; preds = %448, %442
  %452 = load i32, ptr %85, align 4
  %453 = getelementptr i8, ptr %0, i32 48
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %452, %454
  br i1 %455, label %459, label %456

456:                                              ; preds = %451
  %457 = load ptr, ptr %73, align 4
  %458 = getelementptr i8, ptr %457, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 %452) #9, !srcloc !11
  br label %459

459:                                              ; preds = %456, %451, %436, %429
  %460 = load i32, ptr %85, align 4
  %461 = getelementptr i8, ptr %0, i32 48
  store i32 %460, ptr %461, align 4
  %462 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 4
  %463 = load i32, ptr %462, align 4
  %464 = getelementptr i8, ptr %0, i32 52
  store i32 %463, ptr %464, align 4
  %465 = getelementptr %struct.emc_timing, ptr %15, i32 %20, i32 5
  %466 = load i32, ptr %465, align 4
  %467 = getelementptr i8, ptr %0, i32 56
  store i32 %466, ptr %467, align 4
  %468 = load i8, ptr %64, align 4
  %469 = and i8 %468, 2
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %477, label %471

471:                                              ; preds = %459
  %472 = load ptr, ptr %73, align 4
  %473 = getelementptr i8, ptr %472, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %473, i32 -2147483631) #9, !srcloc !11
  br i1 %362, label %474, label %477

474:                                              ; preds = %471
  %475 = load ptr, ptr %73, align 4
  %476 = getelementptr i8, ptr %475, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 1073741841) #9, !srcloc !11
  br label %477

477:                                              ; preds = %474, %471, %459
  %478 = load ptr, ptr %73, align 4
  %479 = getelementptr i8, ptr %478, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %479, i32 1) #9, !srcloc !11
  %480 = load ptr, ptr %33, align 4
  %481 = getelementptr inbounds %struct.tegra_mc, ptr %480, i32 0, i32 3
  %482 = load ptr, ptr %481, align 4
  %483 = getelementptr i8, ptr %482, i32 232
  %484 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %483) #9, !srcloc !10
  br label %485

485:                                              ; preds = %477, %300, %280, %239, %60, %28, %26
  %486 = phi i32 [ %61, %60 ], [ -110, %280 ], [ 0, %477 ], [ -22, %28 ], [ -110, %239 ], [ %303, %300 ], [ -22, %26 ]
  %487 = load i32, ptr %6, align 4
  tail call void @enable_irq(i32 noundef %487) #9
  br label %617

488:                                              ; preds = %3
  %489 = getelementptr i8, ptr %0, i32 24
  %490 = load i8, ptr %489, align 4, !range !12
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %622

492:                                              ; preds = %488
  %493 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %493, ptr noundef nonnull @.str.7) #10
  store i8 1, ptr %489, align 4
  br label %622

494:                                              ; preds = %3
  %495 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %496 = load i32, ptr %495, align 4
  %497 = getelementptr i8, ptr %0, i32 36
  %498 = load i32, ptr %497, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %513, label %500

500:                                              ; preds = %494
  %501 = getelementptr i8, ptr %0, i32 32
  %502 = load ptr, ptr %501, align 4
  br label %506

503:                                              ; preds = %506
  %504 = add nuw i32 %507, 1
  %505 = icmp eq i32 %504, %498
  br i1 %505, label %513, label %506

506:                                              ; preds = %503, %500
  %507 = phi i32 [ 0, %500 ], [ %504, %503 ]
  %508 = getelementptr %struct.emc_timing, ptr %502, i32 %507
  %509 = load i32, ptr %508, align 4
  %510 = icmp ult i32 %509, %496
  br i1 %510, label %503, label %511

511:                                              ; preds = %506
  %512 = icmp eq ptr %508, null
  br i1 %512, label %513, label %515

513:                                              ; preds = %511, %503, %494
  %514 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %514, ptr noundef nonnull @.str.5, i32 noundef %496) #10
  br label %515

515:                                              ; preds = %513, %511
  %516 = phi ptr [ null, %513 ], [ %508, %511 ]
  %517 = tail call i64 @ktime_get() #9
  %518 = add i64 %517, 100000
  %519 = getelementptr i8, ptr %0, i32 16
  %520 = load ptr, ptr %519, align 4
  %521 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %520) #9, !srcloc !10
  %522 = and i32 %521, 16
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %536

524:                                              ; preds = %530, %515
  %525 = tail call i64 @ktime_get() #9
  %526 = icmp sgt i64 %525, %518
  br i1 %526, label %527, label %530

527:                                              ; preds = %524
  %528 = load ptr, ptr %519, align 4
  %529 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %528) #9, !srcloc !10
  br label %536

530:                                              ; preds = %524
  %531 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %531(i32 noundef 214748) #9
  %532 = load ptr, ptr %519, align 4
  %533 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %532) #9, !srcloc !10
  %534 = and i32 %533, 16
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %524, label %536

536:                                              ; preds = %530, %527, %515
  %537 = phi i32 [ %529, %527 ], [ %521, %515 ], [ %533, %530 ]
  %538 = and i32 %537, 16
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %542

540:                                              ; preds = %536
  %541 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %541, ptr noundef nonnull @.str.8, i32 noundef -110) #10
  br label %623

542:                                              ; preds = %536
  %543 = getelementptr i8, ptr %0, i32 -60
  %544 = load ptr, ptr %543, align 4
  %545 = tail call i32 @tegra_mc_get_emem_device_count(ptr noundef %544) #9
  %546 = icmp ult i32 %545, 2
  %547 = select i1 %546, i32 -2147483646, i32 -2147483648
  %548 = load ptr, ptr %519, align 4
  %549 = getelementptr i8, ptr %548, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %549, i32 %547) #9, !srcloc !11
  %550 = getelementptr i8, ptr %0, i32 60
  %551 = load i8, ptr %550, align 4
  %552 = and i8 %551, 1
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %559, label %554

554:                                              ; preds = %542
  %555 = getelementptr inbounds %struct.emc_timing, ptr %516, i32 0, i32 2
  %556 = load i32, ptr %555, align 4
  %557 = load ptr, ptr %519, align 4
  %558 = getelementptr i8, ptr %557, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %558, i32 %556) #9, !srcloc !11
  br label %559

559:                                              ; preds = %554, %542
  %560 = getelementptr inbounds %struct.emc_timing, ptr %516, i32 0, i32 8
  %561 = load i8, ptr %560, align 1, !range !12
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %569, label %563

563:                                              ; preds = %559
  %564 = getelementptr i8, ptr %0, i32 44
  %565 = load i32, ptr %564, align 4
  %566 = or i32 %565, 268435456
  store i32 %566, ptr %564, align 4
  %567 = load ptr, ptr %519, align 4
  %568 = getelementptr i8, ptr %567, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %568, i32 %566) #9, !srcloc !11
  br label %569

569:                                              ; preds = %563, %559
  %570 = load i8, ptr %550, align 4
  %571 = and i8 %570, 2
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.emc_timing, ptr %516, i32 0, i32 6
  %575 = load i32, ptr %574, align 4
  %576 = load ptr, ptr %519, align 4
  %577 = getelementptr i8, ptr %576, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %577, i32 %575) #9, !srcloc !11
  br label %578

578:                                              ; preds = %573, %569
  %579 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %579(i32 noundef 429496) #9
  %580 = load ptr, ptr %519, align 4
  %581 = getelementptr i8, ptr %580, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %581, i32 1) #9, !srcloc !11
  %582 = tail call i64 @ktime_get() #9
  %583 = add i64 %582, 200000
  %584 = load ptr, ptr %519, align 4
  %585 = getelementptr i8, ptr %584, i32 692
  %586 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %585) #9, !srcloc !10
  %587 = and i32 %586, 8388608
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %607, label %589

589:                                              ; preds = %592, %578
  %590 = tail call i64 @ktime_get() #9
  %591 = icmp sgt i64 %590, %583
  br i1 %591, label %599, label %592

592:                                              ; preds = %589
  %593 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %593(i32 noundef 214748) #9
  %594 = load ptr, ptr %519, align 4
  %595 = getelementptr i8, ptr %594, i32 692
  %596 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %595) #9, !srcloc !10
  %597 = and i32 %596, 8388608
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %607, label %589

599:                                              ; preds = %589
  %600 = load ptr, ptr %519, align 4
  %601 = getelementptr i8, ptr %600, i32 692
  %602 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %601) #9, !srcloc !10
  %603 = and i32 %602, 8388608
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %607, label %605

605:                                              ; preds = %599
  %606 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %606, ptr noundef nonnull @.str.6, i32 noundef -110) #10
  br label %609

607:                                              ; preds = %599, %592, %578
  %608 = getelementptr i8, ptr %0, i32 24
  store i8 0, ptr %608, align 4
  br label %609

609:                                              ; preds = %607, %605
  %610 = phi i32 [ 0, %607 ], [ -110, %605 ]
  %611 = load ptr, ptr %543, align 4
  %612 = getelementptr i8, ptr %0, i32 40
  %613 = load i32, ptr %612, align 4
  %614 = getelementptr inbounds %struct.tegra_mc, ptr %611, i32 0, i32 3
  %615 = load ptr, ptr %614, align 4
  %616 = getelementptr i8, ptr %615, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %616, i32 %613) #9, !srcloc !11
  br label %617

617:                                              ; preds = %609, %485
  %618 = phi i32 [ %486, %485 ], [ %610, %609 ]
  %619 = icmp eq i32 %618, 0
  %620 = sub i32 1, %618
  %621 = or i32 %620, 32768
  br i1 %619, label %622, label %623

622:                                              ; preds = %617, %492, %488
  br label %623

623:                                              ; preds = %622, %617, %540, %3
  %624 = phi i32 [ 0, %3 ], [ 1, %622 ], [ %621, %617 ], [ 32879, %540 ]
  ret i32 %624
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_emc_isr._rs, ptr noundef nonnull @__func__.tegra_emc_isr) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.32) #10
  br label %13

13:                                               ; preds = %11, %8
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #9, !srcloc !11
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ 1, %13 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_debugfs_init(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %25, %8
  %12 = phi i32 [ 0, %8 ], [ %26, %25 ]
  %13 = phi i32 [ -1, %8 ], [ %22, %25 ]
  %14 = phi i32 [ 0, %8 ], [ %27, %25 ]
  %15 = getelementptr %struct.emc_timing, ptr %10, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %13
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  store i32 %16, ptr %3, align 4
  %19 = load i32, ptr %15, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %19, %18 ], [ %16, %11 ]
  %22 = phi i32 [ %16, %18 ], [ %13, %11 ]
  %23 = icmp ugt i32 %21, %12
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 %21, ptr %4, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %12, %20 ], [ %21, %24 ]
  %27 = add nuw i32 %14, 1
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %29, label %11

29:                                               ; preds = %25
  br i1 %7, label %30, label %34

30:                                               ; preds = %29, %1
  %31 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #9
  store i32 %33, ptr %3, align 4
  store i32 %33, ptr %4, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ %33, %30 ], [ %26, %29 ]
  %36 = phi i32 [ %33, %30 ], [ %22, %29 ]
  %37 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_set_rate_range(ptr noundef %38, i32 noundef %36, i32 noundef %35) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, ptr %3, align 4
  %43 = load i32, ptr %4, align 4
  %44 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef %42, i32 noundef %43, ptr noundef %44) #10
  br label %45

45:                                               ; preds = %41, %34
  %46 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17
  %47 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.37, ptr noundef null) #9
  store ptr %47, ptr %46, align 4
  %48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 292, ptr noundef %47, ptr noundef %0, ptr noundef nonnull @tegra_emc_debug_available_rates_fops) #9
  %49 = load ptr, ptr %46, align 4
  %50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 420, ptr noundef %49, ptr noundef %0, ptr noundef nonnull @tegra_emc_debug_min_rate_fops) #9
  %51 = load ptr, ptr %46, align 4
  %52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 420, ptr noundef %51, ptr noundef %0, ptr noundef nonnull @tegra_emc_debug_max_rate_fops) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_interconnect_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 8
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 2
  store ptr @emc_icc_set, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 11
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_mc_soc, ptr %5, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 3
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 7
  store ptr @emc_of_icc_xlate_extended, ptr %16, align 4
  %17 = tail call i32 @icc_provider_add(ptr noundef %7) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = tail call ptr @icc_node_create(i32 noundef 1001) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %38

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.icc_node, ptr %20, i32 0, i32 1
  store ptr @.str.47, ptr %25, align 4
  tail call void @icc_node_add(ptr noundef %20, ptr noundef %7) #9
  %26 = tail call i32 @icc_link_create(ptr noundef %20, i32 noundef 1002) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = tail call ptr @icc_node_create(i32 noundef 1002) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.icc_node, ptr %29, i32 0, i32 1
  store ptr @.str.48, ptr %34, align 4
  tail call void @icc_node_add(ptr noundef %29, ptr noundef %7) #9
  br label %44

35:                                               ; preds = %31, %24
  %36 = phi i32 [ %26, %24 ], [ %32, %31 ]
  %37 = tail call i32 @icc_nodes_remove(ptr noundef %7) #9
  br label %38

38:                                               ; preds = %35, %22
  %39 = phi i32 [ %23, %22 ], [ %36, %35 ]
  %40 = tail call i32 @icc_provider_del(ptr noundef %7) #9
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi i32 [ %17, %1 ], [ %39, %38 ]
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.49, i32 noundef %42) #10
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
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_get_emem_device_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_write_emem_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra20_clk_prepare_emc_mc_same_freq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #1

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
  %6 = icmp ugt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_clk_set_emc_round_callback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_round_rate(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_get_rate(ptr noundef %10) #9
  br label %47

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %6, -1
  %16 = getelementptr %struct.emc_timing, ptr %14, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %1)
  br label %19

19:                                               ; preds = %38, %12
  %20 = phi i32 [ %40, %38 ], [ 0, %12 ]
  %21 = getelementptr %struct.emc_timing, ptr %14, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp uge i32 %22, %0
  %24 = icmp eq i32 %20, %15
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = icmp ugt i32 %22, %2
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.umax.i32(i32 %20, i32 1)
  %30 = add i32 %29, -1
  %31 = getelementptr %struct.emc_timing, ptr %14, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, %18
  br i1 %33, label %45, label %34

34:                                               ; preds = %28, %26
  %35 = phi i32 [ %32, %28 ], [ %22, %26 ]
  %36 = phi i32 [ %30, %28 ], [ %20, %26 ]
  %37 = icmp ult i32 %35, %18
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %19
  %39 = phi i32 [ %36, %34 ], [ %20, %19 ]
  %40 = add nuw i32 %39, 1
  %41 = icmp ult i32 %40, %6
  br i1 %41, label %19, label %45

42:                                               ; preds = %34
  %43 = getelementptr %struct.emc_timing, ptr %14, i32 %36
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %38, %28
  %46 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.35, i32 noundef %0, i32 noundef %18, i32 noundef %2) #10
  br label %47

47:                                               ; preds = %45, %42, %8
  %48 = phi i32 [ -22, %45 ], [ %11, %8 ], [ %35, %42 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_tegra_emc_unset_callback(ptr nocapture noundef readnone %0) #2 {
  tail call void @tegra20_clk_set_emc_round_callback(ptr noundef null, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_tegra_emc_unreg_clk_notifier(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 3
  %5 = tail call i32 @clk_notifier_unregister(ptr noundef %3, ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_available_rates_show, ptr noundef %4) #9
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
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %11) #9
  %12 = load i32, ptr %5, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %14, %8
  %15 = phi i32 [ %19, %14 ], [ 1, %8 ]
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr %struct.emc_timing, ptr %16, i32 %15
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %18) #9
  %19 = add nuw i32 %15, 1
  %20 = load i32, ptr %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %14, label %22, !llvm.loop !13

22:                                               ; preds = %14, %8, %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #9
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
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_min_rate_get, ptr noundef nonnull @tegra_emc_debug_min_rate_set, ptr noundef nonnull @.str.45) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_set(ptr noundef %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
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
  %26 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17, i32 1
  store i32 %3, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22, %20, %2
  %28 = phi i32 [ 0, %25 ], [ -22, %20 ], [ %23, %22 ], [ -22, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @emc_set_min_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 %2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %23, label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %10, %8 ], [ %1, %3 ]
  %16 = phi i32 [ %12, %8 ], [ %6, %3 ]
  %17 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %15) #9
  %20 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %16) #9
  br label %26

23:                                               ; preds = %8
  %24 = tail call i32 @llvm.umax.i32(i32 %10, i32 %1) #9
  %25 = tail call i32 @llvm.umin.i32(i32 %12, i32 %6) #9
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ %25, %23 ], [ %22, %14 ]
  %28 = phi i32 [ %24, %23 ], [ %19, %14 ]
  %29 = icmp ugt i32 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef %2, i32 noundef %28, i32 noundef %27) #10
  br label %41

35:                                               ; preds = %26
  %36 = load ptr, ptr %0, align 4
  %37 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %36, i32 noundef %28) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 %2
  store i32 %1, ptr %40, align 4
  store i32 %6, ptr %5, align 4
  br label %41

41:                                               ; preds = %39, %35, %33, %30
  %42 = phi i32 [ 0, %39 ], [ -34, %33 ], [ -34, %30 ], [ %37, %35 ]
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_fops_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tegra_emc_debug_max_rate_get, ptr noundef nonnull @tegra_emc_debug_max_rate_set, ptr noundef nonnull @.str.45) #9
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_set(ptr noundef %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
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
  %23 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18
  %24 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %24) #9
  %25 = load i32, ptr %23, align 4
  %26 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %25) #9
  %29 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %3) #9
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 0, i32 noundef %28, i32 noundef %31) #10
  br label %44

38:                                               ; preds = %22
  %39 = load ptr, ptr %0, align 4
  %40 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %39, i32 noundef %28) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  store i32 %25, ptr %23, align 4
  %43 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 18, i32 0, i32 1
  store i32 %3, ptr %43, align 4
  tail call void @mutex_unlock(ptr noundef %24) #9
  br label %47

44:                                               ; preds = %36, %33
  tail call void @mutex_unlock(ptr noundef %24) #9
  br label %49

45:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef %24) #9
  %46 = icmp slt i32 %40, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %45, %42
  %48 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17, i32 2
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
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = mul nuw nsw i64 %8, 1000
  %10 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 1000
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 %9)
  %15 = lshr exact i64 %14, 3
  %16 = tail call i64 @llvm.umin.i64(i64 %15, i64 4294967295)
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc i32 @emc_set_min_rate(ptr noundef %5, i32 noundef %17, i32 noundef 1)
  ret i32 %18
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
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #11
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_rate_exclusive_get(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.50, i32 noundef %6) #10
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 7
  %12 = load i8, ptr %11, align 4, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !15

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 1608, i32 noundef 9, ptr noundef nonnull @.str.52) #9
  br label %16

15:                                               ; preds = %10
  store i8 1, ptr %11, align 4
  br label %16

16:                                               ; preds = %15, %14, %8
  %17 = phi i32 [ %6, %8 ], [ -22, %14 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 260
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = and i32 %7, 3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 696
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !10
  %12 = icmp eq i32 %8, 2
  %13 = and i32 %11, -8
  %14 = select i1 %12, i32 3, i32 1
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !11
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 8) #9, !srcloc !11
  %20 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #9, !srcloc !11
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  %24 = and i32 %23, -16777224
  %25 = or i32 %24, 16777216
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !11
  %28 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 7
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %30) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_rate_exclusive_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!10 = !{i64 4095990}
!11 = !{i64 4095572}
!12 = !{i8 0, i8 2}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{!"branch_weights", i32 2000, i32 1}
