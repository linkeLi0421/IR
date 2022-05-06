; ModuleID = '/llk/IR/drivers/memory/tegra/tegra20-emc.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra20-emc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.tegra_emc = type { ptr, ptr, %struct.icc_provider, %struct.notifier_block, ptr, ptr, i32, ptr, i32, %struct.anon.69, [3 x %struct.emc_rate_request], %struct.mutex, %struct.devfreq_simple_ondemand_data, %union.lpddr2_basic_config4, i32, i32, i32, i8 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.69 = type { ptr, i32, i32 }
%struct.emc_rate_request = type { i32, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%union.lpddr2_basic_config4 = type { i32 }
%struct.lpddr2_info = type { i32, i32, i32, i32, i32, i32 }
%struct.emc_timing = type { i32, [46 x i32] }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.68 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.68 = type { ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.icc_node_data = type { ptr, i32 }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@__initcall__kmod_tegra20_emc__253_1287_tegra_emc_driver_init6 = internal global ptr @tegra_emc_driver_init, section ".initcall6.init", align 4
@tegra_emc_driver = internal global %struct.platform_driver { ptr @tegra_emc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_emc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_emc_driver_exit = internal global ptr @tegra_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [54 x i8] c"tegra20_emc.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [50 x i8] c"tegra20_emc.description=NVIDIA Tegra20 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep256 = internal constant [49 x i8] c"tegra20_emc.softdep=pre: governor_simpleondemand\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [50 x i8] c"tegra20_emc.file=drivers/memory/tegra/tegra20-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [27 x i8] c"tegra20_emc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"tegra20-emc\00", align 1
@tegra_emc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"please update your device tree\0A\00", align 1
@tegra_emc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"&emc->rate_lock\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@emc_timing_registers = internal unnamed_addr constant [46 x i16] [i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 84, i16 88, i16 92, i16 96, i16 100, i16 104, i16 108, i16 112, i16 116, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 148, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172, i16 276, i16 176, i16 180, i16 260, i16 700, i16 704, i16 708, i16 736, i16 740, i16 680, i16 720, i16 724, i16 728], align 2
@.str.4 = private unnamed_addr constant [24 x i8] c"no timing for rate %lu\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"emc-car handshake timeout: %d\0A\00", align 1
@emc_setup_hw.print_sdram_info_once = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"bootloader didn't specify DRAM auto-suspend mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DDR1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"LPDDR2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"DDR2\00", align 1
@emc_setup_hw.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%ubit DRAM bus, %u %s %s attached\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.14 = private unnamed_addr constant [106 x i8] c"SDRAM[dev%u]: manufacturer: 0x%x (%s) rev1: 0x%x rev2: 0x%x prefetch: S%u density: %uMbit iowidth: %ubit\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"mode register %u read failed: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"memory timings skipped due to MRR error\0A\00", align 1
@tegra_emc_find_node_by_ram_code.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"device-tree doesn't have memory timings\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"nvidia,use-ram-code\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"emc-tables\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"nvidia,ram-code\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"lpddr2\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"failed to parse %pOF\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"no memory timings for RAM code %u found in device tree\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"no memory timings in DT node: %pOF\0A\00", align 1
@tegra_emc_load_timings_from_dt.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"got %u timings for RAM code %u (min %luMHz max %luMHz)\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"nvidia,tegra20-emc-table\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"incompatible DT node: %pOF\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"timing %pOF: failed to read rate: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"nvidia,emc-registers\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"timing %pOF: failed to read emc timing data: %d\0A\00", align 1
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
@tegra_emc_debug_min_rate_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [9 x i8] c"max_rate\00", align 1
@tegra_emc_debug_max_rate_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
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
@tegra_emc_devfreq_profile = internal global %struct.devfreq_dev_profile { i32 0, i32 30, i32 0, i8 0, ptr @tegra_emc_devfreq_target, ptr @tegra_emc_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.50 = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"failed to initialize devfreq: %pe\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"failed to find opp for %lu Hz\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__UNIQUE_ID_softdep256, ptr @__exitcall_tegra_emc_driver_exit, ptr @__initcall__kmod_tegra20_emc__253_1287_tegra_emc_driver_init6, ptr @tegra_emc_driver_exit], section "llvm.metadata"
@switch.table.tegra_emc_probe = private unnamed_addr constant [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4

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
  store i8 0, ptr %4, align 1
  %5 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %6 = icmp slt i32 %5, 0
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %6, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #10
  br label %333

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 180, i32 noundef 3520) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %333, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @tegra_emc_probe.__key) #9
  %14 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 3
  store ptr @tegra_emc_clk_change_notify, ptr %14, align 4
  store ptr %7, ptr %10, align 4
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 5
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = ptrtoint ptr %15 to i32
  br label %333

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %15, i32 696
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = and i32 %22, 6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %92, label %25

25:                                               ; preds = %20
  %26 = or i32 %22, 1
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i8, ptr %27, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !9
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 8) #9, !srcloc !9
  %31 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 8) #9, !srcloc !9
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  %35 = and i32 %34, -16777224
  %36 = or i32 %35, 16777216
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !9
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i8, ptr %39, i32 260
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !8
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 32, i32 16
  %45 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = and i32 %41, 3
  %47 = getelementptr inbounds [4 x ptr], ptr @switch.table.tegra_emc_probe, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !8
  %52 = lshr i32 %51, 24
  %53 = and i32 %52, 3
  %54 = add nuw nsw i32 %53, 1
  %55 = load i1, ptr @emc_setup_hw.__print_once, align 1
  br i1 %55, label %61, label %56

