; ModuleID = '/llk/IR/drivers/usb/host/xhci-tegra.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_xusb_soc = type { ptr, ptr, i32, ptr, i32, ptr, %struct.anon.1, %struct.tegra_xusb_mbox_regs, i8, i8, i8, i8 }
%struct.anon.1 = type { %struct.anon.2, %struct.anon.2, %struct.anon.2, %struct.anon.2 }
%struct.anon.2 = type { i32, i32 }
%struct.tegra_xusb_mbox_regs = type { i16, i16, i16, i16 }
%struct.tegra_xusb_phy_type = type { ptr, i32 }
%struct.tegra_xusb_context_soc = type { %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_xusb = type { ptr, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, ptr, i32, i32, i32, i8, %struct.notifier_block, %struct.work_struct, %struct.anon.76, i8, %struct.tegra_xusb_context }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.76 = type { i32, ptr, i32 }
%struct.tegra_xusb_context = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.tegra_xusb_fw_header = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, i32, [2 x i32], i32, [8 x i8], i32, i8, [139 x i8] }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.tegra_xusb_mbox_msg = type { i32, i32 }

@__UNIQUE_ID_firmware255 = internal constant [34 x i8] c"firmware=nvidia/tegra124/xusb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [34 x i8] c"firmware=nvidia/tegra210/xusb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [34 x i8] c"firmware=nvidia/tegra186/xusb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [34 x i8] c"firmware=nvidia/tegra194/xusb.bin\00", section ".modinfo", align 1
@tegra_xusb_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-xusb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_soc }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author259 = internal constant [49 x i8] c"author=Andrew Bresticker <abrestic@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [58 x i8] c"description=NVIDIA Tegra XUSB xHCI host-controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@tegra124_soc = internal constant %struct.tegra_xusb_soc { ptr @.str, ptr @tegra124_supply_names, i32 4, ptr @tegra124_phy_types, i32 3, ptr @tegra124_xusb_context, %struct.anon.1 { %struct.anon.2 { i32 4, i32 4 }, %struct.anon.2 zeroinitializer, %struct.anon.2 { i32 6, i32 2 }, %struct.anon.2 { i32 0, i32 2 } }, %struct.tegra_xusb_mbox_regs { i16 228, i16 232, i16 236, i16 240 }, i8 1, i8 1, i8 0, i8 0 }, align 4
@tegra210_soc = internal constant %struct.tegra_xusb_soc { ptr @.str.8, ptr @tegra210_supply_names, i32 3, ptr @tegra210_phy_types, i32 3, ptr @tegra124_xusb_context, %struct.anon.1 { %struct.anon.2 { i32 4, i32 4 }, %struct.anon.2 zeroinitializer, %struct.anon.2 { i32 8, i32 1 }, %struct.anon.2 { i32 0, i32 4 } }, %struct.tegra_xusb_mbox_regs { i16 228, i16 232, i16 236, i16 240 }, i8 0, i8 1, i8 0, i8 1 }, align 4
@tegra186_soc = internal constant %struct.tegra_xusb_soc { ptr @.str.10, ptr @tegra186_supply_names, i32 0, ptr @tegra186_phy_types, i32 3, ptr @tegra186_xusb_context, %struct.anon.1 { %struct.anon.2 { i32 3, i32 3 }, %struct.anon.2 zeroinitializer, %struct.anon.2 { i32 6, i32 1 }, %struct.anon.2 { i32 0, i32 3 } }, %struct.tegra_xusb_mbox_regs { i16 228, i16 232, i16 236, i16 240 }, i8 0, i8 0, i8 1, i8 0 }, align 4
@tegra194_soc = internal constant %struct.tegra_xusb_soc { ptr @.str.11, ptr @tegra194_supply_names, i32 0, ptr @tegra194_phy_types, i32 2, ptr @tegra186_xusb_context, %struct.anon.1 { %struct.anon.2 { i32 4, i32 4 }, %struct.anon.2 zeroinitializer, %struct.anon.2 zeroinitializer, %struct.anon.2 { i32 0, i32 4 } }, %struct.tegra_xusb_mbox_regs { i16 104, i16 108, i16 112, i16 116 }, i8 0, i8 0, i8 1, i8 0 }, align 4
@.str = private unnamed_addr constant [25 x i8] c"nvidia/tegra124/xusb.bin\00", align 1
@tegra124_supply_names = internal constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4
@tegra124_phy_types = internal constant [3 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.5, i32 2 }, %struct.tegra_xusb_phy_type { ptr @.str.6, i32 3 }, %struct.tegra_xusb_phy_type { ptr @.str.7, i32 2 }], align 4
@tegra124_xusb_context = internal constant %struct.tegra_xusb_context_soc { %struct.anon { ptr @tegra124_xusb_context_ipfs, i32 11 }, %struct.anon.0 { ptr @tegra124_xusb_context_fpci, i32 8 } }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"avddio-pex\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dvddio-pex\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"avdd-usb\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hvdd-usb-ss\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@tegra124_xusb_context_ipfs = internal constant [11 x i32] [i32 192, i32 196, i32 200, i32 256, i32 320, i32 388, i32 392, i32 408, i32 412, i32 444, i32 476], align 4
@tegra124_xusb_context_fpci = internal constant [8 x i32] [i32 1144, i32 1148, i32 1152, i32 1156, i32 1084, i32 248, i32 96, i32 64], align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"nvidia/tegra210/xusb.bin\00", align 1
@tegra210_supply_names = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.9, ptr @.str.3], align 4
@tegra210_phy_types = internal constant [3 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.5, i32 4 }, %struct.tegra_xusb_phy_type { ptr @.str.6, i32 4 }, %struct.tegra_xusb_phy_type { ptr @.str.7, i32 1 }], align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"hvddio-pex\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"nvidia/tegra186/xusb.bin\00", align 1
@tegra186_supply_names = internal constant [0 x ptr] zeroinitializer, align 4
@tegra186_phy_types = internal constant [3 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.5, i32 3 }, %struct.tegra_xusb_phy_type { ptr @.str.6, i32 3 }, %struct.tegra_xusb_phy_type { ptr @.str.7, i32 1 }], align 4
@tegra186_xusb_context = internal constant %struct.tegra_xusb_context_soc { %struct.anon zeroinitializer, %struct.anon.0 { ptr @tegra124_xusb_context_fpci, i32 8 } }, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"nvidia/tegra194/xusb.bin\00", align 1
@tegra194_supply_names = internal constant [0 x ptr] zeroinitializer, align 4
@tegra194_phy_types = internal constant [2 x %struct.tegra_xusb_phy_type] [%struct.tegra_xusb_phy_type { ptr @.str.5, i32 4 }, %struct.tegra_xusb_phy_type { ptr @.str.6, i32 4 }], align 4
@tegra_xhci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@tegra_xhci_overrides = internal constant %struct.xhci_driver_overrides { i32 0, ptr @tegra_xhci_setup, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@tegra_xusb_driver = internal global %struct.platform_driver { ptr @tegra_xusb_probe, ptr @tegra_xusb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_xusb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.12 = private unnamed_addr constant [11 x i8] c"tegra-xusb\00", align 1
@tegra_xusb_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_xusb_suspend, ptr @tegra_xusb_resume, ptr @tegra_xusb_suspend, ptr @tegra_xusb_resume, ptr @tegra_xusb_suspend, ptr @tegra_xusb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_runtime_suspend, ptr @tegra_xusb_runtime_resume, ptr null }, align 4
@tegra_xusb_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"&tegra->lock\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"nvidia,xusb-padctl\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"xusb_host\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"failed to get xusb_host: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"xusb_falcon_src\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"failed to get xusb_falcon_src: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"xusb_ss\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"failed to get xusb_ss: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"xusb_ss_src\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"failed to get xusb_ss_src: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"xusb_hs_src\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"failed to get xusb_hs_src: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"xusb_fs_src\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"failed to get xusb_fs_src: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"pll_u_480m\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"failed to get pll_u_480m: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"failed to get clk_m: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"failed to get pll_e: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"failed to get xusb_host reset: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"failed to get xusb_ss reset: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"failed to get PHY %s: %ld\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"failed to enable clocks: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"failed to enable PHYs: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"failed to request firmware: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"failed to load firmware: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"failed to add USB HCD: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"failed to create shared HCD\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"failed to add shared HCD: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"failed to request padctl IRQ: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"failed to enable messages: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"failed to init USB PHY: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"failed to get host pm-domain: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"failed to get superspeed pm-domain: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Invalid SS rate: %lu Hz\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"SS clock doesn't match requested rate\0A\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"failed to allocate memory for firmware\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"failed to enable XUSB SS partition\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"failed to enable XUSB Host partition\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Firmware already loaded, Falcon state %#x\0A\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"DMA controller not ready %#010x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.61 = private unnamed_addr constant [34 x i8] c"XHCI controller not read: %#010x\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Firmware timestamp: %ptTs UTC\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"controller firmware hang\0A\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"failed to save context for USB3#%u: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"failed to set HSIC#%u %s: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.68 = private unnamed_addr constant [44 x i8] c"failed to %s LFPS detection on USB3#%u: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"unknown message: %#x\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"failed to send %s: %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"mailbox is busy\0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"failed to acquire mailbox\0A\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"failed to RESET_SSPI %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"failed to %s %s PP %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.83 = private unnamed_addr constant [39 x i8] c"failed to disable XUSB Host partition\0A\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"failed to disable XUSB SS partition\0A\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"failed to enable padctl wakes\0A\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"failed to resume XHCI: %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"not all ports suspended: %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"failed to suspend XHCI: %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"%u-%u isn't suspended: %#010x\0A\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"failed to disable padctl wakes\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_license261], section "llvm.metadata"

@__mod_of__tegra_xusb_of_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @tegra_xusb_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  tail call void @xhci_init_driver(ptr noundef nonnull @tegra_xhci_hc_driver, ptr noundef nonnull @tegra_xhci_overrides) #12
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_xusb_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_xusb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xhci_setup(ptr noundef %0) #2 {
  %2 = tail call i32 @xhci_gen_setup(ptr noundef %0, ptr noundef nonnull @tegra_xhci_quirks) #12
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tegra_xhci_quirks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, 65536
  store i64 %7, ptr %5, align 8
  %8 = icmp eq ptr %4, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_xusb, ptr %4, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %11, i32 0, i32 10
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = or i64 %6, 67584
  store i64 %16, ptr %5, align 8
  br label %17

17:                                               ; preds = %15, %9, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca ptr, align 4
  %4 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 200, i32 noundef 3520) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %468, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %5) #12
  %10 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 9
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef nonnull @tegra_xusb_probe.__key) #12
  store ptr %5, ptr %6, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #12
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %19, label %21, !prof !10

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 37
  store ptr null, ptr %20, align 4
  br label %468

21:                                               ; preds = %8
  %22 = extractvalue { i32, i1 } %17, 0
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %22, i32 noundef 3520) #12
  %24 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 37
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %468, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %14, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #12
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %31, label %33, !prof !10

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 37, i32 1
  store ptr null, ptr %32, align 4
  br label %468

33:                                               ; preds = %26
  %34 = load ptr, ptr %6, align 4
  %35 = extractvalue { i32, i1 } %29, 0
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #12
  %37 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 37, i32 1
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %468, label %39

39:                                               ; preds = %33
  %40 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #12
  %41 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %468

45:                                               ; preds = %39
  %46 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #12
  %47 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 8
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  br label %468

