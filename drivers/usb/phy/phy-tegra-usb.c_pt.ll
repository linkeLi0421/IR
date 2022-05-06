; ModuleID = '/llk/IR/drivers/usb/phy/phy-tegra-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-tegra-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_usb_phy_preresume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_usb_phy_preresume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_usb_phy_preresume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_usb_phy_postresume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_usb_phy_postresume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_usb_phy_postresume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_ehci_phy_restore_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_ehci_phy_restore_start\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_ehci_phy_restore_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_ehci_phy_restore_end:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_ehci_phy_restore_end\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_ehci_phy_restore_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usb_phy_io_ops = type { ptr, ptr }
%struct.tegra_xtal_freq = type { i32, i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_phy_soc_config = type { i8, i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_usb_phy = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.usb_phy, i8, i8, ptr, ptr, i8, i8, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tegra_utmip_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__kstrtab_tegra_usb_phy_preresume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_usb_phy_preresume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_usb_phy_preresume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_usb_phy_preresume to i32), ptr @__kstrtab_tegra_usb_phy_preresume, ptr @__kstrtabns_tegra_usb_phy_preresume }, section "___ksymtab_gpl+tegra_usb_phy_preresume", align 4
@__kstrtab_tegra_usb_phy_postresume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_usb_phy_postresume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_usb_phy_postresume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_usb_phy_postresume to i32), ptr @__kstrtab_tegra_usb_phy_postresume, ptr @__kstrtabns_tegra_usb_phy_postresume }, section "___ksymtab_gpl+tegra_usb_phy_postresume", align 4
@__kstrtab_tegra_ehci_phy_restore_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_ehci_phy_restore_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_ehci_phy_restore_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_ehci_phy_restore_start to i32), ptr @__kstrtab_tegra_ehci_phy_restore_start, ptr @__kstrtabns_tegra_ehci_phy_restore_start }, section "___ksymtab_gpl+tegra_ehci_phy_restore_start", align 4
@__kstrtab_tegra_ehci_phy_restore_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_ehci_phy_restore_end = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_ehci_phy_restore_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_ehci_phy_restore_end to i32), ptr @__kstrtab_tegra_ehci_phy_restore_end, ptr @__kstrtabns_tegra_ehci_phy_restore_end }, section "___ksymtab_gpl+tegra_ehci_phy_restore_end", align 4
@__initcall__kmod_phy_tegra_usb__252_1500_tegra_usb_phy_driver_init6 = internal global ptr @tegra_usb_phy_driver_init, section ".initcall6.init", align 4
@tegra_usb_phy_driver = internal global %struct.platform_driver { ptr @tegra_usb_phy_probe, ptr @tegra_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_usb_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_usb_phy_driver_exit = internal global ptr @tegra_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [47 x i8] c"phy_tegra_usb.description=Tegra USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [49 x i8] c"phy_tegra_usb.file=drivers/usb/phy/phy-tegra-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [29 x i8] c"phy_tegra_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-phy\00", align 1
@tegra_usb_phy_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_soc_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_soc_config }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get I/O memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to remap I/O memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"nvidia,has-legacy-mode\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"dr_mode is invalid\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to get pll_u clock: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to get PMC regmap\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"utmi-pads\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Failed to get UTMIP pad clock: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed to get UTMI-pads reset: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ulpi-link\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to get ULPI clock: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"nvidia,phy-reset-gpio\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ulpi_phy_reset_b\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Request failed for reset GPIO: %d\0A\00", align 1
@ulpi_viewport_access_ops = external dso_local global %struct.usb_phy_io_ops, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"Failed to create ULPI OTG\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"phy_type %u is invalid or unsupported\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"nvidia,pmc\00", align 1
@tegra_usb_phy_parse_pmc.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"nvidia,pmc is missing, please update your device-tree\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"usb_sleepwalk\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Failed to get UTMI pad regs\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Failed to remap UTMI pad regs\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"nvidia,hssync-start-delay\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"nvidia,elastic-limit\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"nvidia,idle-wait-delay\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"nvidia,term-range-adj\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"nvidia,xcvr-lsfslew\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"nvidia,xcvr-lsrslew\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"nvidia,xcvr-hsslew\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"nvidia,hssquelch-level\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"nvidia,hsdiscon-level\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"nvidia,xcvr-setup-use-fuses\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"nvidia,xcvr-setup\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Failed to read USB UTMI parameter %s: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"drivers/usb/phy/phy-tegra-usb.c\00", align 1
@tegra_freq_table = internal constant [4 x %struct.tegra_xtal_freq] [%struct.tegra_xtal_freq { i32 12000000, i8 2, i8 47, i8 4, i8 118, i16 30000 }, %struct.tegra_xtal_freq { i32 13000000, i8 2, i8 51, i8 5, i8 127, i16 32500 }, %struct.tegra_xtal_freq { i32 19200000, i8 3, i8 75, i8 6, i8 -69, i16 -17536 }, %struct.tegra_xtal_freq { i32 26000000, i8 4, i8 102, i8 9, i8 -2, i16 -536 }], align 4
@.str.38 = private unnamed_addr constant [31 x i8] c"Invalid pll_u parent rate %ld\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"Failed to enable USB VBUS regulator: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Failed to enable UTMI-pads clock: %d\0A\00", align 1
@utmip_pad_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.41 = private unnamed_addr constant [42 x i8] c"Failed to initialize UTMI-pads reset: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"Failed to assert UTMI-pads reset: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.43 = private unnamed_addr constant [40 x i8] c"Failed to deassert UTMI-pads reset: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Failed to disable PMC AO: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"Failed to enable PMC AO: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"ULPI write failed: %d\0A\00", align 1
@utmip_pad_count = internal unnamed_addr global i32 0, align 4
@.str.47 = private unnamed_addr constant [48 x i8] c"Timeout waiting for PHY to stabilize on enable\0A\00", align 1
@ulpi_phy_power_off.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"Timeout waiting for PHY to stabilize on disable\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"UTMIP pad already powered off\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"Failed to request interrupt: %d\00", align 1
@tegra30_soc_config = internal constant %struct.tegra_phy_soc_config { i8 1, i8 1, i8 1, i8 1, i8 1 }, align 1
@tegra20_soc_config = internal constant %struct.tegra_phy_soc_config zeroinitializer, align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_tegra_usb_phy_driver_exit, ptr @__initcall__kmod_phy_tegra_usb__252_1500_tegra_usb_phy_driver_init6, ptr @__ksymtab_tegra_ehci_phy_restore_end, ptr @__ksymtab_tegra_ehci_phy_restore_start, ptr @__ksymtab_tegra_usb_phy_postresume, ptr @__ksymtab_tegra_usb_phy_preresume, ptr @tegra_usb_phy_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_usb_phy_preresume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 193
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 2080
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  %10 = or i32 %9, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #7, !srcloc !10
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_usb_phy_postresume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 193
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 2080
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  %10 = and i32 %9, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #7, !srcloc !10
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_ehci_phy_restore_start(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 193
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -44
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 2084
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  %11 = icmp eq i32 %1, 1
  %12 = and i32 %10, -2013265921
  %13 = or i32 %12, 1879048192
  %14 = or i32 %10, 2013265920
  %15 = select i1 %11, i32 %13, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %15) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  %17 = or i32 %16, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %17) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  br label %18

18:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_ehci_phy_restore_end(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 193
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 2084
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  %10 = and i32 %9, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_usb_phy_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_usb_phy_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_usb_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 264, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %220, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %7) #7
  %14 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 12
  store ptr %13, ptr %14, align 4
  %15 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #7
  store i32 %15, ptr %10, align 4
  %16 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #8
  br label %220

19:                                               ; preds = %12
  %20 = load i32, ptr %16, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 1, %20
  %24 = add i32 %23, %22
  %25 = tail call ptr @devm_ioremap(ptr noundef %7, i32 noundef %20, i32 noundef %24) #7
  %26 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #8
  br label %220

29:                                               ; preds = %19
  %30 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %31 = icmp ne ptr %30, null
  %32 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 15
  %33 = zext i1 %31 to i8
  store i8 %33, ptr %32, align 4
  %34 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 10
  store i32 1, ptr %37, align 4
  br label %43

38:                                               ; preds = %29
  %39 = tail call i32 @usb_get_dr_mode(ptr noundef %7) #7
  %40 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 10
  store i32 %39, ptr %40, align 4
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #8
  br label %220

43:                                               ; preds = %38, %36
  %44 = tail call ptr @devm_regulator_get(ptr noundef %7, ptr noundef nonnull @.str.6) #7
  %45 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 8
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  br label %220

49:                                               ; preds = %43
  %50 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.7) #7
  %51 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 6
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = ptrtoint ptr %50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %54) #8
  br label %220

55:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #7, !annotation !11
  %56 = load ptr, ptr %8, align 8
  %57 = call i32 @__of_parse_phandle_with_args(ptr noundef %56, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %6) #7
  switch i32 %57, label %87 [
    i32 0, label %61
    i32 -2, label %58
  ]

58:                                               ; preds = %55
  %59 = load i1, ptr @tegra_usb_phy_parse_pmc.__print_once, align 1
  br i1 %59, label %85, label %60

60:                                               ; preds = %58
  store i1 true, ptr @tegra_usb_phy_parse_pmc.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.21) #8
  br label %85

61:                                               ; preds = %55
  %62 = load ptr, ptr %6, align 4
  %63 = call ptr @of_find_device_by_node(ptr noundef %62) #7
  %64 = load ptr, ptr %6, align 4
  call void @of_node_put(ptr noundef %64) #7
  %65 = icmp eq ptr %63, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %68 = call i32 @devm_add_action(ptr noundef %7, ptr noundef nonnull @tegra_usb_phy_put_pmc_device, ptr noundef %67) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @put_device(ptr noundef %67) #7
  br label %83

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 8
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = call ptr @dev_get_regmap(ptr noundef %67, ptr noundef nonnull @.str.22) #7
  %77 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 9
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  br label %85

83:                                               ; preds = %75, %71, %70, %61
  %84 = phi i32 [ -22, %75 ], [ -517, %71 ], [ %68, %70 ], [ -19, %61 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  br label %88

85:                                               ; preds = %79, %60, %58
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  %86 = call i32 @of_usb_get_phy_mode(ptr noundef %9) #7
  switch i32 %86, label %211 [
    i32 1, label %91
    i32 3, label %189
  ]

87:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %84, %83 ], [ %57, %87 ]
  %90 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %89, ptr noundef nonnull @.str.9) #7
  br label %220

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 16
  store i8 0, ptr %92, align 1
  %93 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #7
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23) #8
  br label %220

96:                                               ; preds = %91
  %97 = load i32, ptr %93, align 4
  %98 = getelementptr inbounds %struct.resource, ptr %93, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = sub i32 1, %97
  %101 = add i32 %100, %99
  %102 = call ptr @devm_ioremap(ptr noundef %7, i32 noundef %97, i32 noundef %101) #7
  %103 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 4
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24) #8
  br label %220

106:                                              ; preds = %96
  %107 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 11, i32 noundef 3520) #7
  %108 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 11
  store ptr %107, ptr %108, align 4
  %109 = icmp eq ptr %107, null
  br i1 %109, label %220, label %110

110:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !11
  %111 = load ptr, ptr %8, align 8
  %112 = call i32 @of_property_read_variable_u32_array(ptr noundef %111, ptr noundef nonnull @.str.25, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef %112) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %220

