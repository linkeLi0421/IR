; ModuleID = '/llk/IR/drivers/pci/controller/pcie-brcmstb.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-brcmstb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcie_cfg_data = type { ptr, i32, ptr, ptr }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.brcm_pcie = type { ptr, ptr, ptr, ptr, i8, i32, i64, ptr, ptr, i32, ptr, ptr, i32, [3 x i64], i32, ptr, ptr, i8, ptr, i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.brcm_msi = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, i64, i32, [1 x i32], i8, i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.65, %union.anon.66, %union.anon.67 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.subdev_regulators = type { i32, [0 x %struct.regulator_bulk_data] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__initcall__kmod_pcie_brcmstb__317_1641_brcm_pcie_driver_init6 = internal global ptr @brcm_pcie_driver_init, section ".initcall6.init", align 4
@brcm_pcie_driver = internal global %struct.platform_driver { ptr @brcm_pcie_probe, ptr @brcm_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcm_pcie_driver_exit = internal global ptr @brcm_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file318 = internal constant [54 x i8] c"pcie_brcmstb.file=drivers/pci/controller/pcie-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [25 x i8] c"pcie_brcmstb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [53 x i8] c"pcie_brcmstb.description=Broadcom STB PCIe RC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [29 x i8] c"pcie_brcmstb.author=Broadcom\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"brcm-pcie\00", align 1
@brcm_pcie_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm4908_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @generic_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7278_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7278_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @generic_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7435-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7435_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7425_cfg }, %struct.of_device_id zeroinitializer], align 4
@brcm_pcie_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_pcie_suspend, ptr @brcm_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\013failed to look up compatible string\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sw_pcie\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"brcm,enable-ssc\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"could not enable clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rescal\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"perst\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to deassert 'rescal'\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"hardware revision with unsupported PERST# setup\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"probe of internal MSI failed\00", align 1
@brcm_pcie_ops32 = internal global %struct.pci_ops { ptr null, ptr null, ptr @brcm_pcie_map_conf32, ptr @pci_generic_config_read32, ptr @pci_generic_config_write32 }, align 4
@brcm_pcie_ops = internal global %struct.pci_ops { ptr @brcm_pcie_add_bus, ptr @pci_subdev_regulators_remove_bus, ptr @brcm_pcie_map_conf, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, align 4
@brcm_phy_cntl.shifts = internal unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@brcm_phy_cntl.masks = internal unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"failed to %s phy\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"aspm-no-l0s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"DT node has no dma-ranges\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"brcm,scb-sizes\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"Invalid rc_bar2_offset/size: size 0x%llx, off 0x%llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"cannot map MSI interrupt\0A\00", align 1
@brcm_pcie_enable_msi.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"&msi->lock\00", align 1
@msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_irq_domain_alloc, ptr @brcm_irq_domain_free, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@brcm_msi_domain_info = internal global %struct.msi_domain_info { i32 3, ptr null, ptr @brcm_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@brcm_msi_bottom_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr @brcm_msi_ack_irq, ptr null, ptr null, ptr null, ptr null, ptr @brcm_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_msi_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"BRCM STB MSI\00", align 1
@brcm_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"BRCM STB PCIe MSI\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"dev.driver_data unexpectedly non-NULL\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"failed to enable regulators for downstream device\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"vpcie3v3\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"vpcie3v3aux\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"vpcie12v\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"PCIe misconfigured; is in EP mode\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"too many outbound wins\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"failed attempt to enter ssc mode\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"link up, %s x%u %s\0A\00", align 1
@pcie_link_speed = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"(SSC)\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"(!SSC)\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.36 = private unnamed_addr constant [52 x i8] c"failed to disable regulators for downstream device\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Could not stop phy\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Could not rearm rescal reset\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"failed to enter low-power link state\0A\00", align 1
@bcm2711_cfg = internal constant %struct.pcie_cfg_data { ptr @pcie_offsets, i32 5, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, align 4
@bcm4908_cfg = internal constant %struct.pcie_cfg_data { ptr @pcie_offsets, i32 3, ptr @brcm_pcie_perst_set_4908, ptr @brcm_pcie_bridge_sw_init_set_generic }, align 4
@generic_cfg = internal constant %struct.pcie_cfg_data { ptr @pcie_offsets, i32 0, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, align 4
@bcm7278_cfg = internal constant %struct.pcie_cfg_data { ptr @pcie_offset_bcm7278, i32 4, ptr @brcm_pcie_perst_set_7278, ptr @brcm_pcie_bridge_sw_init_set_7278 }, align 4
@bcm7435_cfg = internal constant %struct.pcie_cfg_data { ptr @pcie_offsets, i32 2, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, align 4
@bcm7425_cfg = internal constant %struct.pcie_cfg_data { ptr @pcie_offsets_bmips_7425, i32 1, ptr @brcm_pcie_perst_set_generic, ptr @brcm_pcie_bridge_sw_init_set_generic }, align 4
@pcie_offsets = internal constant [3 x i32] [i32 37392, i32 36864, i32 36868], align 4
@brcm_pcie_perst_set_4908.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"drivers/pci/controller/pcie-brcmstb.c\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"missing PERST# reset controller\0A\00", align 1
@pcie_offset_bcm7278 = internal constant [3 x i32] [i32 49168, i32 36864, i32 36868], align 4
@pcie_offsets_bmips_7425 = internal constant [3 x i32] [i32 32784, i32 33536, i32 33540], align 4
@.str.42 = private unnamed_addr constant [32 x i8] c"Could not stop phy for suspend\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Could not turn off regulators\0A\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"disable cancelled for wake-up device\0A\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"Could not turn on regulators\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_brcm_pcie_driver_exit, ptr @__initcall__kmod_pcie_brcmstb__317_1641_brcm_pcie_driver_init6, ptr @brcm_pcie_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcm_pcie_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_pcie_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcm_pcie_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_pcie_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_pcie_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %2, i32 noundef 104) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %132, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %132

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 16
  store ptr %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 2
  store ptr %4, ptr %14, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pcie_cfg_data, ptr %8, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.pcie_cfg_data, ptr %8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9, i32 3, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pcie_cfg_data, ptr %8, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 10
  store ptr %24, ptr %25, align 8
  %26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %27 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = ptrtoint ptr %26 to i32
  br label %132

31:                                               ; preds = %12
  %32 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  %33 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 1, i32 1
  store ptr %32, ptr %33, align 8
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %132

37:                                               ; preds = %31
  %38 = tail call i32 @of_pci_get_max_link_speed(ptr noundef %4) #10
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0)
  %40 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef null) #10
  %42 = icmp ne ptr %41, null
  %43 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 0, i32 3
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 8
  %45 = load ptr, ptr %33, align 8
  %46 = tail call i32 @clk_prepare(ptr noundef %45) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = tail call i32 @clk_enable(ptr noundef %45) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef %45) #10
  br label %52

52:                                               ; preds = %51, %37
  %53 = phi i32 [ %49, %51 ], [ %46, %37 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  br label %132

54:                                               ; preds = %48
  %55 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #10
  %56 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 3
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load ptr, ptr %33, align 8
  tail call void @clk_disable(ptr noundef %59) #10
  tail call void @clk_unprepare(ptr noundef %59) #10
  %60 = load ptr, ptr %56, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %132

62:                                               ; preds = %54
  %63 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %64 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 4
  store ptr %63, ptr %64, align 8
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load ptr, ptr %33, align 8
  tail call void @clk_disable(ptr noundef %67) #10
  tail call void @clk_unprepare(ptr noundef %67) #10
  %68 = load ptr, ptr %64, align 8
  %69 = ptrtoint ptr %68 to i32
  br label %132

70:                                               ; preds = %62
  %71 = load ptr, ptr %56, align 4
  %72 = tail call i32 @reset_control_reset(ptr noundef %71) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #11
  br label %75

75:                                               ; preds = %74, %70
  %76 = load ptr, ptr %56, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = tail call fastcc i32 @brcm_phy_cntl(ptr noundef %13, i32 noundef 1) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %56, align 4
  %83 = tail call i32 @reset_control_rearm(ptr noundef %82) #10
  %84 = load ptr, ptr %33, align 8
  tail call void @clk_disable(ptr noundef %84) #10
  tail call void @clk_unprepare(ptr noundef %84) #10
  br label %132

85:                                               ; preds = %78, %75
  %86 = tail call fastcc i32 @brcm_pcie_setup(ptr noundef %13)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %85
  %89 = load ptr, ptr %27, align 4
  %90 = getelementptr i8, ptr %89, i32 16492
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %92 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 1, i32 0, i32 9, i32 3
  store i32 %91, ptr %92, align 8
  %93 = load i32, ptr %19, align 8
  %94 = icmp eq i32 %93, 3
  %95 = icmp ugt i32 %91, 799
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %126, label %97

97:                                               ; preds = %88
  %98 = load ptr, ptr %14, align 4
  %99 = tail call fastcc ptr @of_parse_phandle(ptr noundef %98)
  %100 = tail call i32 @pci_msi_enabled() #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %14, align 4
  %104 = icmp eq ptr %99, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = tail call fastcc i32 @brcm_pcie_enable_msi(ptr noundef %13)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %105, %102, %97
  %109 = load i32, ptr %19, align 8
  %110 = icmp eq i32 %109, 1
  %111 = select i1 %110, ptr @brcm_pcie_ops32, ptr @brcm_pcie_ops
  %112 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 2
  store ptr %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 4
  store ptr %13, ptr %113, align 4
  %114 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %114, align 8
  %115 = tail call i32 @pci_host_probe(ptr noundef nonnull %5) #10
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load ptr, ptr %27, align 4
  %119 = getelementptr i8, ptr %118, i32 16488
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %121 = and i32 %120, 48
  %122 = icmp eq i32 %121, 48
  br i1 %122, label %132, label %123

123:                                              ; preds = %117, %108
  %124 = phi i32 [ -19, %117 ], [ %115, %108 ]
  %125 = tail call i32 @brcm_pcie_remove(ptr noundef %0)
  br label %132

126:                                              ; preds = %105, %88
  %127 = phi ptr [ @.str.8, %88 ], [ @.str.10, %105 ]
  %128 = phi i32 [ -19, %88 ], [ %106, %105 ]
  %129 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull %127) #11
  br label %130

130:                                              ; preds = %126, %85
  %131 = phi i32 [ %86, %85 ], [ %128, %126 ]
  tail call fastcc void @__brcm_pcie_remove(ptr noundef %13)
  br label %132

132:                                              ; preds = %130, %123, %117, %81, %66, %58, %52, %35, %29, %10, %1
  %133 = phi i32 [ %30, %29 ], [ %36, %35 ], [ %53, %52 ], [ %61, %58 ], [ %69, %66 ], [ %79, %81 ], [ %131, %130 ], [ %124, %123 ], [ -22, %10 ], [ -12, %1 ], [ 0, %117 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_pcie_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -104
  %5 = load ptr, ptr %4, align 8
  tail call void @pci_stop_root_bus(ptr noundef %5) #10
  %6 = load ptr, ptr %4, align 8
  tail call void @pci_remove_root_bus(ptr noundef %6) #10
  tail call fastcc void @__brcm_pcie_remove(ptr noundef %3)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_rearm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef %0, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %6 = load ptr, ptr %4, align 8
  tail call void %6(ptr noundef %0, i32 noundef 0) #10
  %7 = getelementptr i8, ptr %3, i32 16900
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %9 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  %13 = select i1 %12, i32 -8388609, i32 -134217729
  %14 = and i32 %13, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %14) #10, !srcloc !13
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %15 = load i32, ptr %9, align 8
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 2
  %18 = icmp eq i32 %15, 4
  %19 = select i1 %18, i32 3145728, i32 2097152
  %20 = icmp eq i32 %15, 5
  %21 = select i1 %20, i32 0, i32 %19
  %22 = select i1 %17, i32 1048576, i32 %21
  %23 = getelementptr i8, ptr %3, i32 16392
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %25 = and i32 %24, -3158017
  %26 = or i32 %22, %25
  %27 = or i32 %26, 12288
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %27) #10, !srcloc !13
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr i8, ptr %0, i32 -72
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %52, label %32

32:                                               ; preds = %32, %1
  %33 = phi ptr [ %50, %32 ], [ %30, %1 ]
  %34 = phi i64 [ %48, %32 ], [ 0, %1 ]
  %35 = phi i64 [ %49, %32 ], [ -1, %1 ]
  %36 = getelementptr inbounds %struct.resource_entry, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.resource_entry, ptr %33, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %38, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.resource, ptr %37, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 1, %38
  %46 = add i32 %45, %44
  %47 = zext i32 %46 to i64
  %48 = add i64 %34, %47
  %49 = tail call i64 @llvm.umin.i64(i64 %35, i64 %42) #10
  %50 = load ptr, ptr %33, align 4
  %51 = icmp eq ptr %50, %29
  br i1 %51, label %53, label %32

52:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15) #11
  br label %233