51:                                               ; preds = %45
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %52, i32 0, i32 9
  %54 = load i8, ptr %53, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 2) #12
  %58 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 7
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = ptrtoint ptr %57 to i32
  br label %468

62:                                               ; preds = %56, %51
  %63 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %64 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 4
  store i32 %63, ptr %64, align 4
  %65 = icmp slt i32 %63, 0
  br i1 %65, label %468, label %66

66:                                               ; preds = %62
  %67 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #12
  %68 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  %69 = icmp slt i32 %67, 0
  br i1 %69, label %468, label %70

70:                                               ; preds = %66
  %71 = call ptr @tegra_xusb_padctl_get(ptr noundef %5) #12
  %72 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 11
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = ptrtoint ptr %71 to i32
  br label %468

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %78 = load ptr, ptr %77, align 8
  %79 = call fastcc ptr @of_parse_phandle(ptr noundef %78)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %465, label %81

81:                                               ; preds = %76
  %82 = call i32 @of_irq_parse_one(ptr noundef nonnull %79, i32 noundef 0, ptr noundef nonnull %2) #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = call i32 @of_irq_get(ptr noundef nonnull %79, i32 noundef 0) #12
  %86 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 6
  store i32 %85, ptr %86, align 4
  %87 = icmp slt i32 %85, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = icmp eq i32 %85, 0
  %90 = select i1 %89, i32 -19, i32 %85
  br label %465

91:                                               ; preds = %84, %81
  %92 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.15) #12
  %93 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 12
  store ptr %92, ptr %93, align 4
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = ptrtoint ptr %92 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %96) #13
  br label %465

97:                                               ; preds = %91
  %98 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.17) #12
  %99 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 13
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = ptrtoint ptr %98 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %102) #13
  br label %465

103:                                              ; preds = %97
  %104 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.19) #12
  %105 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 14
  store ptr %104, ptr %105, align 4
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = ptrtoint ptr %104 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %108) #13
  br label %465

109:                                              ; preds = %103
  %110 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.21) #12
  %111 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 15
  store ptr %110, ptr %111, align 4
  %112 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = ptrtoint ptr %110 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %114) #13
  br label %465

115:                                              ; preds = %109
  %116 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.23) #12
  %117 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 16
  store ptr %116, ptr %117, align 4
  %118 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = ptrtoint ptr %116 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %120) #13
  br label %465

121:                                              ; preds = %115
  %122 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.25) #12
  %123 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 17
  store ptr %122, ptr %123, align 4
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = ptrtoint ptr %122 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %126) #13
  br label %465

127:                                              ; preds = %121
  %128 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.27) #12
  %129 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 18
  store ptr %128, ptr %129, align 4
  %130 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = ptrtoint ptr %128 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %132) #13
  br label %465

133:                                              ; preds = %127
  %134 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.29) #12
  %135 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 19
  store ptr %134, ptr %135, align 4
  %136 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = ptrtoint ptr %134 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef %138) #13
  br label %465

139:                                              ; preds = %133
  %140 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.31) #12
  %141 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 20
  store ptr %140, ptr %141, align 4
  %142 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = ptrtoint ptr %140 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %144) #13
  br label %465

145:                                              ; preds = %139
  %146 = load ptr, ptr %77, align 8
  %147 = call ptr @of_find_property(ptr noundef %146, ptr noundef nonnull @.str.33, ptr noundef null) #12
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %151 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 21
  store ptr %150, ptr %151, align 4
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = ptrtoint ptr %150 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34, i32 noundef %154) #13
  br label %465

155:                                              ; preds = %149
  %156 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %157 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 22
  store ptr %156, ptr %157, align 4
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = ptrtoint ptr %156 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, i32 noundef %160) #13
  br label %465

161:                                              ; preds = %145
  %162 = call fastcc i32 @tegra_xusb_powerdomain_init(ptr noundef %5, ptr noundef nonnull %6)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %463

164:                                              ; preds = %161, %155
  %165 = load ptr, ptr %10, align 4
  %166 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %167, i32 12) #12
  %169 = extractvalue { i32, i1 } %168, 1
  br i1 %169, label %170, label %172, !prof !10

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 10
  store ptr null, ptr %171, align 4
  br label %463

172:                                              ; preds = %164
  %173 = extractvalue { i32, i1 } %168, 0
  %174 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %173, i32 noundef 3520) #12
  %175 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 10
  store ptr %174, ptr %175, align 4
  %176 = icmp eq ptr %174, null
  br i1 %176, label %463, label %177

177:                                              ; preds = %172
  %178 = load ptr, ptr %10, align 4
  %179 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %178, i32 0, i32 2
  %182 = load i32, ptr %181, align 4
  call void @regulator_bulk_set_supply_names(ptr noundef nonnull %174, ptr noundef %180, i32 noundef %182) #12
  %183 = load ptr, ptr %10, align 4
  %184 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %183, i32 0, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = load ptr, ptr %175, align 4
  %187 = call i32 @devm_regulator_bulk_get(ptr noundef %5, i32 noundef %185, ptr noundef %186) #12
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %177
  %190 = load ptr, ptr %10, align 4
  %191 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %190, i32 0, i32 4
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 27
  %196 = load i32, ptr %195, align 4
  br label %222

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 29
  %199 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 27
  %200 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %190, i32 0, i32 3
  br label %202

201:                                              ; preds = %177
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef %187) #13
  br label %463

202:                                              ; preds = %213, %197
  %203 = phi i32 [ 0, %197 ], [ %219, %213 ]
  %204 = load ptr, ptr %200, align 4
  %205 = getelementptr %struct.tegra_xusb_phy_type, ptr %204, i32 %203
  %206 = load ptr, ptr %205, align 4
  %207 = call i32 @strncmp(ptr noundef %206, ptr noundef nonnull dereferenceable(5) @.str.6, i32 noundef 4)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = getelementptr %struct.tegra_xusb_phy_type, ptr %204, i32 %203, i32 1
  %211 = load i32, ptr %210, align 4
  store i32 %211, ptr %198, align 4
  %212 = load ptr, ptr %200, align 4
  br label %213

213:                                              ; preds = %209, %202
  %214 = phi ptr [ %212, %209 ], [ %204, %202 ]
  %215 = getelementptr %struct.tegra_xusb_phy_type, ptr %214, i32 %203, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = load i32, ptr %199, align 4
  %218 = add i32 %217, %216
  store i32 %218, ptr %199, align 4
  %219 = add nuw i32 %203, 1
  %220 = load i32, ptr %191, align 4
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %202, label %222

222:                                              ; preds = %213, %194
  %223 = phi i32 [ %196, %194 ], [ %218, %213 ]
  %224 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %223, i32 4) #12
  %225 = extractvalue { i32, i1 } %224, 1
  br i1 %225, label %226, label %228, !prof !10

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 26
  store ptr null, ptr %227, align 4
  br label %463

228:                                              ; preds = %222
  %229 = extractvalue { i32, i1 } %224, 0
  %230 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %229, i32 noundef 3520) #12
  %231 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 26
  store ptr %230, ptr %231, align 4
  %232 = icmp eq ptr %230, null
  br i1 %232, label %463, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %10, align 4
  %235 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %234, i32 0, i32 4
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %276, label %238

238:                                              ; preds = %269, %233
  %239 = phi ptr [ %270, %269 ], [ %234, %233 ]
  %240 = phi i32 [ %271, %269 ], [ 0, %233 ]
  %241 = phi i32 [ %272, %269 ], [ 0, %233 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !9
  %242 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %239, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr %struct.tegra_xusb_phy_type, ptr %243, i32 %241, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %269, label %247

247:                                              ; preds = %256, %238
  %248 = phi ptr [ %263, %256 ], [ %243, %238 ]
  %249 = phi i32 [ %258, %256 ], [ %240, %238 ]
  %250 = phi i32 [ %260, %256 ], [ 0, %238 ]
  %251 = getelementptr %struct.tegra_xusb_phy_type, ptr %248, i32 %241
  %252 = load ptr, ptr %251, align 4
  %253 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull @.str.37, ptr noundef %252, i32 noundef %250)
  %254 = call ptr @devm_phy_optional_get(ptr noundef %5, ptr noundef nonnull %4) #12
  %255 = icmp ugt ptr %254, inttoptr (i32 -4096 to ptr)
  br i1 %255, label %267, label %256

256:                                              ; preds = %247
  %257 = load ptr, ptr %231, align 4
  %258 = add i32 %249, 1
  %259 = getelementptr ptr, ptr %257, i32 %249
  store ptr %254, ptr %259, align 4
  %260 = add nuw i32 %250, 1
  %261 = load ptr, ptr %10, align 4
  %262 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %261, i32 0, i32 3
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr %struct.tegra_xusb_phy_type, ptr %263, i32 %241, i32 1
  %265 = load i32, ptr %264, align 4
  %266 = icmp ult i32 %260, %265
  br i1 %266, label %247, label %269

267:                                              ; preds = %247
  %268 = ptrtoint ptr %254 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef nonnull %4, i32 noundef %268) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %463

269:                                              ; preds = %256, %238
  %270 = phi ptr [ %239, %238 ], [ %261, %256 ]
  %271 = phi i32 [ %240, %238 ], [ %258, %256 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %272 = add nuw i32 %241, 1
  %273 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %270, i32 0, i32 4
  %274 = load i32, ptr %273, align 4
  %275 = icmp ult i32 %272, %274
  br i1 %275, label %238, label %276

276:                                              ; preds = %269, %233
  %277 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load ptr, ptr %5, align 4
  br label %282

282:                                              ; preds = %280, %276
  %283 = phi ptr [ %281, %280 ], [ %278, %276 ]
  %284 = call ptr @usb_create_hcd(ptr noundef nonnull @tegra_xhci_hc_driver, ptr noundef %5, ptr noundef %283) #12
  %285 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 2
  store ptr %284, ptr %285, align 4
  %286 = icmp eq ptr %284, null
  br i1 %286, label %463, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.usb_hcd, ptr %284, i32 0, i32 14
  %289 = load i16, ptr %288, align 8
  %290 = or i16 %289, 16
  store i16 %290, ptr %288, align 8
  %291 = load ptr, ptr %41, align 4
  %292 = load ptr, ptr %285, align 4
  %293 = getelementptr inbounds %struct.usb_hcd, ptr %292, i32 0, i32 16
  store ptr %291, ptr %293, align 8
  %294 = load ptr, ptr %3, align 4
  %295 = load i32, ptr %294, align 4
  %296 = load ptr, ptr %285, align 4
  %297 = getelementptr inbounds %struct.usb_hcd, ptr %296, i32 0, i32 17
  store i32 %295, ptr %297, align 4
  %298 = getelementptr inbounds %struct.resource, ptr %294, i32 0, i32 1
  %299 = load i32, ptr %298, align 4
  %300 = load i32, ptr %294, align 4
  %301 = add i32 %299, 1
  %302 = sub i32 %301, %300
  %303 = load ptr, ptr %285, align 4
  %304 = getelementptr inbounds %struct.usb_hcd, ptr %303, i32 0, i32 18
  store i32 %302, ptr %304, align 8
  %305 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %305, align 8
  %306 = call fastcc i32 @tegra_xusb_clk_enable(ptr noundef nonnull %6)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %287
  %309 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.39, i32 noundef %306) #13
  br label %460