56:                                               ; preds = %25
  store i1 true, ptr @emc_setup_hw.__print_once, align 1
  %57 = load ptr, ptr %10, align 4
  %58 = load i32, ptr %45, align 4
  %59 = icmp eq i32 %54, 2
  %60 = select i1 %59, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.11, i32 noundef %58, i32 noundef %54, ptr noundef nonnull %48, ptr noundef nonnull %60) #10
  br label %61

61:                                               ; preds = %56, %25
  %62 = icmp eq i32 %46, 2
  br i1 %62, label %63, label %94

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 14
  %65 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 15
  %66 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 16
  %67 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 13
  br label %68

68:                                               ; preds = %89, %63
  %69 = phi i32 [ %54, %63 ], [ %70, %89 ]
  %70 = add nsw i32 %69, -1
  %71 = load i1, ptr @emc_setup_hw.print_sdram_info_once, align 1
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %10, i32 noundef %70, i32 noundef 5, ptr noundef %64) #9
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %10, i32 noundef %70, i32 noundef 6, ptr noundef %65) #9
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %10, i32 noundef %70, i32 noundef 7, ptr noundef %66) #9
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %10, i32 noundef %70, i32 noundef 8, ptr noundef %67) #9
  br i1 %71, label %89, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %10, align 4
  %74 = load i32, ptr %64, align 4
  %75 = tail call ptr @lpddr2_jedec_manufacturer(i32 noundef %74) #9
  %76 = load i32, ptr %65, align 4
  %77 = load i32, ptr %66, align 4
  %78 = load i8, ptr %67, align 4
  %79 = and i8 %78, 3
  %80 = zext i8 %79 to i32
  %81 = lshr i32 4, %80
  %82 = lshr i8 %78, 2
  %83 = and i8 %82, 15
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 64, %84
  %86 = lshr i8 %78, 6
  %87 = zext i8 %86 to i32
  %88 = lshr i32 32, %87
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.14, i32 noundef %70, i32 noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %81, i32 noundef %85, i32 noundef %88) #10
  br label %89

89:                                               ; preds = %72, %68
  %90 = icmp eq i32 %70, 0
  br i1 %90, label %91, label %68

91:                                               ; preds = %89
  store i1 true, ptr @emc_setup_hw.print_sdram_info_once, align 1
  br label %94

92:                                               ; preds = %20
  %93 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.6) #10
  br label %333

94:                                               ; preds = %91, %61
  %95 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !10
  %96 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 17
  %97 = load i8, ptr %96, align 4, !range !11
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.16) #10
  br label %196

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 25
  %102 = load ptr, ptr %101, align 8
  %103 = tail call ptr @of_get_next_child(ptr noundef %102, ptr noundef null) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %105, %100
  %106 = phi i32 [ %108, %105 ], [ 0, %100 ]
  %107 = phi ptr [ %109, %105 ], [ %103, %100 ]
  %108 = add i32 %106, 1
  %109 = tail call ptr @of_get_next_child(ptr noundef %102, ptr noundef nonnull %107) #9
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %105

111:                                              ; preds = %105
  %112 = icmp eq i32 %108, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %111, %100
  %114 = load i1, ptr @tegra_emc_find_node_by_ram_code.__print_once, align 1
  br i1 %114, label %196, label %115

115:                                              ; preds = %113
  store i1 true, ptr @tegra_emc_find_node_by_ram_code.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.17) #10
  br label %196