53:                                               ; preds = %32
  %54 = add i64 %48, -1
  %55 = trunc i64 %54 to i32
  %56 = lshr i64 %54, 32
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 13
  %61 = tail call i32 @of_property_read_variable_u64_array(ptr noundef %59, ptr noundef nonnull @.str.16, ptr noundef %60, i32 noundef 1, i32 noundef 3) #10
  %62 = icmp slt i32 %61, 1
  %63 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 12
  br i1 %62, label %64, label %78

64:                                               ; preds = %53
  store i32 1, ptr %63, align 4
  %65 = icmp eq i32 %57, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = tail call i32 @llvm.ctlz.i32(i32 %57, i1 true) #10, !range !16
  %68 = sub nuw nsw i32 64, %67
  br label %74

69:                                               ; preds = %64
  %70 = icmp eq i32 %55, 0
  %71 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 false) #10, !range !16
  %72 = sub nuw nsw i32 32, %71
  %73 = select i1 %70, i32 0, i32 %72
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %68, %66 ], [ %73, %69 ]
  %76 = zext i32 %75 to i64
  %77 = shl nuw i64 1, %76
  store i64 %77, ptr %60, align 8
  br label %79

78:                                               ; preds = %53
  store i32 %61, ptr %63, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ %61, %78 ], [ 1, %74 ]
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ %86, %81 ], [ 0, %79 ]
  %83 = phi i32 [ %87, %81 ], [ 0, %79 ]
  %84 = getelementptr %struct.brcm_pcie, ptr %0, i32 0, i32 13, i32 %83
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %85, %82
  %87 = add nuw nsw i32 %83, 1
  %88 = icmp eq i32 %87, %80
  br i1 %88, label %89, label %81

