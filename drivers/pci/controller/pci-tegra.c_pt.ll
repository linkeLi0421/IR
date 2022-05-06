; ModuleID = '/llk/IR/drivers/pci/controller/pci-tegra.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tegra_pcie_soc = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, i8 }
%struct.anon.79 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_pcie_port_soc = type { %struct.anon.77 }
%struct.anon.77 = type { i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.tegra_pcie = type { ptr, ptr, ptr, ptr, i32, %struct.resource, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.tegra_msi, %struct.list_head, i32, ptr, i32, ptr, ptr }
%struct.tegra_msi = type { [8 x i32], ptr, %struct.mutex, %struct.spinlock, ptr, i32, i32 }
%struct.tegra_pcie_port = type { ptr, ptr, %struct.list_head, %struct.resource, ptr, i32, i32, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.msi_msg = type { %union.anon.65, %union.anon.66, %union.anon.67 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }

@__pci_fixup_tegra_pcie_fixup_class731 = internal constant %struct.pci_fixup { i16 4318, i16 3056, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_fixup_class732 = internal constant %struct.pci_fixup { i16 4318, i16 3057, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_fixup_class733 = internal constant %struct.pci_fixup { i16 4318, i16 3612, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_fixup_class734 = internal constant %struct.pci_fixup { i16 4318, i16 3613, i32 -1, i32 0, ptr @tegra_pcie_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_tegra_pcie_relax_enable741 = internal constant %struct.pci_fixup { i16 4318, i16 3056, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__pci_fixup_tegra_pcie_relax_enable742 = internal constant %struct.pci_fixup { i16 4318, i16 3057, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__pci_fixup_tegra_pcie_relax_enable743 = internal constant %struct.pci_fixup { i16 4318, i16 3612, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__pci_fixup_tegra_pcie_relax_enable744 = internal constant %struct.pci_fixup { i16 4318, i16 3613, i32 -1, i32 0, ptr @tegra_pcie_relax_enable }, section ".pci_fixup_final", align 4
@__initcall__kmod_pci_tegra__252_2816_tegra_pcie_driver_init6 = internal global ptr @tegra_pcie_driver_init, section ".initcall6.init", align 4
@tegra_pcie_driver = internal global %struct.platform_driver { ptr @tegra_pcie_probe, ptr @tegra_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_pcie_driver_exit = internal global ptr @tegra_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [48 x i8] c"pci_tegra.file=drivers/pci/controller/pci-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [22 x i8] c"pci_tegra.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"tegra-pcie\00", align 1
@tegra_pcie_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_pcie }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_pcie }, %struct.of_device_id zeroinitializer], align 4
@tegra_pcie_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr @tegra_pcie_pm_suspend, ptr @tegra_pcie_pm_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to request resources: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to enable MSI support: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"fail to enable pcie controller: %d\0A\00", align 1
@tegra_pcie_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr @tegra_pcie_map_bus, ptr @tegra_pcie_config_read, ptr @tegra_pcie_config_write }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to register host: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to parse address: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid port number: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"nvidia,num-lanes\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to parse # of lanes: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"invalid # of lanes: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"pex-reset-%u\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to get reset GPIO: %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"invalid lane configuration\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"nvidia,tegra186-pcie\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"4x1, 1x1 configuration\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"2x1, 1X1, 1x1 configuration\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"1x1, 1x1, 1x1 configuration\0A\00", align 1
@.str.18 = private unnamed_addr constant [85 x i8] c"wrong configuration updated in DT, switching to default 2x1, 1x1, 1x1 configuration\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"nvidia,tegra124-pcie\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"nvidia,tegra210-pcie\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"2x1, 1x1 configuration\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"nvidia,tegra30-pcie\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"4x1, 2x1 configuration\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"2x3 configuration\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"4x1, 1x2 configuration\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"nvidia,tegra20-pcie\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"single-mode configuration\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"dual-mode configuration\0A\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"dvdd-pex\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"hvdd-pex-pll\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"hvdd-pex\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"vddio-pexctl-aud\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"hvddio-pex\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"dvddio-pex\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"vddio-pex-ctl\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"avddio-pex\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"avdd-pex-pll\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"avdd-plle\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"avdd-pexa\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"vdd-pexa\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"avdd-pexb\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"vdd-pexb\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"avdd-pex\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"vdd-pex\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"vddio-pex-clk\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"using legacy DT binding for power supplies\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"%s-supply\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"device %pOF not supported in legacy mode\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"pex-clk\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"failed to get clocks: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"failed to get resets: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"failed to get PHYs: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"pads\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"PCIE\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"failed to register IRQ: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"pex\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"cml\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"pcie_x\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"failed to get PHY: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"failed to initialize PHY: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"failed to get PHY#%u: %ld\0A\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"failed to initialize PHY#%u: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@tegra_pcie_isr.err_msg = internal unnamed_addr constant [15 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], align 4
@.str.72 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"AXI slave error\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"AXI decode error\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"Target abort\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Master abort\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"Invalid write\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"Legacy interrupt\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"Response decoding error\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"AXI response decoding error\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"Transaction timeout\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"Slot present pin change\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"Slot clock request change\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"TMS clock ramp change\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"TMS ready for power down\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Peer2Peer error\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"%s, signature: %08x\0A\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"  FPCI address: %10llx\0A\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"failed to teardown PHY: %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"failed to teardown PHY#%u: %d\0A\00", align 1
@tegra_pcie_msi_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"&msi->map_lock\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"failed to set DMA coherent mask: %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"failed to allocate DMA memory for MSI\0A\00", align 1
@tegra_msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_msi_domain_alloc, ptr @tegra_msi_domain_free, ptr null, ptr null, ptr null }, align 4
@.str.95 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@tegra_msi_info = internal global %struct.msi_domain_info { i32 11, ptr null, ptr @tegra_msi_top_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.96 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@tegra_msi_bottom_chip = internal global %struct.irq_chip { ptr null, ptr @.str.97, ptr null, ptr null, ptr null, ptr null, ptr @tegra_msi_irq_ack, ptr @tegra_msi_irq_mask, ptr null, ptr @tegra_msi_irq_unmask, ptr null, ptr @tegra_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.97 = private unnamed_addr constant [10 x i8] c"Tegra MSI\00", align 1
@tegra_msi_top_chip = internal global %struct.irq_chip { ptr null, ptr @.str.98, ptr null, ptr null, ptr null, ptr null, ptr @tegra_msi_top_irq_ack, ptr @tegra_msi_top_irq_mask, ptr null, ptr @tegra_msi_top_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.98 = private unnamed_addr constant [15 x i8] c"Tegra PCIe MSI\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"unexpected MSI\0A\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@tegra_pcie_ports_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_pcie_ports_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_pcie_ports_sops = internal constant %struct.seq_operations { ptr @tegra_pcie_ports_seq_start, ptr @tegra_pcie_ports_seq_stop, ptr @tegra_pcie_ports_seq_next, ptr @tegra_pcie_ports_seq_show }, align 4
@.str.101 = private unnamed_addr constant [15 x i8] c"Index  Status\0A\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"%2u     \00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@tegra186_pcie = internal constant %struct.tegra_pcie_soc { i32 3, ptr @tegra186_pcie_ports, i32 8, i32 412, i32 180, i32 4194304, i32 -2135392072, i32 295096, i32 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.anon.78 zeroinitializer }, align 4
@tegra210_pcie = internal constant %struct.tegra_pcie_soc { i32 2, ptr @tegra20_pcie_ports, i32 8, i32 0, i32 180, i32 4194304, i32 -1866952520, i32 0, i32 25165824, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, %struct.anon.78 { %struct.anon.79 { i32 15, i32 103, i32 1426128896, i32 1, i32 143, i32 199, i32 1426128896, i32 1 }, i8 1 } }, align 4
@tegra124_pcie = internal constant %struct.tegra_pcie_soc { i32 2, ptr @tegra20_pcie_ports, i32 8, i32 0, i32 180, i32 4194304, i32 1152140460, i32 0, i32 0, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, %struct.anon.78 zeroinitializer }, align 4
@tegra30_pcie = internal constant %struct.tegra_pcie_soc { i32 3, ptr @tegra30_pcie_ports, i32 8, i32 296, i32 180, i32 4194304, i32 -94569892, i32 -94569892, i32 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, %struct.anon.78 zeroinitializer }, align 4
@tegra20_pcie = internal constant %struct.tegra_pcie_soc { i32 2, ptr @tegra20_pcie_ports, i32 0, i32 0, i32 184, i32 0, i32 -94569892, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, %struct.anon.78 zeroinitializer }, align 4
@tegra186_pcie_ports = internal constant [3 x %struct.tegra_pcie_port_soc] [%struct.tegra_pcie_port_soc { %struct.anon.77 { i8 0, i8 5 } }, %struct.tegra_pcie_port_soc { %struct.anon.77 { i8 8, i8 10 } }, %struct.tegra_pcie_port_soc { %struct.anon.77 { i8 12, i8 14 } }], align 1
@tegra20_pcie_ports = internal constant [2 x %struct.tegra_pcie_port_soc] [%struct.tegra_pcie_port_soc { %struct.anon.77 { i8 0, i8 5 } }, %struct.tegra_pcie_port_soc { %struct.anon.77 { i8 8, i8 10 } }], align 1
@tegra30_pcie_ports = internal constant [3 x %struct.tegra_pcie_port_soc] [%struct.tegra_pcie_port_soc { %struct.anon.77 { i8 0, i8 5 } }, %struct.tegra_pcie_port_soc { %struct.anon.77 { i8 8, i8 10 } }, %struct.tegra_pcie_port_soc { %struct.anon.77 { i8 16, i8 18 } }], align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"failed to power off PHY(s): %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"PME Ack is not received on port: %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"failed to power off PHY: %d\0A\00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"failed to power off PCIe port %u PHY: %d\0A\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"failed to power off PHY#%u: %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"failed to disable regulators: %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"tegra pcie power on fail: %d\0A\00", align 1
@.str.114 = private unnamed_addr constant [35 x i8] c"failed to disable PCIe IO DPD: %d\0A\00", align 1
@.str.115 = private unnamed_addr constant [32 x i8] c"failed to enable PEX clock: %d\0A\00", align 1
@.str.116 = private unnamed_addr constant [31 x i8] c"failed to power on PHY(s): %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"failed to power ungate: %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"failed to remove clamp: %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"failed to enable AFI clock: %d\0A\00", align 1
@.str.121 = private unnamed_addr constant [32 x i8] c"failed to enable CML clock: %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"failed to enable PLLE clock: %d\0A\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"failed to power on PHY: %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [41 x i8] c"failed to power on PCIe port %u PHY: %d\0A\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"PLL failed to lock: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.126 = private unnamed_addr constant [31 x i8] c"failed to power on PHY#%u: %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [33 x i8] c"probing port %u, using %u lanes\0A\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"link %u down, ignoring\0A\00", align 1
@.str.129 = private unnamed_addr constant [34 x i8] c"PCIe port %u link is in recovery\0A\00", align 1
@.str.130 = private unnamed_addr constant [35 x i8] c"failed to retrain link of port %u\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_tegra_pcie_driver_exit, ptr @__initcall__kmod_pci_tegra__252_2816_tegra_pcie_driver_init6, ptr @__pci_fixup_tegra_pcie_fixup_class731, ptr @__pci_fixup_tegra_pcie_fixup_class732, ptr @__pci_fixup_tegra_pcie_fixup_class733, ptr @__pci_fixup_tegra_pcie_fixup_class734, ptr @__pci_fixup_tegra_pcie_relax_enable741, ptr @__pci_fixup_tegra_pcie_relax_enable742, ptr @__pci_fixup_tegra_pcie_relax_enable743, ptr @__pci_fixup_tegra_pcie_relax_enable744, ptr @tegra_pcie_driver_exit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @tegra_pcie_fixup_class(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 394240, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pcie_relax_enable(ptr noundef %0) #1 {
  %2 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext 16) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_pcie_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_pcie_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_pcie_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_pcie_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_probe(ptr noundef %0) #1 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %4, i32 noundef 188) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %534, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 16
  %9 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %10, align 8
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %4) #12
  %12 = getelementptr inbounds %struct.tegra_pcie, ptr %8, i32 0, i32 20
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 6
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 7
  store ptr %13, ptr %14, align 4
  store ptr %4, ptr %8, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_get_next_child(ptr noundef %16, ptr noundef null) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %92, label %19

19:                                               ; preds = %87, %7
  %20 = phi i32 [ %89, %87 ], [ 0, %7 ]
  %21 = phi i32 [ %88, %87 ], [ 0, %7 ]
  %22 = phi i32 [ %47, %87 ], [ 0, %7 ]
  %23 = phi ptr [ %90, %87 ], [ %17, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %24 = call i32 @of_pci_get_devfn(ptr noundef nonnull %23) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %24) #13
  br label %282

27:                                               ; preds = %19
  %28 = lshr i32 %24, 3
  %29 = and i32 %28, 31
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %11, align 4
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %29) #13
  br label %282

35:                                               ; preds = %31
  %36 = add nsw i32 %29, -1
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %23, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %37) #13
  br label %282

40:                                               ; preds = %35
  %41 = load i32, ptr %3, align 4
  %42 = icmp ugt i32 %41, 16
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %41) #13
  br label %282

44:                                               ; preds = %40
  %45 = shl nuw nsw i32 %36, 3
  %46 = shl i32 %41, %45
  %47 = or i32 %46, %22
  %48 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %23) #12
  %49 = load i32, ptr %3, align 4
  br i1 %48, label %50, label %87

50:                                               ; preds = %44
  %51 = shl nsw i32 -1, %49
  %52 = xor i32 %51, -1
  %53 = shl i32 %52, %20
  %54 = or i32 %53, %21
  %55 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 68, i32 noundef 3520) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %282, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 3
  %59 = call i32 @of_address_to_resource(ptr noundef nonnull %23, i32 noundef 0, ptr noundef %58) #12
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %59) #13
  br label %282

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 2
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 2, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 5
  store i32 %36, ptr %65, align 4
  %66 = load i32, ptr %3, align 4
  %67 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 6
  store i32 %66, ptr %67, align 4
  store ptr %8, ptr %55, align 4
  %68 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 1
  store ptr %23, ptr %68, align 4
  %69 = call ptr @devm_pci_remap_cfg_resource(ptr noundef %4, ptr noundef %58) #12
  %70 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 4
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %284, label %72