115:                                              ; preds = %110
  %116 = load i32, ptr %5, align 4
  %117 = trunc i32 %116 to i8
  store i8 %117, ptr %107, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !11
  %118 = load ptr, ptr %8, align 8
  %119 = call i32 @of_property_read_variable_u32_array(ptr noundef %118, ptr noundef nonnull @.str.26, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.26, i32 noundef %119) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %220

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 1
  %124 = load i32, ptr %4, align 4
  %125 = trunc i32 %124 to i8
  store i8 %125, ptr %123, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !11
  %126 = load ptr, ptr %8, align 8
  %127 = call i32 @of_property_read_variable_u32_array(ptr noundef %126, ptr noundef nonnull @.str.27, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef %127) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %220

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 2
  %132 = load i32, ptr %3, align 4
  %133 = trunc i32 %132 to i8
  store i8 %133, ptr %131, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !11
  %134 = load ptr, ptr %8, align 8
  %135 = call i32 @of_property_read_variable_u32_array(ptr noundef %134, ptr noundef nonnull @.str.28, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28, i32 noundef %135) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %220

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 3
  %140 = load i32, ptr %2, align 4
  %141 = trunc i32 %140 to i8
  store i8 %141, ptr %139, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %142 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 6
  %143 = call fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %142) #7
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %220

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 7
  %147 = call fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %146) #7
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %220

149:                                              ; preds = %145
  %150 = load ptr, ptr %14, align 4
  %151 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %150, i32 0, i32 3
  %152 = load i8, ptr %151, align 1, !range !8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 8
  %156 = call fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %155) #7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %220

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 9
  %160 = call fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %159) #7
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %220

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 10
  %164 = call fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %163) #7
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %220

166:                                              ; preds = %162, %149
  %167 = load ptr, ptr %8, align 8
  %168 = call ptr @of_find_property(ptr noundef %167, ptr noundef nonnull @.str.34, ptr noundef null) #7
  %169 = icmp ne ptr %168, null
  %170 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 4
  %171 = zext i1 %169 to i8
  store i8 %171, ptr %170, align 1
  br i1 %169, label %176, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.tegra_utmip_config, ptr %107, i32 0, i32 5
  %174 = call fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %173) #7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %220

176:                                              ; preds = %172, %166
  %177 = call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.10) #7
  %178 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 7
  store ptr %177, ptr %178, align 4
  %179 = icmp ugt ptr %177, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = ptrtoint ptr %177 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %181) #8
  br label %220

182:                                              ; preds = %176
  %183 = call ptr @__devm_reset_control_get(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %184 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = ptrtoint ptr %183 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %186) #8
  br label %220

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 18
  store ptr %183, ptr %188, align 4
  br label %212

189:                                              ; preds = %85
  %190 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 16
  store i8 1, ptr %190, align 1
  %191 = call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.13) #7
  %192 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 5
  store ptr %191, ptr %192, align 4
  %193 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = ptrtoint ptr %191 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %195) #8
  br label %220

196:                                              ; preds = %189
  %197 = call ptr @devm_gpiod_get_from_of_node(ptr noundef %7, ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.16) #7
  %198 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = ptrtoint ptr %197 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %200) #8
  br label %220

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 17
  store ptr %197, ptr %202, align 4
  %203 = call ptr @devm_otg_ulpi_create(ptr noundef %7, ptr noundef nonnull @ulpi_viewport_access_ops, i32 noundef 0) #7
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18) #8
  br label %220

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 13
  store ptr %203, ptr %207, align 4
  %208 = load ptr, ptr %26, align 4
  %209 = getelementptr i8, ptr %208, i32 368
  %210 = getelementptr inbounds %struct.usb_phy, ptr %203, i32 0, i32 8
  store ptr %209, ptr %210, align 4
  br label %212

211:                                              ; preds = %85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %86) #8
  br label %220

212:                                              ; preds = %206, %187
  %213 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 14
  store ptr %7, ptr %213, align 4
  %214 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 14, i32 22
  store ptr @tegra_usb_phy_init, ptr %214, align 4
  %215 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 14, i32 23
  store ptr @tegra_usb_phy_shutdown, ptr %215, align 4
  %216 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 14, i32 27
  store ptr @tegra_usb_phy_set_wakeup, ptr %216, align 4
  %217 = getelementptr inbounds %struct.tegra_usb_phy, ptr %10, i32 0, i32 14, i32 26
  store ptr @tegra_usb_phy_set_suspend, ptr %217, align 4
  %218 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %218, align 8
  %219 = call i32 @usb_add_phy_dev(ptr noundef %213) #7
  br label %220

220:                                              ; preds = %212, %211, %205, %199, %194, %185, %180, %172, %162, %158, %154, %145, %138, %137, %129, %121, %114, %106, %105, %95, %88, %53, %47, %42, %28, %18, %1
  %221 = phi i32 [ -22, %42 ], [ %48, %47 ], [ %54, %53 ], [ %89, %88 ], [ -22, %211 ], [ %195, %194 ], [ %200, %199 ], [ %219, %212 ], [ -12, %205 ], [ %181, %180 ], [ %186, %185 ], [ -12, %28 ], [ -6, %18 ], [ -12, %1 ], [ %174, %172 ], [ %164, %162 ], [ %160, %158 ], [ %156, %154 ], [ %147, %145 ], [ %143, %138 ], [ %135, %137 ], [ %127, %129 ], [ %119, %121 ], [ %112, %114 ], [ -12, %106 ], [ -6, %95 ], [ -12, %105 ]
  ret i32 %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_usb_phy, ptr %3, i32 0, i32 14
  tail call void @usb_remove_phy(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_otg_ulpi_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !12

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1067, i32 noundef 9, ptr noundef null) #7
  br label %128

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %128

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %128

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 4
  %18 = tail call ptr @clk_get_parent(ptr noundef %17) #7
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #7
  switch i32 %19, label %25 [
    i32 12000000, label %23
    i32 13000000, label %20
    i32 19200000, label %21
    i32 26000000, label %22
  ]