89:                                               ; preds = %81
  %90 = add i64 %86, -1
  %91 = lshr i64 %90, 32
  %92 = trunc i64 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @llvm.ctlz.i32(i32 %92, i1 true) #10, !range !16
  %96 = sub nuw nsw i32 64, %95
  br label %103

97:                                               ; preds = %89
  %98 = trunc i64 %90 to i32
  %99 = icmp eq i32 %98, 0
  %100 = tail call i32 @llvm.ctlz.i32(i32 %98, i1 false) #10, !range !16
  %101 = sub nuw nsw i32 32, %100
  %102 = select i1 %99, i32 0, i32 %101
  br label %103

103:                                              ; preds = %97, %94
  %104 = phi i32 [ %96, %94 ], [ %102, %97 ]
  %105 = zext i32 %104 to i64
  %106 = shl nuw i64 1, %105
  %107 = add nuw i64 %106, 4294967295
  %108 = and i64 %107, %49
  %109 = icmp ne i64 %108, 0
  %110 = add nsw i64 %49, -2147483649
  %111 = icmp ult i64 %110, 2147483647
  %112 = or i1 %111, %109
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.17, i64 noundef %106, i64 noundef %49) #11
  br label %233

114:                                              ; preds = %103
  %115 = trunc i64 %49 to i32
  %116 = lshr i64 %106, 32
  %117 = trunc i64 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = tail call i32 @llvm.ctlz.i32(i32 %117, i1 true) #10, !range !16
  %121 = sub nuw nsw i32 64, %120
  br label %128

122:                                              ; preds = %114
  %123 = trunc i64 %106 to i32
  %124 = icmp eq i32 %123, 0
  %125 = tail call i32 @llvm.ctlz.i32(i32 %123, i1 false) #10, !range !16
  %126 = sub nuw nsw i32 32, %125
  %127 = select i1 %124, i32 0, i32 %126
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi i32 [ %121, %119 ], [ %127, %122 ]
  %130 = add nsw i32 %129, -1
  %131 = and i32 %130, -4
  %132 = icmp eq i32 %131, 12
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = add nsw i32 %129, 15
  br label %140

135:                                              ; preds = %128
  %136 = add nsw i32 %129, -17
  %137 = icmp ult i32 %136, 20
  %138 = add nsw i32 %129, -16
  %139 = select i1 %137, i32 %138, i32 0
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %134, %133 ], [ %139, %135 ]
  %142 = and i32 %115, -32
  %143 = and i32 %141, 31
  %144 = or i32 %143, %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %145 = getelementptr i8, ptr %3, i32 16436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %144) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %146 = getelementptr i8, ptr %3, i32 16440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 0) #10, !srcloc !13
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %148 = load i32, ptr %63, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %140
  %151 = load i32, ptr %63, align 4
  br label %152

152:                                              ; preds = %185, %150
  %153 = phi i32 [ %187, %185 ], [ 0, %150 ]
  %154 = phi i32 [ %186, %185 ], [ %147, %150 ]
  %155 = getelementptr %struct.brcm_pcie, ptr %0, i32 0, i32 13, i32 %153
  %156 = load i64, ptr %155, align 8
  %157 = lshr i64 %156, 32
  %158 = trunc i64 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %152
  %161 = tail call i32 @llvm.ctlz.i32(i32 %158, i1 true) #10, !range !16
  %162 = sub nuw nsw i32 64, %161
  br label %169

163:                                              ; preds = %152
  %164 = trunc i64 %156 to i32
  %165 = icmp eq i32 %164, 0
  %166 = tail call i32 @llvm.ctlz.i32(i32 %164, i1 false) #10, !range !16
  %167 = sub nuw nsw i32 32, %166
  %168 = select i1 %165, i32 0, i32 %167
  br label %169

169:                                              ; preds = %163, %160
  %170 = phi i32 [ %162, %160 ], [ %168, %163 ]
  %171 = add nsw i32 %170, -16
  switch i32 %153, label %185 [
    i32 0, label %172
    i32 1, label %176
    i32 2, label %181
  ]

172:                                              ; preds = %169
  %173 = and i32 %154, 134217727
  %174 = shl i32 %171, 27
  %175 = or i32 %174, %173
  br label %185

176:                                              ; preds = %169
  %177 = and i32 %154, -130023425
  %178 = shl nsw i32 %171, 22
  %179 = and i32 %178, 130023424
  %180 = or i32 %179, %177
  br label %185

181:                                              ; preds = %169
  %182 = and i32 %154, -32
  %183 = and i32 %171, 31
  %184 = or i32 %183, %182
  br label %185

185:                                              ; preds = %181, %176, %172, %169
  %186 = phi i32 [ %154, %169 ], [ %184, %181 ], [ %180, %176 ], [ %175, %172 ]
  %187 = add nuw nsw i32 %153, 1
  %188 = icmp slt i32 %187, %151
  br i1 %188, label %152, label %189

