; ModuleID = '/llk/IR/drivers/phy/tegra/xusb-tegra124.c_pt.bc'
source_filename = "../drivers/phy/tegra/xusb-tegra124.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra124_xusb_padctl_soc:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra124_xusb_padctl_soc\22\09\09\09\09\09"
module asm "__kstrtabns_tegra124_xusb_padctl_soc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tegra_xusb_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_padctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_padctl_soc = type { ptr, i32, %struct.anon.66, ptr, ptr, i32, i8, i8 }
%struct.anon.66 = type { %struct.anon.67, %struct.anon.67, %struct.anon.67, %struct.anon.67 }
%struct.anon.67 = type { ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_xusb_pad_soc = type { ptr, ptr, i32, ptr }
%struct.tegra_xusb_lane_soc = type { ptr, i32, i32, i32, ptr, i32, %struct.anon }
%struct.anon = type { i32 }
%struct.tegra_xusb_pad_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.tegra_xusb_lane_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_lane_map = type { i32, ptr, i32, ptr }
%struct.tegra_xusb_usb2_pad = type { %struct.tegra_xusb_pad, ptr, i32, %struct.mutex }
%struct.tegra_xusb_pad = type { ptr, ptr, ptr, ptr, %struct.device, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tegra_xusb_lane = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.tegra_xusb_padctl = type { ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, ptr }
%struct.tegra124_xusb_padctl = type { %struct.tegra_xusb_padctl, %struct.tegra124_xusb_fuse_calibration }
%struct.tegra124_xusb_fuse_calibration = type { [3 x i32], i32, i32, i32 }
%struct.tegra_xusb_usb2_lane = type { %struct.tegra_xusb_lane, i32, i8 }
%struct.tegra_xusb_usb2_port = type { %struct.tegra_xusb_port, ptr, i32, i8, i32 }
%struct.tegra_xusb_port = type { ptr, ptr, i32, %struct.list_head, %struct.device, ptr, %struct.work_struct, %struct.usb_phy, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.tegra_xusb_hsic_pad = type { %struct.tegra_xusb_pad, ptr, ptr }
%struct.tegra_xusb_hsic_lane = type { %struct.tegra_xusb_lane, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.tegra_xusb_usb3_port = type { %struct.tegra_xusb_port, ptr, i8, i32, i8, i8, i32, i32, i32, i32 }

@tegra124_pads = internal global [5 x ptr] [ptr @tegra124_usb2_pad, ptr @tegra124_ulpi_pad, ptr @tegra124_hsic_pad, ptr @tegra124_pcie_pad, ptr @tegra124_sata_pad], align 4
@tegra124_usb2_port_ops = internal constant %struct.tegra_xusb_port_ops { ptr @tegra_xusb_usb2_port_release, ptr @tegra_xusb_usb2_port_remove, ptr @tegra124_usb2_port_enable, ptr @tegra124_usb2_port_disable, ptr @tegra124_usb2_port_map }, align 4
@tegra124_ulpi_port_ops = internal constant %struct.tegra_xusb_port_ops { ptr @tegra_xusb_ulpi_port_release, ptr null, ptr @tegra124_ulpi_port_enable, ptr @tegra124_ulpi_port_disable, ptr @tegra124_ulpi_port_map }, align 4
@tegra124_hsic_port_ops = internal constant %struct.tegra_xusb_port_ops { ptr @tegra_xusb_hsic_port_release, ptr null, ptr @tegra124_hsic_port_enable, ptr @tegra124_hsic_port_disable, ptr @tegra124_hsic_port_map }, align 4
@tegra124_usb3_port_ops = internal constant %struct.tegra_xusb_port_ops { ptr @tegra_xusb_usb3_port_release, ptr @tegra_xusb_usb3_port_remove, ptr @tegra124_usb3_port_enable, ptr @tegra124_usb3_port_disable, ptr @tegra124_usb3_port_map }, align 4
@tegra124_xusb_padctl_ops = internal constant %struct.tegra_xusb_padctl_ops { ptr @tegra124_xusb_padctl_probe, ptr @tegra124_xusb_padctl_remove, ptr null, ptr null, ptr @tegra124_usb3_save_context, ptr @tegra124_hsic_set_idle, ptr null, ptr null, ptr null }, align 4
@tegra124_xusb_padctl_supply_names = internal constant [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@tegra124_xusb_padctl_soc = dso_local constant %struct.tegra_xusb_padctl_soc { ptr @tegra124_pads, i32 5, %struct.anon.66 { %struct.anon.67 { ptr @tegra124_usb2_port_ops, i32 3 }, %struct.anon.67 { ptr @tegra124_ulpi_port_ops, i32 1 }, %struct.anon.67 { ptr @tegra124_hsic_port_ops, i32 2 }, %struct.anon.67 { ptr @tegra124_usb3_port_ops, i32 2 } }, ptr @tegra124_xusb_padctl_ops, ptr @tegra124_xusb_padctl_supply_names, i32 4, i8 0, i8 0 }, align 4
@__kstrtab_tegra124_xusb_padctl_soc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra124_xusb_padctl_soc = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra124_xusb_padctl_soc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra124_xusb_padctl_soc to i32), ptr @__kstrtab_tegra124_xusb_padctl_soc, ptr @__kstrtabns_tegra124_xusb_padctl_soc }, section "___ksymtab_gpl+tegra124_xusb_padctl_soc", align 4
@__UNIQUE_ID_author252 = internal constant [58 x i8] c"phy_tegra_xusb.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [71 x i8] c"phy_tegra_xusb.description=NVIDIA Tegra 124 XUSB Pad Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [53 x i8] c"phy_tegra_xusb.file=drivers/phy/tegra/phy-tegra-xusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [30 x i8] c"phy_tegra_xusb.license=GPL v2\00", section ".modinfo", align 1
@tegra124_usb2_pad = internal constant %struct.tegra_xusb_pad_soc { ptr @.str, ptr @tegra124_usb2_lanes, i32 3, ptr @tegra124_usb2_ops }, align 4
@tegra124_ulpi_pad = internal constant %struct.tegra_xusb_pad_soc { ptr @.str.10, ptr @tegra124_ulpi_lanes, i32 1, ptr @tegra124_ulpi_ops }, align 4
@tegra124_hsic_pad = internal constant %struct.tegra_xusb_pad_soc { ptr @.str.12, ptr @tegra124_hsic_lanes, i32 2, ptr @tegra124_hsic_ops }, align 4
@tegra124_pcie_pad = internal constant %struct.tegra_xusb_pad_soc { ptr @.str.15, ptr @tegra124_pcie_lanes, i32 5, ptr @tegra124_pcie_ops }, align 4
@tegra124_sata_pad = internal constant %struct.tegra_xusb_pad_soc { ptr @.str.22, ptr @tegra124_sata_lanes, i32 1, ptr @tegra124_sata_ops }, align 4
@.str = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@tegra124_usb2_lanes = internal constant [3 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.1, i32 4, i32 0, i32 3, ptr @tegra124_usb2_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.2, i32 4, i32 2, i32 3, ptr @tegra124_usb2_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.3, i32 4, i32 4, i32 3, ptr @tegra124_usb2_functions, i32 3, %struct.anon zeroinitializer }], align 4
@tegra124_usb2_ops = internal constant %struct.tegra_xusb_pad_ops { ptr @tegra124_usb2_pad_probe, ptr @tegra124_usb2_pad_remove }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"usb2-0\00", align 1
@tegra124_usb2_functions = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"usb2-1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"usb2-2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"snps\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xusb\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@tegra124_usb2_pad_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"&usb2->lock\00", align 1
@tegra124_usb2_lane_ops = internal constant %struct.tegra_xusb_lane_ops { ptr @tegra124_usb2_lane_probe, ptr @tegra124_usb2_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra124_usb2_phy_ops = internal constant %struct.phy_ops { ptr @tegra124_usb2_phy_init, ptr @tegra124_usb2_phy_exit, ptr @tegra124_usb2_phy_power_on, ptr @tegra124_usb2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"drivers/phy/tegra/xusb-tegra124.c\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"no port found for USB2 lane %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@tegra124_ulpi_lanes = internal constant [1 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.11, i32 4, i32 12, i32 1, ptr @tegra124_ulpi_functions, i32 2, %struct.anon zeroinitializer }], align 4
@tegra124_ulpi_ops = internal constant %struct.tegra_xusb_pad_ops { ptr @tegra124_ulpi_pad_probe, ptr @tegra124_ulpi_pad_remove }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"ulpi-0\00", align 1
@tegra124_ulpi_functions = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.5], align 4
@tegra124_ulpi_lane_ops = internal constant %struct.tegra_xusb_lane_ops { ptr @tegra124_ulpi_lane_probe, ptr @tegra124_ulpi_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra124_ulpi_phy_ops = internal constant %struct.phy_ops { ptr @tegra124_ulpi_phy_init, ptr @tegra124_ulpi_phy_exit, ptr @tegra124_ulpi_phy_power_on, ptr @tegra124_ulpi_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@tegra124_hsic_lanes = internal constant [2 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.13, i32 4, i32 14, i32 1, ptr @tegra124_hsic_functions, i32 2, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.14, i32 4, i32 15, i32 1, ptr @tegra124_hsic_functions, i32 2, %struct.anon zeroinitializer }], align 4
@tegra124_hsic_ops = internal constant %struct.tegra_xusb_pad_ops { ptr @tegra124_hsic_pad_probe, ptr @tegra124_hsic_pad_remove }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"hsic-0\00", align 1
@tegra124_hsic_functions = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.5], align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"hsic-1\00", align 1
@tegra124_hsic_lane_ops = internal constant %struct.tegra_xusb_lane_ops { ptr @tegra124_hsic_lane_probe, ptr @tegra124_hsic_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra124_hsic_phy_ops = internal constant %struct.phy_ops { ptr @tegra124_hsic_phy_init, ptr @tegra124_hsic_phy_exit, ptr @tegra124_hsic_phy_power_on, ptr @tegra124_hsic_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@tegra124_pcie_lanes = internal constant [5 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.16, i32 308, i32 16, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.17, i32 308, i32 18, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.18, i32 308, i32 20, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.19, i32 308, i32 22, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }, %struct.tegra_xusb_lane_soc { ptr @.str.20, i32 308, i32 24, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }], align 4
@tegra124_pcie_ops = internal constant %struct.tegra_xusb_pad_ops { ptr @tegra124_pcie_pad_probe, ptr @tegra124_pcie_pad_remove }, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"pcie-0\00", align 1
@tegra124_pcie_functions = internal constant [3 x ptr] [ptr @.str.15, ptr @.str.21, ptr @.str.22], align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"pcie-1\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pcie-2\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"pcie-3\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"pcie-4\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"usb3-ss\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@tegra124_pcie_lane_ops = internal constant %struct.tegra_xusb_lane_ops { ptr @tegra124_pcie_lane_probe, ptr @tegra124_pcie_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra124_pcie_phy_ops = internal constant %struct.phy_ops { ptr @tegra124_pcie_phy_init, ptr @tegra124_pcie_phy_exit, ptr @tegra124_pcie_phy_power_on, ptr @tegra124_pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@tegra124_sata_lanes = internal constant [1 x %struct.tegra_xusb_lane_soc] [%struct.tegra_xusb_lane_soc { ptr @.str.23, i32 308, i32 26, i32 3, ptr @tegra124_pcie_functions, i32 3, %struct.anon zeroinitializer }], align 4
@tegra124_sata_ops = internal constant %struct.tegra_xusb_pad_ops { ptr @tegra124_sata_pad_probe, ptr @tegra124_sata_pad_remove }, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"sata-0\00", align 1
@tegra124_sata_lane_ops = internal constant %struct.tegra_xusb_lane_ops { ptr @tegra124_sata_lane_probe, ptr @tegra124_sata_lane_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra124_sata_phy_ops = internal constant %struct.phy_ops { ptr @tegra124_sata_phy_init, ptr @tegra124_sata_phy_exit, ptr @tegra124_sata_phy_power_on, ptr @tegra124_sata_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra124_usb3_map = internal constant [4 x %struct.tegra_xusb_lane_map] [%struct.tegra_xusb_lane_map { i32 0, ptr @.str.15, i32 0, ptr null }, %struct.tegra_xusb_lane_map { i32 1, ptr @.str.15, i32 1, ptr null }, %struct.tegra_xusb_lane_map { i32 1, ptr @.str.22, i32 0, ptr null }, %struct.tegra_xusb_lane_map zeroinitializer], align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"avdd-pll-utmip\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"avdd-pll-erefe\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"avdd-pex-pll\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"hvdd-pex-pll-e\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_tegra124_xusb_padctl_soc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_usb2_pad_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 536) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra124_usb2_pad_probe.__key) #7
  %9 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 5
  store ptr @tegra124_usb2_lane_ops, ptr %9, align 8
  store ptr %1, ptr %5, align 8
  %10 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %20

13:                                               ; preds = %7
  %14 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %5, ptr noundef nonnull @tegra124_usb2_phy_ops) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4, i32 8
  store ptr %5, ptr %17, align 8
  br label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %19) #7
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i32 [ %10, %12 ], [ %14, %18 ]
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %20, %16, %3
  %24 = phi ptr [ %22, %20 ], [ %5, %16 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_usb2_pad_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_pad_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_pad_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_usb2_lane_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.tegra_xusb_lane_soc, ptr %12, i32 %2
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 5
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 2
  store ptr %1, ptr %16, align 8
  %17 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %5, ptr noundef %1) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %7, %3
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_usb2_lane_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_lane_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_power_on(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @tegra_xusb_find_usb2_port(ptr noundef %7, i32 noundef %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %9) #8
  br label %86

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 184
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %18 = and i32 %17, -32
  %19 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %7, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %18, %21
  %23 = or i32 %22, 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr i8, ptr %24, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !11
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %29 = shl i32 %9, 2
  %30 = shl i32 3, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  %33 = shl nuw i32 1, %29
  %34 = or i32 %32, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !11
  %37 = add i32 %29, 160
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %41 = and i32 %40, -3723264
  %42 = getelementptr [3 x i32], ptr %19, i32 0, i32 %9
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tegra_xusb_usb2_lane, ptr %3, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = icmp eq i32 %9, 0
  %48 = select i1 %47, i32 50048, i32 896
  %49 = or i32 %48, %41
  %50 = or i32 %49, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr i8, ptr %51, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !11
  %53 = add i32 %29, 172
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %57 = and i32 %56, -1600
  %58 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %7, i32 0, i32 1, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 3
  %61 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %7, i32 0, i32 1, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 %62, 9
  %64 = or i32 %60, %57
  %65 = or i32 %64, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %66 = load ptr, ptr %14, align 4
  %67 = getelementptr i8, ptr %66, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !11
  %68 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %10, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = tail call i32 @regulator_enable(ptr noundef %69) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %13
  %73 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %73) #7
  %74 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %5, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr i8, ptr %79, i32 184
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %82 = and i32 %81, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %83 = load ptr, ptr %14, align 4
  %84 = getelementptr i8, ptr %83, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #7, !srcloc !11
  br label %85

85:                                               ; preds = %78, %72
  tail call void @mutex_unlock(ptr noundef %73) #7
  br label %86

86:                                               ; preds = %85, %13, %12
  %87 = phi i32 [ 0, %85 ], [ -19, %12 ], [ %70, %13 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_usb2_phy_power_off(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @tegra_xusb_find_usb2_port(ptr noundef %7, i32 noundef %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %13) #8
  br label %35

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 584, i32 noundef 9, ptr noundef null) #7
  br label %31

20:                                               ; preds = %14
  %21 = add i32 %17, -1
  store i32 %21, ptr %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 184
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %28 = or i32 %27, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr i8, ptr %29, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !11
  br label %31

31:                                               ; preds = %23, %20, %19
  %32 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %10, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @regulator_disable(ptr noundef %33) #7
  tail call void @mutex_unlock(ptr noundef %15) #7
  br label %35

35:                                               ; preds = %31, %12
  %36 = phi i32 [ 0, %31 ], [ -19, %12 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra124_xusb_padctl_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = and i32 %11, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %18 = and i32 %17, -33554433
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %24 = and i32 %23, -67108865
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !11
  br label %27

27:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra124_xusb_padctl_disable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 261, i32 noundef 9, ptr noundef null) #7
  br label %30

7:                                                ; preds = %1
  %8 = add i32 %4, -1
  store i32 %8, ptr %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %15 = or i32 %14, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %21 = or i32 %20, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !11
  br label %30

30:                                               ; preds = %10, %7, %6
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_find_usb2_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_ulpi_pad_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 504) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 5
  store ptr @tegra124_ulpi_lane_ops, ptr %8, align 8
  store ptr %1, ptr %5, align 8
  %9 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %19

12:                                               ; preds = %7
  %13 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %5, ptr noundef nonnull @tegra124_ulpi_phy_ops) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4, i32 8
  store ptr %5, ptr %16, align 8
  br label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %9, %11 ], [ %13, %17 ]
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = phi ptr [ %21, %19 ], [ %5, %15 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_ulpi_pad_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_ulpi_lane_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.tegra_xusb_lane_soc, ptr %12, i32 %2
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 5
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 2
  store ptr %1, ptr %16, align 8
  %17 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %5, ptr noundef %1) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %7, %3
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_ulpi_lane_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_ulpi_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_ulpi_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_ulpi_phy_power_on(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_ulpi_phy_power_off(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_hsic_pad_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 512) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 5
  store ptr @tegra124_hsic_lane_ops, ptr %8, align 8
  store ptr %1, ptr %5, align 8
  %9 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %19

12:                                               ; preds = %7
  %13 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %5, ptr noundef nonnull @tegra124_hsic_phy_ops) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4, i32 8
  store ptr %5, ptr %16, align 8
  br label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %9, %11 ], [ %13, %17 ]
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = phi ptr [ %21, %19 ], [ %5, %15 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_hsic_pad_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_hsic_lane_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 60) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.tegra_xusb_lane_soc, ptr %12, i32 %2
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 5
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 2
  store ptr %1, ptr %16, align 8
  %17 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %5, ptr noundef %1) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %7, %3
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_hsic_lane_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @regulator_enable(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #7, !srcloc !11
  %20 = shl i32 %9, 2
  %21 = add i32 %20, 200
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %25 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 8
  %26 = load i8, ptr %25, align 4, !range !13
  %27 = and i32 %24, -2
  %28 = zext i8 %26 to i32
  %29 = or i32 %27, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !11
  %32 = add i32 %20, 192
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %36 = and i32 %35, -30584
  %37 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 4
  %40 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 12
  %45 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %41, %36
  %49 = or i32 %48, %39
  %50 = or i32 %49, %44
  %51 = or i32 %50, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %17, align 4
  %53 = getelementptr i8, ptr %52, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !11
  %54 = add i32 %20, 208
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %58 = and i32 %57, -120
  %59 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %60, 4
  %62 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, ptr %3, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, %58
  %65 = or i32 %64, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %66 = load ptr, ptr %17, align 4
  %67 = getelementptr i8, ptr %66, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !11
  %68 = load ptr, ptr %17, align 4
  %69 = getelementptr i8, ptr %68, i32 %21
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %71 = and i32 %70, -1981
  %72 = or i32 %71, 1152
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %73 = load ptr, ptr %17, align 4
  %74 = getelementptr i8, ptr %73, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !11
  br label %75

75:                                               ; preds = %14, %1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 2
  %11 = add i32 %10, 200
  %12 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %16 = or i32 %15, 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !11
  %19 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @regulator_disable(ptr noundef %20) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_pcie_pad_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 5
  store ptr @tegra124_pcie_lane_ops, ptr %8, align 8
  store ptr %1, ptr %5, align 8
  %9 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %19

12:                                               ; preds = %7
  %13 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %5, ptr noundef nonnull @tegra124_pcie_phy_ops) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4, i32 8
  store ptr %5, ptr %16, align 8
  br label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %9, %11 ], [ %13, %17 ]
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = phi ptr [ %21, %19 ], [ %5, %15 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_pcie_pad_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_pcie_lane_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.tegra_xusb_lane_soc, ptr %12, i32 %2
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 5
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 2
  store ptr %1, ptr %16, align 8
  %17 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %5, ptr noundef %1) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %7, %3
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_pcie_lane_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = and i32 %11, -61441
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !11
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %18 = or i32 %17, 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !11
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %24 = or i32 %23, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !11
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 -5, %27
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %28, %29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %38, %1
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %36 = and i32 %35, 524288
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = add i32 %28, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %32, label %42