116:                                              ; preds = %111
  %117 = load ptr, ptr %101, align 8
  %118 = tail call ptr @of_find_property(ptr noundef %117, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %198, label %120

120:                                              ; preds = %116
  %121 = tail call i32 @tegra_read_ram_code() #9
  %122 = load ptr, ptr %101, align 8
  %123 = tail call ptr @of_find_node_by_name(ptr noundef %122, ptr noundef nonnull @.str.19) #9
  %124 = icmp eq ptr %123, null
  br i1 %124, label %195, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 14
  %127 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 15
  %128 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 16
  %129 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 13
  br label %130

130:                                              ; preds = %192, %125
  %131 = phi ptr [ %123, %125 ], [ %193, %192 ]
  %132 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %131, ptr noundef nonnull @.str.20, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %133 = icmp sgt i32 %132, -1
  %134 = load i32, ptr %3, align 4
  %135 = icmp eq i32 %134, %121
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %197, label %137

137:                                              ; preds = %130
  %138 = call ptr @of_find_node_by_name(ptr noundef nonnull %131, ptr noundef nonnull @.str.21) #9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %192, label %140

140:                                              ; preds = %137
  %141 = call ptr @of_lpddr2_get_info(ptr noundef nonnull %138, ptr noundef %95) #9
  %142 = icmp eq ptr %141, null
  br i1 %142, label %169, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.lpddr2_info, ptr %141, i32 0, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, ptr %126, align 4
  %149 = icmp ne i32 %145, %148
  %150 = zext i1 %149 to i8
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i8 [ 0, %143 ], [ %150, %147 ]
  %153 = getelementptr inbounds %struct.lpddr2_info, ptr %141, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, ptr %127, align 4
  %158 = icmp eq i32 %154, %157
  %159 = select i1 %158, i8 %152, i8 1
  br label %160

160:                                              ; preds = %156, %151
  %161 = phi i8 [ %152, %151 ], [ %159, %156 ]
  %162 = getelementptr inbounds %struct.lpddr2_info, ptr %141, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i32, ptr %128, align 4
  %167 = icmp eq i32 %163, %166
  %168 = select i1 %167, i8 %161, i8 1
  br label %170

169:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.22, ptr noundef nonnull %138) #10
  call void @of_node_put(ptr noundef nonnull %138) #9
  br label %192

170:                                              ; preds = %165, %160
  %171 = phi i8 [ %161, %160 ], [ %168, %165 ]
  %172 = getelementptr inbounds %struct.lpddr2_info, ptr %141, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = load i8, ptr %129, align 4
  %175 = lshr i8 %174, 2
  %176 = and i8 %175, 15
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %173, %177
  %179 = getelementptr inbounds %struct.lpddr2_info, ptr %141, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = lshr i8 %174, 6
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %180, %182
  %184 = load i32, ptr %141, align 4
  %185 = and i8 %174, 3
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %184, %186
  %188 = select i1 %187, i1 %183, i1 false
  %189 = select i1 %188, i1 %178, i1 false
  call void @of_node_put(ptr noundef nonnull %138) #9
  %190 = icmp eq i8 %171, 0
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %197, label %192

192:                                              ; preds = %170, %169, %137
  call void @of_node_put(ptr noundef nonnull %131) #9
  %193 = call ptr @of_find_node_by_name(ptr noundef nonnull %131, ptr noundef nonnull @.str.19) #9
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %130

195:                                              ; preds = %192, %120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.23, i32 noundef %121) #10
  br label %196

196:                                              ; preds = %195, %115, %113, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %284

197:                                              ; preds = %170, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %202

198:                                              ; preds = %116
  %199 = load ptr, ptr %101, align 8
  %200 = tail call ptr @of_node_get(ptr noundef %199) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %201 = icmp eq ptr %200, null
  br i1 %201, label %284, label %202

202:                                              ; preds = %198, %197
  %203 = phi ptr [ %131, %197 ], [ %200, %198 ]
  %204 = call ptr @of_get_next_child(ptr noundef nonnull %203, ptr noundef null) #9
  %205 = icmp eq ptr %204, null
  br i1 %205, label %214, label %206

206:                                              ; preds = %206, %202
  %207 = phi i32 [ %209, %206 ], [ 0, %202 ]
  %208 = phi ptr [ %210, %206 ], [ %204, %202 ]
  %209 = add i32 %207, 1
  %210 = call ptr @of_get_next_child(ptr noundef %203, ptr noundef nonnull %208) #9
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %206