72:                                               ; preds = %62
  %73 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %4, i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %36) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %282, label %75

75:                                               ; preds = %72
  %76 = call ptr @devm_gpiod_get_from_of_node(ptr noundef %4, ptr noundef nonnull %23, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %73) #12
  %77 = getelementptr inbounds %struct.tegra_pcie_port, ptr %55, i32 0, i32 8
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = icmp eq ptr %76, inttoptr (i32 -2 to ptr)
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store ptr null, ptr %77, align 4
  br label %85

82:                                               ; preds = %79
  %83 = ptrtoint ptr %76 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %83) #13
  %84 = load ptr, ptr %77, align 4
  br label %284

85:                                               ; preds = %81, %75
  %86 = load ptr, ptr %14, align 4
  store ptr %63, ptr %14, align 4
  store ptr %13, ptr %63, align 4
  store ptr %86, ptr %64, align 4
  store volatile ptr %63, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %44
  %88 = phi i32 [ %54, %85 ], [ %21, %44 ]
  %89 = add i32 %49, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %90 = call ptr @of_get_next_child(ptr noundef %16, ptr noundef nonnull %23) #12
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %19

92:                                               ; preds = %87, %7
  %93 = phi i32 [ 0, %7 ], [ %47, %87 ]
  %94 = phi i32 [ 0, %7 ], [ %88, %87 ]
  %95 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8
  %96 = load ptr, ptr %8, align 4
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 25
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 @of_device_is_compatible(ptr noundef %98, ptr noundef nonnull @.str.14) #12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %92
  switch i32 %93, label %104 [
    i32 65540, label %125
    i32 65794, label %102
    i32 65793, label %103
  ]

102:                                              ; preds = %101
  br label %125

103:                                              ; preds = %101
  br label %125

104:                                              ; preds = %101
  br label %125

105:                                              ; preds = %92
  %106 = call i32 @of_device_is_compatible(ptr noundef %98, ptr noundef nonnull @.str.19) #12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = call i32 @of_device_is_compatible(ptr noundef %98, ptr noundef nonnull @.str.20) #12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108, %105
  switch i32 %93, label %124 [
    i32 260, label %125
    i32 258, label %112
  ]

112:                                              ; preds = %111
  br label %125

113:                                              ; preds = %108
  %114 = call i32 @of_device_is_compatible(ptr noundef %98, ptr noundef nonnull @.str.22) #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  switch i32 %93, label %124 [
    i32 516, label %125
    i32 131586, label %117
    i32 65796, label %118
  ]

117:                                              ; preds = %116
  br label %125

118:                                              ; preds = %116
  br label %125

119:                                              ; preds = %113
  %120 = call i32 @of_device_is_compatible(ptr noundef %98, ptr noundef nonnull @.str.26) #12
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  switch i32 %93, label %124 [
    i32 4, label %125
    i32 514, label %123
  ]

123:                                              ; preds = %122
  br label %125

124:                                              ; preds = %122, %119, %116, %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #13
  br label %534

125:                                              ; preds = %123, %122, %118, %117, %116, %112, %111, %104, %103, %102, %101
  %126 = phi ptr [ @.str.28, %123 ], [ @.str.25, %118 ], [ @.str.24, %117 ], [ @.str.21, %112 ], [ @.str.18, %104 ], [ @.str.17, %103 ], [ @.str.16, %102 ], [ @.str.15, %101 ], [ @.str.15, %111 ], [ @.str.23, %116 ], [ @.str.27, %122 ]
  %127 = phi i32 [ 1048576, %123 ], [ 2097152, %118 ], [ 1048576, %117 ], [ 0, %112 ], [ 1048576, %104 ], [ 2097152, %103 ], [ 1048576, %102 ], [ 0, %101 ], [ 1048576, %111 ], [ 0, %116 ], [ 0, %122 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull %126) #13
  store i32 %127, ptr %95, align 4
  %128 = load ptr, ptr %8, align 4
  %129 = getelementptr inbounds %struct.device, ptr %128, i32 0, i32 25
  %130 = load ptr, ptr %129, align 8
  %131 = call i32 @of_device_is_compatible(ptr noundef %130, ptr noundef nonnull @.str.14) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 2
  store i32 4, ptr %134, align 4
  %135 = load ptr, ptr %8, align 4
  %136 = call noalias ptr @devm_kmalloc(ptr noundef %135, i32 noundef 48, i32 noundef 3520) #12
  %137 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  store ptr %136, ptr %137, align 4
  %138 = icmp eq ptr %136, null
  br i1 %138, label %534, label %139

139:                                              ; preds = %133
  store ptr @.str.29, ptr %136, align 4
  %140 = getelementptr %struct.regulator_bulk_data, ptr %136, i32 1
  store ptr @.str.30, ptr %140, align 4
  %141 = getelementptr %struct.regulator_bulk_data, ptr %136, i32 2
  store ptr @.str.31, ptr %141, align 4
  %142 = getelementptr %struct.regulator_bulk_data, ptr %136, i32 3
  store ptr @.str.32, ptr %142, align 4
  br label %212

143:                                              ; preds = %125
  %144 = call i32 @of_device_is_compatible(ptr noundef %130, ptr noundef nonnull @.str.20) #12
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 2
  store i32 3, ptr %147, align 4
  %148 = load ptr, ptr %8, align 4
  %149 = call noalias ptr @devm_kmalloc(ptr noundef %148, i32 noundef 36, i32 noundef 3520) #12
  %150 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  store ptr %149, ptr %150, align 4
  %151 = icmp eq ptr %149, null
  br i1 %151, label %534, label %152

152:                                              ; preds = %146
  store ptr @.str.33, ptr %149, align 4
  %153 = getelementptr %struct.regulator_bulk_data, ptr %149, i32 1
  store ptr @.str.34, ptr %153, align 4
  %154 = getelementptr %struct.regulator_bulk_data, ptr %149, i32 2
  store ptr @.str.35, ptr %154, align 4
  br label %212

155:                                              ; preds = %143
  %156 = call i32 @of_device_is_compatible(ptr noundef %130, ptr noundef nonnull @.str.19) #12
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 2
  store i32 4, ptr %159, align 4
  %160 = call noalias ptr @devm_kmalloc(ptr noundef %128, i32 noundef 48, i32 noundef 3520) #12
  %161 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  store ptr %160, ptr %161, align 4
  %162 = icmp eq ptr %160, null
  br i1 %162, label %534, label %163

163:                                              ; preds = %158
  store ptr @.str.36, ptr %160, align 4
  %164 = getelementptr %struct.regulator_bulk_data, ptr %160, i32 1
  store ptr @.str.34, ptr %164, align 4
  %165 = getelementptr %struct.regulator_bulk_data, ptr %160, i32 2
  store ptr @.str.31, ptr %165, align 4
  %166 = getelementptr %struct.regulator_bulk_data, ptr %160, i32 3
  store ptr @.str.35, ptr %166, align 4
  br label %212

167:                                              ; preds = %155
  %168 = call i32 @of_device_is_compatible(ptr noundef %130, ptr noundef nonnull @.str.22) #12
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %196, label %170

170:                                              ; preds = %167
  %171 = and i32 %94, 15
  %172 = icmp eq i32 %171, 0
  %173 = and i32 %94, 48
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i32 0, i32 2
  %176 = select i1 %172, i32 4, i32 6
  %177 = add nuw nsw i32 %176, %175
  %178 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 2
  store i32 %177, ptr %178, align 4
  %179 = mul nuw nsw i32 %177, 12
  %180 = call noalias ptr @devm_kmalloc(ptr noundef %128, i32 noundef %179, i32 noundef 3520) #12
  %181 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  store ptr %180, ptr %181, align 4
  %182 = icmp eq ptr %180, null
  br i1 %182, label %534, label %183

183:                                              ; preds = %170
  store ptr @.str.37, ptr %180, align 4
  %184 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 1
  store ptr @.str.31, ptr %184, align 4
  %185 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 2
  store ptr @.str.35, ptr %185, align 4
  %186 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 3
  store ptr @.str.38, ptr %186, align 4
  br i1 %172, label %190, label %187

187:                                              ; preds = %183
  %188 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 4
  store ptr @.str.39, ptr %188, align 4
  %189 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 5
  store ptr @.str.40, ptr %189, align 4
  br label %190

190:                                              ; preds = %187, %183
  %191 = phi i32 [ 6, %187 ], [ 4, %183 ]
  br i1 %174, label %212, label %192

192:                                              ; preds = %190
  %193 = or i32 %191, 1
  %194 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 %191
  store ptr @.str.41, ptr %194, align 4
  %195 = getelementptr %struct.regulator_bulk_data, ptr %180, i32 %193
  store ptr @.str.42, ptr %195, align 4
  br label %212

196:                                              ; preds = %167
  %197 = call i32 @of_device_is_compatible(ptr noundef %130, ptr noundef nonnull @.str.26) #12
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  br label %212

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 2
  store i32 5, ptr %203, align 4
  %204 = call noalias ptr @devm_kmalloc(ptr noundef %128, i32 noundef 60, i32 noundef 3520) #12
  %205 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  store ptr %204, ptr %205, align 4
  %206 = icmp eq ptr %204, null
  br i1 %206, label %534, label %207

207:                                              ; preds = %202
  store ptr @.str.43, ptr %204, align 4
  %208 = getelementptr %struct.regulator_bulk_data, ptr %204, i32 1
  store ptr @.str.44, ptr %208, align 4
  %209 = getelementptr %struct.regulator_bulk_data, ptr %204, i32 2
  store ptr @.str.37, ptr %209, align 4
  %210 = getelementptr %struct.regulator_bulk_data, ptr %204, i32 3
  store ptr @.str.38, ptr %210, align 4
  %211 = getelementptr %struct.regulator_bulk_data, ptr %204, i32 4
  store ptr @.str.45, ptr %211, align 4
  br label %212

212:                                              ; preds = %207, %199, %192, %190, %163, %152, %139
  %213 = phi ptr [ %201, %199 ], [ %180, %190 ], [ %180, %192 ], [ %149, %152 ], [ %204, %207 ], [ %160, %163 ], [ %136, %139 ]
  %214 = load ptr, ptr %129, align 8
  %215 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 1
  %216 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 0, i32 2
  %217 = load i32, ptr %216, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #12, !annotation !8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %212
  %220 = load ptr, ptr %213, align 4
  %221 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.47, ptr noundef %220) #12
  %222 = call ptr @of_find_property(ptr noundef %214, ptr noundef nonnull %2, ptr noundef null) #12
  %223 = icmp eq ptr %222, null
  br i1 %223, label %245, label %225

224:                                              ; preds = %212
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br label %241

225:                                              ; preds = %230, %219
  %226 = phi i32 [ %227, %230 ], [ 0, %219 ]
  %227 = add nuw i32 %226, 1
  %228 = icmp eq i32 %227, %217
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br label %238

230:                                              ; preds = %225
  %231 = getelementptr %struct.regulator_bulk_data, ptr %213, i32 %227
  %232 = load ptr, ptr %231, align 4
  %233 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.47, ptr noundef %232) #12
  %234 = call ptr @of_find_property(ptr noundef %214, ptr noundef nonnull %2, ptr noundef null) #12
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %225

236:                                              ; preds = %230
  %237 = icmp ult i32 %227, %217
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br i1 %237, label %246, label %238

238:                                              ; preds = %236, %229
  %239 = load i32, ptr %216, align 4
  %240 = load ptr, ptr %215, align 4
  br label %241

241:                                              ; preds = %238, %224
  %242 = phi ptr [ %240, %238 ], [ %213, %224 ]
  %243 = phi i32 [ %239, %238 ], [ 0, %224 ]
  %244 = call i32 @devm_regulator_bulk_get(ptr noundef %128, i32 noundef %243, ptr noundef %242) #12
  br label %279

245:                                              ; preds = %219
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br label %246

246:                                              ; preds = %245, %236
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.46) #13
  %247 = load ptr, ptr %215, align 4
  call void @devm_kfree(ptr noundef %128, ptr noundef %247) #12
  store i32 0, ptr %216, align 4
  %248 = load ptr, ptr %8, align 4
  %249 = getelementptr inbounds %struct.device, ptr %248, i32 0, i32 25
  %250 = load ptr, ptr %249, align 8
  %251 = call i32 @of_device_is_compatible(ptr noundef %250, ptr noundef nonnull @.str.22) #12
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %246
  %254 = call i32 @of_device_is_compatible(ptr noundef %250, ptr noundef nonnull @.str.26) #12
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i32, ptr %216, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.48, ptr noundef %250) #13
  br label %534

260:                                              ; preds = %253, %246
  %261 = phi i32 [ 3, %246 ], [ 2, %253 ]
  store i32 %261, ptr %216, align 4
  br label %262

262:                                              ; preds = %260, %256
  %263 = phi i32 [ %257, %256 ], [ %261, %260 ]
  %264 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %263, i32 12) #12
  %265 = extractvalue { i32, i1 } %264, 1
  br i1 %265, label %266, label %267, !prof !9