20:                                               ; preds = %16
  br label %23

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %21, %20, %16
  %24 = phi ptr [ @tegra_freq_table, %16 ], [ getelementptr inbounds ([4 x %struct.tegra_xtal_freq], ptr @tegra_freq_table, i32 0, i32 1), %20 ], [ getelementptr inbounds ([4 x %struct.tegra_xtal_freq], ptr @tegra_freq_table, i32 0, i32 2), %21 ], [ getelementptr inbounds ([4 x %struct.tegra_xtal_freq], ptr @tegra_freq_table, i32 0, i32 3), %22 ]
  store ptr %24, ptr %3, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load ptr, ptr %3, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.38, i32 noundef %19) #8
  br label %125

30:                                               ; preds = %25, %23
  %31 = getelementptr i8, ptr %0, i32 -24
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regulator_enable(ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.39, i32 noundef %33) #8
  br label %125

37:                                               ; preds = %30
  %38 = getelementptr i8, ptr %0, i32 193
  %39 = load i8, ptr %38, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %0, i32 -28
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_prepare(ptr noundef %43) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = tail call i32 @clk_enable(ptr noundef %43) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %43) #7
  br label %50

50:                                               ; preds = %49, %41
  %51 = phi i32 [ %47, %49 ], [ %44, %41 ]
  %52 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.40, i32 noundef %51) #8
  br label %121

53:                                               ; preds = %46
  tail call void @_raw_spin_lock(ptr noundef nonnull @utmip_pad_lock) #7
  %54 = getelementptr i8, ptr %0, i32 200
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @reset_control_deassert(ptr noundef %55) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.41, i32 noundef %56) #8
  br label %73

60:                                               ; preds = %53
  %61 = load ptr, ptr %54, align 4
  %62 = tail call i32 @reset_control_assert(ptr noundef %61) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.42, i32 noundef %62) #8
  br label %73

66:                                               ; preds = %60
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #7
  %68 = load ptr, ptr %54, align 4
  %69 = tail call i32 @reset_control_deassert(ptr noundef %68) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.43, i32 noundef %69) #8
  br label %73

73:                                               ; preds = %71, %66, %64, %58
  %74 = phi i32 [ %56, %58 ], [ %62, %64 ], [ %69, %71 ], [ 0, %66 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %75 = load i16, ptr @utmip_pad_lock, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr @utmip_pad_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %77 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %77) #7
  tail call void @clk_unprepare(ptr noundef %77) #7
  %78 = icmp eq i32 %74, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %73, %37
  %80 = getelementptr i8, ptr %0, i32 -20
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %113, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %0, i32 -8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %85, i32 0, i32 4
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %83
  %90 = getelementptr i8, ptr %0, i32 -16
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %0, i32 -52
  %95 = load i32, ptr %94, align 4
  %96 = shl i32 %95, 2
  %97 = icmp eq i32 %91, 3
  %98 = select i1 %97, i32 12, i32 4
  %99 = shl i32 %98, %96
  br label %100

100:                                              ; preds = %93, %89
  %101 = phi i32 [ 0, %89 ], [ %99, %93 ]
  %102 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %81, i32 noundef 240, i32 noundef %101, i32 noundef %101, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.44, i32 noundef %102) #8
  br label %116

106:                                              ; preds = %100
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %107 = load ptr, ptr %80, align 4
  %108 = tail call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 240, i32 noundef %101, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.45, i32 noundef %108) #8
  br label %116

112:                                              ; preds = %106
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  br label %113

113:                                              ; preds = %112, %83, %79
  %114 = tail call fastcc i32 @tegra_usb_phy_power_on(ptr noundef %2)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %113, %110, %104
  %117 = phi i32 [ %114, %113 ], [ %102, %104 ], [ %108, %110 ]
  %118 = load i8, ptr %38, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  tail call fastcc void @utmip_pad_close(ptr noundef %2)
  br label %121

121:                                              ; preds = %120, %116, %73, %50
  %122 = phi i32 [ %117, %116 ], [ %117, %120 ], [ %74, %73 ], [ %51, %50 ]
  %123 = load ptr, ptr %31, align 4
  %124 = tail call i32 @regulator_disable(ptr noundef %123) #7
  br label %125

125:                                              ; preds = %121, %35, %28
  %126 = phi i32 [ %33, %35 ], [ %122, %121 ], [ -22, %28 ]
  %127 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %127) #7
  tail call void @clk_unprepare(ptr noundef %127) #7
  store ptr null, ptr %3, align 4
  br label %128

128:                                              ; preds = %125, %113, %15, %7, %6
  %129 = phi i32 [ 0, %6 ], [ %126, %125 ], [ 0, %113 ], [ %13, %15 ], [ %10, %7 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_usb_phy_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 903, i32 noundef 9, ptr noundef null) #7
  br label %27

7:                                                ; preds = %1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %0, i1 noundef zeroext false) #7
  br label %15

15:                                               ; preds = %13, %9, %7
  %16 = tail call fastcc i32 @tegra_usb_phy_power_off(ptr noundef %2)
  %17 = getelementptr i8, ptr %0, i32 193
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call fastcc void @utmip_pad_close(ptr noundef %2)
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr i8, ptr %0, i32 -24
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regulator_disable(ptr noundef %23) #7
  %25 = getelementptr i8, ptr %0, i32 -32
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #7
  tail call void @clk_unprepare(ptr noundef %26) #7
  store ptr null, ptr %3, align 4
  br label %27

27:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_set_wakeup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 204
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  tail call void @disable_irq(i32 noundef %14) #7
  %17 = getelementptr i8, ptr %5, i32 1032
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  %19 = and i32 %18, -258
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #7, !srcloc !10
  %20 = load i32, ptr %3, align 4
  tail call void @enable_irq(i32 noundef %20) #7
  %21 = load i32, ptr %3, align 4
  %22 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %3) #7
  store i8 0, ptr %6, align 4
  br label %23