212:                                              ; preds = %206
  %213 = icmp eq i32 %209, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %212, %202
  %215 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.24, ptr noundef %203) #10
  br label %281

216:                                              ; preds = %212
  %217 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %209, i32 188) #9
  %218 = extractvalue { i32, i1 } %217, 1
  br i1 %218, label %219, label %221, !prof !12

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 7
  store ptr null, ptr %220, align 4
  br label %281

221:                                              ; preds = %216
  %222 = load ptr, ptr %10, align 4
  %223 = extractvalue { i32, i1 } %217, 0
  %224 = call noalias ptr @devm_kmalloc(ptr noundef %222, i32 noundef %223, i32 noundef 3520) #9
  %225 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 7
  store ptr %224, ptr %225, align 4
  %226 = icmp eq ptr %224, null
  br i1 %226, label %281, label %227

227:                                              ; preds = %221
  %228 = call ptr @of_get_next_child(ptr noundef %203, ptr noundef null) #9
  %229 = icmp eq ptr %228, null
  br i1 %229, label %264, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 8
  br label %232

232:                                              ; preds = %260, %230
  %233 = phi ptr [ %224, %230 ], [ %261, %260 ]
  %234 = phi ptr [ %228, %230 ], [ %262, %260 ]
  %235 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %234, ptr noundef nonnull @.str.21) #9
  br i1 %235, label %260, label %236

236:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %237 = call i32 @of_device_is_compatible(ptr noundef nonnull %234, ptr noundef nonnull @.str.26) #9
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.27, ptr noundef nonnull %234) #10
  br label %252

241:                                              ; preds = %236
  %242 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %234, ptr noundef nonnull @.str.28, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %243 = icmp sgt i32 %242, -1
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.29, ptr noundef nonnull %234, i32 noundef %242) #10
  br label %252

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.emc_timing, ptr %233, i32 0, i32 1
  %248 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %234, ptr noundef nonnull @.str.30, ptr noundef %247, i32 noundef 46, i32 noundef 0) #9
  %249 = icmp sgt i32 %248, -1
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.31, ptr noundef nonnull %234, i32 noundef %248) #10
  br label %252

252:                                              ; preds = %250, %244, %239
  %253 = phi i32 [ -22, %239 ], [ %248, %250 ], [ %242, %244 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @of_node_put(ptr noundef nonnull %234) #9
  br label %281

254:                                              ; preds = %246
  %255 = load i32, ptr %2, align 4
  %256 = mul i32 %255, 2000
  store i32 %256, ptr %233, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %257 = getelementptr %struct.emc_timing, ptr %233, i32 1
  %258 = load i32, ptr %231, align 4
  %259 = add i32 %258, 1
  store i32 %259, ptr %231, align 4
  br label %260

260:                                              ; preds = %254, %232
  %261 = phi ptr [ %233, %232 ], [ %257, %254 ]
  %262 = call ptr @of_get_next_child(ptr noundef %203, ptr noundef nonnull %234) #9
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %232

264:                                              ; preds = %260, %227
  %265 = load ptr, ptr %225, align 4
  %266 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 8
  %267 = load i32, ptr %266, align 4
  call void @sort(ptr noundef %265, i32 noundef %267, i32 noundef 188, ptr noundef nonnull @cmp_timings, ptr noundef null) #9
  %268 = load i1, ptr @tegra_emc_load_timings_from_dt.__print_once, align 1
  br i1 %268, label %283, label %269

269:                                              ; preds = %264
  store i1 true, ptr @tegra_emc_load_timings_from_dt.__print_once, align 1
  %270 = load ptr, ptr %10, align 4
  %271 = load i32, ptr %266, align 4
  %272 = call i32 @tegra_read_ram_code() #9
  %273 = load ptr, ptr %225, align 4
  %274 = load i32, ptr %273, align 4
  %275 = udiv i32 %274, 1000000
  %276 = load i32, ptr %266, align 4
  %277 = add i32 %276, -1
  %278 = getelementptr %struct.emc_timing, ptr %273, i32 %277
  %279 = load i32, ptr %278, align 4
  %280 = udiv i32 %279, 1000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %270, ptr noundef nonnull @.str.25, i32 noundef %271, i32 noundef %272, i32 noundef %275, i32 noundef %280) #10
  br label %283

281:                                              ; preds = %252, %221, %219, %214
  %282 = phi i32 [ -12, %219 ], [ -12, %221 ], [ -22, %214 ], [ %253, %252 ]
  call void @of_node_put(ptr noundef nonnull %203) #9
  br label %333