266:                                              ; preds = %262
  store ptr null, ptr %215, align 4
  br label %534

267:                                              ; preds = %262
  %268 = extractvalue { i32, i1 } %264, 0
  %269 = call noalias ptr @devm_kmalloc(ptr noundef %248, i32 noundef %268, i32 noundef 3520) #12
  store ptr %269, ptr %215, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %534, label %271

271:                                              ; preds = %267
  store ptr @.str.49, ptr %269, align 4
  %272 = getelementptr %struct.regulator_bulk_data, ptr %269, i32 1
  store ptr @.str.50, ptr %272, align 4
  %273 = load i32, ptr %216, align 4
  %274 = icmp ugt i32 %273, 2
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = getelementptr %struct.regulator_bulk_data, ptr %269, i32 2
  store ptr @.str.51, ptr %276, align 4
  br label %277

277:                                              ; preds = %275, %271
  %278 = call i32 @devm_regulator_bulk_get(ptr noundef %248, i32 noundef %273, ptr noundef nonnull %269) #12
  br label %279

279:                                              ; preds = %277, %241
  %280 = phi i32 [ %244, %241 ], [ %278, %277 ]
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %534, label %288

282:                                              ; preds = %72, %61, %50, %43, %39, %34, %26
  %283 = phi i32 [ %24, %26 ], [ -22, %34 ], [ %37, %39 ], [ -22, %43 ], [ %59, %61 ], [ -12, %50 ], [ -12, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @of_node_put(ptr noundef nonnull %23) #12
  br label %534

284:                                              ; preds = %82, %62
  %285 = phi ptr [ %84, %82 ], [ %69, %62 ]
  %286 = ptrtoint ptr %285 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @of_node_put(ptr noundef nonnull %23) #12
  %287 = icmp slt ptr %285, null
  br i1 %287, label %534, label %288

288:                                              ; preds = %284, %279
  %289 = load ptr, ptr %8, align 4
  %290 = getelementptr i8, ptr %289, i32 -16
  %291 = load ptr, ptr %12, align 4
  %292 = call ptr @devm_clk_get(ptr noundef %289, ptr noundef nonnull @.str.61) #12
  %293 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 5
  store ptr %292, ptr %293, align 4
  %294 = icmp ugt ptr %292, inttoptr (i32 -4096 to ptr)
  br i1 %294, label %311, label %295

295:                                              ; preds = %288
  %296 = call ptr @devm_clk_get(ptr noundef %289, ptr noundef nonnull @.str.56) #12
  %297 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 6
  store ptr %296, ptr %297, align 4
  %298 = icmp ugt ptr %296, inttoptr (i32 -4096 to ptr)
  br i1 %298, label %311, label %299

299:                                              ; preds = %295
  %300 = call ptr @devm_clk_get(ptr noundef %289, ptr noundef nonnull @.str.62) #12
  %301 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 7
  store ptr %300, ptr %301, align 4
  %302 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  br i1 %302, label %311, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %291, i32 0, i32 12
  %305 = load i8, ptr %304, align 1, !range !10
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %316, label %307

307:                                              ; preds = %303
  %308 = call ptr @devm_clk_get(ptr noundef %289, ptr noundef nonnull @.str.63) #12
  %309 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 8
  store ptr %308, ptr %309, align 4
  %310 = icmp ugt ptr %308, inttoptr (i32 -4096 to ptr)
  br i1 %310, label %311, label %316

311:                                              ; preds = %307, %299, %295, %288
  %312 = phi ptr [ %308, %307 ], [ %292, %288 ], [ %296, %295 ], [ %300, %299 ]
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = ptrtoint ptr %312 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.52, i32 noundef %315) #13
  br label %454

316:                                              ; preds = %311, %307, %303
  %317 = load ptr, ptr %8, align 4
  %318 = call ptr @__devm_reset_control_get(ptr noundef %317, ptr noundef nonnull @.str.61, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %319 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9
  store ptr %318, ptr %319, align 4
  %320 = icmp ugt ptr %318, inttoptr (i32 -4096 to ptr)
  br i1 %320, label %329, label %321

321:                                              ; preds = %316
  %322 = call ptr @__devm_reset_control_get(ptr noundef %317, ptr noundef nonnull @.str.56, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %323 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9, i32 1
  store ptr %322, ptr %323, align 4
  %324 = icmp ugt ptr %322, inttoptr (i32 -4096 to ptr)
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = call ptr @__devm_reset_control_get(ptr noundef %317, ptr noundef nonnull @.str.64, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %327 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9, i32 2
  store ptr %326, ptr %327, align 4
  %328 = icmp ugt ptr %326, inttoptr (i32 -4096 to ptr)
  br i1 %328, label %329, label %334

329:                                              ; preds = %325, %321, %316
  %330 = phi ptr [ %326, %325 ], [ %318, %316 ], [ %322, %321 ]
  %331 = icmp eq ptr %330, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %329
  %333 = ptrtoint ptr %330 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.53, i32 noundef %333) #13
  br label %454

334:                                              ; preds = %329, %325
  %335 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %291, i32 0, i32 15
  %336 = load i8, ptr %335, align 2, !range !10
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %416, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr %12, align 4
  %340 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %339, i32 0, i32 13
  %341 = load i8, ptr %340, align 4, !range !10
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %338
  %344 = load ptr, ptr %8, align 4
  %345 = getelementptr inbounds %struct.device, ptr %344, i32 0, i32 25
  %346 = load ptr, ptr %345, align 8
  %347 = call ptr @of_find_property(ptr noundef %346, ptr noundef nonnull @.str.65, ptr noundef null) #12
  %348 = icmp eq ptr %347, null
  br i1 %348, label %360, label %349

349:                                              ; preds = %343, %338
  %350 = load ptr, ptr %8, align 4
  %351 = call ptr @devm_phy_optional_get(ptr noundef %350, ptr noundef nonnull @.str.66) #12
  %352 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9, i32 3, i32 1
  store ptr %351, ptr %352, align 4
  %353 = icmp ugt ptr %351, inttoptr (i32 -4096 to ptr)
  br i1 %353, label %411, label %354

354:                                              ; preds = %349
  %355 = call i32 @phy_init(ptr noundef %351) #12
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %350, ptr noundef nonnull @.str.68, i32 noundef %355) #13
  br label %414

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9, i32 3
  store i8 1, ptr %359, align 4
  br label %416

360:                                              ; preds = %408, %343
  %361 = phi ptr [ %362, %408 ], [ %13, %343 ]
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, %13
  br i1 %363, label %416, label %364

364:                                              ; preds = %360
  %365 = getelementptr i8, ptr %362, i32 -8
  %366 = load ptr, ptr %365, align 4
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr i8, ptr %362, i32 48
  %369 = load i32, ptr %368, align 4
  %370 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %369, i32 4) #12
  %371 = extractvalue { i32, i1 } %370, 1
  br i1 %371, label %372, label %374, !prof !9

372:                                              ; preds = %364
  %373 = getelementptr i8, ptr %362, i32 52
  store ptr null, ptr %373, align 4
  br label %414

374:                                              ; preds = %364
  %375 = extractvalue { i32, i1 } %370, 0
  %376 = call noalias ptr @devm_kmalloc(ptr noundef %367, i32 noundef %375, i32 noundef 3520) #12
  %377 = getelementptr i8, ptr %362, i32 52
  store ptr %376, ptr %377, align 4
  %378 = icmp eq ptr %376, null
  br i1 %378, label %414, label %379

379:                                              ; preds = %374
  %380 = load i32, ptr %368, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %408, label %382

382:                                              ; preds = %379
  %383 = getelementptr i8, ptr %362, i32 -4
  br label %384

384:                                              ; preds = %402, %382
  %385 = phi i32 [ 0, %382 ], [ %405, %402 ]
  %386 = load ptr, ptr %383, align 4
  %387 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66, i32 noundef %385) #12
  %388 = icmp eq ptr %387, null
  br i1 %388, label %394, label %389

389:                                              ; preds = %384
  %390 = call ptr @devm_of_phy_get(ptr noundef %367, ptr noundef %386, ptr noundef nonnull %387) #12
  call void @kfree(ptr noundef nonnull %387) #12
  %391 = icmp eq ptr %390, inttoptr (i32 -19 to ptr)
  br i1 %391, label %397, label %392

392:                                              ; preds = %389
  %393 = icmp ugt ptr %390, inttoptr (i32 -4096 to ptr)
  br i1 %393, label %394, label %397

394:                                              ; preds = %392, %384
  %395 = phi ptr [ %390, %392 ], [ inttoptr (i32 -12 to ptr), %384 ]
  %396 = ptrtoint ptr %395 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.69, i32 noundef %385, i32 noundef %396) #13
  br label %408

397:                                              ; preds = %392, %389
  %398 = phi ptr [ %390, %392 ], [ null, %389 ]
  %399 = call i32 @phy_init(ptr noundef %398) #12
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.70, i32 noundef %385, i32 noundef %399) #13
  br label %414

402:                                              ; preds = %397
  %403 = load ptr, ptr %377, align 4
  %404 = getelementptr ptr, ptr %403, i32 %385
  store ptr %398, ptr %404, align 4
  %405 = add nuw i32 %385, 1
  %406 = load i32, ptr %368, align 4
  %407 = icmp ult i32 %405, %406
  br i1 %407, label %384, label %408

408:                                              ; preds = %402, %394, %379
  %409 = phi i32 [ %396, %394 ], [ 0, %379 ], [ 0, %402 ]
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %414, label %360

411:                                              ; preds = %349
  %412 = ptrtoint ptr %351 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %350, ptr noundef nonnull @.str.67, i32 noundef %412) #13
  %413 = icmp slt ptr %351, null
  br i1 %413, label %414, label %416

414:                                              ; preds = %411, %408, %401, %374, %372, %357
  %415 = phi i32 [ %412, %411 ], [ %399, %401 ], [ -12, %372 ], [ %355, %357 ], [ %409, %408 ], [ -12, %374 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.54, i32 noundef %415) #13
  br label %454

416:                                              ; preds = %411, %360, %358, %334
  %417 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %290, ptr noundef nonnull @.str.55) #12
  %418 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 1
  store ptr %417, ptr %418, align 4
  %419 = icmp ugt ptr %417, inttoptr (i32 -4096 to ptr)
  br i1 %419, label %420, label %422

420:                                              ; preds = %416
  %421 = ptrtoint ptr %417 to i32
  br label %449

422:                                              ; preds = %416
  %423 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %290, ptr noundef nonnull @.str.56) #12
  %424 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 1, i32 1
  store ptr %423, ptr %424, align 4
  %425 = icmp ugt ptr %423, inttoptr (i32 -4096 to ptr)
  br i1 %425, label %426, label %428

426:                                              ; preds = %422
  %427 = ptrtoint ptr %423 to i32
  br label %449

428:                                              ; preds = %422
  %429 = call ptr @platform_get_resource_byname(ptr noundef %290, i32 noundef 512, ptr noundef nonnull @.str.57) #12
  %430 = icmp eq ptr %429, null
  br i1 %430, label %449, label %431

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %432, ptr noundef nonnull align 4 dereferenceable(32) %429, i32 32, i1 false) #12
  %433 = load i32, ptr %432, align 4
  %434 = add i32 %433, 4095
  %435 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 5
  store i32 %434, ptr %435, align 4
  %436 = call ptr @devm_ioremap_resource(ptr noundef %289, ptr noundef %432) #12
  %437 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 2
  store ptr %436, ptr %437, align 4
  %438 = icmp ugt ptr %436, inttoptr (i32 -4096 to ptr)
  br i1 %438, label %439, label %441

439:                                              ; preds = %431
  %440 = ptrtoint ptr %436 to i32
  br label %449

441:                                              ; preds = %431
  %442 = call i32 @platform_get_irq_byname(ptr noundef %290, ptr noundef nonnull @.str.58) #12
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 3
  store i32 %442, ptr %445, align 4
  %446 = call i32 @request_threaded_irq(i32 noundef %442, ptr noundef nonnull @tegra_pcie_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.59, ptr noundef %8) #12
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %458, label %448

448:                                              ; preds = %444
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.60, i32 noundef %446) #13
  br label %449

449:                                              ; preds = %448, %441, %439, %428, %426, %420
  %450 = phi i32 [ %421, %420 ], [ %427, %426 ], [ %440, %439 ], [ %442, %441 ], [ %446, %448 ], [ -99, %428 ]
  %451 = load i8, ptr %335, align 2, !range !10
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  call fastcc void @tegra_pcie_phys_put(ptr noundef %8) #12
  br label %454

454:                                              ; preds = %453, %449, %414, %332, %314
  %455 = phi i32 [ %315, %314 ], [ %333, %332 ], [ %415, %414 ], [ %450, %453 ], [ %450, %449 ]
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %458

457:                                              ; preds = %454
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %455) #13
  br label %534

458:                                              ; preds = %454, %444
  %459 = load ptr, ptr %8, align 4
  %460 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 10
  %461 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 1
  call void @__mutex_init(ptr noundef %461, ptr noundef nonnull @.str.91, ptr noundef nonnull @tegra_pcie_msi_setup.__key) #12
  %462 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 5
  store i32 0, ptr %462, align 4
  %463 = load ptr, ptr %8, align 4
  %464 = call ptr @dev_fwnode(ptr noundef %463) #12
  %465 = call ptr @__irq_domain_add(ptr noundef %464, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef nonnull @tegra_msi_domain_ops, ptr noundef %460) #12
  %466 = icmp eq ptr %465, null
  br i1 %466, label %467, label %469

467:                                              ; preds = %458
  %468 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %468, ptr noundef nonnull @.str.95) #13
  br label %498