23:                                               ; preds = %16, %13, %9, %2
  br i1 %1, label %24, label %50

24:                                               ; preds = %23
  %25 = getelementptr i8, ptr %0, i32 -16
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi ptr [ %37, %36 ], [ %34, %31 ]
  %40 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @tegra_usb_phy_isr, ptr noundef null, i32 noundef 128, ptr noundef %39, ptr noundef %3) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, ptr %3, align 4
  tail call void @disable_irq(i32 noundef %43) #7
  %44 = getelementptr i8, ptr %5, i32 1032
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !9
  %46 = or i32 %45, 257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %46) #7, !srcloc !10
  %47 = load i32, ptr %3, align 4
  tail call void @enable_irq(i32 noundef %47) #7
  br label %50

48:                                               ; preds = %38
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.50, i32 noundef %40) #8
  br label %50

50:                                               ; preds = %48, %42, %28, %24, %23
  %51 = phi i32 [ %40, %48 ], [ 0, %42 ], [ 0, %28 ], [ 0, %24 ], [ 0, %23 ]
  %52 = phi i1 [ false, %48 ], [ true, %42 ], [ true, %28 ], [ true, %24 ], [ false, %23 ]
  %53 = zext i1 %52 to i8
  store i8 %53, ptr %6, align 4
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_set_suspend(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 990, i32 noundef 9, ptr noundef null) #7
  br label %23

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @disable_irq(i32 noundef %9) #7
  br label %12

12:                                               ; preds = %11, %8
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call fastcc i32 @tegra_usb_phy_power_off(ptr noundef %3)
  br label %18

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @tegra_usb_phy_power_on(ptr noundef %3)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load i32, ptr %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @enable_irq(i32 noundef %20) #7
  br label %23

23:                                               ; preds = %22, %18, %7
  %24 = phi i32 [ -22, %7 ], [ %19, %22 ], [ %19, %18 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_usb_phy_put_pmc_device(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_utmi_param(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !11
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 0) #7
  %9 = icmp sgt i32 %7, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36, ptr noundef %1, i32 noundef %8) #8
  br label %15

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %2, align 1
  br label %15

15:                                               ; preds = %12, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_usb_phy_power_on(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 21
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %349

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 16
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %345

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1024
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = or i32 %15, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #7, !srcloc !10
  %17 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 15
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %9
  %21 = getelementptr i8, ptr %13, i32 1040
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !9
  %23 = or i32 %22, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %23) #7, !srcloc !10
  br label %24

24:                                               ; preds = %20, %9
  %25 = getelementptr i8, ptr %13, i32 2080
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !9
  %27 = or i32 %26, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #7, !srcloc !10
  %28 = getelementptr i8, ptr %13, i32 2064
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !9
  %30 = and i32 %29, -1047553
  %31 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 31
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 15
  %36 = or i32 %35, %30
  %37 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 31
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 10
  %42 = or i32 %36, %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %42) #7, !srcloc !10
  %43 = getelementptr i8, ptr %13, i32 2068
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !9
  %45 = and i32 %44, -63
  %46 = load i8, ptr %11, align 1
  %47 = shl i8 %46, 1
  %48 = and i8 %47, 62
  %49 = zext i8 %48 to i32
  %50 = or i32 %45, %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %50) #7, !srcloc !10
  %51 = getelementptr i8, ptr %13, i32 2092
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !9
  %53 = and i32 %52, -65536
  %54 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tegra_xtal_freq, ptr %55, i32 0, i32 5
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = or i32 %53, %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %59) #7, !srcloc !10
  %60 = getelementptr i8, ptr %13, i32 2084
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !9
  %62 = and i32 %61, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %62) #7, !srcloc !10
  %63 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = load i8, ptr %64, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %24
  %68 = getelementptr i8, ptr %13, i32 2088
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !9
  %70 = and i32 %69, -8388545
  %71 = load ptr, ptr %54, align 4
  %72 = getelementptr inbounds %struct.tegra_xtal_freq, ptr %71, i32 0, i32 3
  %73 = load i8, ptr %72, align 2
  %74 = and i8 %73, 31
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 18
  %77 = getelementptr inbounds %struct.tegra_xtal_freq, ptr %71, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 6
  %81 = or i32 %76, %80
  %82 = or i32 %81, %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %82) #7, !srcloc !10
  %83 = getelementptr i8, ptr %13, i32 2052
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !9
  %85 = and i32 %84, 134213632
  %86 = load ptr, ptr %54, align 4
  %87 = getelementptr inbounds %struct.tegra_xtal_freq, ptr %86, i32 0, i32 4
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds %struct.tegra_xtal_freq, ptr %86, i32 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 27
  %94 = or i32 %85, %89
  %95 = or i32 %93, %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %95) #7, !srcloc !10
  br label %96

96:                                               ; preds = %67, %24
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %98 = and i32 %97, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %98) #7, !srcloc !10
  %99 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 10
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %104 = and i32 %103, -25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %104) #7, !srcloc !10
  %105 = getelementptr i8, ptr %13, i32 1032
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #7, !srcloc !9
  %107 = and i32 %106, -1073742339
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %107) #7, !srcloc !10
  %108 = getelementptr i8, ptr %13, i32 1028
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #7, !srcloc !9
  %110 = and i32 %109, -1077952513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %110) #7, !srcloc !10
  %111 = getelementptr i8, ptr %13, i32 2096
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #7, !srcloc !9
  %113 = and i32 %112, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %113) #7, !srcloc !10
  br label %118

114:                                              ; preds = %96
  %115 = getelementptr i8, ptr %13, i32 2096
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !9
  %117 = or i32 %116, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %117) #7, !srcloc !10
  br label %118

118:                                              ; preds = %114, %102
  %119 = load ptr, ptr %10, align 4
  %120 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 7
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @clk_prepare(ptr noundef %123) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %349