189:                                              ; preds = %185, %140
  %190 = phi i32 [ %147, %140 ], [ %186, %185 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %190) #10, !srcloc !13
  %191 = add nuw i64 %106, %49
  %192 = icmp ult i64 %191, 4294967296
  %193 = select i1 %192, i64 4294967292, i64 68719476732
  %194 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 6
  store i64 %193, ptr %194, align 8
  %195 = getelementptr i8, ptr %3, i32 16428
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %197 = and i32 %196, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %197) #10, !srcloc !13
  %198 = getelementptr i8, ptr %3, i32 16444
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %200 = and i32 %199, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %200) #10, !srcloc !13
  %201 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 5
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %220, label %204

204:                                              ; preds = %189
  %205 = load ptr, ptr %2, align 4
  %206 = getelementptr i8, ptr %205, i32 220
  %207 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %206) #10, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %208 = load ptr, ptr %2, align 4
  %209 = getelementptr i8, ptr %208, i32 184
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %211 = and i32 %210, -16
  %212 = or i32 %211, %202
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %213 = load ptr, ptr %2, align 4
  %214 = getelementptr i8, ptr %213, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #10, !srcloc !13
  %215 = and i16 %207, -16
  %216 = trunc i32 %202 to i16
  %217 = or i16 %215, %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %218 = load ptr, ptr %2, align 4
  %219 = getelementptr i8, ptr %218, i32 220
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %219, i16 %217) #10, !srcloc !30
  br label %220

220:                                              ; preds = %204, %189
  %221 = load ptr, ptr %58, align 4
  %222 = tail call ptr @of_find_property(ptr noundef %221, ptr noundef nonnull @.str.14, ptr noundef null) #10
  %223 = icmp eq ptr %222, null
  %224 = select i1 %223, i32 3072, i32 2048
  %225 = getelementptr i8, ptr %3, i32 1244
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !31
  %227 = and i32 %226, -3073
  %228 = or i32 %224, %227
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !32
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %228) #10, !srcloc !13
  %229 = getelementptr i8, ptr %3, i32 1084
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !33
  %231 = and i32 %230, -16777216
  %232 = or i32 %231, 394240
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %232) #10, !srcloc !13
  br label %233

233:                                              ; preds = %220, %113, %52
  %234 = phi i32 [ 0, %220 ], [ -22, %52 ], [ -22, %113 ]
  ret i32 %234
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !35
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #10
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_enable_msi(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 1) #10
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.18) #11
  br label %73

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 72, i32 noundef 3520) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %73, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef nonnull @brcm_pcie_enable_msi.__key) #10
  store ptr %2, ptr %9, align 8
  %13 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 6
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 6
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 7
  store i32 %5, ptr %22, align 8
  %23 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 14
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, 771
  %26 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 9
  %27 = zext i1 %25 to i8
  store i8 %27, ptr %26, align 8
  %28 = select i1 %25, i32 17152, i32 17664
  %29 = select i1 %25, i32 8, i32 32
  %30 = select i1 %25, i32 24, i32 0
  %31 = getelementptr i8, ptr %14, i32 %28
  %32 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 12
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 11
  store i32 %29, ptr %33, align 8
  %34 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 10
  store i32 %30, ptr %34, align 4
  %35 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %29, i32 noundef %29, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef nonnull %9) #10
  %36 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20) #11
  br label %73

39:                                               ; preds = %11
  %40 = icmp eq ptr %17, null
  %41 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 3
  %42 = select i1 %40, ptr null, ptr %41
  %43 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %42, ptr noundef nonnull @brcm_msi_domain_info, ptr noundef nonnull %35) #10
  %44 = getelementptr inbounds %struct.brcm_msi, ptr %9, i32 0, i32 3
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.21) #11
  %47 = load ptr, ptr %36, align 8
  tail call void @irq_domain_remove(ptr noundef %47) #10
  br label %73

48:                                               ; preds = %39
  %49 = load i32, ptr %22, align 8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %49, ptr noundef nonnull @brcm_pcie_msi_isr, ptr noundef nonnull %9) #10
  %50 = load i8, ptr %26, align 8, !range !36
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i32 -1, i32 -16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %53 = load ptr, ptr %32, align 4
  %54 = getelementptr i8, ptr %53, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  tail call void @arm_heavy_mb() #10
  %55 = load ptr, ptr %32, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  %57 = load i64, ptr %21, align 8
  %58 = trunc i64 %57 to i32
  %59 = or i32 %58, 1
  %60 = load ptr, ptr %15, align 4
  %61 = getelementptr i8, ptr %60, i32 16452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  tail call void @arm_heavy_mb() #10
  %62 = load i64, ptr %21, align 8
  %63 = lshr i64 %62, 32
  %64 = trunc i64 %63 to i32
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr i8, ptr %65, i32 16456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #10, !srcloc !13
  %67 = load i8, ptr %26, align 8, !range !36
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 -2071232, i32 -498368
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  tail call void @arm_heavy_mb() #10
  %70 = load ptr, ptr %15, align 4
  %71 = getelementptr i8, ptr %70, i32 16460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #10, !srcloc !13
  %72 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 7
  store ptr %9, ptr %72, align 8
  br label %73

73:                                               ; preds = %48, %46, %38, %8, %7
  %74 = phi i32 [ -19, %7 ], [ 0, %48 ], [ -12, %8 ], [ -12, %46 ], [ -12, %38 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__brcm_pcie_remove(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcm_msi, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef null, ptr noundef null) #10
  %8 = getelementptr inbounds %struct.brcm_msi, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @irq_domain_remove(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.brcm_msi, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void @irq_domain_remove(ptr noundef %11) #10
  br label %12

12:                                               ; preds = %5, %1
  tail call fastcc void @brcm_pcie_turn_off(ptr noundef %0)
  %13 = tail call fastcc i32 @brcm_phy_stop(ptr noundef %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.37) #11
  br label %17

17:                                               ; preds = %15, %12
  %18 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @reset_control_rearm(ptr noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.38) #11
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  tail call void @clk_disable(ptr noundef %26) #10
  tail call void @clk_unprepare(ptr noundef %26) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_phy_cntl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 2, i32 0
  %5 = select i1 %3, i32 -1, i32 3
  %6 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 50944
  br label %9

9:                                                ; preds = %17, %2
  %10 = phi i32 [ 0, %2 ], [ %27, %17 ]
  %11 = phi i32 [ %4, %2 ], [ %28, %17 ]
  br i1 %3, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr [3 x i32], ptr @brcm_phy_cntl.shifts, i32 0, i32 %11
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i32 [ -1, %9 ], [ 1, %12 ]
  %19 = phi i32 [ 0, %9 ], [ %16, %12 ]
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %21 = getelementptr [3 x i32], ptr @brcm_phy_cntl.masks, i32 0, i32 %11
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = and i32 %22, %19
  %26 = or i32 %24, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %26) #10, !srcloc !13
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #10
  %27 = or i32 %22, %10
  %28 = add i32 %18, %11
  %29 = icmp eq i32 %28, %5
  br i1 %29, label %30, label %9

30:                                               ; preds = %17
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !44
  %32 = select i1 %3, i32 0, i32 %27
  %33 = and i32 %31, %27
  %34 = icmp eq i32 %33, %32
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 8
  %37 = select i1 %3, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.11, ptr noundef nonnull %37) #11
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ -5, %35 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_pcie_msi_isr(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %5 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %10(ptr noundef %13) #10
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %16(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void %19(ptr noundef %17) #10
  br label %22

22:                                               ; preds = %21, %14, %12, %1
  %23 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.brcm_msi, ptr %24, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !45
  %28 = getelementptr inbounds %struct.brcm_msi, ptr %24, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %27, %29
  store i32 %30, ptr %2, align 4
  %31 = getelementptr inbounds %struct.brcm_msi, ptr %24, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %32, i32 noundef 0) #10
  %34 = load i32, ptr %31, align 8
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.brcm_msi, ptr %24, i32 0, i32 4
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ %33, %36 ], [ %44, %38 ]
  %40 = load ptr, ptr %37, align 8
  %41 = call i32 @generic_handle_domain_irq(ptr noundef %40, i32 noundef %39) #10
  %42 = load i32, ptr %31, align 8
  %43 = add nuw i32 %39, 1
  %44 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %42, i32 noundef %43) #10
  %45 = load i32, ptr %31, align 8
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %38, label %47