469:                                              ; preds = %458
  call void @irq_domain_update_bus_token(ptr noundef nonnull %465, i32 noundef 5) #12
  %470 = call ptr @pci_msi_create_irq_domain(ptr noundef %464, ptr noundef nonnull @tegra_msi_info, ptr noundef nonnull %465) #12
  %471 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11
  store ptr %470, ptr %471, align 4
  %472 = icmp eq ptr %470, null
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %474, ptr noundef nonnull @.str.96) #13
  call void @irq_domain_remove(ptr noundef nonnull %465) #12
  br label %498

475:                                              ; preds = %469
  %476 = getelementptr i8, ptr %459, i32 -16
  %477 = call i32 @platform_get_irq_byname(ptr noundef %476, ptr noundef nonnull @.str.92) #12
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %493, label %479

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 5, i32 1, i32 1, i32 1
  store i32 %477, ptr %480, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %477, ptr noundef nonnull @tegra_pcie_msi_irq, ptr noundef %8) #12
  %481 = call i32 @dma_set_coherent_mask(ptr noundef %459, i64 noundef 4294967295) #12
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %479
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %459, ptr noundef nonnull @.str.93, i32 noundef %481) #13
  br label %490

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 5, i32 1, i32 1
  %486 = call ptr @dma_alloc_attrs(ptr noundef %459, i32 noundef 4096, ptr noundef %485, i32 noundef 3264, i32 noundef 16) #12
  %487 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 5, i32 1
  store ptr %486, ptr %487, align 4
  %488 = icmp eq ptr %486, null
  br i1 %488, label %489, label %500

489:                                              ; preds = %484
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %459, ptr noundef nonnull @.str.94) #13
  br label %490

490:                                              ; preds = %489, %483
  %491 = phi i32 [ %481, %483 ], [ -12, %489 ]
  %492 = load i32, ptr %480, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %492, ptr noundef null, ptr noundef null) #12
  br label %493

493:                                              ; preds = %490, %475
  %494 = phi i32 [ %477, %475 ], [ %491, %490 ]
  %495 = load ptr, ptr %471, align 4
  %496 = getelementptr inbounds %struct.irq_domain, ptr %495, i32 0, i32 9
  %497 = load ptr, ptr %496, align 4
  call void @irq_domain_remove(ptr noundef %495) #12
  call void @irq_domain_remove(ptr noundef %497) #12
  br label %498

498:                                              ; preds = %493, %473, %467
  %499 = phi i32 [ -12, %467 ], [ -12, %473 ], [ %494, %493 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %499) #13
  br label %521

500:                                              ; preds = %484
  %501 = load ptr, ptr %8, align 4
  call void @pm_runtime_enable(ptr noundef %501) #12
  %502 = load ptr, ptr %8, align 4
  %503 = call i32 @__pm_runtime_resume(ptr noundef %502, i32 noundef 4) #12
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %500
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %503) #13
  br label %516

506:                                              ; preds = %500
  %507 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 2
  store ptr @tegra_pcie_ops, ptr %507, align 4
  %508 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 10
  store ptr @tegra_pcie_map_irq, ptr %508, align 4
  %509 = call i32 @pci_host_probe(ptr noundef nonnull %5) #12
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %506
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %509) #13
  br label %516

512:                                              ; preds = %506
  %513 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.66, ptr noundef null) #12
  %514 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 11, i32 8, i32 0, i32 1
  store ptr %513, ptr %514, align 4
  %515 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.100, i16 noundef zeroext -32476, ptr noundef %513, ptr noundef %8, ptr noundef nonnull @tegra_pcie_ports_fops) #12
  br label %534

516:                                              ; preds = %511, %505
  %517 = phi i32 [ %503, %505 ], [ %509, %511 ]
  %518 = load ptr, ptr %8, align 4
  %519 = call i32 @__pm_runtime_idle(ptr noundef %518, i32 noundef 4) #12
  %520 = load ptr, ptr %8, align 4
  call void @__pm_runtime_disable(ptr noundef %520, i1 noundef zeroext true) #12
  call fastcc void @tegra_pcie_msi_teardown(ptr noundef %8)
  br label %521

521:                                              ; preds = %516, %498
  %522 = phi i32 [ %499, %498 ], [ %517, %516 ]
  %523 = load ptr, ptr %12, align 4
  %524 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 3
  %525 = load i32, ptr %524, align 4
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %521
  %528 = call ptr @free_irq(i32 noundef %525, ptr noundef %8) #12
  br label %529

529:                                              ; preds = %527, %521
  %530 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %523, i32 0, i32 15
  %531 = load i8, ptr %530, align 2, !range !10
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %534, label %533

533:                                              ; preds = %529
  call fastcc void @tegra_pcie_phys_put(ptr noundef %8) #12
  br label %534

534:                                              ; preds = %533, %529, %512, %457, %284, %282, %279, %267, %266, %259, %202, %170, %158, %146, %133, %124, %1
  %535 = phi i32 [ %455, %457 ], [ 0, %512 ], [ -12, %1 ], [ %286, %284 ], [ %283, %282 ], [ %522, %529 ], [ %522, %533 ], [ -22, %124 ], [ %280, %279 ], [ -12, %266 ], [ -12, %267 ], [ -19, %259 ], [ -12, %170 ], [ -12, %202 ], [ -12, %158 ], [ -12, %146 ], [ -12, %133 ]
  ret i32 %535
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  tail call void @debugfs_remove(ptr noundef %5) #12
  store ptr null, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 -104
  %7 = load ptr, ptr %6, align 8
  tail call void @pci_stop_root_bus(ptr noundef %7) #12
  %8 = load ptr, ptr %6, align 8
  tail call void @pci_remove_root_bus(ptr noundef %8) #12
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #12
  %11 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #12
  tail call fastcc void @tegra_pcie_msi_teardown(ptr noundef %3)
  %12 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %3) #12
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %13, i32 0, i32 15
  %21 = load i8, ptr %20, align 2, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @tegra_pcie_phys_put(ptr noundef %3) #12
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %47, label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr i8, ptr %29, i32 -8
  %31 = load ptr, ptr %29, align 4
  %32 = load ptr, ptr %30, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %29, i32 40
  %35 = load ptr, ptr %34, align 4
  tail call void @devm_iounmap(ptr noundef %33, ptr noundef %35) #12
  %36 = getelementptr i8, ptr %29, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %29, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 1, %37
  %41 = add i32 %40, %39
  tail call void @__devm_release_region(ptr noundef %33, ptr noundef nonnull @iomem_resource, i32 noundef %37, i32 noundef %41) #12
  %42 = getelementptr i8, ptr %29, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  tail call void @devm_kfree(ptr noundef %33, ptr noundef %30) #12
  %46 = icmp eq ptr %31, %25
  br i1 %46, label %47, label %28

47:                                               ; preds = %28, %24
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_map_irq(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @tegra_cpuidle_pcie_irqs_in_use() #12
  %8 = tail call i32 @of_irq_parse_and_map_pci(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tegra_pcie, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %8, %3 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_msi_teardown(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 15, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 15, i32 5
  %7 = load i32, ptr %6, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef %5, i32 noundef %7, i32 noundef 16) #12
  %8 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 15, i32 1
  br label %9

9:                                                ; preds = %18, %1
  %10 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %11 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef %10, ptr noundef nonnull %2) #12
  %13 = icmp eq ptr %12, null
  %14 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  call void @irq_domain_free_irqs(i32 noundef %14, i32 noundef 1) #12
  br label %18

18:                                               ; preds = %17, %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %21, label %9

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 15, i32 6
  %23 = load i32, ptr %22, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %23, ptr noundef null, ptr noundef null) #12
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.irq_domain, ptr %24, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  call void @irq_domain_remove(ptr noundef %24) #12
  call void @irq_domain_remove(ptr noundef %26) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.tegra_pcie, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 184
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %8 = and i32 %7, 15
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 188
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #12, !srcloc !14
  %14 = icmp eq i32 %8, 6
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = icmp eq i32 %8, 15
  %17 = select i1 %16, i32 0, i32 %8
  %18 = icmp eq i32 %17, 4
  switch i32 %17, label %19 [
    i32 4, label %22
    i32 10, label %33
  ]

19:                                               ; preds = %15
  %20 = getelementptr [15 x ptr], ptr @tegra_pcie_isr.err_msg, i32 0, i32 %17
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.87, ptr noundef %21, i32 noundef %11) #13
  switch i32 %17, label %33 [
    i32 7, label %22
    i32 3, label %22
  ]

22:                                               ; preds = %19, %19, %15
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 192
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  br i1 %18, label %33, label %26

26:                                               ; preds = %22
  %27 = and i32 %25, 255
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 32
  %30 = and i32 %11, -4
  %31 = zext i32 %30 to i64
  %32 = or i64 %29, %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.88, i64 noundef %32) #13
  br label %33

33:                                               ; preds = %26, %22, %19, %15, %2
  %34 = phi i32 [ 0, %2 ], [ 1, %26 ], [ 1, %22 ], [ 1, %19 ], [ 1, %15 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_phys_put(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 13
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @phy_exit(ptr noundef %8) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef %9) #13
  br label %38

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %38, label %19

16:                                               ; preds = %34, %19
  %17 = load ptr, ptr %20, align 4
  %18 = icmp eq ptr %17, %13
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %17, %16 ], [ %14, %12 ]
  %21 = getelementptr i8, ptr %20, i32 48
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 52
  br label %26

26:                                               ; preds = %34, %24
  %27 = phi i32 [ 0, %24 ], [ %35, %34 ]
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr ptr, ptr %28, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @phy_exit(ptr noundef %30) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.90, i32 noundef %27, i32 noundef %31) #13
  br label %34

34:                                               ; preds = %33, %26
  %35 = add nuw i32 %27, 1
  %36 = load i32, ptr %21, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %26, label %16

38:                                               ; preds = %16, %12, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pcie_msi_irq(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #12
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #12
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 15, i32 1
  br label %28

28:                                               ; preds = %58, %25
  %29 = phi i32 [ 0, %25 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %30 = shl nuw nsw i32 %29, 2
  %31 = add nuw nsw i32 %30, 108
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  store i32 %34, ptr %2, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %28
  %37 = shl i32 %29, 5
  br label %38

38:                                               ; preds = %53, %36
  %39 = call i32 @_find_first_bit_le(ptr noundef nonnull %2, i32 noundef 32) #12
  %40 = add i32 %39, %37
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr inbounds %struct.irq_domain, ptr %41, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @generic_handle_domain_irq(ptr noundef %43, i32 noundef %40) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.99) #13
  %47 = and i32 %40, 31
  %48 = shl nuw i32 1, %47
  %49 = shl i32 %40, 2
  %50 = add i32 %49, 108
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  call void @arm_heavy_mb() #12
  %51 = load ptr, ptr %26, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #12, !srcloc !14
  br label %53

53:                                               ; preds = %46, %38
  %54 = load ptr, ptr %26, align 4
  %55 = getelementptr i8, ptr %54, i32 %31
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #12, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  store i32 %56, ptr %2, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %38

58:                                               ; preds = %53, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %59 = add nuw nsw i32 %29, 1
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %28

61:                                               ; preds = %58
  %62 = load ptr, ptr %8, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi ptr [ %66, %64 ], [ %62, %61 ]
  %69 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %68(ptr noundef %69) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_msi_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_msi, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = icmp ugt i32 %2, 1
  %9 = add i32 %2, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #12, !range !15
  %11 = sub nuw nsw i32 32, %10
  %12 = select i1 %8, i32 %11, i32 0
  %13 = tail call i32 @bitmap_find_free_region(ptr noundef %6, i32 noundef 256, i32 noundef %12) #12
  tail call void @mutex_unlock(ptr noundef %7) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %22, %17 ], [ 0, %15 ]
  %19 = add i32 %18, %1
  %20 = add i32 %18, %13
  %21 = load ptr, ptr %5, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %19, i32 noundef %20, ptr noundef nonnull @tegra_msi_bottom_chip, ptr noundef %21, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #12
  %22 = add nuw i32 %18, 1
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %15
  tail call void @tegra_cpuidle_pcie_irqs_in_use() #12
  br label %25