283:                                              ; preds = %269, %264
  call void @of_node_put(ptr noundef nonnull %203) #9
  br label %284

284:                                              ; preds = %283, %198, %196
  %285 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load ptr, ptr %7, align 4
  br label %290

290:                                              ; preds = %288, %284
  %291 = phi ptr [ %289, %288 ], [ %286, %284 ]
  %292 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %5, ptr noundef nonnull @tegra_emc_isr, ptr noundef null, i32 noundef 0, ptr noundef %291, ptr noundef %10) #9
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %292) #10
  br label %333

295:                                              ; preds = %290
  call void @tegra20_clk_set_emc_round_callback(ptr noundef nonnull @emc_round_rate, ptr noundef %10) #9
  %296 = load ptr, ptr %10, align 4
  %297 = call i32 @devm_add_action(ptr noundef %296, ptr noundef nonnull @devm_tegra_emc_unset_callback, ptr noundef null) #9
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  call void @tegra20_clk_set_emc_round_callback(ptr noundef null, ptr noundef null) #9
  br label %333

300:                                              ; preds = %295
  %301 = load ptr, ptr %10, align 4
  %302 = call ptr @devm_clk_get(ptr noundef %301, ptr noundef null) #9
  %303 = getelementptr inbounds %struct.tegra_emc, ptr %10, i32 0, i32 4
  store ptr %302, ptr %303, align 4
  %304 = icmp ugt ptr %302, inttoptr (i32 -4096 to ptr)
  br i1 %304, label %316, label %305

305:                                              ; preds = %300
  %306 = call i32 @clk_notifier_register(ptr noundef %302, ptr noundef %14) #9
  %307 = icmp eq i32 %306, 0
  %308 = load ptr, ptr %10, align 4
  br i1 %307, label %310, label %309

309:                                              ; preds = %305
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %308, ptr noundef nonnull @.str.34, i32 noundef %306) #10
  br label %333

310:                                              ; preds = %305
  %311 = call i32 @devm_add_action(ptr noundef %308, ptr noundef nonnull @devm_tegra_emc_unreg_clk_notifier, ptr noundef %10) #9
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr %303, align 4
  %315 = call i32 @clk_notifier_unregister(ptr noundef %314, ptr noundef %14) #9
  br label %333

316:                                              ; preds = %300
  %317 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %317, ptr noundef nonnull @.str.33, ptr noundef nonnull %302) #10
  %318 = load ptr, ptr %303, align 4
  %319 = ptrtoint ptr %318 to i32
  %320 = icmp eq ptr %318, null
  br i1 %320, label %321, label %333

321:                                              ; preds = %316, %310
  store i8 1, ptr %4, align 1
  %322 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %7, ptr noundef nonnull %4) #9
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %325, align 8
  %326 = getelementptr %struct.tegra_emc, ptr %10, i32 0, i32 10, i32 0
  store i32 0, ptr %326, align 4
  %327 = getelementptr %struct.tegra_emc, ptr %10, i32 0, i32 10, i32 0, i32 1
  store i32 -1, ptr %327, align 4
  %328 = getelementptr %struct.tegra_emc, ptr %10, i32 0, i32 10, i32 1
  store i32 0, ptr %328, align 4
  %329 = getelementptr %struct.tegra_emc, ptr %10, i32 0, i32 10, i32 1, i32 1
  store i32 -1, ptr %329, align 4
  %330 = getelementptr %struct.tegra_emc, ptr %10, i32 0, i32 10, i32 2
  store i32 0, ptr %330, align 4
  %331 = getelementptr %struct.tegra_emc, ptr %10, i32 0, i32 10, i32 2, i32 1
  store i32 -1, ptr %331, align 4
  call fastcc void @tegra_emc_debugfs_init(ptr noundef nonnull %10)
  call fastcc void @tegra_emc_interconnect_init(ptr noundef nonnull %10)
  call fastcc void @tegra_emc_devfreq_init(ptr noundef nonnull %10)
  %332 = call zeroext i1 @try_module_get(ptr noundef null) #9
  br label %333