47:                                               ; preds = %38, %22
  %48 = load ptr, ptr %5, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi ptr [ %52, %50 ], [ %48, %47 ]
  %55 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %54(ptr noundef %55) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_msi_set_regs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcm_msi, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 8, !range !36
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 -1, i32 -16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %6 = getelementptr inbounds %struct.brcm_msi, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  tail call void @arm_heavy_mb() #10
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %5) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  %11 = getelementptr inbounds %struct.brcm_msi, ptr %0, i32 0, i32 6
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = or i32 %13, 1
  %15 = getelementptr inbounds %struct.brcm_msi, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 16452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  tail call void @arm_heavy_mb() #10
  %18 = load i64, ptr %11, align 8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr i8, ptr %21, i32 16456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #10, !srcloc !13
  %23 = load i8, ptr %2, align 8, !range !36
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 -2071232, i32 -498368
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  tail call void @arm_heavy_mb() #10
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 16460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #10, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcm_msi, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.brcm_msi, ptr %6, i32 0, i32 8
  %9 = getelementptr inbounds %struct.brcm_msi, ptr %6, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @bitmap_find_free_region(ptr noundef %8, i32 noundef %10, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %7) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %11, ptr noundef nonnull @brcm_msi_bottom_irq_chip, ptr noundef %14, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #10
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ 0, %13 ], [ %11, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcm_msi, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.brcm_msi, ptr %6, i32 0, i32 8
  tail call void @bitmap_release_region(ptr noundef %10, i32 noundef %8, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_msi_ack_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcm_msi, ptr %3, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.brcm_msi, ptr %3, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #10, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @brcm_msi_set_affinity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #8 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @brcm_msi_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcm_msi, ptr %4, i32 0, i32 6
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %1, align 4
  %8 = load i64, ptr %5, align 8
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 25920
  %15 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_pcie_map_conf32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcm_pcie, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = and i32 %1, 248
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %2, -4
  %15 = getelementptr i8, ptr %7, i32 %14
  %16 = select i1 %13, ptr %15, ptr null
  br label %36

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 20
  %22 = shl i32 %1, 12
  %23 = and i32 %22, 1044480
  %24 = or i32 %21, %23
  %25 = and i32 %2, 4092
  %26 = or i32 %24, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %27 = getelementptr inbounds %struct.brcm_pcie, ptr %5, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %7, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %26) #10, !srcloc !13
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i32, ptr %32, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %7, i32 %34
  br label %36

36:                                               ; preds = %17, %11
  %37 = phi ptr [ %16, %11 ], [ %35, %17 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_pcie_add_bus(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %17 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24) #11
  br label %21

21:                                               ; preds = %20, %15
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 40, i32 noundef 3520) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  store i32 3, ptr %22, align 4
  %25 = getelementptr %struct.subdev_regulators, ptr %22, i32 0, i32 1, i32 0
  store ptr @.str.26, ptr %25, align 4
  %26 = getelementptr %struct.subdev_regulators, ptr %22, i32 0, i32 1, i32 1
  store ptr @.str.27, ptr %26, align 4
  %27 = getelementptr %struct.subdev_regulators, ptr %22, i32 0, i32 1, i32 2
  store ptr @.str.28, ptr %27, align 4
  store ptr %22, ptr %17, align 8
  %28 = tail call i32 @regulator_bulk_get(ptr noundef %16, i32 noundef 3, ptr noundef %25) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, ptr %22, align 4
  %32 = tail call i32 @regulator_bulk_enable(i32 noundef %31, ptr noundef %25) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25) #11
  br label %42

35:                                               ; preds = %30
  %36 = load ptr, ptr %17, align 8
  %37 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 18
  store ptr %36, ptr %37, align 8
  %38 = tail call fastcc i32 @brcm_pcie_linkup(ptr noundef %3)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 17
  store i8 1, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %35, %34, %24, %21, %11, %7, %1
  %43 = phi i32 [ 0, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %40 ], [ 0, %35 ], [ -12, %21 ], [ %28, %24 ], [ %32, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_subdev_regulators_remove_bus(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr inbounds %struct.subdev_regulators, ptr %4, i32 0, i32 1
  %17 = tail call i32 @regulator_bulk_disable(i32 noundef %15, ptr noundef %16) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.36) #11
  br label %20

20:                                               ; preds = %19, %14
  store ptr null, ptr %3, align 8
  br label %21

21:                                               ; preds = %20, %10, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_pcie_map_conf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcm_pcie, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = and i32 %1, 248
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr i8, ptr %7, i32 %2
  %15 = select i1 %13, ptr %14, ptr null
  br label %36

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.brcm_pcie, ptr %5, i32 0, i32 17
  %18 = load i8, ptr %17, align 4, !range !36
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %21 = getelementptr i8, ptr %7, i32 16440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #10, !srcloc !13
  %22 = and i32 %2, 3
  %23 = getelementptr i8, ptr %21, i32 %22
  br label %36

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 20
  %29 = shl i32 %1, 12
  %30 = and i32 %29, 1044480
  %31 = or i32 %28, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 36864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !13
  %34 = getelementptr i8, ptr %7, i32 32768
  %35 = getelementptr i8, ptr %34, i32 %2
  br label %36

36:                                               ; preds = %24, %20, %11
  %37 = phi ptr [ %15, %11 ], [ %23, %20 ], [ %35, %24 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_pcie_linkup(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i32 noundef 0) #10
  br label %7

7:                                                ; preds = %14, %1
  %8 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 16488
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %12 = and i32 %11, 48
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @msleep(i32 noundef 5) #10
  %15 = add nuw nsw i32 %8, 5
  %16 = icmp ult i32 %8, 95
  br i1 %16, label %7, label %17

17:                                               ; preds = %14, %7
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 16488
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %21 = and i32 %20, 48
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29) #11
  br label %198

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 16488
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !50
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.30) #11
  br label %198

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %0, i32 -80
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %103, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 9
  br label %37