25:                                               ; preds = %24, %4
  %26 = phi i32 [ 0, %24 ], [ -28, %4 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #12
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_msi, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %2, 1
  %11 = add i32 %2, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #12, !range !15
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %10, i32 %13, i32 0
  tail call void @bitmap_release_region(ptr noundef %6, i32 noundef %9, i32 noundef %14) #12
  tail call void @mutex_unlock(ptr noundef %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cpuidle_pcie_irqs_in_use() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_irq_ack(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  %7 = shl nuw i32 1, %6
  %8 = lshr i32 %5, 3
  %9 = and i32 %8, 536870908
  %10 = add nuw nsw i32 %9, 108
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %11 = getelementptr i8, ptr %3, i32 -80
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %7) #12, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_irq_mask(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_msi, ptr %3, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %8 = lshr i32 %5, 3
  %9 = and i32 %8, 536870908
  %10 = add nuw nsw i32 %9, 140
  %11 = getelementptr i8, ptr %3, i32 -80
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #12, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_irq_unmask(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_msi, ptr %3, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %8 = lshr i32 %5, 3
  %9 = and i32 %8, 536870908
  %10 = add nuw nsw i32 %9, 140
  %11 = getelementptr i8, ptr %3, i32 -80
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #12, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_msi_set_affinity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #10 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tegra_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_msi, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_top_irq_ack(ptr noundef %0) #1 {
  tail call void @irq_chip_ack_parent(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_top_irq_mask(ptr noundef %0) #1 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #12
  tail call void @irq_chip_mask_parent(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_msi_top_irq_unmask(ptr noundef %0) #1 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #12
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_pcie_map_bus(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = lshr i32 %1, 3
  %11 = and i32 %10, 31
  %12 = getelementptr inbounds %struct.tegra_pcie, ptr %5, i32 0, i32 16
  br label %13

13:                                               ; preds = %17, %9
  %14 = phi ptr [ %12, %9 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %47, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 44
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %22, label %13

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %15, i32 40
  %24 = load ptr, ptr %23, align 4
  %25 = and i32 %2, -4
  %26 = getelementptr i8, ptr %24, i32 %25
  br label %47

27:                                               ; preds = %3
  %28 = shl i32 %2, 16
  %29 = and i32 %28, 251658240
  %30 = zext i8 %7 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %29
  %33 = shl i32 %1, 8
  %34 = and i32 %33, 61440
  %35 = or i32 %32, %34
  %36 = and i32 %2, 255
  %37 = lshr exact i32 %35, 8
  %38 = or i32 %37, -32505856
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %39 = getelementptr inbounds %struct.tegra_pcie, ptr %5, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #12, !srcloc !14
  %42 = getelementptr inbounds %struct.tegra_pcie, ptr %5, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = and i32 %33, 3840
  %45 = or i32 %44, %36
  %46 = getelementptr i8, ptr %43, i32 %45
  br label %47

47:                                               ; preds = %27, %22, %13
  %48 = phi ptr [ %46, %27 ], [ %26, %22 ], [ null, %13 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_config_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @pci_generic_config_read32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #12
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 @pci_generic_config_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #12
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_config_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @pci_generic_config_write32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 @pci_generic_config_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_and_map_pci(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ports_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @tegra_pcie_ports_sops) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.seq_file, ptr %11, i32 0, i32 11
  store ptr %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %9, %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_pcie_ports_seq_start(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_pcie, ptr %4, i32 0, i32 16
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.101) #12
  %9 = load i64, ptr %1, align 8
  %10 = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %9) #12
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra_pcie_ports_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #10 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_pcie_ports_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie, ptr %5, i32 0, i32 16
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #12
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ports_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3840
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !16
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 144
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  %12 = and i32 %11, 536870912
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr i8, ptr %1, i32 44
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %15) #12
  br i1 %8, label %16, label %17

16:                                               ; preds = %2
  br i1 %13, label %20, label %19

17:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.103) #12
  br i1 %13, label %20, label %18

18:                                               ; preds = %17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.104) #12
  br label %19

19:                                               ; preds = %18, %16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.105) #12
  br label %20

20:                                               ; preds = %19, %17, %16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.106) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_pm_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %77, label %7

7:                                                ; preds = %61, %1
  %8 = phi ptr [ %75, %61 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_pcie, ptr %10, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_pcie, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 240
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %17 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %8, i32 44
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.tegra_pcie_port_soc, ptr %18, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 1, %23
  %25 = or i32 %24, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #12, !srcloc !14
  %28 = load ptr, ptr %17, align 4
  %29 = load i32, ptr %19, align 4
  %30 = getelementptr %struct.tegra_pcie_port_soc, ptr %28, i32 %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = tail call i64 @ktime_get() #12
  %33 = add i64 %32, 10000000
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr i8, ptr %34, i32 240
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  %37 = zext i8 %31 to i32
  %38 = shl nuw i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %48, %7
  %42 = tail call i64 @ktime_get() #12
  %43 = icmp sgt i64 %42, %33
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr i8, ptr %45, i32 240
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  br label %54

48:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #12
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr i8, ptr %49, i32 240
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  %52 = and i32 %51, %38
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %41, label %54

54:                                               ; preds = %48, %44, %7
  %55 = phi i32 [ %47, %44 ], [ %36, %7 ], [ %51, %48 ]
  %56 = and i32 %55, %38
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load ptr, ptr %10, align 4
  %60 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.108, i32 noundef %60) #13
  br label %61

61:                                               ; preds = %58, %54
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #12
  %62 = load ptr, ptr %13, align 4
  %63 = getelementptr i8, ptr %62, i32 240
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %65 = load ptr, ptr %17, align 4
  %66 = load i32, ptr %19, align 4
  %67 = getelementptr %struct.tegra_pcie_port_soc, ptr %65, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw i32 1, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %64, %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %73 = load ptr, ptr %13, align 4
  %74 = getelementptr i8, ptr %73, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #12, !srcloc !14
  %75 = load ptr, ptr %8, align 4
  %76 = icmp eq ptr %75, %4
  br i1 %76, label %77, label %7

77:                                               ; preds = %61, %1
  %78 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @reset_control_assert(ptr noundef %79) #12
  %81 = load ptr, ptr %4, align 4
  %82 = icmp eq ptr %81, %4
  br i1 %82, label %88, label %83

83:                                               ; preds = %83, %77
  %84 = phi ptr [ %86, %83 ], [ %81, %77 ]
  %85 = getelementptr i8, ptr %84, i32 -8
  %86 = load ptr, ptr %84, align 4
  tail call fastcc void @tegra_pcie_port_disable(ptr noundef %85) #12
  %87 = icmp eq ptr %86, %4
  br i1 %87, label %88, label %83

88:                                               ; preds = %83, %77
  %89 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 180
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %93 = and i32 %92, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %94 = load ptr, ptr %89, align 4
  %95 = getelementptr i8, ptr %94, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #12, !srcloc !14
  %96 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 20
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %97, i32 0, i32 15
  %99 = load i8, ptr %98, align 2, !range !10
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %169, label %101

101:                                              ; preds = %88
  %102 = load ptr, ptr %3, align 4
  %103 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 13
  %104 = load i8, ptr %103, align 4, !range !10
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %137, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 14
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 160
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %115 = and i32 %114, -1089
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %116 = load ptr, ptr %111, align 4
  %117 = getelementptr i8, ptr %116, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #12, !srcloc !14
  %118 = load ptr, ptr %111, align 4
  %119 = getelementptr i8, ptr %118, i32 160
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %121 = or i32 %120, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %122 = load ptr, ptr %111, align 4
  %123 = getelementptr i8, ptr %122, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #12, !srcloc !14
  %124 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %97, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %111, align 4
  %127 = getelementptr i8, ptr %126, i32 %125
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %129 = and i32 %128, -3
  %130 = load i32, ptr %124, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %131 = load ptr, ptr %111, align 4
  %132 = getelementptr i8, ptr %131, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %129) #12, !srcloc !14
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #12
  br label %169

133:                                              ; preds = %106
  %134 = tail call i32 @phy_power_off(ptr noundef nonnull %108) #12
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.109, i32 noundef %134) #13
  br label %167

137:                                              ; preds = %101
  %138 = load ptr, ptr %4, align 4
  %139 = icmp eq ptr %138, %4
  br i1 %139, label %169, label %140

140:                                              ; preds = %161, %137
  %141 = phi ptr [ %162, %161 ], [ %138, %137 ]
  %142 = getelementptr i8, ptr %141, i32 -8
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %141, i32 48
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %140
  %149 = getelementptr i8, ptr %141, i32 52
  br label %150

150:                                              ; preds = %157, %148
  %151 = phi i32 [ 0, %148 ], [ %158, %157 ]
  %152 = load ptr, ptr %149, align 4
  %153 = getelementptr ptr, ptr %152, i32 %151
  %154 = load ptr, ptr %153, align 4
  %155 = tail call i32 @phy_power_off(ptr noundef %154) #12
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = add nuw i32 %151, 1
  %159 = load i32, ptr %145, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %150, label %161

161:                                              ; preds = %157, %140
  %162 = load ptr, ptr %141, align 4
  %163 = icmp eq ptr %162, %4
  br i1 %163, label %169, label %140

164:                                              ; preds = %150
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.111, i32 noundef %151, i32 noundef %155) #13
  %165 = getelementptr i8, ptr %141, i32 44
  %166 = load i32, ptr %165, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.110, i32 noundef %166, i32 noundef %155) #13
  br label %167

167:                                              ; preds = %164, %136
  %168 = phi i32 [ %155, %164 ], [ %134, %136 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %168) #13
  br label %169

169:                                              ; preds = %167, %161, %137, %133, %110, %88
  %170 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 10
  %171 = load ptr, ptr %170, align 4
  %172 = tail call i32 @reset_control_assert(ptr noundef %171) #12
  %173 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 6
  %174 = load ptr, ptr %173, align 4
  tail call void @clk_disable(ptr noundef %174) #12
  tail call void @clk_unprepare(ptr noundef %174) #12
  %175 = load ptr, ptr %89, align 4
  %176 = getelementptr i8, ptr %175, i32 180
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %178 = and i32 %177, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %179 = load ptr, ptr %89, align 4
  %180 = getelementptr i8, ptr %179, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #12, !srcloc !14
  %181 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #12
  tail call fastcc void @tegra_pcie_power_off(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pcie_pm_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #12
  %13 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @reset_control_assert(ptr noundef %14) #12
  %16 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = tail call i32 @tegra_powergate_power_off(i32 noundef 3) #12
  br label %21

21:                                               ; preds = %19, %1
  %22 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regulator_bulk_enable(i32 noundef %23, ptr noundef %25) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.117, i32 noundef %26) #13
  br label %29

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr %16, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = tail call i32 @tegra_powergate_power_on(i32 noundef 3) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.118, i32 noundef %33) #13
  br label %97

36:                                               ; preds = %32
  %37 = tail call i32 @tegra_powergate_remove_clamping(i32 noundef 3) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.119, i32 noundef %37) #13
  br label %91

40:                                               ; preds = %36, %29
  %41 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = tail call i32 @clk_enable(ptr noundef %42) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %42) #12
  br label %49

49:                                               ; preds = %48, %40
  %50 = phi i32 [ %43, %40 ], [ %46, %48 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.120, i32 noundef %50) #13
  br label %91

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %6, i32 0, i32 12
  %55 = load i8, ptr %54, align 1, !range !10
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @clk_prepare(ptr noundef %59) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = tail call i32 @clk_enable(ptr noundef %59) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  tail call void @clk_unprepare(ptr noundef %59) #12
  br label %66

66:                                               ; preds = %65, %57
  %67 = phi i32 [ %60, %57 ], [ %63, %65 ]
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.121, i32 noundef %67) #13
  br label %88

70:                                               ; preds = %66, %62, %53
  %71 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @clk_prepare(ptr noundef %72) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = tail call i32 @clk_enable(ptr noundef %72) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  tail call void @clk_unprepare(ptr noundef %72) #12
  br label %79

79:                                               ; preds = %78, %70
  %80 = phi i32 [ %73, %70 ], [ %76, %78 ]
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.122, i32 noundef %80) #13
  %83 = load i8, ptr %54, align 1, !range !10
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 9
  %87 = load ptr, ptr %86, align 4
  tail call void @clk_disable(ptr noundef %87) #12
  tail call void @clk_unprepare(ptr noundef %87) #12
  br label %88

88:                                               ; preds = %85, %82, %69
  %89 = phi i32 [ %67, %69 ], [ %80, %85 ], [ %80, %82 ]
  %90 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %90) #12
  tail call void @clk_unprepare(ptr noundef %90) #12
  br label %91

91:                                               ; preds = %88, %52, %39
  %92 = phi i32 [ %50, %52 ], [ %89, %88 ], [ %37, %39 ]
  %93 = load ptr, ptr %16, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = tail call i32 @tegra_powergate_power_off(i32 noundef 3) #12
  br label %97

97:                                               ; preds = %95, %91, %35
  %98 = phi i32 [ %92, %91 ], [ %92, %95 ], [ %33, %35 ]
  %99 = load i32, ptr %22, align 4
  %100 = load ptr, ptr %24, align 4
  %101 = tail call i32 @regulator_bulk_disable(i32 noundef %99, ptr noundef %100) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %98) #13
  br label %850

102:                                              ; preds = %79, %75
  %103 = load ptr, ptr %10, align 4
  %104 = tail call i32 @reset_control_deassert(ptr noundef %103) #12
  %105 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #12
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.114, i32 noundef %105) #13
  br label %848

108:                                              ; preds = %102
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 14
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 352
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %118 = and i32 %117, -515
  %119 = or i32 %118, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %120 = load ptr, ptr %114, align 4
  %121 = getelementptr i8, ptr %120, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #12, !srcloc !14
  br label %122

122:                                              ; preds = %113, %108
  %123 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %109, i32 0, i32 10
  %124 = load i8, ptr %123, align 1, !range !10
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %127 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 0) #12, !srcloc !14
  br label %130

130:                                              ; preds = %126, %122
  %131 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 248
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %135 = and i32 %134, 521142257
  %136 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 17
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %135, %137
  %139 = or i32 %138, -536870898
  %140 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 16
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %140
  br i1 %142, label %157, label %143

143:                                              ; preds = %143, %130
  %144 = phi ptr [ %155, %143 ], [ %141, %130 ]
  %145 = phi i32 [ %154, %143 ], [ %139, %130 ]
  %146 = getelementptr i8, ptr %144, i32 44
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, 1
  %149 = shl nuw i32 1, %148
  %150 = add i32 %147, 29
  %151 = shl nuw i32 1, %150
  %152 = or i32 %149, %151
  %153 = xor i32 %152, -1
  %154 = and i32 %145, %153
  %155 = load ptr, ptr %144, align 4
  %156 = icmp eq ptr %155, %140
  br i1 %156, label %157, label %143