333:                                              ; preds = %324, %321, %316, %313, %309, %299, %294, %281, %92, %18, %9, %8
  %334 = phi i32 [ %5, %8 ], [ %19, %18 ], [ %292, %294 ], [ 0, %324 ], [ -12, %9 ], [ -22, %92 ], [ %319, %316 ], [ %322, %321 ], [ %282, %281 ], [ %311, %313 ], [ %297, %299 ], [ %306, %309 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %334
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_clk_change_notify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -64
  switch i32 %1, label %109 [
    i32 1, label %5
    i32 4, label %43
    i32 2, label %83
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %0, i32 24
  %13 = load ptr, ptr %12, align 4
  br label %17

14:                                               ; preds = %17
  %15 = add nuw i32 %18, 1
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %26, label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr %struct.emc_timing, ptr %13, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %7
  br i1 %21, label %14, label %22

22:                                               ; preds = %17
  %23 = icmp eq ptr %19, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %0, i32 16
  br label %28

26:                                               ; preds = %22, %14, %5
  %27 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4, i32 noundef %7) #10
  br label %109

28:                                               ; preds = %28, %24
  %29 = phi i32 [ 0, %24 ], [ %37, %28 ]
  %30 = getelementptr %struct.emc_timing, ptr %13, i32 %18, i32 1, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr [46 x i16], ptr @emc_timing_registers, i32 0, i32 %29
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %32, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %31) #9, !srcloc !9
  %37 = add nuw nsw i32 %29, 1
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %28

39:                                               ; preds = %28
  %40 = load ptr, ptr %25, align 4
  %41 = getelementptr i8, ptr %40, i32 728
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !8
  br label %109

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 28
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %0, i32 24
  %51 = load ptr, ptr %50, align 4
  br label %55

52:                                               ; preds = %55
  %53 = add nuw i32 %56, 1
  %54 = icmp eq i32 %53, %47
  br i1 %54, label %75, label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ 0, %49 ], [ %53, %52 ]
  %57 = getelementptr %struct.emc_timing, ptr %51, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %45
  br i1 %59, label %52, label %60

60:                                               ; preds = %55
  %61 = icmp eq ptr %57, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %60
  %63 = getelementptr i8, ptr %0, i32 16
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i32 [ 0, %62 ], [ %73, %64 ]
  %66 = getelementptr %struct.emc_timing, ptr %51, i32 %56, i32 1, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr [46 x i16], ptr @emc_timing_registers, i32 0, i32 %65
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %68, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %67) #9, !srcloc !9
  %73 = add nuw nsw i32 %65, 1
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %77, label %64

75:                                               ; preds = %60, %52, %43
  %76 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.4, i32 noundef %45) #10
  br label %109

77:                                               ; preds = %64
  %78 = load ptr, ptr %63, align 4
  %79 = getelementptr i8, ptr %78, i32 728
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !8
  %81 = load ptr, ptr %63, align 4
  %82 = getelementptr i8, ptr %81, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1) #9, !srcloc !9
  br label %109

83:                                               ; preds = %3
  %84 = tail call i64 @ktime_get() #9
  %85 = add i64 %84, 100000
  %86 = getelementptr i8, ptr %0, i32 16
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !8
  %89 = and i32 %88, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %97, %83
  %92 = tail call i64 @ktime_get() #9
  %93 = icmp sgt i64 %92, %85
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load ptr, ptr %86, align 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !8
  br label %103

97:                                               ; preds = %91
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #9
  %99 = load ptr, ptr %86, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !8
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %91, label %103

103:                                              ; preds = %97, %94, %83
  %104 = phi i32 [ %96, %94 ], [ %88, %83 ], [ %100, %97 ]
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.5, i32 noundef -110) #10
  br label %109