126:                                              ; preds = %118
  %127 = tail call i32 @clk_enable(ptr noundef %123) #7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %126
  tail call void @_raw_spin_lock(ptr noundef nonnull @utmip_pad_lock) #7
  %130 = load i32, ptr @utmip_pad_count, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr @utmip_pad_count, align 4
  %132 = icmp eq i32 %130, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %129
  %134 = getelementptr i8, ptr %121, i32 2060
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #7, !srcloc !9
  %136 = and i32 %135, -3073
  %137 = load ptr, ptr %63, align 4
  %138 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %137, i32 0, i32 3
  %139 = load i8, ptr %138, align 1, !range !8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %133
  %142 = and i32 %135, -16780304
  %143 = getelementptr inbounds %struct.tegra_utmip_config, ptr %119, i32 0, i32 9
  %144 = load i8, ptr %143, align 1
  %145 = and i8 %144, 3
  %146 = zext i8 %145 to i32
  %147 = or i32 %142, %146
  %148 = getelementptr inbounds %struct.tegra_utmip_config, ptr %119, i32 0, i32 10
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 2
  %152 = and i32 %151, 12
  %153 = or i32 %147, %152
  %154 = shl nuw nsw i32 %150, 22
  %155 = and i32 %154, 16777216
  %156 = or i32 %153, %155
  br label %157

157:                                              ; preds = %141, %133
  %158 = phi i32 [ %156, %141 ], [ %136, %133 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %158) #7, !srcloc !10
  br label %159

159:                                              ; preds = %157, %129
  %160 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 20
  %161 = load i8, ptr %160, align 1, !range !8
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  store i8 0, ptr %160, align 1
  %164 = load i32, ptr @utmip_pad_count, align 4
  %165 = add i32 %164, -1
  store i32 %165, ptr @utmip_pad_count, align 4
  br label %167

166:                                              ; preds = %126
  tail call void @clk_unprepare(ptr noundef %123) #7
  br label %349

167:                                              ; preds = %163, %159
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %168 = load i16, ptr @utmip_pad_lock, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr @utmip_pad_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %170 = load ptr, ptr %122, align 4
  tail call void @clk_disable(ptr noundef %170) #7
  tail call void @clk_unprepare(ptr noundef %170) #7
  %171 = getelementptr i8, ptr %13, i32 2056
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #7, !srcloc !9
  %173 = and i32 %172, -31805200
  %174 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 4
  %175 = load i8, ptr %174, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 5
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 15
  %182 = or i32 %181, %173
  %183 = shl nuw nsw i32 %180, 18
  %184 = and i32 %183, 29360128
  %185 = or i32 %182, %184
  br label %186

186:                                              ; preds = %177, %167
  %187 = phi i32 [ %173, %167 ], [ %185, %177 ]
  %188 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 6
  %189 = load i8, ptr %188, align 1
  %190 = and i8 %189, 3
  %191 = zext i8 %190 to i32
  %192 = shl nuw nsw i32 %191, 10
  %193 = or i32 %192, %187
  %194 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 7
  %195 = load i8, ptr %194, align 1
  %196 = and i8 %195, 3
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 8
  %199 = or i32 %193, %198
  %200 = load ptr, ptr %63, align 4
  %201 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %200, i32 0, i32 3
  %202 = load i8, ptr %201, align 1, !range !8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %186
  %205 = and i32 %199, 33554383
  %206 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 8
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 4
  %210 = and i32 %209, 48
  %211 = or i32 %210, %205
  %212 = shl nuw nsw i32 %208, 23
  %213 = and i32 %212, 2113929216
  %214 = or i32 %211, %213
  br label %215

215:                                              ; preds = %204, %186
  %216 = phi i32 [ %214, %204 ], [ %199, %186 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %216) #7, !srcloc !10
  %217 = getelementptr i8, ptr %13, i32 2104
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #7, !srcloc !9
  %219 = and i32 %218, -3932182
  %220 = getelementptr inbounds %struct.tegra_utmip_config, ptr %11, i32 0, i32 3
  %221 = load i8, ptr %220, align 1
  %222 = and i8 %221, 15
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 18
  %225 = or i32 %224, %219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %225) #7, !srcloc !10
  %226 = getelementptr i8, ptr %13, i32 2108
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #7, !srcloc !9
  %228 = and i32 %227, -249
  %229 = or i32 %228, 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %229) #7, !srcloc !10
  %230 = getelementptr i8, ptr %13, i32 2100
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #7, !srcloc !9
  %232 = load i8, ptr %174, align 1, !range !8
  %233 = icmp eq i8 %232, 0
  %234 = and i32 %231, -9
  %235 = select i1 %233, i32 0, i32 8
  %236 = or i32 %235, %234
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %236) #7, !srcloc !10
  %237 = load i8, ptr %17, align 4, !range !8
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %215
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %241 = or i32 %240, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %241) #7, !srcloc !10
  br label %242

242:                                              ; preds = %239, %215
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %244 = and i32 %243, -2049
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %244) #7, !srcloc !10
  %245 = load i8, ptr %17, align 4, !range !8
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = getelementptr i8, ptr %13, i32 1040
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #7, !srcloc !9
  %250 = or i32 %249, 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %250) #7, !srcloc !10
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %252 = and i32 %251, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %252) #7, !srcloc !10
  br label %253

253:                                              ; preds = %247, %242
  %254 = load ptr, ptr %12, align 4
  %255 = getelementptr i8, ptr %254, i32 1024
  %256 = tail call i64 @ktime_get() #7
  %257 = add i64 %256, 6000000
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %259 = and i32 %258, 128
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %314

261:                                              ; preds = %264, %253
  %262 = tail call i64 @ktime_get() #7
  %263 = icmp sgt i64 %262, %257
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %266 = and i32 %265, 128
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %261, label %314

268:                                              ; preds = %261
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %270 = and i32 %269, 128
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %314