157:                                              ; preds = %143, %130
  %158 = phi i32 [ %139, %130 ], [ %154, %143 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %159 = load ptr, ptr %131, align 4
  %160 = getelementptr i8, ptr %159, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #12, !srcloc !14
  %161 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %109, i32 0, i32 13
  %162 = load i8, ptr %161, align 4, !range !10
  %163 = icmp eq i8 %162, 0
  %164 = load ptr, ptr %131, align 4
  %165 = getelementptr i8, ptr %164, i32 260
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #12
  tail call void asm sideeffect "dsb ", "~{memory}"() #12
  br i1 %163, label %171, label %167

167:                                              ; preds = %157
  %168 = and i32 %166, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %169 = load ptr, ptr %131, align 4
  %170 = getelementptr i8, ptr %169, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #12, !srcloc !14
  br label %175

171:                                              ; preds = %157
  %172 = or i32 %166, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %173 = load ptr, ptr %131, align 4
  %174 = getelementptr i8, ptr %173, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #12, !srcloc !14
  br label %175

175:                                              ; preds = %171, %167
  %176 = load ptr, ptr %131, align 4
  %177 = getelementptr i8, ptr %176, i32 172
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %179 = or i32 %178, -2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %180 = load ptr, ptr %131, align 4
  %181 = getelementptr i8, ptr %180, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #12, !srcloc !14
  %182 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %109, i32 0, i32 11
  %183 = load i8, ptr %182, align 2, !range !10
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i32 63, i32 319
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %186 = load ptr, ptr %131, align 4
  %187 = getelementptr i8, ptr %186, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %188 = load ptr, ptr %131, align 4
  %189 = getelementptr i8, ptr %188, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 -1) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %190 = load ptr, ptr %131, align 4
  %191 = getelementptr i8, ptr %190, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 1) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %192 = load ptr, ptr %131, align 4
  %193 = getelementptr i8, ptr %192, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 0) #12, !srcloc !14
  %194 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 5
  %195 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 5, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = load i32, ptr %194, align 4
  %198 = add i32 %196, 1
  %199 = sub i32 %198, %197
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %200 = load ptr, ptr %131, align 4
  %201 = getelementptr i8, ptr %200, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %197) #12, !srcloc !14
  %202 = lshr i32 %199, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %203 = load ptr, ptr %131, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %202) #12, !srcloc !14
  %204 = getelementptr i8, ptr %3, i32 -80
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, %204
  br i1 %206, label %252, label %207

207:                                              ; preds = %249, %175
  %208 = phi ptr [ %250, %249 ], [ %205, %175 ]
  %209 = getelementptr inbounds %struct.resource_entry, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.resource, ptr %210, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = load i32, ptr %210, align 4
  %214 = add i32 %212, 1
  %215 = sub i32 %214, %213
  %216 = getelementptr inbounds %struct.resource, ptr %210, i32 0, i32 3
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 7936
  switch i32 %218, label %249 [
    i32 256, label %219
    i32 512, label %228
  ]

219:                                              ; preds = %207
  %220 = tail call i32 @pci_pio_to_address(i32 noundef %213) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %221 = load ptr, ptr %131, align 4
  %222 = getelementptr i8, ptr %221, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #12, !srcloc !14
  %223 = lshr i32 %215, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %224 = load ptr, ptr %131, align 4
  %225 = getelementptr i8, ptr %224, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %226 = load ptr, ptr %131, align 4
  %227 = getelementptr i8, ptr %226, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 -33816576) #12, !srcloc !14
  br label %249

228:                                              ; preds = %207
  %229 = lshr i32 %213, 8
  %230 = and i32 %229, 16777200
  %231 = or i32 %230, 1
  %232 = and i32 %217, 8192
  %233 = icmp eq i32 %232, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %234 = load ptr, ptr %131, align 4
  br i1 %233, label %242, label %235

235:                                              ; preds = %228
  %236 = getelementptr i8, ptr %234, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %213) #12, !srcloc !14
  %237 = lshr i32 %215, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %238 = load ptr, ptr %131, align 4
  %239 = getelementptr i8, ptr %238, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %237) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %240 = load ptr, ptr %131, align 4
  %241 = getelementptr i8, ptr %240, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %231) #12, !srcloc !14
  br label %249

242:                                              ; preds = %228
  %243 = getelementptr i8, ptr %234, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %213) #12, !srcloc !14
  %244 = lshr i32 %215, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %245 = load ptr, ptr %131, align 4
  %246 = getelementptr i8, ptr %245, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %247 = load ptr, ptr %131, align 4
  %248 = getelementptr i8, ptr %247, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %231) #12, !srcloc !14
  br label %249

249:                                              ; preds = %242, %235, %219, %207
  %250 = load ptr, ptr %208, align 4
  %251 = icmp eq ptr %250, %204
  br i1 %251, label %252, label %207

252:                                              ; preds = %249, %175
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %253 = load ptr, ptr %131, align 4
  %254 = getelementptr i8, ptr %253, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %255 = load ptr, ptr %131, align 4
  %256 = getelementptr i8, ptr %255, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %257 = load ptr, ptr %131, align 4
  %258 = getelementptr i8, ptr %257, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %259 = load ptr, ptr %131, align 4
  %260 = getelementptr i8, ptr %259, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %261 = load ptr, ptr %131, align 4
  %262 = getelementptr i8, ptr %261, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %263 = load ptr, ptr %131, align 4
  %264 = getelementptr i8, ptr %263, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 0) #12, !srcloc !14
  %265 = load ptr, ptr %5, align 4
  %266 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %265, i32 0, i32 19
  %267 = load i8, ptr %266, align 2, !range !10
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %252
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %270 = load ptr, ptr %131, align 4
  %271 = getelementptr i8, ptr %270, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %272 = load ptr, ptr %131, align 4
  %273 = getelementptr i8, ptr %272, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %274 = load ptr, ptr %131, align 4
  %275 = getelementptr i8, ptr %274, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %276 = load ptr, ptr %131, align 4
  %277 = getelementptr i8, ptr %276, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 0) #12, !srcloc !14
  br label %278

278:                                              ; preds = %269, %252
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %279 = load ptr, ptr %131, align 4
  %280 = getelementptr i8, ptr %279, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %281 = load ptr, ptr %131, align 4
  %282 = getelementptr i8, ptr %281, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %283 = load ptr, ptr %131, align 4
  %284 = getelementptr i8, ptr %283, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %285 = load ptr, ptr %131, align 4
  %286 = getelementptr i8, ptr %285, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 0) #12, !srcloc !14
  %287 = load ptr, ptr %5, align 4
  %288 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15
  %289 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 5
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %287, i32 0, i32 2
  %292 = load i32, ptr %291, align 4
  %293 = lshr i32 %290, %292
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %294 = load ptr, ptr %131, align 4
  %295 = getelementptr i8, ptr %294, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %293) #12, !srcloc !14
  %296 = load i32, ptr %289, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %297 = load ptr, ptr %131, align 4
  %298 = getelementptr i8, ptr %297, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %296) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %299 = load ptr, ptr %131, align 4
  %300 = getelementptr i8, ptr %299, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 1) #12, !srcloc !14
  %301 = load i32, ptr %288, align 4
  %302 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 2
  %305 = load i32, ptr %304, align 4
  %306 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 3
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 4
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 5
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 6
  %313 = load i32, ptr %312, align 4
  %314 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 15, i32 0, i32 7
  %315 = load i32, ptr %314, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %316 = load ptr, ptr %131, align 4
  %317 = getelementptr i8, ptr %316, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %301) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %318 = load ptr, ptr %131, align 4
  %319 = getelementptr i8, ptr %318, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %303) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %320 = load ptr, ptr %131, align 4
  %321 = getelementptr i8, ptr %320, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 %305) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %322 = load ptr, ptr %131, align 4
  %323 = getelementptr i8, ptr %322, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %307) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %324 = load ptr, ptr %131, align 4
  %325 = getelementptr i8, ptr %324, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 %309) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %326 = load ptr, ptr %131, align 4
  %327 = getelementptr i8, ptr %326, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %311) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %328 = load ptr, ptr %131, align 4
  %329 = getelementptr i8, ptr %328, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %313) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %330 = load ptr, ptr %131, align 4
  %331 = getelementptr i8, ptr %330, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 %315) #12, !srcloc !14
  %332 = load ptr, ptr %131, align 4
  %333 = getelementptr i8, ptr %332, i32 180
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %335 = or i32 %334, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %336 = load ptr, ptr %131, align 4
  %337 = getelementptr i8, ptr %336, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %335) #12, !srcloc !14
  %338 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 6
  %339 = load ptr, ptr %338, align 4
  %340 = tail call i32 @clk_prepare(ptr noundef %339) #12
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %278
  %343 = tail call i32 @clk_enable(ptr noundef %339) #12
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  tail call void @clk_unprepare(ptr noundef %339) #12
  br label %346

346:                                              ; preds = %345, %278
  %347 = phi i32 [ %343, %345 ], [ %340, %278 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.115, i32 noundef %347) #13
  br label %845

348:                                              ; preds = %342
  %349 = load ptr, ptr %13, align 4
  %350 = tail call i32 @reset_control_deassert(ptr noundef %349) #12
  %351 = load ptr, ptr %5, align 4
  %352 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %351, i32 0, i32 15
  %353 = load i8, ptr %352, align 2, !range !10
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %470, label %355

355:                                              ; preds = %348
  %356 = load ptr, ptr %3, align 4
  %357 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 13
  %358 = load i8, ptr %357, align 4, !range !10
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %435, label %360

360:                                              ; preds = %355
  %361 = load ptr, ptr %110, align 4
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %430

363:                                              ; preds = %360
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %364 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr i8, ptr %365, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 0) #12, !srcloc !14
  %367 = load ptr, ptr %364, align 4
  %368 = getelementptr i8, ptr %367, i32 160
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %368) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %370 = or i32 %369, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %371 = load ptr, ptr %364, align 4
  %372 = getelementptr i8, ptr %371, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %370) #12, !srcloc !14
  %373 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %351, i32 0, i32 4
  %374 = load i32, ptr %373, align 4
  %375 = load ptr, ptr %364, align 4
  %376 = getelementptr i8, ptr %375, i32 %374
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %378 = and i32 %377, -1245185
  %379 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %351, i32 0, i32 5
  %380 = load i32, ptr %379, align 4
  %381 = or i32 %380, %378
  %382 = load i32, ptr %373, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %383 = load ptr, ptr %364, align 4
  %384 = getelementptr i8, ptr %383, i32 %382
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %381) #12, !srcloc !14
  %385 = load i32, ptr %373, align 4
  %386 = load ptr, ptr %364, align 4
  %387 = getelementptr i8, ptr %386, i32 %385
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %389 = and i32 %388, -3
  %390 = load i32, ptr %373, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %391 = load ptr, ptr %364, align 4
  %392 = getelementptr i8, ptr %391, i32 %390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %392, i32 %389) #12, !srcloc !14
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #12
  %393 = load i32, ptr %373, align 4
  %394 = load ptr, ptr %364, align 4
  %395 = getelementptr i8, ptr %394, i32 %393
  %396 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %395) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %397 = or i32 %396, 2
  %398 = load i32, ptr %373, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %399 = load ptr, ptr %364, align 4
  %400 = getelementptr i8, ptr %399, i32 %398
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %397) #12, !srcloc !14
  %401 = load ptr, ptr %5, align 4
  %402 = load volatile i32, ptr @jiffies, align 64
  %403 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %401, i32 0, i32 4
  %404 = sub i32 -50, %402
  br label %405

405:                                              ; preds = %409, %363
  %406 = load volatile i32, ptr @jiffies, align 64
  %407 = add i32 %404, %406
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %405
  %410 = load i32, ptr %403, align 4
  %411 = load ptr, ptr %364, align 4
  %412 = getelementptr i8, ptr %411, i32 %410
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %412) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %414 = and i32 %413, 256
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %405, label %417

416:                                              ; preds = %405
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %356, ptr noundef nonnull @.str.125, i32 noundef -110) #13
  br label %433

417:                                              ; preds = %409
  %418 = load ptr, ptr %364, align 4
  %419 = getelementptr i8, ptr %418, i32 160
  %420 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %419) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %421 = and i32 %420, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %422 = load ptr, ptr %364, align 4
  %423 = getelementptr i8, ptr %422, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %423, i32 %421) #12, !srcloc !14
  %424 = load ptr, ptr %364, align 4
  %425 = getelementptr i8, ptr %424, i32 160
  %426 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %425) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %427 = or i32 %426, 1088
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %428 = load ptr, ptr %364, align 4
  %429 = getelementptr i8, ptr %428, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %429, i32 %427) #12, !srcloc !14
  br label %470

430:                                              ; preds = %360
  %431 = tail call i32 @phy_power_on(ptr noundef nonnull %361) #12
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %433, label %470

433:                                              ; preds = %430, %416
  %434 = phi i32 [ -110, %416 ], [ %431, %430 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %356, ptr noundef nonnull @.str.123, i32 noundef %434) #13
  br label %465

435:                                              ; preds = %355
  %436 = load ptr, ptr %140, align 4
  %437 = icmp eq ptr %436, %140
  br i1 %437, label %470, label %438

438:                                              ; preds = %459, %435
  %439 = phi ptr [ %460, %459 ], [ %436, %435 ]
  %440 = getelementptr i8, ptr %439, i32 -8
  %441 = load ptr, ptr %440, align 4
  %442 = load ptr, ptr %441, align 4
  %443 = getelementptr i8, ptr %439, i32 48
  %444 = load i32, ptr %443, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %459, label %446

446:                                              ; preds = %438
  %447 = getelementptr i8, ptr %439, i32 52
  br label %448

448:                                              ; preds = %455, %446
  %449 = phi i32 [ 0, %446 ], [ %456, %455 ]
  %450 = load ptr, ptr %447, align 4
  %451 = getelementptr ptr, ptr %450, i32 %449
  %452 = load ptr, ptr %451, align 4
  %453 = tail call i32 @phy_power_on(ptr noundef %452) #12
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %462, label %455

455:                                              ; preds = %448
  %456 = add nuw i32 %449, 1
  %457 = load i32, ptr %443, align 4
  %458 = icmp ult i32 %456, %457
  br i1 %458, label %448, label %459