310:                                              ; preds = %287
  %311 = load ptr, ptr %10, align 4
  %312 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %311, i32 0, i32 2
  %313 = load i32, ptr %312, align 4
  %314 = load ptr, ptr %175, align 4
  %315 = call i32 @regulator_bulk_enable(i32 noundef %313, ptr noundef %314) #12
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %310
  %318 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.40, i32 noundef %315) #13
  br label %458

319:                                              ; preds = %310
  %320 = call fastcc i32 @tegra_xusb_phy_enable(ptr noundef nonnull %6)
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %320) #13
  br label %451

323:                                              ; preds = %319
  %324 = load ptr, ptr %6, align 4
  %325 = call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %324)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.42, i32 noundef %325) #13
  br label %449

328:                                              ; preds = %323
  %329 = call fastcc i32 @tegra_xusb_request_firmware(ptr noundef nonnull %6)
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %329) #13
  br label %449

332:                                              ; preds = %328
  %333 = call fastcc i32 @tegra_xusb_unpowergate_partitions(ptr noundef nonnull %6)
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %441

335:                                              ; preds = %332
  call fastcc void @tegra_xusb_config(ptr noundef nonnull %6)
  %336 = call fastcc i32 @tegra_xusb_load_firmware(ptr noundef nonnull %6)
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.44, i32 noundef %336) #13
  br label %439

339:                                              ; preds = %335
  %340 = load ptr, ptr %285, align 4
  %341 = load i32, ptr %64, align 4
  %342 = call i32 @usb_add_hcd(ptr noundef %340, i32 noundef %341, i32 noundef 128) #12
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.45, i32 noundef %342) #13
  br label %439

345:                                              ; preds = %339
  %346 = load ptr, ptr %285, align 4
  %347 = load ptr, ptr %346, align 8
  %348 = call i32 @device_wakeup_enable(ptr noundef %347) #12
  %349 = load ptr, ptr %285, align 4
  %350 = call i32 @usb_hcd_is_primary_hcd(ptr noundef %349) #12
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.usb_hcd, ptr %349, i32 0, i32 25
  %354 = load ptr, ptr %353, align 4
  br label %355

355:                                              ; preds = %352, %345
  %356 = phi ptr [ %354, %352 ], [ %349, %345 ]
  %357 = load ptr, ptr %277, align 4
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = load ptr, ptr %5, align 4
  br label %361

361:                                              ; preds = %359, %355
  %362 = phi ptr [ %360, %359 ], [ %357, %355 ]
  %363 = load ptr, ptr %285, align 4
  %364 = call ptr @usb_create_shared_hcd(ptr noundef nonnull @tegra_xhci_hc_driver, ptr noundef %5, ptr noundef %362, ptr noundef %363) #12
  %365 = getelementptr inbounds %struct.usb_hcd, ptr %356, i32 1, i32 0, i32 1
  store ptr %364, ptr %365, align 4
  %366 = icmp eq ptr %364, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46) #13
  br label %436

368:                                              ; preds = %361
  %369 = load i32, ptr %64, align 4
  %370 = call i32 @usb_add_hcd(ptr noundef nonnull %364, i32 noundef %369, i32 noundef 128) #12
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.47, i32 noundef %370) #13
  br label %433

373:                                              ; preds = %368
  %374 = load i32, ptr %68, align 4
  %375 = load ptr, ptr %277, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = load ptr, ptr %5, align 4
  br label %379

379:                                              ; preds = %377, %373
  %380 = phi ptr [ %378, %377 ], [ %375, %373 ]
  %381 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %374, ptr noundef nonnull @tegra_xusb_mbox_irq, ptr noundef nonnull @tegra_xusb_mbox_thread, i32 noundef 0, ptr noundef %380, ptr noundef nonnull %6) #12
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %379
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48, i32 noundef %381) #13
  br label %430

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 6
  %386 = load i32, ptr %385, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %384
  %389 = load ptr, ptr %277, align 4
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load ptr, ptr %5, align 4
  br label %393

393:                                              ; preds = %391, %388
  %394 = phi ptr [ %392, %391 ], [ %389, %388 ]
  %395 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %386, ptr noundef null, ptr noundef nonnull @tegra_xusb_padctl_irq, i32 noundef 8192, ptr noundef %394, ptr noundef nonnull %6) #12
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %393
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %395) #13
  br label %430

398:                                              ; preds = %393, %384
  %399 = call fastcc i32 @tegra_xusb_enable_firmware_messages(ptr noundef nonnull %6)
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.50, i32 noundef %399) #13
  br label %430

402:                                              ; preds = %398
  %403 = call fastcc i32 @tegra_xusb_init_usb_phy(ptr noundef nonnull %6)
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51, i32 noundef %403) #13
  br label %430

406:                                              ; preds = %402
  %407 = load ptr, ptr %285, align 4
  %408 = getelementptr inbounds %struct.usb_bus, ptr %407, i32 0, i32 11
  %409 = load ptr, ptr %408, align 8
  %410 = getelementptr inbounds %struct.usb_device, ptr %409, i32 0, i32 15
  %411 = call i32 @device_init_wakeup(ptr noundef %410, i1 noundef zeroext true) #12
  %412 = load ptr, ptr %365, align 4
  %413 = getelementptr inbounds %struct.usb_bus, ptr %412, i32 0, i32 11
  %414 = load ptr, ptr %413, align 8
  %415 = getelementptr inbounds %struct.usb_device, ptr %414, i32 0, i32 15
  %416 = call i32 @device_init_wakeup(ptr noundef %415, i1 noundef zeroext true) #12
  %417 = load ptr, ptr %6, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %417, i1 noundef zeroext true) #12
  %418 = load ptr, ptr %6, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %418, i32 noundef 2000) #12
  %419 = load ptr, ptr %6, align 4
  %420 = call i64 @ktime_get_mono_fast_ns() #12
  %421 = getelementptr inbounds %struct.device, ptr %419, i32 0, i32 11, i32 22
  store volatile i64 %420, ptr %421, align 8
  %422 = load ptr, ptr %6, align 4
  %423 = call i32 @__pm_runtime_set_status(ptr noundef %422, i32 noundef 0) #12
  %424 = load i32, ptr %385, align 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %468, label %426

426:                                              ; preds = %406
  %427 = load ptr, ptr %6, align 4
  %428 = call i32 @device_init_wakeup(ptr noundef %427, i1 noundef zeroext true) #12
  %429 = load ptr, ptr %6, align 4
  call void @pm_runtime_enable(ptr noundef %429) #12
  br label %468

430:                                              ; preds = %405, %401, %397, %383
  %431 = phi i32 [ %381, %383 ], [ %395, %397 ], [ %399, %401 ], [ %403, %405 ]
  %432 = load ptr, ptr %365, align 4
  call void @usb_remove_hcd(ptr noundef %432) #12
  br label %433

433:                                              ; preds = %430, %372
  %434 = phi i32 [ %370, %372 ], [ %431, %430 ]
  %435 = load ptr, ptr %365, align 4
  call void @usb_put_hcd(ptr noundef %435) #12
  br label %436

436:                                              ; preds = %433, %367
  %437 = phi i32 [ %434, %433 ], [ -12, %367 ]
  %438 = load ptr, ptr %285, align 4
  call void @usb_remove_hcd(ptr noundef %438) #12
  br label %439

439:                                              ; preds = %436, %344, %338
  %440 = phi i32 [ %336, %338 ], [ %342, %344 ], [ %437, %436 ]
  call fastcc void @tegra_xusb_powergate_partitions(ptr noundef nonnull %6)
  br label %441

441:                                              ; preds = %439, %332
  %442 = phi i32 [ %333, %332 ], [ %440, %439 ]
  %443 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 35
  %444 = load i32, ptr %443, align 4
  %445 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 35, i32 1
  %446 = load ptr, ptr %445, align 4
  %447 = getelementptr inbounds %struct.tegra_xusb, ptr %6, i32 0, i32 35, i32 2
  %448 = load i32, ptr %447, align 4
  call void @dma_free_attrs(ptr noundef %5, i32 noundef %444, ptr noundef %446, i32 noundef %448, i32 noundef 0) #12
  br label %449

449:                                              ; preds = %441, %331, %327
  %450 = phi i32 [ %325, %327 ], [ %329, %331 ], [ %442, %441 ]
  call fastcc void @tegra_xusb_phy_disable(ptr noundef nonnull %6)
  br label %451

451:                                              ; preds = %449, %322
  %452 = phi i32 [ %320, %322 ], [ %450, %449 ]
  %453 = load ptr, ptr %10, align 4
  %454 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %453, i32 0, i32 2
  %455 = load i32, ptr %454, align 4
  %456 = load ptr, ptr %175, align 4
  %457 = call i32 @regulator_bulk_disable(i32 noundef %455, ptr noundef %456) #12
  br label %458

458:                                              ; preds = %451, %317
  %459 = phi i32 [ %315, %317 ], [ %452, %451 ]
  call fastcc void @tegra_xusb_clk_disable(ptr noundef nonnull %6)
  br label %460

460:                                              ; preds = %458, %308
  %461 = phi i32 [ %306, %308 ], [ %459, %458 ]
  %462 = load ptr, ptr %285, align 4
  call void @usb_put_hcd(ptr noundef %462) #12
  br label %463

463:                                              ; preds = %460, %282, %267, %228, %226, %201, %172, %170, %161
  %464 = phi i32 [ %162, %161 ], [ %187, %201 ], [ %268, %267 ], [ %461, %460 ], [ -12, %172 ], [ -12, %228 ], [ -12, %282 ], [ -12, %170 ], [ -12, %226 ]
  call fastcc void @tegra_xusb_powerdomain_remove(ptr noundef nonnull %6)
  br label %465

465:                                              ; preds = %463, %159, %153, %143, %137, %131, %125, %119, %113, %107, %101, %95, %88, %76
  %466 = phi i32 [ %96, %95 ], [ %102, %101 ], [ %108, %107 ], [ %114, %113 ], [ %120, %119 ], [ %126, %125 ], [ %132, %131 ], [ %138, %137 ], [ %144, %143 ], [ %464, %463 ], [ %154, %153 ], [ %160, %159 ], [ %90, %88 ], [ -19, %76 ]
  call void @of_node_put(ptr noundef %79) #12
  %467 = load ptr, ptr %72, align 4
  call void @tegra_xusb_padctl_put(ptr noundef %467) #12
  br label %468

468:                                              ; preds = %465, %426, %406, %74, %66, %62, %60, %49, %43, %33, %31, %21, %19, %1
  %469 = phi i32 [ %44, %43 ], [ %50, %49 ], [ %61, %60 ], [ %75, %74 ], [ %466, %465 ], [ -12, %1 ], [ %63, %62 ], [ %67, %66 ], [ 0, %426 ], [ 0, %406 ], [ -12, %21 ], [ -12, %19 ], [ -12, %31 ], [ -12, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #12
  ret i32 %469
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 34
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #12
  %15 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 29
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 28
  br label %20

20:                                               ; preds = %38, %18
  %21 = phi i32 [ %16, %18 ], [ %39, %38 ]
  %22 = phi i32 [ 0, %18 ], [ %40, %38 ]
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr ptr, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.usb_phy, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usb_otg, ptr %29, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef nonnull %29, ptr noundef null) #12
  %37 = load i32, ptr %15, align 4
  br label %38

38:                                               ; preds = %35, %31, %27, %20
  %39 = phi i32 [ %37, %35 ], [ %21, %31 ], [ %21, %27 ], [ %21, %20 ]
  %40 = add nuw i32 %22, 1
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %20, label %42