272:                                              ; preds = %268
  %273 = load i8, ptr %17, align 4, !range !8
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %272
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %277 = or i32 %276, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %277) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %279 = and i32 %278, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %279) #7, !srcloc !10
  br label %294

280:                                              ; preds = %272
  %281 = load ptr, ptr %12, align 4
  %282 = load ptr, ptr %63, align 4
  %283 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %282, i32 0, i32 1
  %284 = load i8, ptr %283, align 1, !range !8
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %280
  %287 = getelementptr i8, ptr %281, i32 436
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #7, !srcloc !9
  %289 = and i32 %288, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %289) #7, !srcloc !10
  br label %294

290:                                              ; preds = %280
  %291 = getelementptr i8, ptr %281, i32 388
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #7, !srcloc !9
  %293 = and i32 %292, -8388651
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %293) #7, !srcloc !10
  br label %294

294:                                              ; preds = %290, %286, %275
  %295 = tail call i64 @ktime_get() #7
  %296 = add i64 %295, 6000000
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %298 = and i32 %297, 128
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %303, %294
  %301 = tail call i64 @ktime_get() #7
  %302 = icmp sgt i64 %301, %296
  br i1 %302, label %307, label %303

303:                                              ; preds = %300
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %305 = and i32 %304, 128
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %300, label %314

307:                                              ; preds = %300
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #7, !srcloc !9
  %309 = and i32 %308, 128
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 14
  %313 = load ptr, ptr %312, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %313, ptr noundef nonnull @.str.47) #8
  br label %314

314:                                              ; preds = %311, %307, %303, %294, %268, %264, %253
  %315 = load ptr, ptr %63, align 4
  %316 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %315, i32 0, i32 2
  %317 = load i8, ptr %316, align 1, !range !8
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %328, label %319

319:                                              ; preds = %314
  %320 = getelementptr i8, ptr %13, i32 504
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %320) #7, !srcloc !9
  %322 = load i32, ptr %99, align 4
  %323 = icmp eq i32 %322, 1
  %324 = or i32 %321, 3
  %325 = and i32 %321, -4
  %326 = or i32 %325, 2
  %327 = select i1 %323, i32 %324, i32 %326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %327) #7, !srcloc !10
  br label %328

328:                                              ; preds = %319, %314
  %329 = load i8, ptr %17, align 4, !range !8
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %348

331:                                              ; preds = %328
  %332 = load ptr, ptr %12, align 4
  %333 = load ptr, ptr %63, align 4
  %334 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %333, i32 0, i32 1
  %335 = load i8, ptr %334, align 1, !range !8
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %331
  %338 = getelementptr i8, ptr %332, i32 436
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #7, !srcloc !9
  %340 = and i32 %339, 536870911
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %340) #7, !srcloc !10
  br label %348

341:                                              ; preds = %331
  %342 = getelementptr i8, ptr %332, i32 388
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #7, !srcloc !9
  %344 = and i32 %343, 1073741781
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 %344) #7, !srcloc !10
  br label %348

345:                                              ; preds = %5
  %346 = tail call fastcc i32 @ulpi_phy_power_on(ptr noundef %0)
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %345, %341, %337, %328
  store i8 1, ptr %2, align 2
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #7
  br label %349

349:                                              ; preds = %348, %345, %166, %118, %1
  %350 = phi i32 [ 0, %348 ], [ 0, %1 ], [ %346, %345 ], [ %124, %118 ], [ %127, %166 ]
  ret i32 %350
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @utmip_pad_close(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %7, %9 ], [ %4, %1 ]
  %12 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40, i32 noundef %11) #8
  br label %25

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @reset_control_assert(ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.42, i32 noundef %17) #8
  br label %22

22:                                               ; preds = %19, %14
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %24 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %22, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ulpi_phy_power_on(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #7
  %6 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %63

14:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %15 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %16 = getelementptr i8, ptr %3, i32 1024
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  %18 = or i32 %17, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #7, !srcloc !10
  %19 = getelementptr i8, ptr %3, i32 1060
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  %21 = or i32 %20, 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #7, !srcloc !10
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  %23 = or i32 %22, 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %23) #7, !srcloc !10
  %24 = getelementptr i8, ptr %3, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 134742024) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 151584777) #7, !srcloc !10
  %25 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.usb_phy, ptr %26, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %34(ptr noundef nonnull %26, i32 noundef 64, i32 noundef 8) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load ptr, ptr %25, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.usb_phy, ptr %40, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usb_phy_io_ops, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = tail call i32 %48(ptr noundef nonnull %40, i32 noundef 128, i32 noundef 11) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  %55 = or i32 %54, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %55) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  %57 = and i32 %56, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %57) #7, !srcloc !10
  br label %63

58:                                               ; preds = %50, %46, %42, %39, %36, %32, %28, %14
  %59 = phi i32 [ %37, %36 ], [ -22, %32 ], [ -22, %28 ], [ -22, %14 ], [ %51, %50 ], [ -22, %46 ], [ -22, %42 ], [ -22, %39 ]
  %60 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.46, i32 noundef %59) #8
  %62 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  br label %63

