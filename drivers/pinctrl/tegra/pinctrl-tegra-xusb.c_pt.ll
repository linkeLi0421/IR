; ModuleID = '/llk/IR/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c_pt.bc'
source_filename = "../drivers/pinctrl/tegra/pinctrl-tegra-xusb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_legacy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_legacy_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_legacy_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_legacy_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_legacy_remove\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_legacy_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_xusb_padctl_soc = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.tegra_xusb_padctl_function = type { ptr, ptr, i32 }
%struct.tegra_xusb_padctl_lane = type { ptr, i32, i32, i32, i32, ptr, i32 }
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
%struct.tegra_xusb_padctl = type { ptr, ptr, %struct.mutex, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, [2 x ptr], i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@tegra_xusb_padctl_legacy_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&padctl->lock\00", align 1
@tegra_xusb_padctl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-xusb-padctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra124_pins = internal constant [12 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.22, ptr null }], align 4
@tegra_xusb_padctl_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @tegra_xusb_padctl_get_groups_count, ptr @tegra_xusb_padctl_get_group_name, ptr @tegra_xusb_padctl_get_group_pins, ptr null, ptr @tegra_xusb_padctl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@tegra_xusb_padctl_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @tegra_xusb_padctl_get_functions_count, ptr @tegra_xusb_padctl_get_function_name, ptr @tegra_xusb_padctl_get_function_groups, ptr @tegra_xusb_padctl_pinmux_set, ptr null, ptr null, ptr null, i8 0 }, align 4
@tegra_xusb_padctl_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @tegra_xusb_padctl_pinconf_group_get, ptr @tegra_xusb_padctl_pinconf_group_set, ptr null, ptr @tegra_xusb_padctl_pinconf_group_dbg_show, ptr @tegra_xusb_padctl_pinconf_config_dbg_show }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register pincontrol\0A\00", align 1
@pcie_phy_ops = internal constant %struct.phy_ops { ptr @tegra_xusb_phy_init, ptr @tegra_xusb_phy_exit, ptr @pcie_phy_power_on, ptr @pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sata_phy_ops = internal constant %struct.phy_ops { ptr @tegra_xusb_phy_init, ptr @tegra_xusb_phy_exit, ptr @sata_phy_power_on, ptr @sata_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register PHYs: %d\0A\00", align 1
@__kstrtab_tegra_xusb_padctl_legacy_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_legacy_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_legacy_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_probe to i32), ptr @__kstrtab_tegra_xusb_padctl_legacy_probe, ptr @__kstrtabns_tegra_xusb_padctl_legacy_probe }, section "___ksymtab_gpl+tegra_xusb_padctl_legacy_probe", align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@__kstrtab_tegra_xusb_padctl_legacy_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_legacy_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_legacy_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_legacy_remove to i32), ptr @__kstrtab_tegra_xusb_padctl_legacy_remove, ptr @__kstrtabns_tegra_xusb_padctl_legacy_remove }, section "___ksymtab_gpl+tegra_xusb_padctl_legacy_remove", align 4
@tegra124_soc = internal constant %struct.tegra_xusb_padctl_soc { ptr @tegra124_pins, i32 12, ptr @tegra124_functions, i32 7, ptr @tegra124_lanes, i32 12 }, align 4
@tegra124_functions = internal global [7 x %struct.tegra_xusb_padctl_function] [%struct.tegra_xusb_padctl_function { ptr @.str.4, ptr @tegra124_snps_groups, i32 6 }, %struct.tegra_xusb_padctl_function { ptr @.str.5, ptr @tegra124_xusb_groups, i32 6 }, %struct.tegra_xusb_padctl_function { ptr @.str.6, ptr @tegra124_uart_groups, i32 3 }, %struct.tegra_xusb_padctl_function { ptr @.str.7, ptr @tegra124_pcie_groups, i32 5 }, %struct.tegra_xusb_padctl_function { ptr @.str.8, ptr @tegra124_usb3_groups, i32 3 }, %struct.tegra_xusb_padctl_function { ptr @.str.9, ptr @tegra124_sata_groups, i32 1 }, %struct.tegra_xusb_padctl_function { ptr @.str.10, ptr @tegra124_rsvd_groups, i32 9 }], align 4
@tegra124_lanes = internal constant [12 x %struct.tegra_xusb_padctl_lane] [%struct.tegra_xusb_padctl_lane { ptr @.str.11, i32 4, i32 0, i32 3, i32 0, ptr @tegra124_otg_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.12, i32 4, i32 2, i32 3, i32 0, ptr @tegra124_otg_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.13, i32 4, i32 4, i32 3, i32 0, ptr @tegra124_otg_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.14, i32 4, i32 12, i32 1, i32 0, ptr @tegra124_usb_functions, i32 2 }, %struct.tegra_xusb_padctl_lane { ptr @.str.15, i32 4, i32 14, i32 1, i32 0, ptr @tegra124_usb_functions, i32 2 }, %struct.tegra_xusb_padctl_lane { ptr @.str.16, i32 4, i32 15, i32 1, i32 0, ptr @tegra124_usb_functions, i32 2 }, %struct.tegra_xusb_padctl_lane { ptr @.str.17, i32 308, i32 16, i32 3, i32 1, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.18, i32 308, i32 18, i32 3, i32 2, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.19, i32 308, i32 20, i32 3, i32 3, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.20, i32 308, i32 22, i32 3, i32 4, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.21, i32 308, i32 24, i32 3, i32 5, ptr @tegra124_pci_functions, i32 4 }, %struct.tegra_xusb_padctl_lane { ptr @.str.22, i32 308, i32 26, i32 3, i32 6, ptr @tegra124_pci_functions, i32 4 }], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"snps\00", align 1
@tegra124_snps_groups = internal constant [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"xusb\00", align 1
@tegra124_xusb_groups = internal constant [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@tegra124_uart_groups = internal constant [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@tegra124_pcie_groups = internal constant [5 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@tegra124_usb3_groups = internal constant [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.22], align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@tegra124_sata_groups = internal constant [1 x ptr] [ptr @.str.22], align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"rsvd\00", align 1
@tegra124_rsvd_groups = internal constant [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"otg-0\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"otg-1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"otg-2\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ulpi-0\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"hsic-0\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"hsic-1\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pcie-0\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pcie-1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"pcie-2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"pcie-3\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"pcie-4\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"sata-0\00", align 1
@tegra124_otg_functions = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 6], align 4
@tegra124_usb_functions = internal constant [2 x i32] [i32 0, i32 1], align 4
@tegra124_pci_functions = internal constant [4 x i32] [i32 3, i32 4, i32 5, i32 6], align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"nvidia,function\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"nvidia,lanes\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"nvidia,iddq\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"invalid configuration parameter: %04x\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"\0A\09%s=%lu\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s=%lu\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"drivers/pinctrl/tegra/pinctrl-tegra-xusb.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_tegra_xusb_padctl_legacy_probe, ptr @__ksymtab_tegra_xusb_padctl_legacy_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_legacy_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 100, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %74, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @tegra_xusb_padctl_legacy_probe.__key) #8
  store ptr %2, ptr %3, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_xusb_padctl_of_match, ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %15 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = ptrtoint ptr %14 to i32
  br label %74

19:                                               ; preds = %5
  %20 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %21 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %74

25:                                               ; preds = %19
  %26 = tail call i32 @reset_control_deassert(ptr noundef %20) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %29, i8 0, i32 44, i1 false)
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load ptr, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ %32, %28 ]
  store ptr %37, ptr %29, align 4
  %38 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6, i32 1
  store ptr @tegra124_pins, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6, i32 2
  store i32 12, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6, i32 3
  store ptr @tegra_xusb_padctl_pinctrl_ops, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6, i32 4
  store ptr @tegra_xusb_padctl_pinmux_ops, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6, i32 5
  store ptr @tegra_xusb_padctl_pinconf_ops, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 6, i32 6
  store ptr null, ptr %43, align 4
  %44 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef %29, ptr noundef nonnull %3) #8
  %45 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %48 = load ptr, ptr %45, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %70