42:                                               ; preds = %38, %11
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %44 = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #12
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void @usb_remove_hcd(ptr noundef %46) #12
  %47 = load ptr, ptr %45, align 4
  tail call void @usb_put_hcd(ptr noundef %47) #12
  store ptr null, ptr %45, align 4
  %48 = load ptr, ptr %4, align 4
  tail call void @usb_remove_hcd(ptr noundef %48) #12
  %49 = load ptr, ptr %4, align 4
  tail call void @usb_put_hcd(ptr noundef %49) #12
  %50 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 35
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 35, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 35, i32 2
  %55 = load i32, ptr %54, align 4
  tail call void @dma_free_attrs(ptr noundef %43, i32 noundef %51, ptr noundef %53, i32 noundef %55, i32 noundef 0) #12
  %56 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %42
  tail call void @__pm_runtime_disable(ptr noundef %43, i1 noundef zeroext true) #12
  br label %60

60:                                               ; preds = %59, %42
  %61 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #12
  tail call fastcc void @tegra_xusb_powergate_partitions(ptr noundef %3)
  %62 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 25
  %63 = load i8, ptr %62, align 4, !range !8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 24
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  %70 = or i1 %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %67, i1 noundef zeroext true) #12
  br label %72

72:                                               ; preds = %71, %65
  %73 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 23
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %77 = or i1 %75, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %74, i1 noundef zeroext true) #12
  br label %79

79:                                               ; preds = %78, %72, %60
  %80 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 27
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 26
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i32 [ 0, %83 ], [ %95, %85 ]
  %87 = load ptr, ptr %84, align 4
  %88 = getelementptr ptr, ptr %87, i32 %86
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @phy_power_off(ptr noundef %89) #12
  %91 = load ptr, ptr %84, align 4
  %92 = getelementptr ptr, ptr %91, i32 %86
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @phy_exit(ptr noundef %93) #12
  %95 = add nuw i32 %86, 1
  %96 = load i32, ptr %80, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %85, label %98

98:                                               ; preds = %85, %79
  tail call fastcc void @tegra_xusb_clk_disable(ptr noundef %3)
  %99 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 10
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 @regulator_bulk_disable(i32 noundef %102, ptr noundef %104) #12
  %106 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  tail call void @tegra_xusb_padctl_put(ptr noundef %107) #12
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_padctl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !9
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #12
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_powerdomain_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 23
  store ptr %3, ptr %4, align 4
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %7) #13
  br label %16

8:                                                ; preds = %2
  %9 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  %10 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 24
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %13) #13
  br label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 25
  store i8 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %12, %6
  %17 = phi i32 [ %7, %6 ], [ %13, %12 ], [ 0, %14 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_set_supply_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_clk_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %4, %1 ], [ %7, %9 ]
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %99, label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #12
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %16, %13 ], [ %19, %21 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %96, label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #12
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %28, %25 ], [ %31, %33 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call i32 @clk_enable(ptr noundef %39) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #12
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %40, %37 ], [ %43, %45 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %90, label %49

49:                                               ; preds = %46, %42
  %50 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @clk_prepare(ptr noundef %51) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = tail call i32 @clk_enable(ptr noundef %51) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %51) #12
  br label %58

58:                                               ; preds = %57, %49
  %59 = phi i32 [ %52, %49 ], [ %55, %57 ]
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %58, %54
  %62 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 16
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @clk_prepare(ptr noundef %63) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = tail call i32 @clk_enable(ptr noundef %63) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  tail call void @clk_unprepare(ptr noundef %63) #12
  br label %70

70:                                               ; preds = %69, %61
  %71 = phi i32 [ %64, %61 ], [ %67, %69 ]
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %70, %66
  %74 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %75, i32 0, i32 8
  %77 = load i8, ptr %76, align 4, !range !8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %73
  %80 = tail call fastcc i32 @tegra_xusb_set_ss_clk(ptr noundef %0, i32 noundef 120000000)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load ptr, ptr %62, align 4
  tail call void @clk_disable(ptr noundef %83) #12
  tail call void @clk_unprepare(ptr noundef %83) #12
  br label %84

84:                                               ; preds = %82, %70
  %85 = phi i32 [ %71, %70 ], [ %80, %82 ]
  %86 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %86) #12
  tail call void @clk_unprepare(ptr noundef %86) #12
  br label %87

87:                                               ; preds = %84, %58
  %88 = phi i32 [ %59, %58 ], [ %85, %84 ]
  %89 = load ptr, ptr %38, align 4
  tail call void @clk_disable(ptr noundef %89) #12
  tail call void @clk_unprepare(ptr noundef %89) #12
  br label %90

90:                                               ; preds = %87, %46
  %91 = phi i32 [ %47, %46 ], [ %88, %87 ]
  %92 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %92) #12
  tail call void @clk_unprepare(ptr noundef %92) #12
  br label %93

93:                                               ; preds = %90, %34
  %94 = phi i32 [ %35, %34 ], [ %91, %90 ]
  %95 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %95) #12
  tail call void @clk_unprepare(ptr noundef %95) #12
  br label %96

96:                                               ; preds = %93, %22
  %97 = phi i32 [ %23, %22 ], [ %94, %93 ]
  %98 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %98) #12
  tail call void @clk_unprepare(ptr noundef %98) #12
  br label %99

99:                                               ; preds = %96, %79, %73, %10
  %100 = phi i32 [ %97, %96 ], [ %11, %10 ], [ 0, %79 ], [ 0, %73 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_phy_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %7

7:                                                ; preds = %25, %5
  %8 = phi i32 [ 0, %5 ], [ %26, %25 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_init(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr ptr, ptr %15, i32 %8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_power_on(ptr noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr ptr, ptr %21, i32 %8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @phy_exit(ptr noundef %23) #12
  br label %29

25:                                               ; preds = %14
  %26 = add nuw i32 %8, 1
  %27 = load i32, ptr %2, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %7, label %44

29:                                               ; preds = %20, %7
  %30 = phi i32 [ %18, %20 ], [ %12, %7 ]
  %31 = icmp eq i32 %8, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ %34, %32 ], [ %8, %29 ]
  %34 = add i32 %33, -1
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @phy_power_off(ptr noundef %37) #12
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr ptr, ptr %39, i32 %34
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @phy_exit(ptr noundef %41) #12
  %43 = icmp eq i32 %34, 0
  br i1 %43, label %44, label %32

44:                                               ; preds = %32, %29, %25, %1
  %45 = phi i32 [ %30, %29 ], [ 0, %1 ], [ %30, %32 ], [ 0, %25 ]
  ret i32 %45
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef 1099511627775) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef 1099511627775) #12
  br label %6

6:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_request_firmware(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef %5, ptr noundef %6) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43, i32 noundef %7) #13
  br label %32

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %14, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 35
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 35, i32 2
  %20 = call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef %16, ptr noundef %19, i32 noundef 3264, i32 noundef 0) #12
  %21 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 35, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.56) #13
  %25 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %25) #12
  br label %32

26:                                               ; preds = %11
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %17, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %20, ptr align 1 %29, i32 %30, i1 false)
  %31 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %31) #12
  br label %32

32:                                               ; preds = %26, %23, %9
  %33 = phi i32 [ %7, %9 ], [ 0, %26 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_unpowergate_partitions(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.57) #13
  br label %37

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.58) #13
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #12
  br label %37

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 22
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 20, ptr noundef %22, ptr noundef %24) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.57) #13
  br label %37

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 21
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 22, ptr noundef %30, ptr noundef %32) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.58) #13
  %36 = tail call i32 @tegra_powergate_power_off(i32 noundef 20) #12
  br label %37

37:                                               ; preds = %35, %28, %27, %17, %12, %11
  %38 = phi i32 [ %9, %11 ], [ %15, %17 ], [ %25, %27 ], [ %33, %35 ], [ 0, %28 ], [ 0, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_config(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 384
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %16 = or i32 %15, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #12, !srcloc !14
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #12
  br label %19

19:                                               ; preds = %11, %1
  %20 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %24 = and i32 %23, 32767
  %25 = and i32 %5, -32768
  %26 = or i32 %24, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !14
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %32 = or i32 %31, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #12, !srcloc !14
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %35, i32 0, i32 9
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 392
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %44 = or i32 %43, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %45 = load ptr, ptr %40, align 4
  %46 = getelementptr i8, ptr %45, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %47 = load ptr, ptr %40, align 4
  %48 = getelementptr i8, ptr %47, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 128) #12, !srcloc !14
  br label %49

49:                                               ; preds = %39, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_load_firmware(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !9
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 35, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  %9 = and i32 %8, 255
  %10 = getelementptr i8, ptr %4, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %11 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 2061) #12, !srcloc !14
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 2052
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #12, !srcloc !14
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 2304
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.59, i32 noundef %23) #13
  br label %146

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 35
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2061) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %26) #12, !srcloc !14
  %31 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 35, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr i8, ptr %34, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 2061) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr i8, ptr %36, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr i8, ptr %38, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 2061) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr i8, ptr %40, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %33) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %42 = load ptr, ptr %11, align 4
  %43 = getelementptr i8, ptr %42, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2060) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr i8, ptr %44, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 -2147483648) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr i8, ptr %46, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 2061) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr i8, ptr %48, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1073741824) #12, !srcloc !14
  %50 = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %7, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 255
  %53 = lshr i32 %52, 8
  %54 = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %7, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 255
  %57 = lshr i32 %56, 8
  %58 = add nuw nsw i32 %57, %53
  %59 = and i32 %52, 261888
  %60 = shl i32 %57, 24
  %61 = or i32 %60, %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %62 = load ptr, ptr %11, align 4
  %63 = getelementptr i8, ptr %62, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 2061) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %64 = load ptr, ptr %11, align 4
  %65 = getelementptr i8, ptr %64, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %61) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %66 = load ptr, ptr %11, align 4
  %67 = getelementptr i8, ptr %66, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 2061) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %68 = load ptr, ptr %11, align 4
  %69 = getelementptr i8, ptr %68, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 285212672) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %70 = load ptr, ptr %11, align 4
  %71 = getelementptr i8, ptr %70, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %72 = load ptr, ptr %11, align 4
  %73 = getelementptr i8, ptr %72, i32 2392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %57) #12, !srcloc !14
  %74 = and i32 %53, 65535
  %75 = shl i32 %58, 16
  %76 = or i32 %75, %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %77 = load ptr, ptr %11, align 4
  %78 = getelementptr i8, ptr %77, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %79 = load ptr, ptr %11, align 4
  %80 = getelementptr i8, ptr %79, i32 2388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %76) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %81 = load ptr, ptr %11, align 4
  %82 = getelementptr i8, ptr %81, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %83 = load ptr, ptr %11, align 4
  %84 = getelementptr i8, ptr %83, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #12, !srcloc !14
  %85 = tail call i64 @ktime_get() #12
  %86 = add i64 %85, 10000000
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %87 = load ptr, ptr %11, align 4
  %88 = getelementptr i8, ptr %87, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 2061) #12, !srcloc !14
  %89 = load ptr, ptr %11, align 4
  %90 = getelementptr i8, ptr %89, i32 2072
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %111

93:                                               ; preds = %96, %24
  %94 = tail call i64 @ktime_get() #12
  %95 = icmp sgt i64 %94, %86
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %97 = load ptr, ptr %11, align 4
  %98 = getelementptr i8, ptr %97, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 2061) #12, !srcloc !14
  %99 = load ptr, ptr %11, align 4
  %100 = getelementptr i8, ptr %99, i32 2072
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %93, label %111