459:                                              ; preds = %455, %438
  %460 = load ptr, ptr %439, align 4
  %461 = icmp eq ptr %460, %140
  br i1 %461, label %470, label %438

462:                                              ; preds = %448
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %442, ptr noundef nonnull @.str.126, i32 noundef %449, i32 noundef %453) #13
  %463 = getelementptr i8, ptr %439, i32 44
  %464 = load i32, ptr %463, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %356, ptr noundef nonnull @.str.124, i32 noundef %464, i32 noundef %453) #13
  br label %465

465:                                              ; preds = %462, %433
  %466 = phi i32 [ %453, %462 ], [ %434, %433 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.116, i32 noundef %466) #13
  %467 = load ptr, ptr %13, align 4
  %468 = tail call i32 @reset_control_assert(ptr noundef %467) #12
  %469 = load ptr, ptr %338, align 4
  tail call void @clk_disable(ptr noundef %469) #12
  tail call void @clk_unprepare(ptr noundef %469) #12
  br label %845

470:                                              ; preds = %459, %435, %430, %417, %348
  %471 = load ptr, ptr %5, align 4
  %472 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %471, i32 0, i32 6
  %473 = load i32, ptr %472, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %474 = getelementptr inbounds %struct.tegra_pcie, ptr %3, i32 0, i32 1
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr i8, ptr %475, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 %473) #12, !srcloc !14
  %477 = load i32, ptr %471, align 4
  %478 = icmp ugt i32 %477, 2
  br i1 %478, label %479, label %484

479:                                              ; preds = %470
  %480 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %471, i32 0, i32 7
  %481 = load i32, ptr %480, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %482 = load ptr, ptr %474, align 4
  %483 = getelementptr i8, ptr %482, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %483, i32 %481) #12, !srcloc !14
  br label %484

484:                                              ; preds = %479, %470
  %485 = load ptr, ptr %3, align 4
  %486 = load ptr, ptr %140, align 4
  %487 = icmp eq ptr %486, %140
  br i1 %487, label %681, label %488

488:                                              ; preds = %672, %484
  %489 = phi ptr [ %491, %672 ], [ %486, %484 ]
  %490 = getelementptr i8, ptr %489, i32 -8
  %491 = load ptr, ptr %489, align 4
  %492 = getelementptr i8, ptr %489, i32 44
  %493 = load i32, ptr %492, align 4
  %494 = getelementptr i8, ptr %489, i32 48
  %495 = load i32, ptr %494, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %485, ptr noundef nonnull @.str.127, i32 noundef %493, i32 noundef %495) #13
  %496 = load i32, ptr %492, align 4
  switch i32 %496, label %505 [
    i32 0, label %497
    i32 1, label %498
    i32 2, label %499
  ]

497:                                              ; preds = %488
  br label %505

498:                                              ; preds = %488
  br label %505

499:                                              ; preds = %488
  %500 = load ptr, ptr %490, align 4
  %501 = getelementptr inbounds %struct.tegra_pcie, ptr %500, i32 0, i32 20
  %502 = load ptr, ptr %501, align 4
  %503 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %502, i32 0, i32 3
  %504 = load i32, ptr %503, align 4
  br label %505

505:                                              ; preds = %499, %498, %497, %488
  %506 = phi i32 [ 0, %488 ], [ %504, %499 ], [ 280, %498 ], [ 272, %497 ]
  %507 = load ptr, ptr %490, align 4
  %508 = getelementptr inbounds %struct.tegra_pcie, ptr %507, i32 0, i32 20
  %509 = load ptr, ptr %508, align 4
  %510 = getelementptr inbounds %struct.tegra_pcie, ptr %507, i32 0, i32 2
  %511 = load ptr, ptr %510, align 4
  %512 = getelementptr i8, ptr %511, i32 %506
  %513 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %512) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %514 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %509, i32 0, i32 9
  %515 = load i8, ptr %514, align 4, !range !10
  %516 = icmp eq i8 %515, 0
  %517 = select i1 %516, i32 8, i32 10
  %518 = or i32 %513, %517
  %519 = or i32 %518, 16
  %520 = load ptr, ptr %490, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %521 = getelementptr inbounds %struct.tegra_pcie, ptr %520, i32 0, i32 2
  %522 = load ptr, ptr %521, align 4
  %523 = getelementptr i8, ptr %522, i32 %506
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %523, i32 %519) #12, !srcloc !14
  tail call fastcc void @tegra_pcie_port_reset(ptr noundef %490) #12
  %524 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %509, i32 0, i32 14
  %525 = load i8, ptr %524, align 1, !range !10
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %535, label %527

527:                                              ; preds = %505
  %528 = getelementptr i8, ptr %489, i32 40
  %529 = load ptr, ptr %528, align 4
  %530 = getelementptr i8, ptr %529, i32 4008
  %531 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %530) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %532 = or i32 %531, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !23
  tail call void @arm_heavy_mb() #12
  %533 = load ptr, ptr %528, align 4
  %534 = getelementptr i8, ptr %533, i32 4008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %534, i32 %532) #12, !srcloc !14
  br label %535

535:                                              ; preds = %527, %505
  %536 = load ptr, ptr %490, align 4
  %537 = getelementptr inbounds %struct.tegra_pcie, ptr %536, i32 0, i32 20
  %538 = load ptr, ptr %537, align 4
  %539 = getelementptr i8, ptr %489, i32 40
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr i8, ptr %540, i32 3912
  %542 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %541) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %543 = or i32 %542, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !25
  tail call void @arm_heavy_mb() #12
  %544 = load ptr, ptr %539, align 4
  %545 = getelementptr i8, ptr %544, i32 3912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %545, i32 %543) #12, !srcloc !14
  %546 = load ptr, ptr %539, align 4
  %547 = getelementptr i8, ptr %546, i32 3840
  %548 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %547) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !26
  %549 = or i32 %548, 402653184
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %550 = load ptr, ptr %539, align 4
  %551 = getelementptr i8, ptr %550, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %551, i32 %549) #12, !srcloc !14
  %552 = load ptr, ptr %539, align 4
  %553 = getelementptr i8, ptr %552, i32 3916
  %554 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %553) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !28
  %555 = or i32 %554, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !29
  tail call void @arm_heavy_mb() #12
  %556 = load ptr, ptr %539, align 4
  %557 = getelementptr i8, ptr %556, i32 3916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %557, i32 %555) #12, !srcloc !14
  %558 = load ptr, ptr %539, align 4
  %559 = getelementptr i8, ptr %558, i32 4064
  %560 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %559) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !30
  %561 = or i32 %560, -2139095040
  %562 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %538, i32 0, i32 16
  %563 = load i8, ptr %562, align 1, !range !10
  %564 = icmp eq i8 %563, 0
  %565 = and i32 %561, -2139029505
  %566 = or i32 %565, 252641280
  %567 = select i1 %564, i32 %561, i32 %566
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !31
  tail call void @arm_heavy_mb() #12
  %568 = load ptr, ptr %539, align 4
  %569 = getelementptr i8, ptr %568, i32 4064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %569, i32 %567) #12, !srcloc !14
  %570 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %509, i32 0, i32 20, i32 1
  %571 = load i8, ptr %570, align 4, !range !10
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %643, label %573

573:                                              ; preds = %535
  %574 = load ptr, ptr %490, align 4
  %575 = getelementptr inbounds %struct.tegra_pcie, ptr %574, i32 0, i32 20
  %576 = load ptr, ptr %575, align 4
  %577 = load ptr, ptr %539, align 4
  %578 = getelementptr i8, ptr %577, i32 3716
  %579 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %578) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !32
  %580 = and i32 %579, -65536
  %581 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20
  %582 = load i32, ptr %581, align 4
  %583 = or i32 %582, %580
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  tail call void @arm_heavy_mb() #12
  %584 = load ptr, ptr %539, align 4
  %585 = getelementptr i8, ptr %584, i32 3716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %585, i32 %583) #12, !srcloc !14
  %586 = load ptr, ptr %539, align 4
  %587 = getelementptr i8, ptr %586, i32 3724
  %588 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %587) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !34
  %589 = and i32 %588, 65535
  %590 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 1
  %591 = load i32, ptr %590, align 4
  %592 = shl i32 %591, 16
  %593 = or i32 %592, %589
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !35
  tail call void @arm_heavy_mb() #12
  %594 = load ptr, ptr %539, align 4
  %595 = getelementptr i8, ptr %594, i32 3724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %595, i32 %593) #12, !srcloc !14
  %596 = load ptr, ptr %539, align 4
  %597 = getelementptr i8, ptr %596, i32 3728
  %598 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %597) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !36
  %599 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 2
  %600 = load i32, ptr %599, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !37
  tail call void @arm_heavy_mb() #12
  %601 = load ptr, ptr %539, align 4
  %602 = getelementptr i8, ptr %601, i32 3728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %602, i32 %600) #12, !srcloc !14
  %603 = load ptr, ptr %539, align 4
  %604 = getelementptr i8, ptr %603, i32 3732
  %605 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %604) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !38
  %606 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 3
  %607 = load i32, ptr %606, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !39
  tail call void @arm_heavy_mb() #12
  %608 = load ptr, ptr %539, align 4
  %609 = getelementptr i8, ptr %608, i32 3732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %609, i32 %607) #12, !srcloc !14
  %610 = load ptr, ptr %539, align 4
  %611 = getelementptr i8, ptr %610, i32 3748
  %612 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %611) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !40
  %613 = and i32 %612, -65536
  %614 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 4
  %615 = load i32, ptr %614, align 4
  %616 = or i32 %615, %613
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !41
  tail call void @arm_heavy_mb() #12
  %617 = load ptr, ptr %539, align 4
  %618 = getelementptr i8, ptr %617, i32 3748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %618, i32 %616) #12, !srcloc !14
  %619 = load ptr, ptr %539, align 4
  %620 = getelementptr i8, ptr %619, i32 3756
  %621 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %620) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !42
  %622 = and i32 %621, 65535
  %623 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 5
  %624 = load i32, ptr %623, align 4
  %625 = shl i32 %624, 16
  %626 = or i32 %625, %622
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %627 = load ptr, ptr %539, align 4
  %628 = getelementptr i8, ptr %627, i32 3756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %628, i32 %626) #12, !srcloc !14
  %629 = load ptr, ptr %539, align 4
  %630 = getelementptr i8, ptr %629, i32 3760
  %631 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %630) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !44
  %632 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 6
  %633 = load i32, ptr %632, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !45
  tail call void @arm_heavy_mb() #12
  %634 = load ptr, ptr %539, align 4
  %635 = getelementptr i8, ptr %634, i32 3760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %635, i32 %633) #12, !srcloc !14
  %636 = load ptr, ptr %539, align 4
  %637 = getelementptr i8, ptr %636, i32 3764
  %638 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %637) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !46
  %639 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %576, i32 0, i32 20, i32 0, i32 7
  %640 = load i32, ptr %639, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !47
  tail call void @arm_heavy_mb() #12
  %641 = load ptr, ptr %539, align 4
  %642 = getelementptr i8, ptr %641, i32 3764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %642, i32 %640) #12, !srcloc !14
  br label %643

643:                                              ; preds = %573, %535
  %644 = load ptr, ptr %490, align 4
  %645 = getelementptr inbounds %struct.tegra_pcie, ptr %644, i32 0, i32 20
  %646 = load ptr, ptr %645, align 4
  %647 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %646, i32 0, i32 17
  %648 = load i8, ptr %647, align 4, !range !10
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %658, label %650

650:                                              ; preds = %643
  %651 = load ptr, ptr %539, align 4
  %652 = getelementptr i8, ptr %651, i32 3908
  %653 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %652) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !48
  %654 = and i32 %653, -61441
  %655 = or i32 %654, 36864
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !49
  tail call void @arm_heavy_mb() #12
  %656 = load ptr, ptr %539, align 4
  %657 = getelementptr i8, ptr %656, i32 3908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %657, i32 %655) #12, !srcloc !14
  br label %658

658:                                              ; preds = %650, %643
  %659 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %646, i32 0, i32 18
  %660 = load i8, ptr %659, align 1, !range !10
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %672, label %662

662:                                              ; preds = %658
  %663 = load ptr, ptr %539, align 4
  %664 = getelementptr i8, ptr %663, i32 3840
  %665 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %664) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !50
  %666 = and i32 %665, -66846721
  %667 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %646, i32 0, i32 8
  %668 = load i32, ptr %667, align 4
  %669 = or i32 %668, %666
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !51
  tail call void @arm_heavy_mb() #12
  %670 = load ptr, ptr %539, align 4
  %671 = getelementptr i8, ptr %670, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %671, i32 %669) #12, !srcloc !14
  br label %672

672:                                              ; preds = %662, %658
  %673 = load ptr, ptr %539, align 4
  %674 = getelementptr i8, ptr %673, i32 176
  %675 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %674) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !52
  %676 = and i32 %675, -16
  %677 = or i32 %676, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !53
  tail call void @arm_heavy_mb() #12
  %678 = load ptr, ptr %539, align 4
  %679 = getelementptr i8, ptr %678, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %679, i32 %677) #12, !srcloc !14
  %680 = icmp eq ptr %491, %140
  br i1 %680, label %681, label %488

681:                                              ; preds = %672, %484
  %682 = load ptr, ptr %7, align 4
  %683 = tail call i32 @reset_control_deassert(ptr noundef %682) #12
  %684 = load ptr, ptr %140, align 4
  %685 = icmp eq ptr %684, %140
  br i1 %685, label %778, label %686