42:                                               ; preds = %38, %32, %1
  %43 = phi i32 [ -110, %1 ], [ 0, %32 ], [ -110, %38 ]
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr i8, ptr %44, i32 308
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %47 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  %50 = shl nuw i32 1, %49
  %51 = or i32 %50, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !11
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_pcie_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 308
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  %15 = shl nuw i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !11
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %23 = and i32 %22, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_sata_pad_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 5
  store ptr @tegra124_sata_lane_ops, ptr %8, align 8
  store ptr %1, ptr %5, align 8
  %9 = tail call i32 @tegra_xusb_pad_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %19

12:                                               ; preds = %7
  %13 = tail call i32 @tegra_xusb_pad_register(ptr noundef nonnull %5, ptr noundef nonnull @tegra124_sata_phy_ops) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4, i32 8
  store ptr %5, ptr %16, align 8
  br label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %9, %11 ], [ %13, %17 ]
  %21 = inttoptr i32 %20 to ptr
  br label %22

22:                                               ; preds = %19, %15, %3
  %23 = phi ptr [ %21, %19 ], [ %5, %15 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_sata_pad_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_sata_lane_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.tegra_xusb_lane_soc, ptr %12, i32 %2
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 5
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 2
  store ptr %1, ptr %16, align 8
  %17 = tail call i32 @tegra_xusb_lane_parse_dt(ptr noundef nonnull %5, ptr noundef %1) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %7, %3
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_sata_lane_remove(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_enable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @tegra124_xusb_padctl_disable(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 328
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = and i32 %11, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !11
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 312
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %18 = and i32 %17, -10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !11
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 312
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %24 = or i32 %23, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !11
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 312
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %30 = or i32 %29, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i8, ptr %31, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #7, !srcloc !11
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = sub i32 -5, %33
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = add i32 %34, %35
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %44, %1
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 312
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %42 = and i32 %41, 134217728
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %34, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %44, %38, %1
  %49 = phi i32 [ -110, %1 ], [ 0, %38 ], [ -110, %44 ]
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr i8, ptr %50, i32 308
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %53 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 6
  %56 = shl nuw i32 1, %55
  %57 = or i32 %56, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr i8, ptr %58, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #7, !srcloc !11
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_sata_phy_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 308
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 6
  %15 = shl nuw i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !11
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 312
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %23 = and i32 %22, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !11
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr i8, ptr %26, i32 312
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !11
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr i8, ptr %32, i32 312
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %35 = or i32 %34, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !11
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 328
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr i8, ptr %41, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 -1) #7, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb2_port_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb2_port_remove(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_usb2_port_enable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra124_usb2_port_disable(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_usb2_port_map(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = tail call ptr @tegra_xusb_find_lane(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %4) #7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_find_lane(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_ulpi_port_release(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_ulpi_port_enable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra124_ulpi_port_disable(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_ulpi_port_map(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = tail call ptr @tegra_xusb_find_lane(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %4) #7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_hsic_port_release(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_hsic_port_enable(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra124_hsic_port_disable(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_hsic_port_map(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = tail call ptr @tegra_xusb_find_lane(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %4) #7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb3_port_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_usb3_port_remove(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_usb3_port_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %11 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !13
  %13 = icmp eq i8 %12, 0
  %14 = shl i32 %6, 2
  %15 = or i32 %14, 3
  %16 = shl nuw i32 1, %15
  %17 = or i32 %16, %10
  %18 = xor i32 %16, -1
  %19 = and i32 %10, %18
  %20 = select i1 %13, i32 %19, i32 %17
  %21 = shl i32 7, %14
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 7
  %27 = shl i32 %26, %14
  %28 = or i32 %27, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !11
  %31 = add i32 %14, 88
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %35 = and i32 %34, 15
  %36 = or i32 %35, 619737328
  %37 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 2
  %38 = load i8, ptr %37, align 4, !range !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 8
  %44 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 %45, 16
  %47 = or i32 %35, %43
  %48 = or i32 %47, %46
  %49 = or i32 %48, 616579312
  br label %50

50:                                               ; preds = %40, %1
  %51 = phi i32 [ %49, %40 ], [ %36, %1 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i8, ptr %52, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !11
  %54 = load i8, ptr %37, align 4, !range !13
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = shl i32 %58, 24
  %60 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %59, %62
  %64 = or i32 %63, 2286
  br label %65

65:                                               ; preds = %56, %50
  %66 = phi i32 [ %64, %56 ], [ 2099438, %50 ]
  %67 = add i32 %14, 104
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #7, !srcloc !11
  %70 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %2, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %77, 2
  %79 = shl i32 %77, 2
  %80 = select i1 %78, i32 120, i32 248
  %81 = add i32 %80, %79
  br label %82

82:                                               ; preds = %75, %65
  %83 = phi i32 [ %81, %75 ], [ 332, %65 ]
  %84 = load ptr, ptr %7, align 4
  %85 = getelementptr i8, ptr %84, i32 %83
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %87 = and i32 %86, -805306369
  %88 = or i32 %87, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr i8, ptr %89, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #7, !srcloc !11
  %91 = load ptr, ptr %70, align 4
  %92 = load ptr, ptr %72, align 4
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %96, 2
  %98 = shl i32 %96, 2
  %99 = select i1 %97, i32 144, i32 284
  %100 = add i32 %99, %98
  br label %101

101:                                              ; preds = %94, %82
  %102 = phi i32 [ %100, %94 ], [ 344, %82 ]
  %103 = load ptr, ptr %7, align 4
  %104 = getelementptr i8, ptr %103, i32 %102
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %106 = or i32 %105, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %107 = load ptr, ptr %7, align 4
  %108 = getelementptr i8, ptr %107, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #7, !srcloc !11
  %109 = load ptr, ptr %70, align 4
  %110 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %2, i32 0, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %109, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %101
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr i8, ptr %114, i32 312
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %117 = and i32 %116, -3145729
  %118 = or i32 %117, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %119 = load ptr, ptr %7, align 4
  %120 = getelementptr i8, ptr %119, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #7, !srcloc !11
  %121 = load ptr, ptr %7, align 4
  %122 = getelementptr i8, ptr %121, i32 316
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %124 = and i32 %123, -16715800
  %125 = or i32 %124, 8912919
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %126 = load ptr, ptr %7, align 4
  %127 = getelementptr i8, ptr %126, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #7, !srcloc !11
  %128 = load ptr, ptr %7, align 4
  %129 = getelementptr i8, ptr %128, i32 320
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %131 = and i32 %130, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %132 = load ptr, ptr %7, align 4
  %133 = getelementptr i8, ptr %132, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #7, !srcloc !11
  br label %134

134:                                              ; preds = %113, %101
  %135 = load ptr, ptr %7, align 4
  %136 = getelementptr i8, ptr %135, i32 28
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %138 = add i32 %14, 18
  %139 = shl nuw i32 1, %138
  %140 = xor i32 %139, -1
  %141 = and i32 %137, %140
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %142 = load ptr, ptr %7, align 4
  %143 = getelementptr i8, ptr %142, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %144 = load ptr, ptr %7, align 4
  %145 = getelementptr i8, ptr %144, i32 28
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %147 = add i32 %14, 17
  %148 = shl nuw i32 1, %147
  %149 = xor i32 %148, -1
  %150 = and i32 %146, %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %151 = load ptr, ptr %7, align 4
  %152 = getelementptr i8, ptr %151, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %153 = load ptr, ptr %7, align 4
  %154 = getelementptr i8, ptr %153, i32 28
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %156 = add i32 %14, 16
  %157 = shl nuw i32 1, %156
  %158 = xor i32 %157, -1
  %159 = and i32 %155, %158
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %160 = load ptr, ptr %7, align 4
  %161 = getelementptr i8, ptr %160, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #7, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra124_usb3_port_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %7 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %8, 2
  %10 = add i32 %9, 17
  %11 = shl nuw i32 1, %10
  %12 = or i32 %11, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %18 = load i32, ptr %7, align 8
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 16
  %21 = shl nuw i32 1, %20
  %22 = or i32 %21, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 350, i32 noundef 2) #7
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %28 = load i32, ptr %7, align 8
  %29 = shl i32 %28, 2
  %30 = add i32 %29, 18
  %31 = shl nuw i32 1, %30
  %32 = or i32 %31, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !11
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %38 = load i32, ptr %7, align 8
  %39 = shl i32 %38, 2
  %40 = shl i32 7, %39
  %41 = or i32 %40, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_usb3_port_map(ptr noundef %0) #0 {
  %2 = tail call ptr @tegra_xusb_port_find_lane(ptr noundef %0, ptr noundef nonnull @tegra124_usb3_map, ptr noundef nonnull @.str.21) #7
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_port_find_lane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_xusb_padctl_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 116, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %4, i32 0, i32 4
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !14
  %8 = call i32 @tegra_fuse_readl(i32 noundef 240, ptr noundef nonnull %3) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 63
  store i32 %13, ptr %11, align 4
  %14 = lshr i32 %12, 15
  %15 = and i32 %14, 63
  %16 = getelementptr %struct.tegra124_xusb_padctl, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr %struct.tegra124_xusb_padctl, ptr %4, i32 0, i32 1, i32 0, i32 2
  store i32 %15, ptr %17, align 4
  %18 = lshr i32 %12, 13
  %19 = and i32 %18, 3
  %20 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %4, i32 0, i32 1, i32 1
  store i32 %19, ptr %20, align 4
  %21 = lshr i32 %12, 7
  %22 = and i32 %21, 15
  %23 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %4, i32 0, i32 1, i32 2
  store i32 %22, ptr %23, align 4
  %24 = lshr i32 %12, 11
  %25 = and i32 %24, 3
  %26 = getelementptr inbounds %struct.tegra124_xusb_padctl, ptr %4, i32 0, i32 1, i32 3
  store i32 %25, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %29

27:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %28 = inttoptr i32 %8 to ptr
  br label %29

29:                                               ; preds = %27, %10, %2
  %30 = phi ptr [ %28, %27 ], [ %4, %10 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra124_xusb_padctl_remove(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_usb3_save_context(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @tegra_xusb_find_usb3_port(ptr noundef %0, i32 noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %110, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %3, i32 0, i32 2
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_port, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %8, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 2
  %18 = shl i32 %16, 2
  %19 = select i1 %17, i32 152, i32 296
  %20 = add i32 %19, %18
  br label %21

21:                                               ; preds = %14, %5
  %22 = phi i32 [ %20, %14 ], [ 348, %5 ]
  %23 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %27 = and i32 %26, -16711681
  %28 = or i32 %27, 3276800
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !11
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr i8, ptr %31, i32 %22
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %34 = lshr i32 %33, 24
  %35 = and i32 %34, 31
  %36 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %3, i32 0, i32 6
  store i32 %35, ptr %36, align 8
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr i8, ptr %37, i32 %22
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %40 = and i32 %39, -16711681
  %41 = or i32 %40, 3342336
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr %23, align 4
  %43 = getelementptr i8, ptr %42, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !11
  %44 = load ptr, ptr %23, align 4
  %45 = getelementptr i8, ptr %44, i32 %22
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %47 = lshr i32 %46, 24
  %48 = and i32 %47, 127
  %49 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %3, i32 0, i32 7
  store i32 %48, ptr %49, align 4
  %50 = shl i32 %1, 2
  %51 = add i32 %50, 104
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %55 = and i32 %54, -528416769
  %56 = load i32, ptr %36, align 8
  %57 = shl i32 %56, 24
  %58 = load i32, ptr %49, align 4
  %59 = shl i32 %58, 16
  %60 = or i32 %57, %55
  %61 = or i32 %60, %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %62 = load ptr, ptr %23, align 4
  %63 = getelementptr i8, ptr %62, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #7, !srcloc !11
  %64 = load ptr, ptr %23, align 4
  %65 = getelementptr i8, ptr %64, i32 %22
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %67 = and i32 %66, -16711681
  %68 = or i32 %67, 10551296
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %69 = load ptr, ptr %23, align 4
  %70 = getelementptr i8, ptr %69, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #7, !srcloc !11
  %71 = load ptr, ptr %23, align 4
  %72 = getelementptr i8, ptr %71, i32 %22
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %74 = and i32 %73, -16711681
  %75 = or i32 %74, 2162688
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %76 = load ptr, ptr %23, align 4
  %77 = getelementptr i8, ptr %76, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #7, !srcloc !11
  %78 = load ptr, ptr %23, align 4
  %79 = getelementptr i8, ptr %78, i32 %22
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %81 = lshr i32 %80, 24
  %82 = and i32 %81, 63
  %83 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %3, i32 0, i32 9
  store i32 %82, ptr %83, align 4
  %84 = load ptr, ptr %23, align 4
  %85 = getelementptr i8, ptr %84, i32 %22
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %87 = and i32 %86, -16711681
  %88 = or i32 %87, 4718592
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %23, align 4
  %90 = getelementptr i8, ptr %89, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #7, !srcloc !11
  %91 = load ptr, ptr %23, align 4
  %92 = getelementptr i8, ptr %91, i32 %22
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %94 = lshr i32 %93, 24
  %95 = and i32 %94, 63
  %96 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %3, i32 0, i32 8
  store i32 %95, ptr %96, align 8
  %97 = add i32 %50, 88
  %98 = load ptr, ptr %23, align 4
  %99 = getelementptr i8, ptr %98, i32 %97
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %101 = and i32 %100, -4144897
  %102 = load i32, ptr %83, align 4
  %103 = shl i32 %102, 8
  %104 = load i32, ptr %96, align 8
  %105 = shl i32 %104, 16
  %106 = or i32 %103, %101
  %107 = or i32 %106, %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %108 = load ptr, ptr %23, align 4
  %109 = getelementptr i8, ptr %108, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #7, !srcloc !11
  br label %110

110:                                              ; preds = %21, %2
  %111 = phi i32 [ 0, %21 ], [ -19, %2 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_hsic_set_idle(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = shl i32 %1, 2
  %5 = add i32 %4, 200
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %10 = and i32 %9, -1153
  %11 = select i1 %2, i32 1152, i32 0
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_find_usb3_port(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2435607}
!9 = !{i64 2153853952}
!10 = !{i64 2153853300}
!11 = !{i64 2435189}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