103:                                              ; preds = %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %104 = load ptr, ptr %11, align 4
  %105 = getelementptr i8, ptr %104, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 2061) #12, !srcloc !14
  %106 = load ptr, ptr %11, align 4
  %107 = getelementptr i8, ptr %106, i32 2072
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef %108) #13
  br label %146

111:                                              ; preds = %103, %96, %24
  %112 = load i32, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %113 = load ptr, ptr %11, align 4
  %114 = getelementptr i8, ptr %113, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %115 = load ptr, ptr %11, align 4
  %116 = getelementptr i8, ptr %115, i32 2308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %112) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %117 = load ptr, ptr %11, align 4
  %118 = getelementptr i8, ptr %117, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #12, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %119 = load ptr, ptr %11, align 4
  %120 = getelementptr i8, ptr %119, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 2) #12, !srcloc !14
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = getelementptr inbounds %struct.xhci_op_regs, ptr %10, i32 0, i32 1
  %123 = sub i32 -20, %121
  br label %124

124:                                              ; preds = %128, %111
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  %126 = and i32 %125, 2048
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %129 = load volatile i32, ptr @jiffies, align 64
  %130 = add i32 %123, %129
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %124, label %132

132:                                              ; preds = %128, %124
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !19
  %134 = and i32 %133, 2048
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %137 = load ptr, ptr %11, align 4
  %138 = getelementptr i8, ptr %137, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #12, !srcloc !14
  %139 = load ptr, ptr %11, align 4
  %140 = getelementptr i8, ptr %139, i32 2304
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61, i32 noundef %141) #13
  br label %146

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.tegra_xusb_fw_header, ptr %7, i32 0, i32 12
  %144 = load i32, ptr %143, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.62, ptr noundef nonnull %2) #13
  br label %146

146:                                              ; preds = %142, %136, %110, %18
  %147 = phi i32 [ 0, %18 ], [ -110, %110 ], [ -5, %136 ], [ 0, %142 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_mbox_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1064
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #12, !srcloc !14
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.63) #13
  br label %13

13:                                               ; preds = %11, %2
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_mbox_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.tegra_xusb_mbox_msg, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 15
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %158, label %15

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 36
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %158

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %21, i32 0, i32 7, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %29 = lshr i32 %28, 24
  %30 = and i32 %28, 16777215
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %31, i32 0, i32 7
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %38 = and i32 %37, -536870913
  %39 = load ptr, ptr %20, align 4
  %40 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %39, i32 0, i32 7
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %38) #12, !srcloc !14
  %45 = trunc i32 %29 to i8
  switch i8 %45, label %53 [
    i8 6, label %46
    i8 -128, label %46
    i8 -127, label %46
  ]

46:                                               ; preds = %19, %19, %19
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %47, i32 0, i32 7, i32 3
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %51 = load ptr, ptr %25, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #12, !srcloc !14
  br label %53

53:                                               ; preds = %46, %19
  %54 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %20, align 4
  %57 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  store i64 0, ptr %3, align 8
  switch i8 %45, label %139 [
    i8 2, label %58
    i8 3, label %58
    i8 4, label %67
    i8 5, label %67
    i8 6, label %157
    i8 9, label %73
    i8 12, label %80
    i8 13, label %80
    i8 17, label %107
    i8 18, label %107
  ]

58:                                               ; preds = %53, %53
  %59 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 13
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @clk_get_rate(ptr noundef %60) #12
  %62 = udiv i32 %61, 1000
  %63 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %3, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, %30
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 129, ptr %3, align 8
  br label %150

66:                                               ; preds = %58
  store i32 128, ptr %3, align 8
  br label %150

67:                                               ; preds = %53, %53
  %68 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %56, i32 0, i32 8
  %69 = load i8, ptr %68, align 4, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %140

71:                                               ; preds = %67
  store i32 128, ptr %3, align 8
  %72 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %3, i32 0, i32 1
  store i32 %30, ptr %72, align 4
  br label %150

73:                                               ; preds = %53
  %74 = tail call i32 @tegra_xusb_padctl_usb3_save_context(ptr noundef %55, i32 noundef %30) #12
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.64, i32 noundef %30, i32 noundef %74) #13
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ 129, %76 ], [ 128, %73 ]
  store i32 %78, ptr %3, align 8
  %79 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %3, i32 0, i32 1
  store i32 %30, ptr %79, align 4
  br label %150

80:                                               ; preds = %53, %53
  %81 = icmp eq i32 %29, 13
  %82 = xor i1 %81, true
  %83 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %56, i32 0, i32 6, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  %86 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %56, i32 0, i32 6, i32 2, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %30, %85
  %89 = shl nsw i32 -1, %87
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  store i32 %91, ptr %4, align 4
  %92 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #12
  %93 = icmp ult i32 %92, 32
  br i1 %93, label %94, label %104

94:                                               ; preds = %98, %80
  %95 = phi i32 [ %100, %98 ], [ %92, %80 ]
  %96 = call i32 @tegra_xusb_padctl_hsic_set_idle(ptr noundef %55, i32 noundef %95, i1 noundef zeroext %82) #12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = add nuw nsw i32 %95, 1
  %100 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %99) #12
  %101 = icmp ult i32 %100, 32
  br i1 %101, label %94, label %104

102:                                              ; preds = %94
  %103 = select i1 %81, ptr @.str.67, ptr @.str.66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.65, i32 noundef %95, ptr noundef nonnull %103, i32 noundef %96) #13
  br label %104

104:                                              ; preds = %102, %98, %80
  %105 = phi i32 [ 129, %102 ], [ 128, %80 ], [ 128, %98 ]
  store i32 %105, ptr %3, align 8
  %106 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %3, i32 0, i32 1
  store i32 %30, ptr %106, align 4
  br label %150

107:                                              ; preds = %53, %53
  %108 = icmp eq i32 %29, 17
  %109 = xor i1 %108, true
  %110 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %56, i32 0, i32 6, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1
  %113 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %56, i32 0, i32 6, i32 3, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %30, %112
  %116 = shl nsw i32 -1, %114
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  store i32 %118, ptr %4, align 4
  %119 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %114, i32 noundef 0) #12
  %120 = load i32, ptr %113, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %128, %107
  %123 = phi i32 [ %131, %128 ], [ %119, %107 ]
  %124 = call i32 @tegra_xusb_padctl_usb3_set_lfps_detect(ptr noundef %55, i32 noundef %123, i1 noundef zeroext %109) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  br i1 %108, label %127, label %128

127:                                              ; preds = %126
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #12
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i32, ptr %113, align 4
  %130 = add nuw i32 %123, 1
  %131 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %129, i32 noundef %130) #12
  %132 = load i32, ptr %113, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %122, label %136

134:                                              ; preds = %122
  %135 = select i1 %108, ptr @.str.70, ptr @.str.69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.68, ptr noundef nonnull %135, i32 noundef %123, i32 noundef %124) #13
  br label %136

136:                                              ; preds = %134, %128, %107
  %137 = phi i32 [ 129, %134 ], [ 128, %107 ], [ 128, %128 ]
  store i32 %137, ptr %3, align 8
  %138 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %3, i32 0, i32 1
  store i32 %30, ptr %138, align 4
  br label %150

139:                                              ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.71, i32 noundef %29) #13
  br label %157

140:                                              ; preds = %67
  %141 = mul i32 %30, 1000
  %142 = tail call fastcc i32 @tegra_xusb_set_ss_clk(ptr noundef %1, i32 noundef %141) #12
  %143 = icmp slt i32 %142, 0
  %144 = select i1 %143, i32 129, i32 128
  store i32 %144, ptr %3, align 8
  %145 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 15
  %146 = load ptr, ptr %145, align 4
  %147 = tail call i32 @clk_get_rate(ptr noundef %146) #12
  %148 = udiv i32 %147, 1000
  %149 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %3, i32 0, i32 1
  store i32 %148, ptr %149, align 4
  br label %150

150:                                              ; preds = %140, %136, %104, %77, %71, %66, %65
  %151 = phi i32 [ %144, %140 ], [ %78, %77 ], [ %105, %104 ], [ %137, %136 ], [ 128, %66 ], [ 129, %65 ], [ 128, %71 ]
  %152 = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %1, ptr noundef nonnull %3) #12
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = icmp eq i32 %151, 128
  %156 = select i1 %155, ptr @.str.72, ptr @.str.73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.74, ptr noundef nonnull %156, i32 noundef %152) #13
  br label %157

157:                                              ; preds = %154, %150, %139, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %158

158:                                              ; preds = %157, %15, %10
  call void @mutex_unlock(ptr noundef %5) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %1, i32 0, i32 36
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  tail call void @mutex_unlock(ptr noundef %3) #12
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 0) #12
  br label %10

10:                                               ; preds = %7, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_enable_firmware_messages(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.tegra_xusb_mbox_msg, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 1, ptr %2, align 8, !annotation !9
  %4 = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %0, ptr noundef nonnull %2) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %4) #13
  br label %8

8:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_init_usb_phy(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 29
  %3 = load i32, ptr %2, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %6, label %8, !prof !10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 28
  store ptr null, ptr %7, align 4
  br label %83

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = extractvalue { i32, i1 } %4, 0
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #12
  %12 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 28
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 34
  store i32 -32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 34, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 34, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 34, i32 2
  store ptr @tegra_xhci_id_work, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 33
  store ptr @tegra_xhci_id_notify, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 30
  store i32 -22, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 31
  store i32 -22, ptr %21, align 4
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %83, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %26 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  %27 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 2
  br label %28

28:                                               ; preds = %79, %24
  %29 = phi i32 [ 0, %24 ], [ %80, %79 ]
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %30, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %44, %34
  %38 = phi i32 [ 0, %34 ], [ %47, %44 ]
  %39 = phi i32 [ 0, %34 ], [ %48, %44 ]
  %40 = getelementptr %struct.tegra_xusb_phy_type, ptr %36, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @strncmp(ptr noundef %41, ptr noundef nonnull dereferenceable(5) @.str.6, i32 noundef 4) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = getelementptr %struct.tegra_xusb_phy_type, ptr %36, i32 %39, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %38
  %48 = add nuw i32 %39, 1
  %49 = icmp eq i32 %48, %32
  br i1 %49, label %79, label %37

50:                                               ; preds = %37
  %51 = load ptr, ptr %26, align 4
  %52 = add i32 %38, %29
  %53 = getelementptr ptr, ptr %51, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %79, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %0, align 4
  %58 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  %59 = load ptr, ptr %58, align 8
  %60 = tail call ptr @devm_usb_get_phy_by_node(ptr noundef %57, ptr noundef %59, ptr noundef %19) #12
  %61 = load ptr, ptr %12, align 4
  %62 = getelementptr ptr, ptr %61, i32 %29
  store ptr %60, ptr %62, align 4
  %63 = load ptr, ptr %12, align 4
  %64 = getelementptr ptr, ptr %63, i32 %29
  %65 = load ptr, ptr %64, align 4
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %78, label %67

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.usb_phy, ptr %65, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %27, align 4
  %71 = icmp eq ptr %69, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.usb_otg, ptr %69, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = tail call i32 %74(ptr noundef nonnull %69, ptr noundef %70) #12
  br label %79

78:                                               ; preds = %56
  store ptr null, ptr %64, align 4
  br label %79

79:                                               ; preds = %78, %76, %72, %67, %50, %44, %28
  %80 = add nuw i32 %29, 1
  %81 = load i32, ptr %2, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %28, label %83

83:                                               ; preds = %79, %14, %8, %6
  %84 = phi i32 [ -12, %8 ], [ -12, %6 ], [ 0, %14 ], [ 0, %79 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_powergate_partitions(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 4) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.83) #13
  br label %33

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.84) #13
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #12
  br label %33