37:                                               ; preds = %99, %35
  %38 = phi ptr [ %33, %35 ], [ %101, %99 ]
  %39 = phi i32 [ 0, %35 ], [ %100, %99 ]
  %40 = getelementptr inbounds %struct.resource_entry, ptr %38, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 7936
  %45 = icmp eq i32 %44, 512
  br i1 %45, label %46, label %99

46:                                               ; preds = %37
  %47 = icmp sgt i32 %39, 3
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.31) #11
  br label %198

50:                                               ; preds = %46
  %51 = load i32, ptr %36, align 8
  %52 = add i32 %51, -1
  %53 = icmp ult i32 %52, 2
  %54 = load i32, ptr %41, align 4
  br i1 %53, label %55, label %87

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 1, %54
  %59 = add i32 %58, %57
  %60 = lshr i32 %59, 27
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 4)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %103, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.resource_entry, ptr %38, i32 0, i32 2
  %65 = zext i32 %54 to i64
  %66 = load i32, ptr %64, align 4
  %67 = zext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %0, i32 noundef 0, i64 noundef %65, i64 noundef %68, i64 noundef 134217728)
  %69 = icmp eq i32 %61, 1
  br i1 %69, label %103, label %70

70:                                               ; preds = %63
  %71 = add nuw nsw i64 %65, 134217728
  %72 = load i32, ptr %64, align 4
  %73 = zext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %0, i32 noundef 1, i64 noundef %71, i64 noundef %74, i64 noundef 134217728)
  %75 = icmp eq i32 %61, 2
  br i1 %75, label %103, label %76

76:                                               ; preds = %70
  %77 = add nuw nsw i64 %65, 268435456
  %78 = load i32, ptr %64, align 4
  %79 = zext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %0, i32 noundef 2, i64 noundef %77, i64 noundef %80, i64 noundef 134217728)
  %81 = icmp eq i32 %61, 3
  br i1 %81, label %103, label %82

82:                                               ; preds = %76
  %83 = add nuw nsw i64 %65, 402653184
  %84 = load i32, ptr %64, align 4
  %85 = zext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %0, i32 noundef 3, i64 noundef %83, i64 noundef %86, i64 noundef 134217728)
  br label %103

87:                                               ; preds = %50
  %88 = zext i32 %54 to i64
  %89 = getelementptr inbounds %struct.resource_entry, ptr %38, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = sub i32 %54, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 1, %54
  %96 = add i32 %95, %94
  %97 = zext i32 %96 to i64
  tail call fastcc void @brcm_pcie_set_outbound_win(ptr noundef %0, i32 noundef %39, i64 noundef %88, i64 noundef %92, i64 noundef %97)
  %98 = add nsw i32 %39, 1
  br label %99

99:                                               ; preds = %87, %37
  %100 = phi i32 [ %39, %37 ], [ %98, %87 ]
  %101 = load ptr, ptr %38, align 4
  %102 = icmp eq ptr %101, %32
  br i1 %102, label %103, label %37

103:                                              ; preds = %99, %82, %76, %70, %63, %55, %31
  %104 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 4
  %105 = load i8, ptr %104, align 8, !range !36
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %179, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %109 = getelementptr i8, ptr %108, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 31) #10, !srcloc !13
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !52
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %111 = getelementptr i8, ptr %108, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 -2147479296) #10, !srcloc !13
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !54
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %114, %107
  %115 = phi i32 [ %118, %114 ], [ 0, %107 ]
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 2147480) #10
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !55
  %118 = add nuw nsw i32 %115, 1
  %119 = icmp slt i32 %117, 0
  %120 = icmp ult i32 %115, 9
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %114, label %122

122:                                              ; preds = %114
  br i1 %119, label %178, label %123

123:                                              ; preds = %122, %107
  %124 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %125 = getelementptr i8, ptr %124, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 1048578) #10, !srcloc !13
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %127 = getelementptr i8, ptr %124, i32 4360
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !58
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %130, label %139

130:                                              ; preds = %130, %123
  %131 = phi i32 [ %134, %130 ], [ 0, %123 ]
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 2147480) #10
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %134 = add nuw nsw i32 %131, 1
  %135 = icmp sgt i32 %133, -1
  %136 = icmp ult i32 %131, 9
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %130, label %138

138:                                              ; preds = %130
  br i1 %135, label %178, label %139

139:                                              ; preds = %138, %123
  %140 = phi i32 [ %133, %138 ], [ %128, %123 ]
  %141 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %142 = getelementptr i8, ptr %141, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 2) #10, !srcloc !13
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !52
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %144 = and i32 %140, 16383
  %145 = or i32 %144, -2147434496
  %146 = getelementptr i8, ptr %141, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %145) #10, !srcloc !13
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !54
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %149, %139
  %150 = phi i32 [ %153, %149 ], [ 0, %139 ]
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 2147480) #10
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !55
  %153 = add nuw nsw i32 %150, 1
  %154 = icmp slt i32 %152, 0
  %155 = icmp ult i32 %150, 9
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %149, label %157

157:                                              ; preds = %149
  br i1 %154, label %178, label %158

158:                                              ; preds = %157, %139
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %159 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %160 = getelementptr i8, ptr %159, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 1048577) #10, !srcloc !13
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %162 = getelementptr i8, ptr %159, i32 4360
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !58
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %165, label %174

165:                                              ; preds = %165, %158
  %166 = phi i32 [ %169, %165 ], [ 0, %158 ]
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 2147480) #10
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %169 = add nuw nsw i32 %166, 1
  %170 = icmp sgt i32 %168, -1
  %171 = icmp ult i32 %166, 9
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %165, label %173

173:                                              ; preds = %165
  br i1 %170, label %178, label %174