686:                                              ; preds = %776, %681
  %687 = phi ptr [ %689, %776 ], [ %684, %681 ]
  %688 = getelementptr i8, ptr %687, i32 -8
  %689 = load ptr, ptr %687, align 4
  %690 = getelementptr i8, ptr %687, i32 40
  %691 = load ptr, ptr %690, align 4
  %692 = getelementptr i8, ptr %691, i32 4064
  %693 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %692) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !54
  %694 = and i32 %693, -16
  %695 = or i32 %694, 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !55
  tail call void @arm_heavy_mb() #12
  %696 = load ptr, ptr %690, align 4
  %697 = getelementptr i8, ptr %696, i32 4064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %697, i32 %695) #12, !srcloc !14
  br label %698

698:                                              ; preds = %705, %686
  %699 = phi i32 [ 200, %686 ], [ %706, %705 ]
  %700 = load ptr, ptr %690, align 4
  %701 = getelementptr i8, ptr %700, i32 3840
  %702 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %701) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !56
  %703 = and i32 %702, 1073741824
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %708

705:                                              ; preds = %698
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %706 = add nsw i32 %699, -1
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %718, label %698

708:                                              ; preds = %715, %698
  %709 = phi i32 [ %716, %715 ], [ 200, %698 ]
  %710 = load ptr, ptr %690, align 4
  %711 = getelementptr i8, ptr %710, i32 144
  %712 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %711) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !57
  %713 = and i32 %712, 536870912
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %776

715:                                              ; preds = %708
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %716 = add nsw i32 %709, -1
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %708

718:                                              ; preds = %715, %705
  tail call fastcc void @tegra_pcie_port_reset(ptr noundef %688) #12
  br label %719

719:                                              ; preds = %736, %718
  %720 = phi i32 [ 200, %718 ], [ %737, %736 ]
  %721 = load ptr, ptr %690, align 4
  %722 = getelementptr i8, ptr %721, i32 3840
  %723 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %722) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !56
  %724 = and i32 %723, 1073741824
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %736, label %726

726:                                              ; preds = %733, %719
  %727 = phi i32 [ %734, %733 ], [ 200, %719 ]
  %728 = load ptr, ptr %690, align 4
  %729 = getelementptr i8, ptr %728, i32 144
  %730 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %729) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !57
  %731 = and i32 %730, 536870912
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %776

733:                                              ; preds = %726
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %734 = add nsw i32 %727, -1
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %739, label %726

736:                                              ; preds = %719
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %737 = add nsw i32 %720, -1
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %719

739:                                              ; preds = %736, %733
  tail call fastcc void @tegra_pcie_port_reset(ptr noundef %688) #12
  br label %740

740:                                              ; preds = %757, %739
  %741 = phi i32 [ 200, %739 ], [ %758, %757 ]
  %742 = load ptr, ptr %690, align 4
  %743 = getelementptr i8, ptr %742, i32 3840
  %744 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %743) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !56
  %745 = and i32 %744, 1073741824
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %757, label %747

747:                                              ; preds = %754, %740
  %748 = phi i32 [ %755, %754 ], [ 200, %740 ]
  %749 = load ptr, ptr %690, align 4
  %750 = getelementptr i8, ptr %749, i32 144
  %751 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %750) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !57
  %752 = and i32 %751, 536870912
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %776

754:                                              ; preds = %747
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %755 = add nsw i32 %748, -1
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %760, label %747

757:                                              ; preds = %740
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %758 = add nsw i32 %741, -1
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %740

760:                                              ; preds = %757, %754
  tail call fastcc void @tegra_pcie_port_reset(ptr noundef %688) #12
  %761 = getelementptr i8, ptr %687, i32 44
  %762 = load i32, ptr %761, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %485, ptr noundef nonnull @.str.128, i32 noundef %762) #13
  tail call fastcc void @tegra_pcie_port_disable(ptr noundef %688) #12
  %763 = load ptr, ptr %688, align 4
  %764 = load ptr, ptr %763, align 4
  %765 = load ptr, ptr %690, align 4
  tail call void @devm_iounmap(ptr noundef %764, ptr noundef %765) #12
  %766 = getelementptr i8, ptr %687, i32 8
  %767 = load i32, ptr %766, align 4
  %768 = getelementptr i8, ptr %687, i32 12
  %769 = load i32, ptr %768, align 4
  %770 = sub i32 1, %767
  %771 = add i32 %770, %769
  tail call void @__devm_release_region(ptr noundef %764, ptr noundef nonnull @iomem_resource, i32 noundef %767, i32 noundef %771) #12
  %772 = getelementptr i8, ptr %687, i32 4
  %773 = load ptr, ptr %772, align 4
  %774 = load ptr, ptr %687, align 4
  %775 = getelementptr inbounds %struct.list_head, ptr %774, i32 0, i32 1
  store ptr %773, ptr %775, align 4
  store volatile ptr %774, ptr %773, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %687, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %772, align 4
  tail call void @devm_kfree(ptr noundef %764, ptr noundef %688) #12
  br label %776

776:                                              ; preds = %760, %747, %726, %708
  %777 = icmp eq ptr %689, %140
  br i1 %777, label %778, label %686

778:                                              ; preds = %776, %681
  %779 = load ptr, ptr %5, align 4
  %780 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %779, i32 0, i32 13
  %781 = load i8, ptr %780, align 4, !range !10
  %782 = icmp eq i8 %781, 0
  br i1 %782, label %850, label %783

783:                                              ; preds = %778
  %784 = load ptr, ptr %3, align 4
  %785 = load ptr, ptr %140, align 4
  %786 = icmp eq ptr %785, %140
  br i1 %786, label %850, label %787

787:                                              ; preds = %842, %783
  %788 = phi ptr [ %843, %842 ], [ %785, %783 ]
  %789 = getelementptr i8, ptr %788, i32 40
  %790 = load ptr, ptr %789, align 4
  %791 = getelementptr i8, ptr %790, i32 176
  %792 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %791) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !58
  %793 = and i32 %792, -16
  %794 = or i32 %793, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !59
  tail call void @arm_heavy_mb() #12
  %795 = load ptr, ptr %789, align 4
  %796 = getelementptr i8, ptr %795, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %796, i32 %794) #12, !srcloc !14
  %797 = tail call i64 @ktime_get() #12
  %798 = add i64 %797, 100000000
  %799 = tail call i64 @ktime_get() #12
  %800 = icmp slt i64 %799, %798
  br i1 %800, label %801, label %810

801:                                              ; preds = %807, %787
  %802 = load ptr, ptr %789, align 4
  %803 = getelementptr i8, ptr %802, i32 144
  %804 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %803) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !60
  %805 = and i32 %804, 2048
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %816, label %807

807:                                              ; preds = %801
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #12
  %808 = tail call i64 @ktime_get() #12
  %809 = icmp slt i64 %808, %798
  br i1 %809, label %801, label %813

810:                                              ; preds = %787
  %811 = and i32 %792, 2048
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %810, %807
  %814 = getelementptr i8, ptr %788, i32 44
  %815 = load i32, ptr %814, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %784, ptr noundef nonnull @.str.129, i32 noundef %815) #13
  br label %816

816:                                              ; preds = %813, %810, %801
  %817 = load ptr, ptr %789, align 4
  %818 = getelementptr i8, ptr %817, i32 144
  %819 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %818) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !61
  %820 = or i32 %819, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !62
  tail call void @arm_heavy_mb() #12
  %821 = load ptr, ptr %789, align 4
  %822 = getelementptr i8, ptr %821, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %822, i32 %820) #12, !srcloc !14
  %823 = tail call i64 @ktime_get() #12
  %824 = add i64 %823, 100000000
  %825 = tail call i64 @ktime_get() #12
  %826 = icmp slt i64 %825, %824
  br i1 %826, label %827, label %836

827:                                              ; preds = %833, %816
  %828 = load ptr, ptr %789, align 4
  %829 = getelementptr i8, ptr %828, i32 144
  %830 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %829) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !63
  %831 = and i32 %830, 2048
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %842, label %833

833:                                              ; preds = %827
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #12
  %834 = tail call i64 @ktime_get() #12
  %835 = icmp slt i64 %834, %824
  br i1 %835, label %827, label %839

836:                                              ; preds = %816
  %837 = and i32 %819, 2048
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %842, label %839

839:                                              ; preds = %836, %833
  %840 = getelementptr i8, ptr %788, i32 44
  %841 = load i32, ptr %840, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %784, ptr noundef nonnull @.str.130, i32 noundef %841) #13
  br label %842

842:                                              ; preds = %839, %836, %827
  %843 = load ptr, ptr %788, align 4
  %844 = icmp eq ptr %843, %140
  br i1 %844, label %850, label %787

845:                                              ; preds = %465, %346
  %846 = phi i32 [ %347, %346 ], [ %466, %465 ]
  %847 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #12
  br label %848

848:                                              ; preds = %845, %107
  %849 = phi i32 [ %105, %107 ], [ %846, %845 ]
  tail call fastcc void @tegra_pcie_power_off(ptr noundef %3)
  br label %850

850:                                              ; preds = %848, %842, %783, %778, %97
  %851 = phi i32 [ %98, %97 ], [ %849, %848 ], [ 0, %778 ], [ 0, %783 ], [ 0, %842 ]
  ret i32 %851
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_power_off(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_assert(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #12
  tail call void @clk_unprepare(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %4, i32 0, i32 12
  %11 = load i8, ptr %10, align 1, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #12
  tail call void @clk_unprepare(ptr noundef %15) #12
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #12
  tail call void @clk_unprepare(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 @tegra_powergate_power_off(i32 noundef 3) #12
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 19
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_pcie, ptr %0, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @regulator_bulk_disable(i32 noundef %26, ptr noundef %28) #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %29) #13
  br label %32

32:                                               ; preds = %31, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_port_disable(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tegra_pcie_port, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %12 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
  ]

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.tegra_pcie, ptr %7, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %6, %5, %4, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %6 ], [ 280, %5 ], [ 272, %4 ]
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.tegra_pcie, ptr %14, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_pcie, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %13
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %21 = and i32 %20, -2
  %22 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %23 = getelementptr inbounds %struct.tegra_pcie, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #12, !srcloc !14
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.tegra_pcie, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %13
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %31 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %16, i32 0, i32 9
  %32 = load i8, ptr %31, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  %34 = and i32 %30, -11
  %35 = select i1 %33, i32 %30, i32 %34
  %36 = and i32 %35, -9
  %37 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %38 = getelementptr inbounds %struct.tegra_pcie, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #12, !srcloc !14
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.tegra_pcie, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 248
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %46 = load i32, ptr %2, align 4
  %47 = add i32 %46, 1
  %48 = shl nuw i32 1, %47
  %49 = or i32 %48, %45
  %50 = add i32 %46, 29
  %51 = shl nuw i32 1, %50
  %52 = or i32 %49, %51
  %53 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %54 = getelementptr inbounds %struct.tegra_pcie, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #12, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_on(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_remove_clamping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_port_reset(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tegra_pcie_port, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %12 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
  ]

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.tegra_pcie, ptr %7, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_pcie_soc, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %6, %5, %4, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %6 ], [ 280, %5 ], [ 272, %4 ]
  %14 = getelementptr inbounds %struct.tegra_pcie_port, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @gpiod_set_value(ptr noundef nonnull %15, i32 noundef 1) #12
  br label %29

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.tegra_pcie, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %13
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %24 = and i32 %23, -2
  %25 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %26 = getelementptr inbounds %struct.tegra_pcie, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #12, !srcloc !14
  br label %29

29:                                               ; preds = %18, %17
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @gpiod_set_value(ptr noundef nonnull %30, i32 noundef 0) #12
  br label %44

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.tegra_pcie, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %13
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %39 = or i32 %38, 1
  %40 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %41 = getelementptr inbounds %struct.tegra_pcie, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #12, !srcloc !14
  br label %44

44:                                               ; preds = %33, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!11 = !{i64 4131182}
!12 = !{i64 2154250228}
!13 = !{i64 2154249588}
!14 = !{i64 4130764}
!15 = !{i32 0, i32 33}
!16 = !{i64 2154370706}
!17 = !{i64 2154371079}
!18 = !{i64 2154316405}
!19 = !{i64 2154316736}
!20 = !{i64 2154251230}
!21 = !{i64 2154250586}
!22 = !{i64 2154269908}
!23 = !{i64 2154270121}
!24 = !{i64 2154254975}
!25 = !{i64 2154255189}
!26 = !{i64 2154255691}
!27 = !{i64 2154255915}
!28 = !{i64 2154256417}
!29 = !{i64 2154256631}
!30 = !{i64 2154257133}
!31 = !{i64 2154257407}
!32 = !{i64 2154257909}
!33 = !{i64 2154258120}
!34 = !{i64 2154258622}
!35 = !{i64 2154262905}
!36 = !{i64 2154263407}
!37 = !{i64 2154263622}
!38 = !{i64 2154264124}
!39 = !{i64 2154264339}
!40 = !{i64 2154264841}
!41 = !{i64 2154265052}
!42 = !{i64 2154265554}
!43 = !{i64 2154265776}
!44 = !{i64 2154266278}
!45 = !{i64 2154266493}
!46 = !{i64 2154266995}
!47 = !{i64 2154267210}
!48 = !{i64 2154267712}
!49 = !{i64 2154267940}
!50 = !{i64 2154268442}
!51 = !{i64 2154268659}
!52 = !{i64 2154269161}
!53 = !{i64 2154269379}
!54 = !{i64 2154341065}
!55 = !{i64 2154341291}
!56 = !{i64 2154341797}
!57 = !{i64 2154342765}
!58 = !{i64 2154346369}
!59 = !{i64 2154346587}
!60 = !{i64 2154347096}
!61 = !{i64 2154348097}
!62 = !{i64 2154348308}
!63 = !{i64 2154348817}