20:                                               ; preds = %1
  %21 = tail call i32 @tegra_powergate_power_off(i32 noundef 22) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.83) #13
  br label %33

24:                                               ; preds = %20
  %25 = tail call i32 @tegra_powergate_power_off(i32 noundef 20) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.84) #13
  %28 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 22, ptr noundef %29, ptr noundef %31) #12
  br label %33

33:                                               ; preds = %27, %24, %23, %17, %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_phy_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #12
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr ptr, ptr %13, i32 %8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @phy_exit(ptr noundef %15) #12
  %17 = add nuw i32 %8, 1
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %7, label %20

20:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_clk_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #12
  tail call void @clk_unprepare(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #12
  tail call void @clk_unprepare(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #12
  tail call void @clk_unprepare(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #12
  tail call void @clk_unprepare(ptr noundef %13) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_powerdomain_remove(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 25
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %7, i1 noundef zeroext true) #12
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %14, i1 noundef zeroext true) #12
  br label %19

19:                                               ; preds = %18, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_padctl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_set_ss_clk(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #12
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  switch i32 %1, label %33 [
    i32 120000000, label %8
    i32 12000000, label %25
  ]

8:                                                ; preds = %7
  %9 = tail call ptr @clk_get_parent(ptr noundef %4) #12
  %10 = tail call i32 @clk_get_rate(ptr noundef %9) #12
  %11 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #12
  %14 = udiv i32 %13, 120000000
  %15 = udiv i32 %10, %14
  %16 = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %8
  %19 = load ptr, ptr %11, align 4
  %20 = tail call i32 @clk_set_parent(ptr noundef %4, ptr noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef 120000000) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %40

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_set_parent(ptr noundef %4, ptr noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef 12000000) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %40

33:                                               ; preds = %7
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.54, i32 noundef %1) #13
  br label %40

35:                                               ; preds = %30, %22
  %36 = tail call i32 @clk_get_rate(ptr noundef %4) #12
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.55) #13
  br label %40

40:                                               ; preds = %38, %35, %33, %30, %25, %22, %18, %8, %2
  %41 = phi i32 [ -22, %33 ], [ -22, %38 ], [ 0, %2 ], [ %16, %8 ], [ %20, %18 ], [ %23, %22 ], [ %28, %25 ], [ %31, %30 ], [ 0, %35 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_usb3_save_context(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_hsic_set_idle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_usb3_set_lfps_detect(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_mbox_send(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 128
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %8, i32 0, i32 7, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.75) #13
  br label %103

19:                                               ; preds = %6
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %20, i32 0, i32 7, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 2) #12, !srcloc !14
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %26, i32 0, i32 7, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, ptr %1, align 4
  br label %38

36:                                               ; preds = %19
  %37 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.76) #13
  br label %103

38:                                               ; preds = %34, %2
  %39 = phi i32 [ %35, %34 ], [ %3, %2 ]
  %40 = shl i32 %39, 24
  %41 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 16777215
  %44 = or i32 %43, %40
  %45 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %46, i32 0, i32 7, i32 1
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %50 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %44) #12, !srcloc !14
  %53 = load ptr, ptr %45, align 4
  %54 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %53, i32 0, i32 7
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = load ptr, ptr %50, align 4
  %58 = getelementptr i8, ptr %57, i32 %56
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %60 = or i32 %59, -2013265920
  %61 = load ptr, ptr %45, align 4
  %62 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %61, i32 0, i32 7
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %65 = load ptr, ptr %50, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %60) #12, !srcloc !14
  br i1 %5, label %102, label %67

67:                                               ; preds = %38
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = add i32 %68, 25
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = sub i32 %70, %69
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %82, %67
  %74 = load ptr, ptr %45, align 4
  %75 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %74, i32 0, i32 7, i32 3
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = load ptr, ptr %50, align 4
  %79 = getelementptr i8, ptr %78, i32 %77
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #12
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = sub i32 %83, %69
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %73, label %86

86:                                               ; preds = %82, %73, %67
  %87 = phi i32 [ %60, %67 ], [ 0, %73 ], [ %80, %82 ]
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = sub i32 %69, %88
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load ptr, ptr %45, align 4
  %93 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %92, i32 0, i32 7, i32 3
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = load ptr, ptr %50, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  br label %99

99:                                               ; preds = %91, %86
  %100 = phi i32 [ %98, %91 ], [ %87, %86 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %38
  br label %103

103:                                              ; preds = %102, %99, %36, %17
  %104 = phi i32 [ 0, %102 ], [ -110, %99 ], [ -16, %17 ], [ -16, %36 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_xhci_id_work(ptr noundef %0) #2 {
  %2 = alloca %struct.tegra_xusb_mbox_msg, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -160
  %5 = getelementptr i8, ptr %0, i32 -152
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ %6, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 16, ptr %2, align 8, !annotation !9
  %14 = getelementptr i8, ptr %0, i32 -24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -108
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %37, %21
  %25 = phi i32 [ 0, %21 ], [ %40, %37 ]
  %26 = phi i32 [ 0, %21 ], [ %41, %37 ]
  %27 = getelementptr %struct.tegra_xusb_phy_type, ptr %23, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @strncmp(ptr noundef %28, ptr noundef nonnull dereferenceable(5) @.str.6, i32 noundef 4) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %0, i32 -40
  %33 = load ptr, ptr %32, align 4
  %34 = add i32 %25, %15
  %35 = getelementptr ptr, ptr %33, i32 %34
  %36 = load ptr, ptr %35, align 4
  br label %43

37:                                               ; preds = %24
  %38 = getelementptr %struct.tegra_xusb_phy_type, ptr %23, i32 %26, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %25
  %41 = add nuw i32 %26, 1
  %42 = icmp eq i32 %41, %19
  br i1 %42, label %43, label %24

43:                                               ; preds = %37, %31, %12
  %44 = phi ptr [ %36, %31 ], [ null, %12 ], [ null, %37 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %45 = getelementptr i8, ptr %0, i32 -148
  tail call void @mutex_lock(ptr noundef %45) #12
  %46 = getelementptr i8, ptr %0, i32 -16
  %47 = load i8, ptr %46, align 4, !range !8
  %48 = zext i8 %47 to i32
  %49 = tail call i32 @phy_set_mode_ext(ptr noundef %44, i32 noundef 11, i32 noundef %48) #12
  tail call void @mutex_unlock(ptr noundef %45) #12
  %50 = load i8, ptr %46, align 4, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr i8, ptr %0, i32 -20
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %51, label %82, label %55

55:                                               ; preds = %43
  br i1 %54, label %56, label %81

56:                                               ; preds = %55
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %57, i32 0, i32 11
  %59 = load i8, ptr %58, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @tegra_xhci_hc_driver, i32 0, i32 19), align 4
  %63 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = trunc i32 %53 to i16
  %66 = add i16 %65, 1
  %67 = call i32 %62(ptr noundef %64, i16 noundef zeroext -23808, i16 noundef zeroext 0, i16 noundef zeroext %66, ptr noundef nonnull %3, i16 noundef zeroext 4) #12
  %68 = load i32, ptr %3, align 4
  %69 = and i32 %68, 512
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  call fastcc void @tegra_xhci_set_port_power(ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, ptr %52, align 4
  %74 = add i32 %73, 1
  %75 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, ptr %2, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  %76 = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %4, ptr noundef nonnull %2)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.77, i32 noundef %76) #13
  br label %80

80:                                               ; preds = %78, %72, %56
  call fastcc void @tegra_xhci_set_port_power(ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %81

81:                                               ; preds = %80, %55
  call fastcc void @tegra_xhci_set_port_power(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %85

82:                                               ; preds = %43
  br i1 %54, label %83, label %84

83:                                               ; preds = %82
  tail call fastcc void @tegra_xhci_set_port_power(ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %84

84:                                               ; preds = %83, %82
  tail call fastcc void @tegra_xhci_set_port_power(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xhci_id_notify(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.usb_phy, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %6, label %11, label %10

10:                                               ; preds = %3
  br i1 %9, label %43, label %12

11:                                               ; preds = %3
  br i1 %9, label %12, label %43

12:                                               ; preds = %11, %10
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -20
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %26, %16
  %20 = phi i32 [ 0, %16 ], [ %27, %26 ]
  %21 = getelementptr ptr, ptr %18, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  %24 = icmp eq ptr %22, %2
  %25 = and i1 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = add nuw i32 %20, 1
  %28 = icmp eq i32 %27, %14
  br i1 %28, label %29, label %19

29:                                               ; preds = %26, %19, %12
  %30 = phi i32 [ -1, %12 ], [ %20, %19 ], [ -1, %26 ]
  %31 = getelementptr i8, ptr %0, i32 -12
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i32 -88
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef %33, i32 noundef %30) #12
  %35 = getelementptr i8, ptr %0, i32 -8
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_phy, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %4, align 4
  %40 = getelementptr i8, ptr %0, i32 12
  %41 = load ptr, ptr @system_wq, align 4
  %42 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %40) #12
  br label %43

43:                                               ; preds = %29, %11, %10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xhci_set_port_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ %6, %3 ]
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 0, i32 29
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 1, i32 0, i32 1
  %16 = select i1 %1, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = or i1 %1, %2
  %19 = select i1 %18, i32 10, i32 1000
  %20 = select i1 %2, i16 8963, i16 8961
  %21 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 31
  %22 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 30
  %23 = select i1 %1, i32 256, i32 512
  %24 = select i1 %1, ptr %22, ptr %21
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i16
  %27 = add i16 %26, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %28 = select i1 %2, i32 %23, i32 0
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.hc_driver, ptr %30, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %17, i16 noundef zeroext %20, i16 noundef zeroext 8, i16 noundef zeroext %27, ptr noundef null, i16 noundef zeroext 0) #12
  br label %34

34:                                               ; preds = %44, %12
  %35 = phi i32 [ %19, %12 ], [ %45, %44 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @tegra_xhci_hc_driver, i32 0, i32 19), align 4
  %37 = call i32 %36(ptr noundef %17, i16 noundef zeroext -23808, i16 noundef zeroext 0, i16 noundef zeroext %27, ptr noundef nonnull %4, i16 noundef zeroext 4) #12
  %38 = load i32, ptr %4, align 4
  %39 = and i32 %38, %23
  %40 = icmp eq i32 %28, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  br i1 %18, label %43, label %42

42:                                               ; preds = %41
  call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #12
  br label %44

43:                                               ; preds = %41
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #12
  br label %44

44:                                               ; preds = %43, %42
  %45 = add nsw i32 %35, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %34

47:                                               ; preds = %44
  %48 = load i32, ptr %4, align 4
  %49 = and i32 %48, %23
  br label %50

50:                                               ; preds = %47, %34
  %51 = phi i32 [ %49, %47 ], [ %39, %34 ]
  %52 = phi i32 [ %48, %47 ], [ %38, %34 ]
  %53 = icmp eq i32 %28, %51
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %0, align 4
  %56 = select i1 %2, ptr @.str.79, ptr @.str.80
  %57 = select i1 %1, ptr @.str.81, ptr @.str.82
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.78, ptr noundef nonnull %56, ptr noundef nonnull %57, i32 noundef %52) #13
  br label %58

58:                                               ; preds = %54, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  tail call void @synchronize_irq(i32 noundef %5) #12
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %3, i1 noundef zeroext true)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15, %10, %1
  %19 = tail call fastcc i32 @tegra_xusb_enter_elpg(ptr noundef %3, i1 noundef zeroext false)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 7
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #12
  %30 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %0) #12
  br label %49