174:                                              ; preds = %173, %158
  %175 = phi i32 [ %168, %173 ], [ %163, %158 ]
  %176 = and i32 %175, 3072
  %177 = icmp eq i32 %176, 3072
  br i1 %177, label %179, label %178

178:                                              ; preds = %174, %173, %157, %138, %122
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.32) #11
  br label %179

179:                                              ; preds = %178, %174, %103
  %180 = phi ptr [ @.str.35, %178 ], [ @.str.35, %103 ], [ @.str.34, %174 ]
  %181 = getelementptr i8, ptr %4, i32 190
  %182 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %181) #10, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !60
  %183 = and i16 %182, 15
  %184 = lshr i16 %182, 4
  %185 = and i16 %184, 63
  %186 = zext i16 %183 to i32
  %187 = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %186
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = tail call ptr @pci_speed_string(i32 noundef %189) #10
  %191 = zext i16 %185 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %190, i32 noundef %191, ptr noundef nonnull %180) #11
  %192 = getelementptr i8, ptr %4, i32 392
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !61
  %194 = and i32 %193, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !62
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %194) #10, !srcloc !13
  %195 = getelementptr i8, ptr %4, i32 16900
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !63
  %197 = or i32 %196, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !64
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %197) #10, !srcloc !13
  br label %198

198:                                              ; preds = %179, %48, %30, %23
  %199 = phi i32 [ -22, %48 ], [ 0, %179 ], [ -22, %30 ], [ -19, %23 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_pcie_set_outbound_win(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !65
  tail call void @arm_heavy_mb() #10
  %6 = trunc i64 %3 to i32
  %7 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16396
  %10 = shl i32 %1, 3
  %11 = getelementptr i8, ptr %9, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %6) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !66
  tail call void @arm_heavy_mb() #10
  %12 = lshr i64 %3, 32
  %13 = trunc i64 %12 to i32
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 16400
  %16 = getelementptr i8, ptr %15, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #10, !srcloc !13
  %17 = lshr i64 %2, 20
  %18 = add i64 %2, 4503599627370495
  %19 = add i64 %18, %4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 16496
  %22 = shl i32 %1, 2
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !67
  %25 = shl nuw nsw i64 %17, 4
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65520
  %28 = and i32 %24, 983055
  %29 = trunc i64 %19 to i32
  %30 = and i32 %29, -1048576
  %31 = or i32 %30, %27
  %32 = or i32 %31, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !68
  tail call void @arm_heavy_mb() #10
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr i8, ptr %33, i32 16496
  %35 = getelementptr i8, ptr %34, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #10, !srcloc !13
  %36 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, -1
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %65, label %40

40:                                               ; preds = %5
  %41 = trunc i64 %17 to i32
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 16512
  %44 = getelementptr i8, ptr %43, i32 %10
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !69
  %46 = lshr i32 %41, 12
  %47 = and i32 %45, -256
  %48 = and i32 %46, 255
  %49 = or i32 %47, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr i8, ptr %50, i32 16512
  %52 = getelementptr i8, ptr %51, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #10, !srcloc !13
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr i8, ptr %53, i32 16516
  %55 = getelementptr i8, ptr %54, i32 %10
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !71
  %57 = lshr i64 %19, 32
  %58 = trunc i64 %57 to i32
  %59 = and i32 %56, -256
  %60 = and i32 %58, 255
  %61 = or i32 %59, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 16516
  %64 = getelementptr i8, ptr %63, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #10, !srcloc !13
  br label %65

65:                                               ; preds = %40, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_pcie_turn_off(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16488
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %6 = and i32 %5, 48
  %7 = icmp eq i32 %6, 48
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 16484
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !73
  %12 = or i32 %11, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !74
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #10, !srcloc !13
  %13 = getelementptr i8, ptr %9, i32 16488
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !75
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %17, %8
  %18 = phi i32 [ %20, %17 ], [ 0, %8 ]
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2400, i32 noundef 2) #10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !76
  %20 = add nuw nsw i32 %18, 1
  %21 = icmp ult i32 %18, 14
  %22 = and i32 %19, 64
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %17, label %25

25:                                               ; preds = %17
  br i1 %23, label %26, label %28

26:                                               ; preds = %25
  %27 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.39) #11
  br label %28

28:                                               ; preds = %26, %25, %8, %1
  %29 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %0, i32 noundef 1) #10
  %31 = getelementptr i8, ptr %3, i32 16484
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !77
  %33 = and i32 %32, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !78
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %33) #10, !srcloc !13
  %34 = getelementptr i8, ptr %3, i32 16900
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !79
  %36 = or i32 %35, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !80
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #10, !srcloc !13
  %37 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef %0, i32 noundef 1) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_phy_stop(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 50944
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %10 = and i32 %9, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #10, !srcloc !13
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %12 = and i32 %11, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #10, !srcloc !13
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %14 = and i32 %13, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %14) #10, !srcloc !13
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !44
  %16 = and i32 %15, 7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #11
  br label %20