63:                                               ; preds = %58, %53, %13, %1
  %64 = phi i32 [ %59, %58 ], [ 0, %53 ], [ %11, %13 ], [ %8, %1 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_usb_phy_power_off(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 21
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %190, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 16
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %12 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp ne i8 %15, 0
  %17 = load i1, ptr @ulpi_phy_power_off.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !17

20:                                               ; preds = %9
  store i1 true, ptr @ulpi_phy_power_off.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 850, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %9
  br i1 %16, label %22, label %189

22:                                               ; preds = %21
  %23 = tail call fastcc i32 @ulpi_phy_power_on(ptr noundef %0) #7
  br label %190

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 19
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = tail call i64 @ktime_get() #7
  %36 = add i64 %35, 100000000
  %37 = getelementptr i8, ptr %26, i32 1032
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !9
  %39 = and i32 %38, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %46, %34
  %42 = tail call i64 @ktime_get() #7
  %43 = icmp sgt i64 %42, %36
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !9
  br label %50

46:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #7
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !9
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %41

50:                                               ; preds = %46, %44, %34, %30, %24
  %51 = load ptr, ptr %25, align 4
  %52 = getelementptr i8, ptr %51, i32 1024
  %53 = tail call i64 @ktime_get() #7
  %54 = add i64 %53, 6000000
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %56 = and i32 %55, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %114, label %58

58:                                               ; preds = %61, %50
  %59 = tail call i64 @ktime_get() #7
  %60 = icmp sgt i64 %59, %54
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %114, label %58

65:                                               ; preds = %58
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %114, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 15
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %75 = or i32 %74, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %75) #7, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %77 = and i32 %76, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %77) #7, !srcloc !10
  br label %94

78:                                               ; preds = %69
  %79 = load ptr, ptr %25, align 4
  %80 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tegra_phy_soc_config, ptr %81, i32 0, i32 1
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = getelementptr i8, ptr %79, i32 436
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !9
  %88 = or i32 %87, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %88) #7, !srcloc !10
  br label %94

89:                                               ; preds = %78
  %90 = getelementptr i8, ptr %79, i32 388
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !9
  %92 = and i32 %91, -8388651
  %93 = or i32 %92, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %93) #7, !srcloc !10
  br label %94

94:                                               ; preds = %89, %85, %73
  %95 = tail call i64 @ktime_get() #7
  %96 = add i64 %95, 6000000
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %98 = and i32 %97, 128
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %103, %94
  %101 = tail call i64 @ktime_get() #7
  %102 = icmp sgt i64 %101, %96
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #7
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %105 = and i32 %104, 128
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %100

107:                                              ; preds = %100
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !9
  %109 = and i32 %108, 128
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 14
  %113 = load ptr, ptr %112, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.48) #8
  br label %114

114:                                              ; preds = %111, %107, %103, %94, %65, %61, %50
  %115 = load i8, ptr %27, align 4, !range !8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = getelementptr i8, ptr %26, i32 1024
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #7, !srcloc !9
  %120 = or i32 %119, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %120) #7, !srcloc !10
  br label %121

121:                                              ; preds = %117, %114
  %122 = getelementptr i8, ptr %26, i32 2096
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !9
  %124 = or i32 %123, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %124) #7, !srcloc !10
  %125 = load i8, ptr %27, align 4, !range !8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = getelementptr i8, ptr %26, i32 2056
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #7, !srcloc !9
  %130 = or i32 %129, 344064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %130) #7, !srcloc !10
  br label %131

131:                                              ; preds = %127, %121
  %132 = getelementptr i8, ptr %26, i32 2104
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #7, !srcloc !9
  %134 = or i32 %133, 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %134) #7, !srcloc !10
  %135 = load i8, ptr %27, align 4, !range !8
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %131
  %138 = getelementptr i8, ptr %26, i32 1024
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #7, !srcloc !9
  %140 = and i32 %139, -458757
  %141 = or i32 %140, 327684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %141) #7, !srcloc !10
  %142 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 10
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = getelementptr i8, ptr %26, i32 1032
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #7, !srcloc !9
  %148 = and i32 %147, -1073742339
  %149 = or i32 %148, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %149) #7, !srcloc !10
  %150 = getelementptr i8, ptr %26, i32 1028
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #7, !srcloc !9
  %152 = or i32 %151, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %152) #7, !srcloc !10
  br label %153

153:                                              ; preds = %145, %137, %131
  %154 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 7
  %157 = load ptr, ptr %156, align 4
  %158 = tail call i32 @clk_prepare(ptr noundef %157) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %190

160:                                              ; preds = %153
  %161 = tail call i32 @clk_enable(ptr noundef %157) #7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  tail call void @clk_unprepare(ptr noundef %157) #7
  br label %190

164:                                              ; preds = %160
  tail call void @_raw_spin_lock(ptr noundef nonnull @utmip_pad_lock) #7
  %165 = load i32, ptr @utmip_pad_count, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 14
  %169 = load ptr, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.49) #8
  br label %184

170:                                              ; preds = %164
  %171 = load i8, ptr %27, align 4, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.tegra_usb_phy, ptr %0, i32 0, i32 20
  store i8 1, ptr %174, align 1
  %175 = add i32 %165, 1
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi i32 [ %175, %173 ], [ %165, %170 ]
  %178 = add i32 %177, -1
  store i32 %178, ptr @utmip_pad_count, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = getelementptr i8, ptr %155, i32 2060
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #7, !srcloc !9
  %183 = or i32 %182, 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %183) #7, !srcloc !10
  br label %184

184:                                              ; preds = %180, %176, %167
  %185 = phi i32 [ 0, %180 ], [ 0, %176 ], [ -22, %167 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %186 = load i16, ptr @utmip_pad_lock, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr @utmip_pad_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %188 = load ptr, ptr %156, align 4
  tail call void @clk_disable(ptr noundef %188) #7
  tail call void @clk_unprepare(ptr noundef %188) #7
  br i1 %166, label %190, label %189

189:                                              ; preds = %184, %21
  store i8 0, ptr %2, align 2
  br label %190

190:                                              ; preds = %189, %184, %163, %153, %22, %1
  %191 = phi i32 [ 0, %189 ], [ 0, %1 ], [ %185, %184 ], [ %161, %163 ], [ %158, %153 ], [ -95, %22 ]
  ret i32 %191
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_phy_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_usb_phy, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1032
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #7, !srcloc !10
  %7 = and i32 %6, 514
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2455426}
!10 = !{i64 2455008}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149204283}
!14 = !{i64 2149200107}
!15 = !{i64 2149200182, i64 2149200209, i64 2149200256, i64 2149200278, i64 2149200306, i64 2149200326}
!16 = !{i64 2149227286}
!17 = !{!"branch_weights", i32 1, i32 2000}