31:                                               ; preds = %18
  %32 = icmp eq i32 %19, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 36
  store i8 1, ptr %34, align 4
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #12
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @irq_set_irq_wake(i32 noundef %45, i32 noundef 1) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.85) #13
  br label %49

49:                                               ; preds = %48, %43, %39, %33, %31, %29, %24, %21, %15
  %50 = phi i32 [ 0, %39 ], [ 0, %48 ], [ 0, %43 ], [ %19, %31 ], [ %19, %24 ], [ %19, %29 ], [ %16, %15 ], [ %19, %21 ], [ 0, %33 ]
  tail call void @mutex_unlock(ptr noundef %6) #12
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 36
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %30

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %3, i1 noundef zeroext false)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 0) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.90) #13
  br label %28

28:                                               ; preds = %27, %22, %18, %13
  store i8 0, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  %29 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %0) #12
  br label %30

30:                                               ; preds = %28, %12, %8
  %31 = phi i32 [ %10, %12 ], [ 0, %28 ], [ 0, %8 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  tail call void @synchronize_irq(i32 noundef %5) #12
  %6 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = tail call fastcc i32 @tegra_xusb_enter_elpg(ptr noundef %3, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = tail call fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %3, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_exit_elpg(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.tegra_xusb_mbox_msg, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %5, %2 ]
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 29
  %14 = load ptr, ptr %0, align 4
  br i1 %1, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, null
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %24, %11
  %28 = phi i1 [ %26, %24 ], [ false, %11 ]
  %29 = tail call i64 @ktime_get_mono_fast_ns() #12
  %30 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 22
  store volatile i64 %29, ptr %30, align 8
  %31 = tail call fastcc i32 @tegra_xusb_clk_enable(ptr noundef %0)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.39, i32 noundef %31) #13
  br label %209

35:                                               ; preds = %27
  %36 = tail call fastcc i32 @tegra_xusb_unpowergate_partitions(ptr noundef %0)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %207

38:                                               ; preds = %35
  br i1 %28, label %39, label %42

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  %41 = load i32, ptr %40, align 4
  br label %66

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  br label %93

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %52

52:                                               ; preds = %62, %50
  %53 = phi i32 [ %46, %50 ], [ %63, %62 ]
  %54 = phi i32 [ 0, %50 ], [ %64, %62 ]
  %55 = load ptr, ptr %51, align 4
  %56 = getelementptr ptr, ptr %55, i32 %54
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = tail call i32 @tegra_xusb_padctl_disable_phy_wake(ptr noundef %44, ptr noundef nonnull %57) #12
  %61 = load i32, ptr %45, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i32 [ %53, %52 ], [ %61, %59 ]
  %64 = add nuw i32 %54, 1
  %65 = icmp ult i32 %64, %63
  br i1 %65, label %52, label %66

66:                                               ; preds = %62, %39
  %67 = phi i32 [ %41, %39 ], [ %63, %62 ]
  %68 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %72

72:                                               ; preds = %89, %70
  %73 = phi i32 [ %67, %70 ], [ %90, %89 ]
  %74 = phi i32 [ 0, %70 ], [ %91, %89 ]
  %75 = load ptr, ptr %71, align 4
  %76 = getelementptr ptr, ptr %75, i32 %74
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  br i1 %28, label %80, label %85

80:                                               ; preds = %79
  %81 = tail call i32 @phy_init(ptr noundef nonnull %77) #12
  %82 = load ptr, ptr %71, align 4
  %83 = getelementptr ptr, ptr %82, i32 %74
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %80, %79
  %86 = phi ptr [ %84, %80 ], [ %77, %79 ]
  %87 = tail call i32 @phy_power_on(ptr noundef %86) #12
  %88 = load i32, ptr %68, align 4
  br label %89

89:                                               ; preds = %85, %72
  %90 = phi i32 [ %73, %72 ], [ %88, %85 ]
  %91 = add nuw i32 %74, 1
  %92 = icmp ult i32 %91, %90
  br i1 %92, label %72, label %93

93:                                               ; preds = %89, %66, %48
  %94 = phi ptr [ %49, %48 ], [ %68, %66 ], [ %68, %89 ]
  tail call fastcc void @tegra_xusb_config(ptr noundef %0)
  %95 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 37
  %100 = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %98, i32 0, i32 1
  %101 = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %98, i32 0, i32 1, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 37, i32 1
  %106 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 8
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i32 [ 0, %104 ], [ %117, %107 ]
  %109 = load ptr, ptr %105, align 4
  %110 = getelementptr i32, ptr %109, i32 %108
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %100, align 4
  %113 = getelementptr i32, ptr %112, i32 %108
  %114 = load i32, ptr %113, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %115 = load ptr, ptr %106, align 4
  %116 = getelementptr i8, ptr %115, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %111) #12, !srcloc !14
  %117 = add nuw i32 %108, 1
  %118 = load i32, ptr %101, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %107, label %120

120:                                              ; preds = %107, %93
  %121 = getelementptr inbounds %struct.anon, ptr %98, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 7
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i32 [ 0, %124 ], [ %136, %126 ]
  %128 = load ptr, ptr %99, align 4
  %129 = getelementptr i32, ptr %128, i32 %127
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %98, align 4
  %132 = getelementptr i32, ptr %131, i32 %127
  %133 = load i32, ptr %132, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %134 = load ptr, ptr %125, align 4
  %135 = getelementptr i8, ptr %134, i32 %133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %130) #12, !srcloc !14
  %136 = add nuw i32 %127, 1
  %137 = load i32, ptr %121, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %126, label %139

139:                                              ; preds = %126, %120
  %140 = tail call fastcc i32 @tegra_xusb_load_firmware(ptr noundef %0)
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.44, i32 noundef %140) #13
  br label %183

144:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 1, ptr %3, align 8, !annotation !9
  %145 = call fastcc i32 @tegra_xusb_mbox_send(ptr noundef %0, ptr noundef nonnull %3) #12
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.50, i32 noundef %145) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %149 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.50, i32 noundef %145) #13
  br label %183

150:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %28, label %172, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 11
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %94, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %158

158:                                              ; preds = %168, %156
  %159 = phi i32 [ %154, %156 ], [ %169, %168 ]
  %160 = phi i32 [ 0, %156 ], [ %170, %168 ]
  %161 = load ptr, ptr %157, align 4
  %162 = getelementptr ptr, ptr %161, i32 %160
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = tail call i32 @tegra_xusb_padctl_disable_phy_sleepwalk(ptr noundef %153, ptr noundef nonnull %163) #12
  %167 = load i32, ptr %94, align 4
  br label %168

168:                                              ; preds = %165, %158
  %169 = phi i32 [ %159, %158 ], [ %167, %165 ]
  %170 = add nuw i32 %160, 1
  %171 = icmp ult i32 %170, %169
  br i1 %171, label %158, label %172

172:                                              ; preds = %168, %151, %150
  %173 = tail call i32 @xhci_resume(ptr noundef %13, i1 noundef zeroext false) #12
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.86, i32 noundef %173) #13
  br label %183

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %181 = or i32 %180, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %182 = load ptr, ptr %178, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %181) #12, !srcloc !14
  br label %209

183:                                              ; preds = %175, %147, %142
  %184 = phi i32 [ %140, %142 ], [ %145, %147 ], [ %173, %175 ]
  %185 = load i32, ptr %94, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %206, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %189

189:                                              ; preds = %202, %187
  %190 = phi i32 [ 0, %187 ], [ %203, %202 ]
  %191 = load ptr, ptr %188, align 4
  %192 = getelementptr ptr, ptr %191, i32 %190
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %189
  %196 = tail call i32 @phy_power_off(ptr noundef nonnull %193) #12
  br i1 %28, label %197, label %202

197:                                              ; preds = %195
  %198 = load ptr, ptr %188, align 4
  %199 = getelementptr ptr, ptr %198, i32 %190
  %200 = load ptr, ptr %199, align 4
  %201 = tail call i32 @phy_exit(ptr noundef %200) #12
  br label %202

202:                                              ; preds = %197, %195, %189
  %203 = add nuw i32 %190, 1
  %204 = load i32, ptr %94, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %189, label %206

206:                                              ; preds = %202, %183
  tail call fastcc void @tegra_xusb_powergate_partitions(ptr noundef %0)
  br label %207

207:                                              ; preds = %206, %35
  %208 = phi i32 [ %36, %35 ], [ %184, %206 ]
  tail call fastcc void @tegra_xusb_clk_disable(ptr noundef %0)
  br label %209

209:                                              ; preds = %207, %177, %33
  %210 = phi i32 [ %31, %33 ], [ %208, %207 ], [ %173, %177 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xusb_enter_elpg(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 29
  br i1 %1, label %23, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  br label %23

23:                                               ; preds = %19, %13, %10
  %24 = phi i1 [ true, %10 ], [ false, %13 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 1, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %28 = and i32 %27, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !23
  tail call void @arm_heavy_mb() #12
  %29 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #12, !srcloc !14
  %30 = load ptr, ptr %3, align 4
  %31 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 25
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi ptr [ %35, %33 ], [ %30, %23 ]
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 4, i32 21, i32 4
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 4, i32 24
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #12
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 1, i32 0, i32 10
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #12
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 4, i32 23
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 4, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %71, %43
  %53 = phi i1 [ false, %71 ], [ true, %43 ]
  %54 = phi i32 [ %75, %71 ], [ 0, %43 ]
  br label %55

55:                                               ; preds = %67, %52
  %56 = phi i32 [ %68, %67 ], [ %54, %52 ]
  %57 = load ptr, ptr %38, align 4
  %58 = getelementptr ptr, ptr %57, i32 %56
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %61, 480
  %65 = icmp eq i32 %64, 96
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = add nuw i32 %56, 1
  %69 = load i32, ptr %49, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %55, label %78

71:                                               ; preds = %55
  %72 = load ptr, ptr %46, align 4
  %73 = getelementptr inbounds %struct.usb_bus, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = add nuw i32 %56, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.89, i32 noundef %74, i32 noundef %75, i32 noundef %61) #13
  %76 = load i32, ptr %49, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %52, label %114

78:                                               ; preds = %67
  br i1 %53, label %79, label %114

79:                                               ; preds = %78, %43
  %80 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 8, i32 0, i32 10, i32 0, i32 3
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 8, i32 0, i32 12
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 8, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %116, label %87

87:                                               ; preds = %106, %79
  %88 = phi i1 [ false, %106 ], [ true, %79 ]
  %89 = phi i32 [ %110, %106 ], [ 0, %79 ]
  br label %90

90:                                               ; preds = %102, %87
  %91 = phi i32 [ %103, %102 ], [ %89, %87 ]
  %92 = load ptr, ptr %80, align 4
  %93 = getelementptr ptr, ptr %92, i32 %91
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %96, 480
  %100 = icmp eq i32 %99, 96
  %101 = or i1 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = add nuw i32 %91, 1
  %104 = load i32, ptr %84, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %90, label %113

106:                                              ; preds = %90
  %107 = load ptr, ptr %81, align 4
  %108 = getelementptr inbounds %struct.usb_bus, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = add nuw i32 %91, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.89, i32 noundef %109, i32 noundef %110, i32 noundef %96) #13
  %111 = load i32, ptr %84, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %87, label %114

113:                                              ; preds = %102
  br i1 %88, label %116, label %114

114:                                              ; preds = %113, %106, %78, %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %45) #12
  %115 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.87, i32 noundef -16) #13
  br label %330