50:                                               ; preds = %36
  %51 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @pcie_phy_ops) #8
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = ptrtoint ptr %51 to i32
  br label %70

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 8
  store ptr %51, ptr %56, align 4
  %57 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 8
  store ptr %3, ptr %57, align 8
  %58 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @sata_phy_ops) #8
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = ptrtoint ptr %58 to i32
  br label %70

62:                                               ; preds = %55
  %63 = getelementptr %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 8, i32 1
  store ptr %58, ptr %63, align 4
  %64 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  store ptr %3, ptr %64, align 8
  %65 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @tegra_xusb_padctl_xlate) #8
  %66 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 7
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = ptrtoint ptr %65 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %69) #9
  br label %70

70:                                               ; preds = %68, %60, %53, %47
  %71 = phi i32 [ %49, %47 ], [ %54, %53 ], [ %61, %60 ], [ %69, %68 ]
  %72 = load ptr, ptr %21, align 4
  %73 = tail call i32 @reset_control_assert(ptr noundef %72) #8
  br label %74

74:                                               ; preds = %70, %62, %25, %23, %17, %1
  %75 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %71, %70 ], [ -12, %1 ], [ %26, %25 ], [ 0, %62 ]
  ret i32 %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @tegra_xusb_padctl_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  %8 = icmp ugt i32 %4, 1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.tegra_xusb_padctl, ptr %12, i32 0, i32 8, i32 %4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi ptr [ %14, %10 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_legacy_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %6) #9
  br label %10

10:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_xusb_padctl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 1
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_group_pins(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %1
  store ptr %9, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4
  store i32 0, ptr %3, align 4
  store ptr null, ptr %2, align 4
  %11 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %82, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %10, i32 0, i32 5
  br label %15

15:                                               ; preds = %78, %13
  %16 = phi ptr [ %11, %13 ], [ %80, %78 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  %17 = call i32 @of_property_read_string(ptr noundef nonnull %16, ptr noundef nonnull @.str.23, ptr noundef nonnull %7) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = icmp eq i32 %17, -22
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %76

22:                                               ; preds = %19
  store ptr null, ptr %7, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.25, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = icmp eq i32 %24, -22
  br i1 %27, label %35, label %73

28:                                               ; preds = %23
  %29 = load i32, ptr %8, align 4
  %30 = load ptr, ptr %14, align 4
  %31 = call i32 @pinctrl_utils_add_config(ptr noundef %30, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %29) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %37 = load ptr, ptr %7, align 4
  %38 = call i32 @of_property_read_string_helper(ptr noundef nonnull %16, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %36, 0
  %42 = icmp ne ptr %37, null
  %43 = zext i1 %42 to i32
  %44 = select i1 %42, i32 2, i32 1
  %45 = select i1 %41, i32 %43, i32 %44
  %46 = mul nuw i32 %45, %38
  %47 = load ptr, ptr %14, align 4
  %48 = call i32 @pinctrl_utils_reserve_map(ptr noundef %47, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %46) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %40
  %51 = call ptr @of_find_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %52 = call ptr @of_prop_next_string(ptr noundef %51, ptr noundef null) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %70, %50
  %55 = phi ptr [ %71, %70 ], [ %52, %50 ]
  %56 = load ptr, ptr %7, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %14, align 4
  %60 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %59, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, ptr noundef nonnull %55, ptr noundef nonnull %56) #8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58, %54
  %63 = load i32, ptr %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %14, align 4
  %67 = load ptr, ptr %6, align 4
  %68 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %66, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, ptr noundef nonnull %55, ptr noundef %67, i32 noundef %63, i32 noundef 4) #8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %62
  %71 = call ptr @of_prop_next_string(ptr noundef %51, ptr noundef nonnull %55) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %54

73:                                               ; preds = %65, %58, %40, %35, %28, %26
  %74 = phi i32 [ %60, %58 ], [ %68, %65 ], [ %24, %26 ], [ %31, %28 ], [ %38, %35 ], [ %48, %40 ]
  %75 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %75) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %76

76:                                               ; preds = %73, %21
  %77 = phi i32 [ %17, %21 ], [ %74, %73 ]
  call void @of_node_put(ptr noundef nonnull %16) #8
  br label %82

78:                                               ; preds = %70, %50
  %79 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %79) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %80 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %16) #8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %15