109:                                              ; preds = %107, %103, %77, %75, %39, %26, %3
  %110 = phi i32 [ 0, %3 ], [ 1, %77 ], [ 1, %39 ], [ 1, %103 ], [ 32791, %75 ], [ 32791, %26 ], [ 32879, %107 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !8
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #9, !srcloc !9
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ 1, %13 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_debugfs_init(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9, i32 1
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7
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
  %46 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9
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
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 8
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 2
  store ptr @emc_icc_set, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 11
  store ptr %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_mc_soc, ptr %8, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 3
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 2, i32 7
  store ptr @emc_of_icc_xlate_extended, ptr %19, align 4
  %20 = tail call i32 @icc_provider_add(ptr noundef %10) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %6
  %23 = tail call ptr @icc_node_create(i32 noundef 1001) #9
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = ptrtoint ptr %23 to i32
  br label %41

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.icc_node, ptr %23, i32 0, i32 1
  store ptr @.str.47, ptr %28, align 4
  tail call void @icc_node_add(ptr noundef %23, ptr noundef %10) #9
  %29 = tail call i32 @icc_link_create(ptr noundef %23, i32 noundef 1002) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = tail call ptr @icc_node_create(i32 noundef 1002) #9
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.icc_node, ptr %32, i32 0, i32 1
  store ptr @.str.48, ptr %37, align 4
  tail call void @icc_node_add(ptr noundef %32, ptr noundef %10) #9
  br label %47

38:                                               ; preds = %34, %27
  %39 = phi i32 [ %29, %27 ], [ %35, %34 ]
  %40 = tail call i32 @icc_nodes_remove(ptr noundef %10) #9
  br label %41

41:                                               ; preds = %38, %25
  %42 = phi i32 [ %26, %25 ], [ %39, %38 ]
  %43 = tail call i32 @icc_provider_del(ptr noundef %10) #9
  br label %44

44:                                               ; preds = %41, %6
  %45 = phi i32 [ %20, %6 ], [ %42, %41 ]
  %46 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.49, i32 noundef %45) #10
  br label %47

47:                                               ; preds = %44, %36, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_devfreq_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 12
  store i32 20, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !9
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !9
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1) #9, !srcloc !9
  %10 = load ptr, ptr %0, align 4
  %11 = tail call ptr @devm_devfreq_add_device(ptr noundef %10, ptr noundef nonnull @tegra_emc_devfreq_profile, ptr noundef nonnull @.str.50, ptr noundef %2) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51, ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @emc_read_lpddr_mode_register(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 32) #9, !srcloc !9
  %7 = shl i32 %1, 30
  %8 = add i32 %7, 1073741824
  %9 = shl i32 %2, 16
  %10 = and i32 %9, 16711680
  %11 = or i32 %10, %8
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !9
  %14 = tail call i64 @ktime_get() #9
  %15 = add i64 %14, 100000
  %16 = load ptr, ptr %5, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %26, %4
  %21 = tail call i64 @ktime_get() #9
  %22 = icmp sgt i64 %21, %15
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  br label %32

26:                                               ; preds = %20
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #9
  %28 = load ptr, ptr %5, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %20, label %32

32:                                               ; preds = %26, %23, %4
  %33 = phi i32 [ %25, %23 ], [ %17, %4 ], [ %29, %26 ]
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15, i32 noundef %2, i32 noundef -110) #10
  %38 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 17
  store i8 1, ptr %38, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i8, ptr %40, i32 236
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !8
  %43 = and i32 %42, 255
  store i32 %43, ptr %3, align 4
  br label %44

44:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpddr2_jedec_manufacturer(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_lpddr2_get_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_clk_set_emc_round_callback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_round_rate(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_get_rate(ptr noundef %10) #9
  br label %47

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tegra_emc, ptr %3, i32 0, i32 7
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
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 7
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
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

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
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_set(ptr noundef %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7
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
  br i1 %21, label %22, label %55

22:                                               ; preds = %20, %7
  %23 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %23) #9
  %24 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %27, i32 %3) #9
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %25) #9
  %32 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %30) #9
  %35 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %31) #9
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 1, i32 noundef %34, i32 noundef %37) #10
  br label %50

44:                                               ; preds = %22
  %45 = load ptr, ptr %0, align 4
  %46 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %45, i32 noundef %34) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 1
  store i32 %3, ptr %49, align 4
  store i32 %25, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %23) #9
  br label %53

50:                                               ; preds = %42, %39
  tail call void @mutex_unlock(ptr noundef %23) #9
  br label %55

51:                                               ; preds = %44
  tail call void @mutex_unlock(ptr noundef %23) #9
  %52 = icmp slt i32 %46, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %51, %48
  %54 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9, i32 1
  store i32 %3, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %51, %50, %20, %2
  %56 = phi i32 [ 0, %53 ], [ -22, %20 ], [ %46, %51 ], [ -34, %50 ], [ -22, %2 ]
  ret i32 %56
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
  %3 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  store i64 %5, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_set(ptr noundef %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 7
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
  br i1 %21, label %22, label %55

22:                                               ; preds = %20, %7
  %23 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 1
  %24 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %24) #9
  %25 = load i32, ptr %23, align 4
  %26 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %27, i32 %25) #9
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %3) #9
  %32 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %30) #9
  %35 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %31) #9
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 1, i32 noundef %34, i32 noundef %37) #10
  br label %50

44:                                               ; preds = %22
  %45 = load ptr, ptr %0, align 4
  %46 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %45, i32 noundef %34) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  store i32 %25, ptr %23, align 4
  %49 = getelementptr %struct.tegra_emc, ptr %0, i32 0, i32 10, i32 1, i32 1
  store i32 %3, ptr %49, align 4
  tail call void @mutex_unlock(ptr noundef %24) #9
  br label %53