116:                                              ; preds = %113, %79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %45) #12
  %117 = tail call i32 @xhci_suspend(ptr noundef %12, i1 noundef zeroext %24) #12
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.88, i32 noundef %117) #13
  br label %330

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 9
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %123, i32 0, i32 5
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 37
  %127 = getelementptr inbounds %struct.anon, ptr %125, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 7
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i32 [ 0, %130 ], [ %142, %132 ]
  %134 = load ptr, ptr %125, align 4
  %135 = getelementptr i32, ptr %134, i32 %133
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %131, align 4
  %138 = getelementptr i8, ptr %137, i32 %136
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  %140 = load ptr, ptr %126, align 4
  %141 = getelementptr i32, ptr %140, i32 %133
  store i32 %139, ptr %141, align 4
  %142 = add nuw i32 %133, 1
  %143 = load i32, ptr %127, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %132, label %145

145:                                              ; preds = %132, %121
  %146 = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %125, i32 0, i32 1
  %147 = getelementptr inbounds %struct.tegra_xusb_context_soc, ptr %125, i32 0, i32 1, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 8
  %152 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 37, i32 1
  br label %153

153:                                              ; preds = %153, %150
  %154 = phi i32 [ 0, %150 ], [ %163, %153 ]
  %155 = load ptr, ptr %146, align 4
  %156 = getelementptr i32, ptr %155, i32 %154
  %157 = load i32, ptr %156, align 4
  %158 = load ptr, ptr %151, align 4
  %159 = getelementptr i8, ptr %158, i32 %157
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !15
  %161 = load ptr, ptr %152, align 4
  %162 = getelementptr i32, ptr %161, i32 %154
  store i32 %160, ptr %162, align 4
  %163 = add nuw i32 %154, 1
  %164 = load i32, ptr %147, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %153, label %166

166:                                              ; preds = %153, %145
  br i1 %24, label %167, label %305

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 11
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr %3, align 4
  %171 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %170) #12
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.usb_hcd, ptr %170, i32 0, i32 25
  %175 = load ptr, ptr %174, align 4
  br label %176

176:                                              ; preds = %173, %167
  %177 = phi ptr [ %175, %173 ], [ %170, %167 ]
  %178 = load ptr, ptr %122, align 4
  %179 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %178, i32 0, i32 4
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %305, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.usb_hcd, ptr %177, i32 8, i32 0, i32 10, i32 0, i32 3
  %184 = getelementptr inbounds %struct.usb_hcd, ptr %177, i32 4, i32 21, i32 4
  %185 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  %186 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 29
  %187 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 28
  %188 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 31
  %189 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 30
  %190 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 32
  br label %191

191:                                              ; preds = %298, %182
  %192 = phi ptr [ %178, %182 ], [ %299, %298 ]
  %193 = phi i32 [ 0, %182 ], [ %300, %298 ]
  %194 = phi i32 [ 0, %182 ], [ %301, %298 ]
  %195 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %192, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr %struct.tegra_xusb_phy_type, ptr %196, i32 %194
  %198 = load ptr, ptr %197, align 4
  %199 = tail call i32 @strcmp(ptr noundef %198, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, ptr %183, ptr %184
  %202 = tail call i32 @strcmp(ptr noundef %198, ptr noundef nonnull dereferenceable(5) @.str.7) #12
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %191
  %205 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %192, i32 0, i32 6, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %191
  %208 = phi i32 [ %206, %204 ], [ 0, %191 ]
  %209 = getelementptr %struct.tegra_xusb_phy_type, ptr %196, i32 %194, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %298, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.xhci_hub, ptr %201, i32 0, i32 1
  br label %214

214:                                              ; preds = %290, %212
  %215 = phi ptr [ %196, %212 ], [ %294, %290 ]
  %216 = phi i32 [ %193, %212 ], [ %219, %290 ]
  %217 = phi i32 [ 0, %212 ], [ %291, %290 ]
  %218 = load ptr, ptr %185, align 4
  %219 = add i32 %216, 1
  %220 = getelementptr ptr, ptr %218, i32 %216
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %290, label %223

223:                                              ; preds = %214
  %224 = add i32 %217, %208
  %225 = load i32, ptr %213, align 4
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %227, label %290

227:                                              ; preds = %223
  %228 = getelementptr %struct.tegra_xusb_phy_type, ptr %215, i32 %194
  %229 = load ptr, ptr %228, align 4
  %230 = tail call i32 @strcmp(ptr noundef %229, ptr noundef nonnull dereferenceable(5) @.str.7) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %274, label %232

232:                                              ; preds = %227
  %233 = tail call i32 @strcmp(ptr noundef %229, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load ptr, ptr %187, align 4
  %237 = getelementptr ptr, ptr %236, i32 %217
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %274, label %240

240:                                              ; preds = %235
  %241 = load i32, ptr %189, align 4
  %242 = icmp eq i32 %241, %217
  br i1 %242, label %271, label %290

243:                                              ; preds = %232
  %244 = tail call i32 @strcmp(ptr noundef %229, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %290

246:                                              ; preds = %243
  %247 = load ptr, ptr %168, align 4
  %248 = load i32, ptr %186, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %274, label %250

250:                                              ; preds = %264, %246
  %251 = phi i32 [ %265, %264 ], [ %248, %246 ]
  %252 = phi i32 [ %266, %264 ], [ 0, %246 ]
  %253 = load ptr, ptr %187, align 4
  %254 = getelementptr ptr, ptr %253, i32 %252
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %264, label %257

257:                                              ; preds = %250
  %258 = tail call i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef %247, i32 noundef %252) #12
  %259 = icmp sgt i32 %258, -1
  %260 = icmp eq i32 %258, %217
  %261 = and i1 %259, %260
  br i1 %261, label %268, label %262

262:                                              ; preds = %257
  %263 = load i32, ptr %186, align 4
  br label %264

264:                                              ; preds = %262, %250
  %265 = phi i32 [ %263, %262 ], [ %251, %250 ]
  %266 = add nuw i32 %252, 1
  %267 = icmp ult i32 %266, %265
  br i1 %267, label %250, label %274

268:                                              ; preds = %257
  %269 = load i32, ptr %188, align 4
  %270 = icmp eq i32 %269, %217
  br i1 %270, label %271, label %290

271:                                              ; preds = %268, %240
  %272 = load i8, ptr %190, align 4, !range !8
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %271, %264, %246, %235, %227
  %275 = load ptr, ptr %201, align 4
  %276 = getelementptr ptr, ptr %275, i32 %224
  %277 = load ptr, ptr %276, align 4
  %278 = load ptr, ptr %277, align 4
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !25
  %280 = and i32 %279, 15360
  switch i32 %280, label %283 [
    i32 2048, label %286
    i32 3072, label %281
    i32 1024, label %282
  ]

281:                                              ; preds = %274
  br label %286

282:                                              ; preds = %274
  br label %286

283:                                              ; preds = %274
  %284 = icmp ugt i32 %280, 4095
  %285 = select i1 %284, i32 5, i32 0
  br label %286

286:                                              ; preds = %283, %282, %281, %274
  %287 = phi i32 [ 3, %281 ], [ 2, %282 ], [ 1, %274 ], [ %285, %283 ]
  %288 = tail call i32 @tegra_xusb_padctl_enable_phy_sleepwalk(ptr noundef %169, ptr noundef nonnull %221, i32 noundef %287) #12
  %289 = tail call i32 @tegra_xusb_padctl_enable_phy_wake(ptr noundef %169, ptr noundef nonnull %221) #12
  br label %290

290:                                              ; preds = %286, %271, %268, %243, %240, %223, %214
  %291 = add nuw i32 %217, 1
  %292 = load ptr, ptr %122, align 4
  %293 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %292, i32 0, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr %struct.tegra_xusb_phy_type, ptr %294, i32 %194, i32 1
  %296 = load i32, ptr %295, align 4
  %297 = icmp ult i32 %291, %296
  br i1 %297, label %214, label %298

298:                                              ; preds = %290, %207
  %299 = phi ptr [ %192, %207 ], [ %292, %290 ]
  %300 = phi i32 [ %193, %207 ], [ %219, %290 ]
  %301 = add nuw i32 %194, 1
  %302 = getelementptr inbounds %struct.tegra_xusb_soc, ptr %299, i32 0, i32 4
  %303 = load i32, ptr %302, align 4
  %304 = icmp ult i32 %301, %303
  br i1 %304, label %191, label %305

305:                                              ; preds = %298, %176, %166
  tail call fastcc void @tegra_xusb_powergate_partitions(ptr noundef %0)
  %306 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 27
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %328, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.tegra_xusb, ptr %0, i32 0, i32 26
  br label %311

311:                                              ; preds = %324, %309
  %312 = phi i32 [ 0, %309 ], [ %325, %324 ]
  %313 = load ptr, ptr %310, align 4
  %314 = getelementptr ptr, ptr %313, i32 %312
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %324, label %317

317:                                              ; preds = %311
  %318 = tail call i32 @phy_power_off(ptr noundef nonnull %315) #12
  br i1 %24, label %324, label %319

319:                                              ; preds = %317
  %320 = load ptr, ptr %310, align 4
  %321 = getelementptr ptr, ptr %320, i32 %312
  %322 = load ptr, ptr %321, align 4
  %323 = tail call i32 @phy_exit(ptr noundef %322) #12
  br label %324

324:                                              ; preds = %319, %317, %311
  %325 = add nuw i32 %312, 1
  %326 = load i32, ptr %306, align 4
  %327 = icmp ult i32 %325, %326
  br i1 %327, label %311, label %328

328:                                              ; preds = %324, %305
  tail call fastcc void @tegra_xusb_clk_disable(ptr noundef %0)
  %329 = icmp eq i32 %117, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %328, %119, %114
  %331 = phi i32 [ %117, %328 ], [ %117, %119 ], [ -16, %114 ]
  %332 = load ptr, ptr %25, align 4
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !26
  %334 = or i32 %333, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %335 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %334) #12, !srcloc !14
  %336 = load ptr, ptr %0, align 4
  %337 = tail call i64 @ktime_get_mono_fast_ns() #12
  %338 = getelementptr inbounds %struct.device, ptr %336, i32 0, i32 11, i32 22
  store volatile i64 %337, ptr %338, align 8
  br label %339

339:                                              ; preds = %330, %328
  %340 = phi i32 [ 0, %328 ], [ %331, %330 ]
  ret i32 %340
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_disable_phy_wake(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_disable_phy_sleepwalk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_enable_phy_sleepwalk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_enable_phy_wake(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 5050823}
!12 = !{i64 2154164618}
!13 = !{i64 2154164982}
!14 = !{i64 5050405}
!15 = !{i64 2154163586}
!16 = !{i64 2154163950}
!17 = !{i64 2154176596}
!18 = !{i64 2154180168}
!19 = !{i64 2154180917}
!20 = !{i64 2154226051}
!21 = !{i64 2154226267}
!22 = !{i64 2154219490}
!23 = !{i64 2154219706}
!24 = !{i64 2154216963}
!25 = !{i64 2154218625}
!26 = !{i64 2154221922}
!27 = !{i64 2154222138}