82:                                               ; preds = %78, %76, %4
  %83 = phi i32 [ %77, %76 ], [ 0, %4 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_functions_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_xusb_padctl_get_function_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.tegra_xusb_padctl_function, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.tegra_xusb_padctl_function, ptr %9, i32 %1, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.tegra_xusb_padctl_function, ptr %14, i32 %1, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_pinmux_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %3
  %13 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 5
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr i32, ptr %14, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %42, label %15

23:                                               ; preds = %15
  %24 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %30 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %31, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %29, %35
  %37 = shl i32 %16, %33
  %38 = or i32 %36, %37
  %39 = load i32, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #8, !srcloc !12
  br label %42

42:                                               ; preds = %23, %20, %3
  %43 = phi i32 [ 0, %23 ], [ -22, %3 ], [ -22, %20 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult i32 %5, 65536
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %9, i32 %1, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %9, i32 %1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %22 = load i32, ptr %12, align 4
  %23 = xor i32 %21, -1
  %24 = lshr i32 %23, %22
  %25 = and i32 %24, 1
  store i32 %25, ptr %2, align 4
  br label %29

26:                                               ; preds = %3
  %27 = lshr i32 %5, 16
  %28 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.26, i32 noundef %27) #9
  br label %29

29:                                               ; preds = %26, %15, %11
  %30 = phi i32 [ 0, %15 ], [ -524, %26 ], [ -22, %11 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %11, i32 %1, i32 4
  %13 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %11, i32 %1, i32 1
  %14 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %5, i32 0, i32 1
  br label %15

15:                                               ; preds = %24, %7
  %16 = phi i32 [ 0, %7 ], [ %39, %24 ]
  %17 = getelementptr i32, ptr %2, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = icmp ult i32 %18, 65536
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32, ptr %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %13, align 4
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %29 = icmp eq i32 %19, 0
  %30 = load i32, ptr %12, align 4
  %31 = shl nuw i32 1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = or i32 %31, %28
  %35 = select i1 %29, i32 %34, i32 %33
  %36 = load i32, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #8, !srcloc !12
  %39 = add nuw i32 %16, 1
  %40 = icmp eq i32 %39, %3
  br i1 %40, label %44, label %15

41:                                               ; preds = %15
  %42 = lshr i32 %18, 16
  %43 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.26, i32 noundef %42) #9
  br label %44

44:                                               ; preds = %41, %24, %21, %4
  %45 = phi i32 [ -524, %41 ], [ 0, %4 ], [ -22, %21 ], [ 0, %24 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_xusb_padctl_pinconf_group_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr %struct.tegra_xusb_padctl_lane, ptr %8, i32 %2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %19 = load i32, ptr %9, align 4
  %20 = xor i32 %18, -1
  %21 = lshr i32 %20, %19
  %22 = and i32 %21, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.25, i32 0, i32 7), i32 noundef %22) #8
  br label %23

23:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_xusb_padctl_pinconf_config_dbg_show(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 65536
  %5 = select i1 %4, ptr @.str.25, ptr @.str.28
  %6 = and i32 %2, 65535
  %7 = tail call ptr @strchr(ptr noundef nonnull %5, i32 noundef 44) #8
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 1
  %10 = select i1 %8, ptr %5, ptr %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %10, i32 noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = and i32 %19, -33554433
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 28
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %26 = and i32 %25, -67108865
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !12
  br label %29

29:                                               ; preds = %9, %1
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 513, i32 noundef 9, ptr noundef null) #8
  br label %32

9:                                                ; preds = %1
  %10 = add i32 %6, -1
  store i32 %10, ptr %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %17 = or i32 %16, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %23 = or i32 %22, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !12
  br label %32

32:                                               ; preds = %12, %9, %8
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_phy_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = and i32 %7, -61441
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = or i32 %13, 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 64
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = or i32 %19, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !12
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 -5, %23
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = add i32 %24, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %34, %1
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %32 = and i32 %31, 524288
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = add i32 %24, %35
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %28, label %38

38:                                               ; preds = %34, %28, %1
  %39 = phi i32 [ -110, %1 ], [ 0, %28 ], [ -110, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = and i32 %7, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_phy_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 328
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = and i32 %7, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 312
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = and i32 %13, -10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 312
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = or i32 %19, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !12
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 312
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %26 = or i32 %25, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !12
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 -5, %29
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %40, %1
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 312
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %38 = and i32 %37, 134217728
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %30, %41
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %34, label %44

44:                                               ; preds = %40, %34, %1
  %45 = phi i32 [ -110, %1 ], [ 0, %34 ], [ -110, %40 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 312
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = and i32 %7, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 312
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = and i32 %13, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 312
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = or i32 %19, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !12
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 328
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #8, !srcloc !12
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2406916}
!10 = !{i64 2153645096}
!11 = !{i64 2153644444}
!12 = !{i64 2406498}
!13 = !{!"branch_weights", i32 1, i32 2000}