20:                                               ; preds = %18, %5, %1
  %21 = phi i32 [ 0, %1 ], [ -5, %18 ], [ 0, %5 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_pcie_perst_set_generic(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !81
  %10 = and i32 %9, -2
  %11 = and i32 %1, 1
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr %3, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #10, !srcloc !13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_pcie_bridge_sw_init_set_generic(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !83
  %10 = and i32 %9, -3
  %11 = shl i32 %1, 1
  %12 = and i32 %11, 2
  %13 = or i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !84
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %3, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #10, !srcloc !13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_pcie_perst_set_4908(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @brcm_pcie_perst_set_4908.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !85

9:                                                ; preds = %2
  store i1 true, ptr @brcm_pcie_perst_set_4908.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 933, i32 noundef 9, ptr noundef nonnull @.str.41) #10
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %18, label %11

11:                                               ; preds = %10
  %12 = icmp eq i32 %1, 0
  %13 = load ptr, ptr %3, align 8
  br i1 %12, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @reset_control_assert(ptr noundef %13) #10
  br label %18

16:                                               ; preds = %11
  %17 = tail call i32 @reset_control_deassert(ptr noundef %13) #10
  br label %18

18:                                               ; preds = %16, %14, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_pcie_perst_set_7278(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16484
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !86
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -5
  %9 = select i1 %7, i32 4, i32 0
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 16484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #10, !srcloc !13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_pcie_bridge_sw_init_set_7278(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcm_pcie, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !88
  %10 = and i32 %9, -2
  %11 = and i32 %1, 1
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr %3, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_pcie_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @brcm_pcie_turn_off(ptr noundef %3)
  %4 = tail call fastcc i32 @brcm_phy_stop(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_rearm(ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  br label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 18
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 19
  store i8 0, ptr %18, align 4
  %19 = getelementptr i8, ptr %3, i32 -104
  %20 = load ptr, ptr %19, align 8
  tail call void @pci_walk_bus(ptr noundef %20, ptr noundef nonnull @pci_dev_may_wakeup, ptr noundef %18) #10
  %21 = load i8, ptr %18, align 4, !range !36
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load ptr, ptr %14, align 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.subdev_regulators, ptr %24, i32 0, i32 1
  %27 = tail call i32 @regulator_bulk_disable(i32 noundef %25, ptr noundef %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.43) #11
  %30 = load ptr, ptr %8, align 4
  %31 = tail call i32 @reset_control_reset(ptr noundef %30) #10
  br label %35

32:                                               ; preds = %23, %17, %13
  %33 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  tail call void @clk_disable(ptr noundef %34) #10
  tail call void @clk_unprepare(ptr noundef %34) #10
  br label %35

35:                                               ; preds = %32, %29, %12
  %36 = phi i32 [ %10, %12 ], [ 0, %32 ], [ %27, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_pcie_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %72

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 18
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 19
  %20 = load i8, ptr %19, align 4, !range !36
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i8 0, ptr %19, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load i32, ptr %16, align 4
  %25 = getelementptr inbounds %struct.subdev_regulators, ptr %16, i32 0, i32 1
  %26 = tail call i32 @regulator_bulk_enable(i32 noundef %24, ptr noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  br label %69

29:                                               ; preds = %23, %22, %14
  %30 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @reset_control_reset(ptr noundef %31) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load ptr, ptr %30, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @brcm_phy_cntl(ptr noundef %3, i32 noundef 1) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 16
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef %3, i32 noundef 0) #10
  %43 = getelementptr i8, ptr %5, i32 16900
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !90
  %45 = and i32 %44, -134217729
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %45) #10, !srcloc !13
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 21474800) #10
  %47 = tail call fastcc i32 @brcm_pcie_setup(ptr noundef %3)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = tail call fastcc i32 @brcm_pcie_linkup(ptr noundef %3)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.brcm_pcie, ptr %3, i32 0, i32 7
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  tail call fastcc void @brcm_msi_set_regs(ptr noundef nonnull %54)
  br label %72

57:                                               ; preds = %49, %40, %37
  %58 = phi i32 [ %38, %37 ], [ %47, %40 ], [ %50, %49 ]
  %59 = load ptr, ptr %30, align 4
  %60 = tail call i32 @reset_control_rearm(ptr noundef %59) #10
  br label %61

61:                                               ; preds = %57, %29
  %62 = phi i32 [ %32, %29 ], [ %58, %57 ]
  %63 = load ptr, ptr %15, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %63, align 4
  %67 = getelementptr inbounds %struct.subdev_regulators, ptr %63, i32 0, i32 1
  %68 = tail call i32 @regulator_bulk_disable(i32 noundef %66, ptr noundef %67) #10
  br label %69

69:                                               ; preds = %65, %61, %28
  %70 = phi i32 [ %62, %65 ], [ %62, %61 ], [ %26, %28 ]
  %71 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %71) #10
  tail call void @clk_unprepare(ptr noundef %71) #10
  br label %72

72:                                               ; preds = %69, %56, %52, %13, %1
  %73 = phi i32 [ %70, %69 ], [ 0, %56 ], [ 0, %52 ], [ %11, %13 ], [ %8, %1 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_dev_may_wakeup(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i8 1, ptr %1, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.44) #11
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = load i8, ptr %1, align 1, !range !36
  %15 = zext i8 %14 to i32
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 3163311}
!9 = !{i64 2154390177}
!10 = !{i64 2154265853}
!11 = !{i64 2154309459}
!12 = !{i64 2154309669}
!13 = !{i64 3162893}
!14 = !{i64 2154310123}
!15 = !{i64 2154310334}
!16 = !{i32 0, i32 33}
!17 = !{i64 2154310693}
!18 = !{i64 2154311086}
!19 = !{i64 2154311616}
!20 = !{i64 2154312362}
!21 = !{i64 2154313018}
!22 = !{i64 2154313211}
!23 = !{i64 2154313665}
!24 = !{i64 2154313858}
!25 = !{i64 3162473}
!26 = !{i64 2154236469}
!27 = !{i64 2154236842}
!28 = !{i64 2154237062}
!29 = !{i64 2154237416}
!30 = !{i64 3162273}
!31 = !{i64 2154314476}
!32 = !{i64 2154314670}
!33 = !{i64 2154315124}
!34 = !{i64 2154315321}
!35 = !{!"auto-init"}
!36 = !{i8 0, i8 2}
!37 = !{i64 2154247814}
!38 = !{i64 2154248139}
!39 = !{i64 2154248552}
!40 = !{i64 2154249049}
!41 = !{i64 2154249474}
!42 = !{i64 2154380147}
!43 = !{i64 2154380335}
!44 = !{i64 2154380789}
!45 = !{i64 2154243639}
!46 = !{i64 2154244770}
!47 = !{i64 2154298306}
!48 = !{i64 2154296965}
!49 = !{i64 2154297579}
!50 = !{i64 2154252099}
!51 = !{i64 2154203552}
!52 = !{i64 2154204084}
!53 = !{i64 2154204299}
!54 = !{i64 2154204785}
!55 = !{i64 2154205710}
!56 = !{i64 2154187482}
!57 = !{i64 2154188014}
!58 = !{i64 2154188343}
!59 = !{i64 2154189268}
!60 = !{i64 2154321679}
!61 = !{i64 2154349959}
!62 = !{i64 2154350155}
!63 = !{i64 2154350609}
!64 = !{i64 2154350801}
!65 = !{i64 2154237891}
!66 = !{i64 2154238433}
!67 = !{i64 2154239122}
!68 = !{i64 2154239409}
!69 = !{i64 2154242003}
!70 = !{i64 2154242274}
!71 = !{i64 2154242873}
!72 = !{i64 2154243145}
!73 = !{i64 2154351255}
!74 = !{i64 2154351447}
!75 = !{i64 2154351901}
!76 = !{i64 2154365637}
!77 = !{i64 2154382022}
!78 = !{i64 2154382214}
!79 = !{i64 2154382668}
!80 = !{i64 2154382867}
!81 = !{i64 2154303435}
!82 = !{i64 2154303698}
!83 = !{i64 2154299151}
!84 = !{i64 2154299410}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2154302463}
!87 = !{i64 2154302661}
!88 = !{i64 2154300223}
!89 = !{i64 2154300482}
!90 = !{i64 2154386252}
!91 = !{i64 2154386451}