50:                                               ; preds = %42, %39
  tail call void @mutex_unlock(ptr noundef %24) #9
  br label %55

51:                                               ; preds = %44
  tail call void @mutex_unlock(ptr noundef %24) #9
  %52 = icmp slt i32 %46, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %51, %48
  %54 = getelementptr inbounds %struct.tegra_emc, ptr %0, i32 0, i32 9, i32 2
  store i32 %3, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %51, %50, %20, %2
  %56 = phi i32 [ 0, %53 ], [ -22, %20 ], [ %46, %51 ], [ -34, %50 ], [ -22, %2 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

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
  %15 = getelementptr i8, ptr %4, i32 76
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 3
  %18 = icmp ult i64 %14, 4294967296
  br i1 %18, label %19, label %23, !prof !15

19:                                               ; preds = %2
  %20 = trunc i64 %14 to i32
  %21 = udiv i32 %20, %17
  %22 = zext i32 %21 to i64
  br label %26

23:                                               ; preds = %2
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %14) #11, !srcloc !16
  %25 = extractvalue { i64, i64 } %24, 1
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i64 [ %22, %19 ], [ %25, %23 ]
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 4294967295)
  %29 = trunc i64 %28 to i32
  %30 = getelementptr i8, ptr %4, i32 124
  tail call void @mutex_lock(ptr noundef %30) #9
  %31 = getelementptr i8, ptr %4, i32 120
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %4, i32 100
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %4, i32 104
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %4, i32 108
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 %34) #9
  %40 = getelementptr i8, ptr %4, i32 112
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %36) #9
  %43 = tail call i32 @llvm.umax.i32(i32 %39, i32 %29) #9
  %44 = tail call i32 @llvm.umin.i32(i32 %42, i32 %32) #9
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %26
  %47 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 2, i32 noundef %43, i32 noundef %44) #10
  br label %57

51:                                               ; preds = %26
  %52 = load ptr, ptr %5, align 4
  %53 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %52, i32 noundef %43) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %4, i32 116
  store i32 %29, ptr %56, align 4
  store i32 %32, ptr %31, align 4
  br label %57

57:                                               ; preds = %55, %51, %49, %46
  %58 = phi i32 [ 0, %55 ], [ -34, %49 ], [ -34, %46 ], [ %53, %51 ]
  tail call void @mutex_unlock(ptr noundef %30) #9
  ret i32 %58
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
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_devfreq_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %9) #10
  %10 = ptrtoint ptr %6 to i32
  br label %42

11:                                               ; preds = %3
  %12 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %6) #9
  tail call void @dev_pm_opp_put(ptr noundef %6) #9
  %13 = getelementptr inbounds %struct.tegra_emc, ptr %5, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %13) #9
  %14 = getelementptr %struct.tegra_emc, ptr %5, i32 0, i32 10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.tegra_emc, ptr %5, i32 0, i32 10, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %12) #9
  %19 = getelementptr %struct.tegra_emc, ptr %5, i32 0, i32 10, i32 1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %15) #9
  %22 = getelementptr %struct.tegra_emc, ptr %5, i32 0, i32 10, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %18) #9
  %25 = getelementptr %struct.tegra_emc, ptr %5, i32 0, i32 10, i32 2, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %21) #9
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 0, i32 noundef %24, i32 noundef %27) #10
  br label %40

34:                                               ; preds = %11
  %35 = load ptr, ptr %5, align 4
  %36 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %35, i32 noundef %24) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr %struct.tegra_emc, ptr %5, i32 0, i32 10, i32 0
  store i32 %12, ptr %39, align 4
  store i32 %15, ptr %14, align 4
  br label %40

40:                                               ; preds = %38, %34, %32, %29
  %41 = phi i32 [ 0, %38 ], [ -34, %32 ], [ -34, %29 ], [ %36, %34 ]
  tail call void @mutex_unlock(ptr noundef %13) #9
  br label %42

42:                                               ; preds = %40, %8
  %43 = phi i32 [ %10, %8 ], [ %41, %40 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_emc_devfreq_get_dev_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 512) #9, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 416
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 412
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  store i32 %14, ptr %1, align 4
  %15 = getelementptr inbounds %struct.tegra_emc, ptr %4, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_get_rate(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 256) #9, !srcloc !9
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 768) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

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
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 4589655}
!9 = !{i64 4589237}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148417158, i64 2148417438, i64 2148417772, i64 2148418106}
