; ModuleID = '/llk/IR/drivers/soc/tegra/pmc.c_pt.bc'
source_filename = "../drivers/soc/tegra/pmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_powergate_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_powergate_power_on\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_powergate_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_powergate_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_powergate_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_powergate_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_powergate_remove_clamping:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_powergate_remove_clamping\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_powergate_remove_clamping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_powergate_sequence_power_up:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_powergate_sequence_power_up\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_powergate_sequence_power_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_io_pad_power_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_io_pad_power_enable\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_io_pad_power_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_io_pad_power_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_io_pad_power_disable\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_io_pad_power_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_io_rail_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_io_rail_power_on\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_io_rail_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_io_rail_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_io_rail_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_io_rail_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_pmc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, [1 x i32], %struct.mutex, ptr, ptr, %struct.irq_chip, %struct.notifier_block, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_pmc_soc = type { i32, ptr, i32, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, i8, i8 }
%struct.tegra_pmc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_io_pad_soc = type { i32, i32, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.tegra_wake_event = type { ptr, i32, i32, %struct.anon.58 }
%struct.anon.58 = type { i32, i32 }
%struct.pmc_clk_init_data = type { ptr, ptr, i32, i32, i8, i8 }
%struct.lock_class_key = type {}
%struct.tegra_powergate = type { %struct.generic_pm_domain, ptr, i32, ptr, i32, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.63 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.63 = type { %struct.mutex }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pmc_clk = type { %struct.clk_hw, i32, i32, i32 }
%struct.pmc_clk_gate = type { %struct.clk_hw, i32, i32 }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }

@__kstrtab_tegra_powergate_power_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_powergate_power_on = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_powergate_power_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_powergate_power_on to i32), ptr @__kstrtab_tegra_powergate_power_on, ptr @__kstrtabns_tegra_powergate_power_on }, section "___ksymtab+tegra_powergate_power_on", align 4
@__kstrtab_tegra_powergate_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_powergate_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_powergate_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_powergate_power_off to i32), ptr @__kstrtab_tegra_powergate_power_off, ptr @__kstrtabns_tegra_powergate_power_off }, section "___ksymtab+tegra_powergate_power_off", align 4
@__kstrtab_tegra_powergate_remove_clamping = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_powergate_remove_clamping = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_powergate_remove_clamping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_powergate_remove_clamping to i32), ptr @__kstrtab_tegra_powergate_remove_clamping, ptr @__kstrtabns_tegra_powergate_remove_clamping }, section "___ksymtab+tegra_powergate_remove_clamping", align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to turn on partition %d: %d\0A\00", align 1
@__kstrtab_tegra_powergate_sequence_power_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_powergate_sequence_power_up = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_powergate_sequence_power_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_powergate_sequence_power_up to i32), ptr @__kstrtab_tegra_powergate_sequence_power_up, ptr @__kstrtabns_tegra_powergate_sequence_power_up }, section "___ksymtab+tegra_powergate_sequence_power_up", align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to prepare I/O pad: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to enable I/O pad: %d\0A\00", align 1
@__kstrtab_tegra_io_pad_power_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_io_pad_power_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_io_pad_power_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_io_pad_power_enable to i32), ptr @__kstrtab_tegra_io_pad_power_enable, ptr @__kstrtabns_tegra_io_pad_power_enable }, section "___ksymtab+tegra_io_pad_power_enable", align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to disable I/O pad: %d\0A\00", align 1
@__kstrtab_tegra_io_pad_power_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_io_pad_power_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_io_pad_power_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_io_pad_power_disable to i32), ptr @__kstrtab_tegra_io_pad_power_disable, ptr @__kstrtabns_tegra_io_pad_power_disable }, section "___ksymtab+tegra_io_pad_power_disable", align 4
@__kstrtab_tegra_io_rail_power_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_io_rail_power_on = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_io_rail_power_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_io_rail_power_on to i32), ptr @__kstrtab_tegra_io_rail_power_on, ptr @__kstrtabns_tegra_io_rail_power_on }, section "___ksymtab+tegra_io_rail_power_on", align 4
@__kstrtab_tegra_io_rail_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_io_rail_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_io_rail_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_io_rail_power_off to i32), ptr @__kstrtab_tegra_io_rail_power_off, ptr @__kstrtabns_tegra_io_rail_power_off }, section "___ksymtab+tegra_io_rail_power_off", align 4
@tegra_pmc_enter_suspend_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"drivers/soc/tegra/pmc.c\00", align 1
@__initcall__kmod_pmc__206_3878_tegra_pmc_driver_init6 = internal global ptr @tegra_pmc_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_pmc__207_3990_tegra_pmc_early_initearly = internal global ptr @tegra_pmc_early_init, section ".initcallearly.init", align 4
@.compoundliteral = internal global %struct.tegra_pmc { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, [1 x i32] zeroinitializer, %struct.mutex zeroinitializer, ptr null, ptr null, %struct.irq_chip zeroinitializer, %struct.notifier_block zeroinitializer, i8 0, i8 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"invalid I/O pad ID %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s(): SMC failed: %lu\0A\00", align 1
@__func__.tegra_pmc_writel = private unnamed_addr constant [17 x i8] c"tegra_pmc_writel\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\014tegra-pmc: %s(): SMC failed: %lu\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.tegra_pmc_readl = private unnamed_addr constant [16 x i8] c"tegra_pmc_readl\00", align 1
@tegra_pmc_driver = internal global %struct.platform_driver { ptr @tegra_pmc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_pmc_match, ptr null, ptr null, ptr @tegra_pmc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pmc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"tegra-pmc\00", align 1
@tegra_pmc_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra234_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_pmc_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_pmc_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_pmc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_pmc_suspend, ptr @tegra_pmc_resume, ptr @tegra_pmc_suspend, ptr @tegra_pmc_resume, ptr @tegra_pmc_suspend, ptr @tegra_pmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"aotag\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to get pclk: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to register clk notifier\0A\00", align 1
@tegra_pmc_reboot_notifier = internal global %struct.notifier_block { ptr @tegra_pmc_reboot_notify, ptr null, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"unable to register reboot notifier, %d\0A\00", align 1
@tegra_pmc_restart_handler = internal global %struct.notifier_block { ptr @tegra_pmc_restart_notify, ptr null, i32 128 }, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"unable to register restart handler, %d\0A\00", align 1
@dev_attr_reset_reason = internal global %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292 }, ptr @reset_reason_show, ptr null }, align 4
@dev_attr_reset_level = internal global %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292 }, ptr @reset_level_show, ptr null }, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"nvidia,suspend-mode\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"nvidia,cpu-pwr-good-time\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"nvidia,cpu-pwr-off-time\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"nvidia,core-pwr-good-time\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"nvidia,core-pwr-off-time\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"nvidia,core-power-req-active-high\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"nvidia,sys-clock-req-active-high\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"nvidia,combined-power-req\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"nvidia,cpu-pwr-good-en\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"nvidia,lp0-vec\00", align 1
@tegra_pmc_clk_notify_cb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_pmc_init_tsense_reset.disabled = internal constant [33 x i8] c"emergency thermal reset disabled\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"i2c-thermtrip\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"i2c-thermtrip node not found, %s.\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"nvidia,i2c-controller-id\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"I2C controller ID missing, %s.\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"nvidia,bus-addr\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"nvidia,bus-addr missing, %s.\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"nvidia,reg-addr\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"nvidia,reg-addr missing, %s.\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"nvidia,reg-data\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"nvidia,reg-data missing, %s.\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"nvidia,pinmux-id\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"emergency thermal reset enabled\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"failed to create attr \22reset_reason\22: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"failed to create attr \22reset_level\22: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"powergate\00", align 1
@powergate_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @powergate_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.43 = private unnamed_addr constant [20 x i8] c" powergate powered\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"------------------\0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c" %9s %7s\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"bootloader\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"forced-recovery\00", align 1
@tegra_pmc_pctl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @tegra_io_pad_pinctrl_ops, ptr null, ptr @tegra_io_pad_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.51 = private unnamed_addr constant [39 x i8] c"failed to register pin controller: %d\0A\00", align 1
@tegra_io_pad_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @tegra_io_pad_pinctrl_get_groups_count, ptr @tegra_io_pad_pinctrl_get_group_name, ptr @tegra_io_pad_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinconf_generic_dt_free_map }, align 4
@tegra_io_pad_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @tegra_io_pad_pinconf_get, ptr @tegra_io_pad_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@usb_sleepwalk_regmap_config = internal constant %struct.regmap_config { ptr @.str.53, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tegra_pmc_regmap_readl, ptr @tegra_pmc_regmap_writel, ptr null, i8 1, i32 0, ptr @pmc_usb_sleepwalk_table, ptr @pmc_usb_sleepwalk_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [38 x i8] c"failed to allocate register map (%d)\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"usb_sleepwalk\00", align 1
@pmc_usb_sleepwalk_table = internal constant %struct.regmap_access_table { ptr @pmc_usb_sleepwalk_ranges, i32 8, ptr null, i32 0 }, align 4
@pmc_usb_sleepwalk_ranges = internal constant [8 x %struct.regmap_range] [%struct.regmap_range { i32 236, i32 240 }, %struct.regmap_range { i32 492, i32 496 }, %struct.regmap_range { i32 504, i32 536 }, %struct.regmap_range { i32 620, i32 620 }, %struct.regmap_range { i32 624, i32 628 }, %struct.regmap_range { i32 636, i32 668 }, %struct.regmap_range { i32 1216, i32 1232 }, %struct.regmap_range { i32 1248, i32 1248 }], align 4
@.str.54 = private unnamed_addr constant [12 x i8] c"core-domain\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"powergates\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"failed to set core OPP regulator\0A\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"failed to init core genpd: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"failed to add core genpd: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"failed to find OPP for level %u: %pe\0A\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"failed to set voltage to %duV: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"powergate lookup failed for %pOFn: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"failed to get clocks for %pOFn: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"failed to get resets for %pOFn: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"failed to initialise PM domain %pOFn: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [48 x i8] c"failed to add PM domain provider for %pOFn: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"failed to acquire resets for PM domain %s: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"failed to turn off PM domain %s: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"failed to turn on PM domain %s: %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"failed to get device resets: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"\013tegra-pmc: failed to acquire resets: %d\0A\00", align 1
@tegra_pmc_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pmc_irq_alloc, ptr null, ptr null, ptr null, ptr @tegra_pmc_irq_translate }, align 4
@.str.74 = private unnamed_addr constant [27 x i8] c"failed to allocate domain\0A\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"unable to register clock %s: %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [40 x i8] c"unable to register %s clock lookup: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"pmc_blink_override\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"clk_32k\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"unable to register pmc_blink_override: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"pmc_blink\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"unable to register pmc_blink: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [41 x i8] c"unable to register pmc_blink lookup: %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"failed to add pmc clock provider: %d\0A\00", align 1
@pmc_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pmc_clk_enable, ptr @pmc_clk_disable, ptr @pmc_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @pmc_clk_mux_set_parent, ptr @pmc_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pmc_clk_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pmc_clk_gate_enable, ptr @pmc_clk_gate_disable, ptr @pmc_clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.84 = private unnamed_addr constant [13 x i8] c"reset_reason\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"reset_level\00", align 1
@tegra234_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 1, i8 0, ptr null, i32 0, ptr null, i32 0, ptr @tegra234_pmc_regs, ptr null, ptr @tegra186_pmc_setup_irq_polarity, ptr @tegra186_pmc_irq_set_wake, ptr @tegra186_pmc_irq_set_type, ptr null, ptr @tegra234_reset_sources, i32 21, ptr @tegra186_reset_levels, i32 4, ptr null, i32 0, ptr null, i32 0, i8 0, i8 0, i8 0 }, align 4
@tegra194_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @tegra194_io_pads, i32 49, ptr @tegra194_pin_descs, i32 49, ptr @tegra194_pmc_regs, ptr null, ptr @tegra186_pmc_setup_irq_polarity, ptr @tegra186_pmc_irq_set_wake, ptr @tegra186_pmc_irq_set_type, ptr null, ptr @tegra194_reset_sources, i32 21, ptr @tegra186_reset_levels, i32 4, ptr @tegra194_wake_events, i32 3, ptr null, i32 0, i8 0, i8 0, i8 0 }, align 4
@tegra186_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @tegra186_io_pads, i32 38, ptr @tegra186_pin_descs, i32 38, ptr @tegra186_pmc_regs, ptr null, ptr @tegra186_pmc_setup_irq_polarity, ptr @tegra186_pmc_irq_set_wake, ptr @tegra186_pmc_irq_set_type, ptr null, ptr @tegra186_reset_sources, i32 15, ptr @tegra186_reset_levels, i32 4, ptr @tegra186_wake_events, i32 3, ptr null, i32 0, i8 0, i8 0, i8 0 }, align 4
@tegra210_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 30, ptr @tegra210_powergates, i32 4, ptr @tegra210_cpu_powergates, i8 1, i8 1, i8 1, i8 0, i8 1, ptr @tegra210_io_pads, i32 38, ptr @tegra210_pin_descs, i32 38, ptr @tegra20_pmc_regs, ptr @tegra20_pmc_init, ptr @tegra20_pmc_setup_irq_polarity, ptr @tegra210_pmc_irq_set_wake, ptr @tegra210_pmc_irq_set_type, ptr @tegra114_powergate_set, ptr @tegra210_reset_sources, i32 6, ptr null, i32 0, ptr @tegra210_wake_events, i32 2, ptr @tegra_pmc_clks_data, i32 3, i8 1, i8 1, i8 0 }, align 4
@tegra124_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 25, ptr @tegra124_powergates, i32 4, ptr @tegra124_cpu_powergates, i8 1, i8 1, i8 0, i8 0, i8 0, ptr @tegra124_io_pads, i32 30, ptr @tegra124_pin_descs, i32 30, ptr @tegra20_pmc_regs, ptr @tegra20_pmc_init, ptr @tegra20_pmc_setup_irq_polarity, ptr null, ptr null, ptr @tegra114_powergate_set, ptr @tegra30_reset_sources, i32 5, ptr null, i32 0, ptr null, i32 0, ptr @tegra_pmc_clks_data, i32 3, i8 1, i8 1, i8 0 }, align 4
@tegra114_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 23, ptr @tegra114_powergates, i32 4, ptr @tegra114_cpu_powergates, i8 1, i8 0, i8 0, i8 0, i8 0, ptr null, i32 0, ptr null, i32 0, ptr @tegra20_pmc_regs, ptr @tegra20_pmc_init, ptr @tegra20_pmc_setup_irq_polarity, ptr null, ptr null, ptr @tegra114_powergate_set, ptr @tegra30_reset_sources, i32 5, ptr null, i32 0, ptr null, i32 0, ptr @tegra_pmc_clks_data, i32 3, i8 1, i8 1, i8 0 }, align 4
@tegra30_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 14, ptr @tegra30_powergates, i32 4, ptr @tegra30_cpu_powergates, i8 1, i8 0, i8 0, i8 0, i8 0, ptr null, i32 0, ptr null, i32 0, ptr @tegra20_pmc_regs, ptr @tegra20_pmc_init, ptr @tegra20_pmc_setup_irq_polarity, ptr null, ptr null, ptr @tegra20_powergate_set, ptr @tegra30_reset_sources, i32 5, ptr null, i32 0, ptr null, i32 0, ptr @tegra_pmc_clks_data, i32 3, i8 1, i8 1, i8 0 }, align 4
@tegra20_pmc_soc = internal constant %struct.tegra_pmc_soc { i32 7, ptr @tegra20_powergates, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, i32 0, ptr null, i32 0, ptr @tegra20_pmc_regs, ptr @tegra20_pmc_init, ptr @tegra20_pmc_setup_irq_polarity, ptr null, ptr null, ptr @tegra20_powergate_set, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i8 1, i8 1, i8 0 }, align 4
@tegra234_pmc_regs = internal constant %struct.tegra_pmc_regs { i32 8192, i32 0, i32 0, i32 0, i32 0, i32 112, i32 2, i32 252, i32 0, i32 3 }, align 4
@tegra234_reset_sources = internal constant [21 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 4
@tegra186_reset_levels = internal constant [4 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], align 4
@.str.88 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"failed to find PMC wake registers\0A\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"failed to map PMC wake registers\0A\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"SYS_RESET_N\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"AOWDT\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"BCCPLEXWDT\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"BPMPWDT\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"SCEWDT\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"SPEWDT\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"APEWDT\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"LCCPLEXWDT\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"SENSOR\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"AOTAG\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"VFSENSOR\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"MAINSWRST\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"SC7\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"HSM\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"CSITE\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"RCEWDT\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"PVA0WDT\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"PVA1WDT\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"L1A_ASYNC\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"BPMPBOOT\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"FUSECRC\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"L0\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"WARM\00", align 1
@tegra194_io_pads = internal constant [49 x %struct.tegra_io_pad_soc] [%struct.tegra_io_pad_soc { i32 6, i32 0, i32 -1, ptr @.str.116 }, %struct.tegra_io_pad_soc { i32 7, i32 1, i32 -1, ptr @.str.117 }, %struct.tegra_io_pad_soc { i32 40, i32 3, i32 -1, ptr @.str.118 }, %struct.tegra_io_pad_soc { i32 43, i32 4, i32 -1, ptr @.str.119 }, %struct.tegra_io_pad_soc { i32 46, i32 5, i32 -1, ptr @.str.120 }, %struct.tegra_io_pad_soc { i32 45, i32 6, i32 -1, ptr @.str.121 }, %struct.tegra_io_pad_soc { i32 44, i32 7, i32 -1, ptr @.str.122 }, %struct.tegra_io_pad_soc { i32 28, i32 8, i32 -1, ptr @.str.123 }, %struct.tegra_io_pad_soc { i32 47, i32 9, i32 -1, ptr @.str.124 }, %struct.tegra_io_pad_soc { i32 48, i32 10, i32 -1, ptr @.str.125 }, %struct.tegra_io_pad_soc { i32 14, i32 11, i32 -1, ptr @.str.126 }, %struct.tegra_io_pad_soc { i32 15, i32 12, i32 -1, ptr @.str.127 }, %struct.tegra_io_pad_soc { i32 69, i32 14, i32 -1, ptr @.str.128 }, %struct.tegra_io_pad_soc { i32 54, i32 15, i32 -1, ptr @.str.129 }, %struct.tegra_io_pad_soc { i32 65, i32 16, i32 -1, ptr @.str.130 }, %struct.tegra_io_pad_soc { i32 0, i32 17, i32 -1, ptr @.str.131 }, %struct.tegra_io_pad_soc { i32 30, i32 18, i32 -1, ptr @.str.132 }, %struct.tegra_io_pad_soc { i32 31, i32 19, i32 -1, ptr @.str.133 }, %struct.tegra_io_pad_soc { i32 63, i32 20, i32 -1, ptr @.str.134 }, %struct.tegra_io_pad_soc { i32 64, i32 21, i32 -1, ptr @.str.135 }, %struct.tegra_io_pad_soc { i32 62, i32 22, i32 -1, ptr @.str.136 }, %struct.tegra_io_pad_soc { i32 70, i32 23, i32 -1, ptr @.str.137 }, %struct.tegra_io_pad_soc { i32 71, i32 24, i32 -1, ptr @.str.138 }, %struct.tegra_io_pad_soc { i32 16, i32 25, i32 -1, ptr @.str.139 }, %struct.tegra_io_pad_soc { i32 36, i32 26, i32 -1, ptr @.str.140 }, %struct.tegra_io_pad_soc { i32 35, i32 27, i32 -1, ptr @.str.141 }, %struct.tegra_io_pad_soc { i32 33, i32 28, i32 -1, ptr @.str.142 }, %struct.tegra_io_pad_soc { i32 34, i32 29, i32 -1, ptr @.str.143 }, %struct.tegra_io_pad_soc { i32 49, i32 32, i32 -1, ptr @.str.144 }, %struct.tegra_io_pad_soc { i32 50, i32 33, i32 -1, ptr @.str.145 }, %struct.tegra_io_pad_soc { i32 51, i32 34, i32 -1, ptr @.str.146 }, %struct.tegra_io_pad_soc { i32 52, i32 35, i32 -1, ptr @.str.147 }, %struct.tegra_io_pad_soc { i32 61, i32 36, i32 -1, ptr @.str.148 }, %struct.tegra_io_pad_soc { i32 53, i32 37, i32 -1, ptr @.str.149 }, %struct.tegra_io_pad_soc { i32 3, i32 38, i32 -1, ptr @.str.150 }, %struct.tegra_io_pad_soc { i32 8, i32 43, i32 -1, ptr @.str.151 }, %struct.tegra_io_pad_soc { i32 9, i32 44, i32 -1, ptr @.str.152 }, %struct.tegra_io_pad_soc { i32 10, i32 45, i32 -1, ptr @.str.153 }, %struct.tegra_io_pad_soc { i32 11, i32 46, i32 -1, ptr @.str.154 }, %struct.tegra_io_pad_soc { i32 66, i32 47, i32 -1, ptr @.str.155 }, %struct.tegra_io_pad_soc { i32 72, i32 49, i32 -1, ptr @.str.156 }, %struct.tegra_io_pad_soc { i32 12, i32 50, i32 -1, ptr @.str.157 }, %struct.tegra_io_pad_soc { i32 13, i32 51, i32 -1, ptr @.str.158 }, %struct.tegra_io_pad_soc { i32 25, i32 53, i32 -1, ptr @.str.159 }, %struct.tegra_io_pad_soc { i32 56, i32 55, i32 4, ptr @.str.160 }, %struct.tegra_io_pad_soc { i32 60, i32 56, i32 6, ptr @.str.161 }, %struct.tegra_io_pad_soc { i32 5, i32 60, i32 -1, ptr @.str.162 }, %struct.tegra_io_pad_soc { i32 1, i32 61, i32 1, ptr @.str.163 }, %struct.tegra_io_pad_soc { i32 78, i32 -1, i32 0, ptr @.str.164 }], align 4
@tegra194_pin_descs = internal constant [49 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 6, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 0, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.145, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.146, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.147, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.149, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.157, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.158, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.164, ptr null }], align 4
@tegra194_pmc_regs = internal constant %struct.tegra_pmc_regs { i32 8192, i32 116, i32 120, i32 124, i32 128, i32 112, i32 2, i32 124, i32 0, i32 3 }, align 4
@tegra194_reset_sources = internal constant [21 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 4
@tegra194_wake_events = internal constant [3 x %struct.tegra_wake_event] [%struct.tegra_wake_event { ptr @.str.165, i32 24, i32 209, %struct.anon.58 { i32 -1, i32 -1 } }, %struct.tegra_wake_event { ptr @.str.166, i32 29, i32 0, %struct.anon.58 { i32 1, i32 36 } }, %struct.tegra_wake_event { ptr @.str.167, i32 73, i32 10, %struct.anon.58 { i32 -1, i32 -1 } }], align 4
@.str.116 = private unnamed_addr constant [5 x i8] c"csia\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"csib\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"mipi-bias\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"pex-clk-bias\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"pex-clk3\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"pex-clk2\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"pex-clk1\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"eqos\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"pex-clk-2-bias\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"pex-clk-2\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"dap3\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"dap5\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"pwr-ctl\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"soc-gpio53\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"gp-pwm2\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"gp-pwm3\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"soc-gpio12\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"soc-gpio13\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"soc-gpio10\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"uart5\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"dbg\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"hdmi-dp3\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"hdmi-dp2\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"hdmi-dp0\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"hdmi-dp1\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"pex-cntrl\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"pex-ctl2\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"pex-l0-rst\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"pex-l1-rst\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"sdmmc4\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"pex-l5-rst\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"cam\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"csic\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"csid\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"csie\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"csif\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"csig\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"csih\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"edp\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"sdmmc1-hv\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"sdmmc3-hv\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"conn\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"audio-hv\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"ao-hv\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@tegra186_io_pads = internal constant [38 x %struct.tegra_io_pad_soc] [%struct.tegra_io_pad_soc { i32 6, i32 0, i32 -1, ptr @.str.116 }, %struct.tegra_io_pad_soc { i32 7, i32 1, i32 -1, ptr @.str.117 }, %struct.tegra_io_pad_soc { i32 21, i32 2, i32 -1, ptr @.str.168 }, %struct.tegra_io_pad_soc { i32 40, i32 3, i32 -1, ptr @.str.118 }, %struct.tegra_io_pad_soc { i32 43, i32 4, i32 -1, ptr @.str.119 }, %struct.tegra_io_pad_soc { i32 46, i32 5, i32 -1, ptr @.str.120 }, %struct.tegra_io_pad_soc { i32 45, i32 6, i32 -1, ptr @.str.121 }, %struct.tegra_io_pad_soc { i32 44, i32 7, i32 -1, ptr @.str.122 }, %struct.tegra_io_pad_soc { i32 73, i32 9, i32 -1, ptr @.str.169 }, %struct.tegra_io_pad_soc { i32 74, i32 10, i32 -1, ptr @.str.170 }, %struct.tegra_io_pad_soc { i32 75, i32 11, i32 -1, ptr @.str.171 }, %struct.tegra_io_pad_soc { i32 77, i32 12, i32 -1, ptr @.str.172 }, %struct.tegra_io_pad_soc { i32 69, i32 14, i32 -1, ptr @.str.128 }, %struct.tegra_io_pad_soc { i32 0, i32 17, i32 -1, ptr @.str.131 }, %struct.tegra_io_pad_soc { i32 37, i32 19, i32 -1, ptr @.str.173 }, %struct.tegra_io_pad_soc { i32 16, i32 25, i32 -1, ptr @.str.139 }, %struct.tegra_io_pad_soc { i32 33, i32 28, i32 -1, ptr @.str.142 }, %struct.tegra_io_pad_soc { i32 34, i32 29, i32 -1, ptr @.str.143 }, %struct.tegra_io_pad_soc { i32 49, i32 32, i32 -1, ptr @.str.144 }, %struct.tegra_io_pad_soc { i32 58, i32 34, i32 5, ptr @.str.174 }, %struct.tegra_io_pad_soc { i32 61, i32 36, i32 -1, ptr @.str.148 }, %struct.tegra_io_pad_soc { i32 3, i32 38, i32 -1, ptr @.str.150 }, %struct.tegra_io_pad_soc { i32 22, i32 40, i32 -1, ptr @.str.175 }, %struct.tegra_io_pad_soc { i32 23, i32 41, i32 -1, ptr @.str.176 }, %struct.tegra_io_pad_soc { i32 24, i32 42, i32 -1, ptr @.str.177 }, %struct.tegra_io_pad_soc { i32 8, i32 43, i32 -1, ptr @.str.151 }, %struct.tegra_io_pad_soc { i32 9, i32 44, i32 -1, ptr @.str.152 }, %struct.tegra_io_pad_soc { i32 10, i32 45, i32 -1, ptr @.str.153 }, %struct.tegra_io_pad_soc { i32 11, i32 46, i32 -1, ptr @.str.154 }, %struct.tegra_io_pad_soc { i32 66, i32 47, i32 -1, ptr @.str.155 }, %struct.tegra_io_pad_soc { i32 72, i32 49, i32 -1, ptr @.str.156 }, %struct.tegra_io_pad_soc { i32 19, i32 52, i32 2, ptr @.str.178 }, %struct.tegra_io_pad_soc { i32 25, i32 53, i32 -1, ptr @.str.159 }, %struct.tegra_io_pad_soc { i32 56, i32 55, i32 4, ptr @.str.160 }, %struct.tegra_io_pad_soc { i32 60, i32 56, i32 6, ptr @.str.161 }, %struct.tegra_io_pad_soc { i32 5, i32 60, i32 -1, ptr @.str.162 }, %struct.tegra_io_pad_soc { i32 1, i32 61, i32 1, ptr @.str.163 }, %struct.tegra_io_pad_soc { i32 78, i32 -1, i32 0, ptr @.str.164 }], align 4
@tegra186_pin_descs = internal constant [38 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 6, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.172, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 0, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.174, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.178, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.164, ptr null }], align 4
@tegra186_pmc_regs = internal constant %struct.tegra_pmc_regs { i32 8192, i32 116, i32 120, i32 124, i32 128, i32 112, i32 2, i32 60, i32 0, i32 3 }, align 4
@tegra186_reset_sources = internal constant [15 x ptr] [ptr @.str.179, ptr @.str.92, ptr @.str.180, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.93, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.181, ptr @.str.103, ptr @.str.104, ptr @.str.182], align 4
@tegra186_wake_events = internal constant [3 x %struct.tegra_wake_event] [%struct.tegra_wake_event { ptr @.str.165, i32 24, i32 209, %struct.anon.58 { i32 -1, i32 -1 } }, %struct.tegra_wake_event { ptr @.str.166, i32 29, i32 0, %struct.anon.58 { i32 1, i32 56 } }, %struct.tegra_wake_event { ptr @.str.167, i32 73, i32 10, %struct.anon.58 { i32 -1, i32 -1 } }], align 4
@.str.168 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"usb-bias\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"sdmmc2-hv\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"dsib\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"dsic\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"dsid\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"dmic-hv\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"SYS_RESET\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"MCCPLEXWDT\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"SWREST\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"CORESIGHT\00", align 1
@tegra210_powergates = internal constant [30 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr null, ptr null, ptr @.str.187, ptr null, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr null, ptr null, ptr @.str.192, ptr @.str.193, ptr null, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206], align 4
@tegra210_cpu_powergates = internal constant [4 x i8] c"\0E\09\0A\0B", align 1
@tegra210_io_pads = internal constant [38 x %struct.tegra_io_pad_soc] [%struct.tegra_io_pad_soc { i32 0, i32 17, i32 5, ptr @.str.131 }, %struct.tegra_io_pad_soc { i32 1, i32 61, i32 18, ptr @.str.163 }, %struct.tegra_io_pad_soc { i32 3, i32 36, i32 10, ptr @.str.150 }, %struct.tegra_io_pad_soc { i32 6, i32 0, i32 -1, ptr @.str.116 }, %struct.tegra_io_pad_soc { i32 7, i32 1, i32 -1, ptr @.str.117 }, %struct.tegra_io_pad_soc { i32 8, i32 42, i32 -1, ptr @.str.151 }, %struct.tegra_io_pad_soc { i32 9, i32 43, i32 -1, ptr @.str.152 }, %struct.tegra_io_pad_soc { i32 10, i32 44, i32 -1, ptr @.str.153 }, %struct.tegra_io_pad_soc { i32 11, i32 45, i32 -1, ptr @.str.154 }, %struct.tegra_io_pad_soc { i32 16, i32 25, i32 19, ptr @.str.139 }, %struct.tegra_io_pad_soc { i32 17, i32 26, i32 -1, ptr @.str.207 }, %struct.tegra_io_pad_soc { i32 18, i32 50, i32 20, ptr @.str.208 }, %struct.tegra_io_pad_soc { i32 20, i32 51, i32 -1, ptr @.str.209 }, %struct.tegra_io_pad_soc { i32 21, i32 2, i32 -1, ptr @.str.168 }, %struct.tegra_io_pad_soc { i32 22, i32 39, i32 -1, ptr @.str.175 }, %struct.tegra_io_pad_soc { i32 23, i32 40, i32 -1, ptr @.str.176 }, %struct.tegra_io_pad_soc { i32 24, i32 41, i32 -1, ptr @.str.177 }, %struct.tegra_io_pad_soc { i32 26, i32 35, i32 -1, ptr @.str.210 }, %struct.tegra_io_pad_soc { i32 27, i32 37, i32 -1, ptr @.str.211 }, %struct.tegra_io_pad_soc { i32 29, i32 27, i32 21, ptr @.str.212 }, %struct.tegra_io_pad_soc { i32 32, i32 28, i32 -1, ptr @.str.213 }, %struct.tegra_io_pad_soc { i32 37, i32 19, i32 -1, ptr @.str.173 }, %struct.tegra_io_pad_soc { i32 39, i32 57, i32 -1, ptr @.str.214 }, %struct.tegra_io_pad_soc { i32 40, i32 3, i32 -1, ptr @.str.118 }, %struct.tegra_io_pad_soc { i32 42, i32 4, i32 -1, ptr @.str.215 }, %struct.tegra_io_pad_soc { i32 44, i32 5, i32 -1, ptr @.str.122 }, %struct.tegra_io_pad_soc { i32 45, i32 6, i32 -1, ptr @.str.121 }, %struct.tegra_io_pad_soc { i32 49, i32 -1, i32 11, ptr @.str.144 }, %struct.tegra_io_pad_soc { i32 55, i32 33, i32 12, ptr @.str.216 }, %struct.tegra_io_pad_soc { i32 59, i32 34, i32 13, ptr @.str.217 }, %struct.tegra_io_pad_soc { i32 66, i32 46, i32 22, ptr @.str.155 }, %struct.tegra_io_pad_soc { i32 67, i32 47, i32 23, ptr @.str.218 }, %struct.tegra_io_pad_soc { i32 69, i32 14, i32 2, ptr @.str.128 }, %struct.tegra_io_pad_soc { i32 73, i32 9, i32 -1, ptr @.str.169 }, %struct.tegra_io_pad_soc { i32 74, i32 10, i32 -1, ptr @.str.170 }, %struct.tegra_io_pad_soc { i32 75, i32 11, i32 -1, ptr @.str.171 }, %struct.tegra_io_pad_soc { i32 76, i32 18, i32 -1, ptr @.str.219 }, %struct.tegra_io_pad_soc { i32 77, i32 12, i32 -1, ptr @.str.172 }], align 4
@tegra210_pin_descs = internal constant [38 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.207, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.208, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.209, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.210, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.211, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.212, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.213, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.214, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.215, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.216, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.217, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.218, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.219, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.172, ptr null }], align 4
@tegra20_pmc_regs = internal constant %struct.tegra_pmc_regs { i32 80, i32 440, i32 444, i32 448, i32 452, i32 436, i32 0, i32 7, i32 0, i32 0 }, align 4
@tegra210_reset_sources = internal constant [6 x ptr] [ptr @.str.220, ptr @.str.221, ptr @.str.99, ptr @.str.222, ptr @.str.223, ptr @.str.100], align 4
@tegra210_wake_events = internal constant [2 x %struct.tegra_wake_event] [%struct.tegra_wake_event { ptr @.str.167, i32 16, i32 2, %struct.anon.58 { i32 -1, i32 -1 } }, %struct.tegra_wake_event { ptr @.str.165, i32 51, i32 86, %struct.anon.58 { i32 -1, i32 -1 } }], align 4
@tegra_pmc_clks_data = internal constant [3 x %struct.pmc_clk_init_data] [%struct.pmc_clk_init_data { ptr @.str.224, ptr @clk_out1_parents, i32 4, i32 0, i8 6, i8 2 }, %struct.pmc_clk_init_data { ptr @.str.225, ptr @clk_out2_parents, i32 4, i32 1, i8 14, i8 10 }, %struct.pmc_clk_init_data { ptr @.str.226, ptr @clk_out3_parents, i32 4, i32 2, i8 22, i8 18 }], align 4
@.str.183 = private unnamed_addr constant [6 x i8] c"crail\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"3d\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"mpe\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"cpu1\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"cpu2\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"cpu3\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"c0nc\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"sor\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"disb\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"xusba\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"xusbb\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"xusbc\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c"vic\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"iram\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"nvdec\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"nvjpg\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"dfd\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"ve2\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"debug-nonao\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"dmic\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"emmc2\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"lvds\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"pex-bias\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"sdmmc1\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"sdmmc3\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"spi-hv\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"POWER_ON_RESET\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"WATCHDOG\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"SW_MAIN\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"LP0\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"pmc_clk_out_1\00", align 1
@clk_out1_parents = internal constant [4 x ptr] [ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230], align 4
@.str.225 = private unnamed_addr constant [14 x i8] c"pmc_clk_out_2\00", align 1
@clk_out2_parents = internal constant [4 x ptr] [ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231], align 4
@.str.226 = private unnamed_addr constant [14 x i8] c"pmc_clk_out_3\00", align 1
@clk_out3_parents = internal constant [4 x ptr] [ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.232], align 4
@.str.227 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"osc_div2\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"osc_div4\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"extern1\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"extern2\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"extern3\00", align 1
@tegra124_powergates = internal constant [25 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.233, ptr null, ptr @.str.187, ptr @.str.234, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.235, ptr null, ptr @.str.192, ptr @.str.193, ptr @.str.236, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201], align 4
@tegra124_cpu_powergates = internal constant [4 x i8] c"\0E\09\0A\0B", align 1
@tegra124_io_pads = internal constant [30 x %struct.tegra_io_pad_soc] [%struct.tegra_io_pad_soc { i32 0, i32 17, i32 -1, ptr @.str.131 }, %struct.tegra_io_pad_soc { i32 2, i32 15, i32 -1, ptr @.str.237 }, %struct.tegra_io_pad_soc { i32 3, i32 36, i32 -1, ptr @.str.150 }, %struct.tegra_io_pad_soc { i32 4, i32 22, i32 -1, ptr @.str.238 }, %struct.tegra_io_pad_soc { i32 6, i32 0, i32 -1, ptr @.str.116 }, %struct.tegra_io_pad_soc { i32 7, i32 1, i32 -1, ptr @.str.239 }, %struct.tegra_io_pad_soc { i32 10, i32 44, i32 -1, ptr @.str.240 }, %struct.tegra_io_pad_soc { i32 21, i32 2, i32 -1, ptr @.str.168 }, %struct.tegra_io_pad_soc { i32 22, i32 39, i32 -1, ptr @.str.175 }, %struct.tegra_io_pad_soc { i32 23, i32 40, i32 -1, ptr @.str.176 }, %struct.tegra_io_pad_soc { i32 24, i32 41, i32 -1, ptr @.str.177 }, %struct.tegra_io_pad_soc { i32 32, i32 28, i32 -1, ptr @.str.213 }, %struct.tegra_io_pad_soc { i32 37, i32 19, i32 -1, ptr @.str.173 }, %struct.tegra_io_pad_soc { i32 38, i32 38, i32 -1, ptr @.str.241 }, %struct.tegra_io_pad_soc { i32 39, i32 57, i32 -1, ptr @.str.214 }, %struct.tegra_io_pad_soc { i32 40, i32 3, i32 -1, ptr @.str.118 }, %struct.tegra_io_pad_soc { i32 41, i32 13, i32 -1, ptr @.str.242 }, %struct.tegra_io_pad_soc { i32 42, i32 4, i32 -1, ptr @.str.215 }, %struct.tegra_io_pad_soc { i32 44, i32 5, i32 -1, ptr @.str.122 }, %struct.tegra_io_pad_soc { i32 45, i32 6, i32 -1, ptr @.str.121 }, %struct.tegra_io_pad_soc { i32 49, i32 32, i32 -1, ptr @.str.144 }, %struct.tegra_io_pad_soc { i32 55, i32 33, i32 -1, ptr @.str.216 }, %struct.tegra_io_pad_soc { i32 59, i32 34, i32 -1, ptr @.str.217 }, %struct.tegra_io_pad_soc { i32 61, i32 35, i32 -1, ptr @.str.148 }, %struct.tegra_io_pad_soc { i32 68, i32 58, i32 -1, ptr @.str.243 }, %struct.tegra_io_pad_soc { i32 69, i32 14, i32 -1, ptr @.str.128 }, %struct.tegra_io_pad_soc { i32 73, i32 9, i32 -1, ptr @.str.169 }, %struct.tegra_io_pad_soc { i32 74, i32 10, i32 -1, ptr @.str.170 }, %struct.tegra_io_pad_soc { i32 75, i32 11, i32 -1, ptr @.str.171 }, %struct.tegra_io_pad_soc { i32 77, i32 12, i32 -1, ptr @.str.244 }], align 4
@tegra124_pin_descs = internal constant [30 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.237, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.238, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.239, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.240, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.213, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.241, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.214, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.242, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.215, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.216, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.217, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.243, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.244, ptr null }], align 4
@tegra30_reset_sources = internal constant [5 x ptr] [ptr @.str.220, ptr @.str.221, ptr @.str.99, ptr @.str.222, ptr @.str.223], align 4
@.str.233 = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"heg\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"celp\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"c1nc\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"csb\00", align 1
@.str.240 = private unnamed_addr constant [4 x i8] c"cse\00", align 1
@.str.241 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"sys_ddc\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"usb_bias\00", align 1
@tegra114_powergates = internal constant [23 x ptr] [ptr @.str.183, ptr @.str.245, ptr @.str.185, ptr null, ptr @.str.233, ptr null, ptr @.str.187, ptr @.str.234, ptr null, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.235, ptr null, ptr @.str.192, ptr @.str.193, ptr @.str.236, ptr null, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199], align 4
@tegra114_cpu_powergates = internal constant [4 x i8] c"\0E\09\0A\0B", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@tegra30_powergates = internal constant [14 x ptr] [ptr @.str.192, ptr @.str.245, ptr @.str.185, ptr @.str.186, ptr @.str.233, ptr @.str.246, ptr @.str.187, ptr @.str.234, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.235, ptr @.str.247], align 4
@tegra30_cpu_powergates = internal constant [4 x i8] c"\00\09\0A\0B", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"td2\00", align 1
@tegra20_powergates = internal constant [7 x ptr] [ptr @.str.248, ptr @.str.245, ptr @.str.185, ptr @.str.186, ptr @.str.233, ptr @.str.246, ptr @.str.187], align 4
@.str.248 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.249 = private unnamed_addr constant [31 x i8] c"failed to sync regulators: %d\0A\00", align 1
@tegra_pmc_early_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.250 = private unnamed_addr constant [22 x i8] c"&pmc->powergates_lock\00", align 1
@.str.251 = private unnamed_addr constant [54 x i8] c"\014tegra-pmc: DT node not found, powergating disabled\0A\00", align 1
@.str.252 = private unnamed_addr constant [38 x i8] c"\014tegra-pmc: Using memory region %pR\0A\00", align 1
@.str.253 = private unnamed_addr constant [42 x i8] c"\013tegra-pmc: failed to get PMC registers\0A\00", align 1
@.str.254 = private unnamed_addr constant [42 x i8] c"\013tegra-pmc: failed to map PMC registers\0A\00", align 1
@.str.255 = private unnamed_addr constant [24 x i8] c"nvidia,invert-interrupt\00", align 1
@.str.256 = private unnamed_addr constant [48 x i8] c"\016tegra-pmc: access to PMC is restricted to TZ\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_pmc__206_3878_tegra_pmc_driver_init6, ptr @__initcall__kmod_pmc__207_3990_tegra_pmc_early_initearly, ptr @__ksymtab_tegra_io_pad_power_disable, ptr @__ksymtab_tegra_io_pad_power_enable, ptr @__ksymtab_tegra_io_rail_power_off, ptr @__ksymtab_tegra_io_rail_power_on, ptr @__ksymtab_tegra_powergate_power_off, ptr @__ksymtab_tegra_powergate_power_on, ptr @__ksymtab_tegra_powergate_remove_clamping, ptr @__ksymtab_tegra_powergate_sequence_power_up], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_powergate_power_on(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22), i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = icmp eq i32 %0, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %13 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %12, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11, %9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %17 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %0) #14
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %20 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef nonnull @.compoundliteral, i32 noundef %0, i1 noundef zeroext true) #14
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %22, %18 ], [ 0, %16 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  br label %25

25:                                               ; preds = %23, %11, %1
  %26 = phi i32 [ -22, %1 ], [ -22, %11 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_powergate_power_off(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22), i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = icmp eq i32 %0, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %13 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %12, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11, %9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %17 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %0) #14
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %20 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef nonnull @.compoundliteral, i32 noundef %0, i1 noundef zeroext false) #14
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %22, %18 ], [ 0, %16 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  br label %25

25:                                               ; preds = %23, %11, %1
  %26 = phi i32 [ -22, %1 ], [ -22, %11 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_powergate_remove_clamping(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22), i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  switch i32 %0, label %17 [
    i32 1, label %10
    i32 4, label %19
    i32 3, label %16
  ]

10:                                               ; preds = %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %12 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %11, i32 0, i32 5
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef 0, i32 noundef 724) #14
  br label %21

16:                                               ; preds = %9
  br label %19

17:                                               ; preds = %10, %9
  %18 = shl nuw i32 1, %0
  br label %19

19:                                               ; preds = %17, %16, %9
  %20 = phi i32 [ 16, %16 ], [ %18, %17 ], [ 8, %9 ]
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %20, i32 noundef 52) #14
  br label %21

21:                                               ; preds = %19, %15
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  br label %22

22:                                               ; preds = %21, %1
  %23 = phi i32 [ 0, %21 ], [ -22, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  store ptr %1, ptr %4, align 4
  %5 = lshr i32 %0, 5
  %6 = getelementptr i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22), i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 824) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 4) #15
  %19 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 5
  store ptr %18, ptr %19, align 8
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %23) #14
  br label %35

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 2
  store i32 %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 3
  store ptr %4, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 4
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 6
  store ptr %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_powergate, ptr %14, i32 0, i32 1
  store ptr @.compoundliteral, ptr %29, align 8
  %30 = call fastcc i32 @tegra_powergate_power_up(ptr noundef nonnull %14, i1 noundef zeroext false)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %30) #16
  br label %34

34:                                               ; preds = %32, %24
  call void @kfree(ptr noundef nonnull %18) #14
  call void @kfree(ptr noundef nonnull %14) #14
  br label %35

35:                                               ; preds = %34, %21, %12, %3
  %36 = phi i32 [ %30, %34 ], [ -12, %21 ], [ -22, %3 ], [ -12, %12 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_powergate_power_up(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @reset_control_assert(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %118

7:                                                ; preds = %2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %8 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %15, i32 0, i32 5
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %118

19:                                               ; preds = %13, %7
  %20 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %20) #14
  %21 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %11) #14
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @mutex_unlock(ptr noundef %20) #14
  br label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %25, i32 0, i32 18
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %9, i32 noundef %11, i1 noundef zeroext true) #14
  tail call void @mutex_unlock(ptr noundef %20) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %118, label %30

30:                                               ; preds = %23, %22
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %31 = tail call fastcc i32 @tegra_powergate_prepare_clocks(ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %97

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @tegra_powergate_enable_clocks(ptr noundef %0)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %10, align 4
  %39 = getelementptr inbounds %struct.tegra_pmc, ptr %37, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %39) #14
  switch i32 %38, label %48 [
    i32 1, label %40
    i32 4, label %50
    i32 3, label %47
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tegra_pmc, ptr %37, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %42, i32 0, i32 5
  %44 = load i8, ptr %43, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  tail call fastcc void @tegra_pmc_writel(ptr noundef %37, i32 noundef 0, i32 noundef 724) #14
  br label %52

47:                                               ; preds = %36
  br label %50

48:                                               ; preds = %40, %36
  %49 = shl nuw i32 1, %38
  br label %50

50:                                               ; preds = %48, %47, %36
  %51 = phi i32 [ 16, %47 ], [ %49, %48 ], [ 8, %36 ]
  tail call fastcc void @tegra_pmc_writel(ptr noundef %37, i32 noundef %51, i32 noundef 52) #14
  br label %52

52:                                               ; preds = %50, %46
  tail call void @mutex_unlock(ptr noundef %39) #14
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %53 = load ptr, ptr %3, align 4
  %54 = tail call i32 @reset_control_deassert(ptr noundef %53) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  br i1 %1, label %57, label %58

57:                                               ; preds = %56
  tail call fastcc void @tegra_powergate_disable_clocks(ptr noundef %0)
  br label %58

58:                                               ; preds = %57, %56
  %59 = tail call fastcc i32 @tegra_powergate_unprepare_clocks(ptr noundef %0)
  br label %118

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i32 [ 0, %64 ], [ %71, %66 ]
  %68 = load ptr, ptr %65, align 8
  %69 = getelementptr ptr, ptr %68, i32 %67
  %70 = load ptr, ptr %69, align 4
  tail call void @clk_disable(ptr noundef %70) #14
  tail call void @clk_unprepare(ptr noundef %70) #14
  %71 = add nuw i32 %67, 1
  %72 = load i32, ptr %61, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %66, label %74

74:                                               ; preds = %66, %60
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  br label %75

75:                                               ; preds = %74, %33
  %76 = phi i32 [ %34, %33 ], [ %54, %74 ]
  %77 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  %78 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 5
  br label %87

83:                                               ; preds = %87
  %84 = add nuw i32 %88, 1
  %85 = load i32, ptr %78, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83, %81
  %88 = phi i32 [ 0, %81 ], [ %84, %83 ]
  %89 = load ptr, ptr %77, align 8
  %90 = getelementptr ptr, ptr %89, i32 %88
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %82, align 8
  %93 = getelementptr i32, ptr %92, i32 %88
  %94 = load i32, ptr %93, align 4
  %95 = tail call i32 @clk_set_rate(ptr noundef %91, i32 noundef %94) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %83, label %97

97:                                               ; preds = %87, %83, %75, %30
  %98 = phi i32 [ %31, %30 ], [ %76, %75 ], [ %76, %83 ], [ %76, %87 ]
  %99 = load ptr, ptr %8, align 8
  %100 = load i32, ptr %10, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.tegra_pmc, ptr %99, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %104, i32 0, i32 5
  %106 = load i8, ptr %105, align 1, !range !8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102, %97
  %109 = getelementptr inbounds %struct.tegra_pmc, ptr %99, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %109) #14
  %110 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %100) #14
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.tegra_pmc, ptr %99, i32 0, i32 7
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %113, i32 0, i32 18
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 %115(ptr noundef %99, i32 noundef %100, i1 noundef zeroext false) #14
  br label %117

117:                                              ; preds = %111, %108
  tail call void @mutex_unlock(ptr noundef %109) #14
  br label %118

118:                                              ; preds = %117, %102, %58, %23, %13, %2
  %119 = phi i32 [ %5, %2 ], [ %28, %23 ], [ %59, %58 ], [ %98, %102 ], [ %98, %117 ], [ -22, %13 ]
  ret i32 %119
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %0
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr ptr, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %13) #14
  br label %21

21:                                               ; preds = %19, %8, %4, %1
  %22 = phi i1 [ false, %4 ], [ false, %1 ], [ %20, %19 ], [ true, %8 ]
  ret i1 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pmc_cpu_power_on(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %0
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 5
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15, %8
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %20 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %13) #14
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %23 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %22, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef nonnull @.compoundliteral, i32 noundef %13, i1 noundef zeroext true) #14
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %25, %21 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  br label %28

28:                                               ; preds = %26, %15, %4, %1
  %29 = phi i32 [ -22, %15 ], [ %27, %26 ], [ -22, %4 ], [ -22, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pmc_cpu_remove_clamping(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %0
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22), i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  switch i8 %12, label %29 [
    i8 1, label %22
    i8 4, label %31
    i8 3, label %28
  ]

22:                                               ; preds = %21
  %23 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %24 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %23, i32 0, i32 5
  %25 = load i8, ptr %24, align 1, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef 0, i32 noundef 724) #14
  br label %33

28:                                               ; preds = %21
  br label %31

29:                                               ; preds = %22, %21
  %30 = shl nuw i32 1, %13
  br label %31

31:                                               ; preds = %29, %28, %21
  %32 = phi i32 [ 16, %28 ], [ %30, %29 ], [ 8, %21 ]
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %32, i32 noundef 52) #14
  br label %33

33:                                               ; preds = %31, %27
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  br label %34

34:                                               ; preds = %33, %8, %4, %1
  %35 = phi i32 [ 0, %33 ], [ -22, %8 ], [ -22, %4 ], [ -22, %1 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra_pmc_core_domain_state_synced() local_unnamed_addr #4 {
  %1 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 28), align 4, !range !8
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_io_pad_power_enable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %5 = call fastcc i32 @tegra_io_pad_prepare(i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %5) #16
  br label %22

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4
  %11 = or i32 %10, 1073741824
  %12 = load i32, ptr %2, align 4
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %11, i32 noundef %12)
  %13 = load i32, ptr %3, align 4
  %14 = tail call fastcc i32 @tegra_io_pad_poll(i32 noundef %13, i32 noundef %10, i32 noundef 0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %14) #16
  br label %22

18:                                               ; preds = %9
  %19 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef 0, i32 noundef 32) #14
  br label %22

22:                                               ; preds = %21, %18, %16, %7
  %23 = phi i32 [ %5, %7 ], [ %14, %16 ], [ %14, %18 ], [ %14, %21 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_io_pad_prepare(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %6 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %5, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  br label %15

12:                                               ; preds = %15
  %13 = add nuw i32 %16, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %9 ], [ %13, %12 ]
  %17 = getelementptr %struct.tegra_io_pad_soc, ptr %11, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %12

20:                                               ; preds = %15
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %12, %4
  %23 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef %0) #16
  br label %65

24:                                               ; preds = %20
  %25 = getelementptr %struct.tegra_io_pad_soc, ptr %11, i32 %16, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %65, label %28

28:                                               ; preds = %24
  %29 = and i32 %26, 31
  %30 = shl nuw i32 1, %29
  store i32 %30, ptr %3, align 4
  %31 = load i32, ptr %25, align 4
  %32 = icmp ult i32 %31, 32
  %33 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %34 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %33, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  br i1 %32, label %36, label %43

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %35, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %2, align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %40 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %39, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %41, i32 0, i32 1
  br label %50

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %35, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %2, align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %47 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %46, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %48, i32 0, i32 3
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi ptr [ %49, %43 ], [ %42, %36 ]
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %1, align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 9), align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.5) #16
  br label %65

60:                                               ; preds = %55
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef 1, i32 noundef 32)
  %61 = add i32 %56, 999999999
  %62 = udiv i32 %61, %56
  %63 = add i32 %62, 199
  %64 = udiv i32 %63, %62
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %64, i32 noundef 456)
  br label %65

65:                                               ; preds = %60, %58, %50, %24, %22
  %66 = phi i32 [ -19, %58 ], [ 0, %60 ], [ 0, %50 ], [ -524, %24 ], [ -2, %22 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pmc_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 187, i32 noundef %2, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_writel, i32 noundef %9) #16
  br label %21

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_writel, i32 noundef %9) #16
  br label %21

17:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  %18 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %1) #14, !srcloc !11
  br label %21

21:                                               ; preds = %17, %15, %14, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_io_pad_poll(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = sub i32 -25, %5
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = add i32 %6, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  br label %12

12:                                               ; preds = %34, %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %13 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %16 = load i32, ptr %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @.compoundliteral, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %16) #16
  br label %24

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %16) #16
  br label %24

24:                                               ; preds = %22, %21, %15
  %25 = load i32, ptr %11, align 4
  br label %30

26:                                               ; preds = %12
  %27 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 %0
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %32 = and i32 %31, %1
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #14
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = add i32 %6, %35
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %12, label %38

38:                                               ; preds = %34, %30, %3
  %39 = phi i32 [ -110, %3 ], [ -110, %34 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_io_pad_power_disable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %5 = call fastcc i32 @tegra_io_pad_prepare(i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %5) #16
  br label %22

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4
  %11 = or i32 %10, -2147483648
  %12 = load i32, ptr %2, align 4
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %11, i32 noundef %12)
  %13 = load i32, ptr %3, align 4
  %14 = tail call fastcc i32 @tegra_io_pad_poll(i32 noundef %13, i32 noundef %10, i32 noundef %10)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef %14) #16
  br label %22

18:                                               ; preds = %9
  %19 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef 0, i32 noundef 32) #14
  br label %22

22:                                               ; preds = %21, %18, %16, %7
  %23 = phi i32 [ %5, %7 ], [ %14, %16 ], [ %14, %18 ], [ %14, %21 ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_io_rail_power_on(i32 noundef %0) #0 {
  %2 = tail call i32 @tegra_io_pad_power_enable(i32 noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_io_rail_power_off(i32 noundef %0) #0 {
  %2 = tail call i32 @tegra_io_pad_power_disable(i32 noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tegra_pmc_get_suspend_mode() local_unnamed_addr #4 {
  %1 = load i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tegra_pmc_set_suspend_mode(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ugt i32 %0, 3
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 %0, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_pmc_enter_suspend_mode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.arm_smccc_res, align 4
  switch i32 %0, label %6 [
    i32 2, label %15
    i32 1, label %3
  ]

3:                                                ; preds = %1
  %4 = load i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 9), align 4
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i64 [ 0, %1 ], [ %5, %3 ]
  %8 = icmp eq i64 %7, 0
  %9 = load i1, ptr @tegra_pmc_enter_suspend_mode.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %6
  store i1 true, ptr @tegra_pmc_enter_suspend_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1810, i32 noundef 9, ptr noundef null) #14
  br label %14

13:                                               ; preds = %6
  br i1 %8, label %14, label %15

14:                                               ; preds = %13, %12
  br label %15

15:                                               ; preds = %14, %13, %1
  %16 = phi i64 [ 100000000, %14 ], [ %7, %13 ], [ 32768, %1 ]
  %17 = load i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 11), align 4
  %18 = zext i32 %17 to i64
  %19 = mul nuw i64 %16, %18
  %20 = add nuw i64 %19, 999999
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #17, !srcloc !15
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #17, !srcloc !16
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = lshr i64 %23, 18
  %25 = trunc i64 %24 to i32
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %25, i32 noundef 200)
  %26 = load i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 12), align 4
  %27 = zext i32 %26 to i64
  %28 = mul nuw i64 %16, %27
  %29 = add nuw i64 %28, 999999
  %30 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %29) #17, !srcloc !15
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %29, i64 %30, i32 0) #17, !srcloc !16
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 18
  %34 = trunc i64 %33 to i32
  tail call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %34, i32 noundef 204)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %35 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %15
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @.compoundliteral, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %41, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %38) #16
  br label %46

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %38) #16
  br label %46

46:                                               ; preds = %44, %43, %37
  %47 = getelementptr inbounds %struct.arm_smccc_res, ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  br label %52

49:                                               ; preds = %15
  %50 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %54 = and i32 %53, -81921
  %55 = or i32 %54, 65536
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %55, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pmc_readl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #14
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = getelementptr inbounds %struct.arm_smccc_res, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i32 [ %18, %16 ], [ %23, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_pmc_driver_init() #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_pmc_driver, ptr noundef null) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_pmc_early_init() #6 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store ptr null, ptr %1, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23), ptr noundef nonnull @.str.250, ptr noundef nonnull @tegra_pmc_early_init.__key) #14
  %3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_pmc_match, ptr noundef nonnull %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call zeroext i1 @soc_is_tegra() #14
  br i1 %6, label %7, label %66

7:                                                ; preds = %5
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251) #16
  store i32 1879106560, ptr %2, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 1879107583, ptr %9, align 4
  %10 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  store i32 512, ptr %10, align 4
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull %2) #16
  br label %17

12:                                               ; preds = %0
  %13 = call i32 @of_address_to_resource(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #16
  call void @of_node_put(ptr noundef nonnull %3) #14
  br label %66

17:                                               ; preds = %12, %7
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 1, %18
  %22 = add i32 %21, %20
  %23 = call ptr @ioremap(i32 noundef %18, i32 noundef %22) #14
  store ptr %23, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #16
  call void @of_node_put(ptr noundef %3) #14
  br label %66

27:                                               ; preds = %17
  br i1 %4, label %66, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.of_device_id, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %32 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %31, i32 0, i32 8
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = call fastcc zeroext i1 @tegra_pmc_detect_tz_only() #18
  %37 = zext i1 %36 to i8
  store i8 %37, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4
  %38 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi ptr [ %38, %35 ], [ %31, %28 ]
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %55, %39
  %44 = phi i32 [ %56, %55 ], [ %41, %39 ]
  %45 = phi ptr [ %57, %55 ], [ %40, %39 ]
  %46 = phi i32 [ %58, %55 ], [ 0, %39 ]
  %47 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr ptr, ptr %48, i32 %46
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  call void @_set_bit(i32 noundef %46, ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22)) #14
  %53 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %43
  %56 = phi i32 [ %44, %43 ], [ %54, %52 ]
  %57 = phi ptr [ %45, %43 ], [ %53, %52 ]
  %58 = add nuw i32 %46, 1
  %59 = icmp ult i32 %58, %56
  br i1 %59, label %43, label %60

60:                                               ; preds = %55, %39
  %61 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.255, ptr noundef null) #14
  %62 = icmp ne ptr %61, null
  %63 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %64 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %63, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  call void %65(ptr noundef nonnull @.compoundliteral, ptr noundef nonnull %3, i1 noundef zeroext %62) #14
  call void @of_node_put(ptr noundef nonnull %3) #14
  br label %66

66:                                               ; preds = %60, %27, %25, %15, %5
  %67 = phi i32 [ -6, %15 ], [ -6, %25 ], [ 0, %5 ], [ 0, %60 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  ret i32 %67
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tegra_powergate_state(i32 noundef %0) unnamed_addr #7 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = alloca %struct.arm_smccc_res, align 4
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %7 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %11 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 724, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #14
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @.compoundliteral, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %17, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %14) #16
  br label %22

20:                                               ; preds = %16
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %14) #16
  br label %22

22:                                               ; preds = %20, %19, %13
  %23 = getelementptr inbounds %struct.arm_smccc_res, ptr %3, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  br label %29

25:                                               ; preds = %10
  %26 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %27 = getelementptr i8, ptr %26, i32 724
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br label %57

33:                                               ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %34 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 56, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @.compoundliteral, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %40, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %37) #16
  br label %45

43:                                               ; preds = %39
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %37) #16
  br label %45

45:                                               ; preds = %43, %42, %36
  %46 = getelementptr inbounds %struct.arm_smccc_res, ptr %2, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %50 = getelementptr i8, ptr %49, i32 56
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i32 [ %47, %45 ], [ %51, %48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %54 = shl nuw i32 1, %0
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %29
  %58 = phi i1 [ %32, %29 ], [ %56, %52 ]
  ret i1 %58
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_powergate_prepare_clocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %28, %5
  %9 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #14
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr i32, ptr %14, i32 %9
  store i32 %13, ptr %15, align 4
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr i32, ptr %16, i32 %9
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %8
  %21 = icmp ult i32 %18, 100000001
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr ptr, ptr %23, i32 %9
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_set_rate(ptr noundef %25, i32 noundef 100000000) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %20
  %29 = add nuw i32 %9, 1
  %30 = load i32, ptr %2, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %8, label %46

32:                                               ; preds = %22, %8
  %33 = phi i32 [ %26, %22 ], [ -22, %8 ]
  %34 = icmp eq i32 %9, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %37, %35 ], [ %9, %32 ]
  %37 = add i32 %36, -1
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr i32, ptr %41, i32 %37
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %43) #14
  %45 = icmp eq i32 %37, 0
  br i1 %45, label %46, label %35

46:                                               ; preds = %35, %32, %28, %1
  %47 = phi i32 [ %33, %32 ], [ 0, %1 ], [ %33, %35 ], [ 0, %28 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_powergate_enable_clocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %21, %5
  %8 = phi i32 [ 0, %5 ], [ %22, %21 ]
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = tail call i32 @clk_enable(ptr noundef %11) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #14
  br label %18

18:                                               ; preds = %17, %7
  %19 = phi i32 [ %15, %17 ], [ %12, %7 ]
  %20 = icmp eq i32 %8, 0
  br i1 %20, label %32, label %25

21:                                               ; preds = %14
  %22 = add nuw i32 %8, 1
  %23 = load i32, ptr %2, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %7, label %32

25:                                               ; preds = %25, %18
  %26 = phi i32 [ %27, %25 ], [ %8, %18 ]
  %27 = add i32 %26, -1
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr ptr, ptr %28, i32 %27
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #14
  tail call void @clk_unprepare(ptr noundef %30) #14
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %25

32:                                               ; preds = %25, %21, %18, %1
  %33 = phi i32 [ %19, %18 ], [ 0, %1 ], [ %19, %25 ], [ 0, %21 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_powergate_disable_clocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %12, %7 ]
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #14
  tail call void @clk_unprepare(ptr noundef %11) #14
  %12 = add nuw i32 %8, 1
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_powergate_unprepare_clocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 5
  br label %12

8:                                                ; preds = %12
  %9 = add nuw i32 %13, 1
  %10 = load i32, ptr %3, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8, %6
  %13 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr ptr, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr i32, ptr %17, i32 %13
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %19) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %8, label %22

22:                                               ; preds = %12, %8, %1
  %23 = phi i32 [ 0, %1 ], [ 0, %8 ], [ %20, %12 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2823, i32 noundef 9, ptr noundef null) #14
  br label %271

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store i64 0, ptr %8, align 8, !annotation !9
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #14
  %20 = icmp sgt i32 %19, -1
  %21 = load i32, ptr %7, align 4
  %22 = icmp ult i32 %21, 3
  %23 = sub i32 3, %21
  %24 = select i1 %22, i32 %23, i32 0
  %25 = select i1 %20, i32 %24, i32 0
  store i32 %25, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  %26 = call i32 @tegra_pm_validate_suspend_mode(i32 noundef %25) #14
  store i32 %26, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.19, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #14
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  store i32 0, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i32, ptr %7, align 4
  store i32 %31, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 11), align 4
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #14
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, ptr %7, align 4
  store i32 %36, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 12), align 4
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.21, ptr noundef nonnull %8, i32 noundef 2, i32 noundef 0) #14
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, ptr %8, align 8
  store i32 %41, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 13), align 4
  %42 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 14), align 4
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.22, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #14
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, ptr %7, align 4
  store i32 %48, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 15), align 4
  %49 = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef null) #14
  %50 = icmp ne ptr %49, null
  %51 = zext i1 %50 to i8
  store i8 %51, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 16), align 4
  %52 = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef null) #14
  %53 = icmp ne ptr %52, null
  %54 = zext i1 %53 to i8
  store i8 %54, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 17), align 1
  %55 = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef null) #14
  %56 = icmp ne ptr %55, null
  %57 = zext i1 %56 to i8
  store i8 %57, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 18), align 2
  %58 = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef null) #14
  %59 = icmp ne ptr %58, null
  %60 = zext i1 %59 to i8
  store i8 %60, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 19), align 1
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.27, ptr noundef nonnull %8, i32 noundef 2, i32 noundef 0) #14
  %62 = icmp slt i32 %61, 0
  %63 = load i32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  %64 = icmp eq i32 %63, 3
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  store i32 2, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i32, ptr %8, align 8
  store i32 %68, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 20), align 4
  %69 = load i32, ptr %42, align 4
  store i32 %69, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 21), align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %70 = call i32 @devm_add_action(ptr noundef %16, ptr noundef nonnull @tegra_pmc_reset_suspend_mode, ptr noundef null) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 5, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  br label %271

73:                                               ; preds = %67
  %74 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #14
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = ptrtoint ptr %74 to i32
  br label %271

78:                                               ; preds = %73
  %79 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.10) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = call ptr @devm_ioremap_resource(ptr noundef %16, ptr noundef nonnull %79) #14
  store ptr %82, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 2), align 4
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = ptrtoint ptr %82 to i32
  br label %271

86:                                               ; preds = %78
  store ptr %74, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 2), align 4
  br label %87

87:                                               ; preds = %86, %81
  %88 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.11) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = call ptr @devm_ioremap_resource(ptr noundef %16, ptr noundef nonnull %88) #14
  store ptr %91, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 3), align 4
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = ptrtoint ptr %91 to i32
  br label %271

95:                                               ; preds = %87
  store ptr %74, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 3), align 4
  br label %96

96:                                               ; preds = %95, %90
  %97 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.12) #14
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = call ptr @devm_ioremap_resource(ptr noundef %16, ptr noundef nonnull %97) #14
  store ptr %100, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 4), align 4
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = ptrtoint ptr %100 to i32
  br label %271

104:                                              ; preds = %96
  store ptr %74, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 4), align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.13) #14
  store ptr %106, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = icmp eq ptr %106, inttoptr (i32 -2 to ptr)
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  %111 = ptrtoint ptr %106 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %111) #16
  br label %271

112:                                              ; preds = %108
  store ptr null, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  br label %122

113:                                              ; preds = %105
  %114 = icmp eq ptr %106, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %113
  store ptr @tegra_pmc_clk_notify_cb, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 27), align 4
  %116 = call i32 @clk_notifier_register(ptr noundef nonnull %106, ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 27)) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15) #16
  br label %271

119:                                              ; preds = %115
  %120 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  %121 = call i32 @clk_get_rate(ptr noundef %120) #14
  store i32 %121, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 9), align 4
  br label %122

122:                                              ; preds = %119, %113, %112
  store ptr %16, ptr @.compoundliteral, align 4
  %123 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %124 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %123, i32 0, i32 14
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  call void %125(ptr noundef nonnull @.compoundliteral) #14
  %128 = load ptr, ptr @.compoundliteral, align 4
  %129 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = phi ptr [ %123, %122 ], [ %129, %127 ]
  %132 = phi ptr [ %16, %122 ], [ %128, %127 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %133 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %131, i32 0, i32 4
  %134 = load i8, ptr %133, align 4, !range !8
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %193, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.device, ptr %132, i32 0, i32 25
  %138 = load ptr, ptr %137, align 8
  %139 = call ptr @of_get_child_by_name(ptr noundef %138, ptr noundef nonnull @.str.28) #14
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.29, ptr noundef nonnull @tegra_pmc_init_tsense_reset.disabled) #16
  br label %193

142:                                              ; preds = %136
  %143 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.30, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #14
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.31, ptr noundef nonnull @tegra_pmc_init_tsense_reset.disabled) #16
  br label %192

146:                                              ; preds = %142
  %147 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.32, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #14
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.33, ptr noundef nonnull @tegra_pmc_init_tsense_reset.disabled) #16
  br label %192

150:                                              ; preds = %146
  %151 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.34, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #14
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.35, ptr noundef nonnull @tegra_pmc_init_tsense_reset.disabled) #16
  br label %192

154:                                              ; preds = %150
  %155 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.36, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #14
  %156 = icmp sgt i32 %155, -1
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.37, ptr noundef nonnull @tegra_pmc_init_tsense_reset.disabled) #16
  br label %192

158:                                              ; preds = %154
  %159 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.38, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #14
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  store i32 0, ptr %6, align 4
  br label %162

162:                                              ; preds = %161, %158
  %163 = call fastcc i32 @tegra_pmc_readl(ptr noundef nonnull @.compoundliteral, i32 noundef 432) #14
  %164 = or i32 %163, 4
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %164, i32 noundef 432) #14
  %165 = load i32, ptr %5, align 4
  %166 = shl i32 %165, 8
  %167 = load i32, ptr %4, align 4
  %168 = or i32 %166, %167
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %168, i32 noundef 600) #14
  %169 = load i32, ptr %3, align 4
  %170 = shl i32 %169, 27
  %171 = load i32, ptr %6, align 4
  %172 = shl i32 %171, 24
  %173 = load i32, ptr %2, align 4
  %174 = or i32 %170, %172
  %175 = or i32 %174, %173
  %176 = or i32 %175, -2147483648
  %177 = load i32, ptr %4, align 4
  %178 = load i32, ptr %5, align 4
  %179 = lshr i32 %173, 8
  %180 = lshr i32 %176, 24
  %181 = add i32 %177, %173
  %182 = add i32 %181, %179
  %183 = add i32 %182, %178
  %184 = add i32 %183, %180
  %185 = shl i32 %184, 16
  %186 = and i32 %185, 16711680
  %187 = sub nuw nsw i32 16777216, %186
  %188 = or i32 %187, %176
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %188, i32 noundef 604) #14
  %189 = call fastcc i32 @tegra_pmc_readl(ptr noundef nonnull @.compoundliteral, i32 noundef 432) #14
  %190 = or i32 %189, 2
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %190, i32 noundef 432) #14
  %191 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %191, ptr noundef nonnull @.str.39) #16
  br label %192

192:                                              ; preds = %162, %157, %153, %149, %145
  call void @of_node_put(ptr noundef nonnull %139) #14
  br label %193

193:                                              ; preds = %192, %141, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %194 = load ptr, ptr @.compoundliteral, align 4
  %195 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %196 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %195, i32 0, i32 19
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %193
  %200 = call i32 @device_create_file(ptr noundef %194, ptr noundef nonnull @dev_attr_reset_reason) #14
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.40, i32 noundef %200) #16
  br label %203

203:                                              ; preds = %202, %199, %193
  %204 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %205 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %204, i32 0, i32 21
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = call i32 @device_create_file(ptr noundef %194, ptr noundef nonnull @dev_attr_reset_level) #14
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.41, i32 noundef %209) #16
  br label %212

212:                                              ; preds = %211, %208, %203
  %213 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @powergate_fops) #14
  store ptr %213, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 6), align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %267, label %215

215:                                              ; preds = %212
  %216 = call i32 @devm_register_reboot_notifier(ptr noundef %16, ptr noundef nonnull @tegra_pmc_reboot_notifier) #14
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef %216) #16
  br label %264

219:                                              ; preds = %215
  %220 = call i32 @register_restart_handler(ptr noundef nonnull @tegra_pmc_restart_handler) #14
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %219
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %220) #16
  br label %264

223:                                              ; preds = %219
  %224 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %225 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %224, i32 0, i32 12
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %223
  %229 = load ptr, ptr @.compoundliteral, align 4
  %230 = getelementptr inbounds %struct.device, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load ptr, ptr %229, align 4
  br label %235

235:                                              ; preds = %233, %228
  %236 = phi ptr [ %234, %233 ], [ %231, %228 ]
  store ptr %236, ptr @tegra_pmc_pctl_desc, align 4
  %237 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %224, i32 0, i32 11
  %238 = load ptr, ptr %237, align 4
  store ptr %238, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @tegra_pmc_pctl_desc, i32 0, i32 1), align 4
  store i32 %226, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @tegra_pmc_pctl_desc, i32 0, i32 2), align 4
  %239 = call ptr @devm_pinctrl_register(ptr noundef %229, ptr noundef nonnull @tegra_pmc_pctl_desc, ptr noundef nonnull @.compoundliteral) #14
  store ptr %239, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 24), align 4
  %240 = icmp ugt ptr %239, inttoptr (i32 -4096 to ptr)
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = ptrtoint ptr %239 to i32
  %243 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.51, i32 noundef %242) #16
  br label %261

244:                                              ; preds = %235, %223
  %245 = call fastcc i32 @tegra_pmc_regmap_init()
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %261, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr %17, align 8
  %249 = call fastcc i32 @tegra_powergate_init(ptr noundef %248)
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %247
  %252 = call fastcc i32 @tegra_pmc_irq_init()
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %255 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  call void @iounmap(ptr noundef %255) #14
  store ptr %74, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %256 = load ptr, ptr %17, align 8
  call fastcc void @tegra_pmc_clock_register(ptr noundef %256)
  %257 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr @.compoundliteral, ptr %257, align 8
  call void @tegra_pm_init_suspend() #14
  br label %271

258:                                              ; preds = %251, %247
  %259 = phi i32 [ %249, %247 ], [ %252, %251 ]
  %260 = load ptr, ptr %17, align 8
  call fastcc void @tegra_powergate_remove_all(ptr noundef %260)
  br label %261

261:                                              ; preds = %258, %244, %241
  %262 = phi i32 [ %242, %241 ], [ %245, %244 ], [ %259, %258 ]
  %263 = call i32 @unregister_restart_handler(ptr noundef nonnull @tegra_pmc_restart_handler) #14
  br label %264

264:                                              ; preds = %261, %222, %218
  %265 = phi i32 [ %216, %218 ], [ %220, %222 ], [ %262, %261 ]
  %266 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 6), align 4
  call void @debugfs_remove(ptr noundef %266) #14
  br label %267

267:                                              ; preds = %264, %212
  %268 = phi i32 [ -12, %212 ], [ %265, %264 ]
  call void @device_remove_file(ptr noundef %16, ptr noundef nonnull @dev_attr_reset_reason) #14
  call void @device_remove_file(ptr noundef %16, ptr noundef nonnull @dev_attr_reset_level) #14
  %269 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 5), align 4
  %270 = call i32 @clk_notifier_unregister(ptr noundef %269, ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 27)) #14
  br label %271

271:                                              ; preds = %267, %254, %118, %110, %102, %93, %84, %76, %72, %14
  %272 = phi i32 [ -19, %14 ], [ %77, %76 ], [ %85, %84 ], [ %94, %93 ], [ %103, %102 ], [ %111, %110 ], [ %116, %118 ], [ %268, %267 ], [ 0, %254 ], [ %70, %72 ]
  ret i32 %272
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pmc_sync_state(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 29
  %4 = load i8, ptr %3, align 2, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 29), align 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  store i8 1, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 28), align 4
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %10 = tail call i32 @dev_pm_opp_sync_regulators(ptr noundef %0) #14
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.249, i32 noundef %10) #16
  br label %13

13:                                               ; preds = %12, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @tegra_pmc_reset_suspend_mode(ptr nocapture noundef readnone %0) #5 {
  store i32 5, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 10), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_clk_notify_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  switch i32 %1, label %12 [
    i32 1, label %4
    i32 2, label %6
    i32 4, label %10
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 -164
  tail call void @mutex_lock(ptr noundef %5) #14
  br label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -208
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = getelementptr i8, ptr %0, i32 -164
  tail call void @mutex_unlock(ptr noundef %11) #14
  br label %15

12:                                               ; preds = %3
  %13 = load i1, ptr @tegra_pmc_clk_notify_cb.__already_done, align 1
  br i1 %13, label %15, label %14, !prof !17

14:                                               ; preds = %12
  store i1 true, ptr @tegra_pmc_clk_notify_cb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2487, i32 noundef 9, ptr noundef null) #14
  br label %15

15:                                               ; preds = %14, %12, %10, %4
  %16 = phi i32 [ 1, %10 ], [ 1, %4 ], [ 32791, %14 ], [ 32791, %12 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_register_reboot_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pmc_regmap_init() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %2 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %1, i32 0, i32 28
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @.compoundliteral, align 4
  %7 = tail call ptr @__devm_regmap_init(ptr noundef %6, ptr noundef null, ptr noundef nonnull @.compoundliteral, ptr noundef nonnull @usb_sleepwalk_regmap_config, ptr noundef null, ptr noundef null) #14
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  %11 = load ptr, ptr @.compoundliteral, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.52, i32 noundef %10) #16
  br label %12

12:                                               ; preds = %9, %5, %0
  %13 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %0 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_powergate_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.54) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store ptr @.str.58, ptr %2, align 4
  %8 = load ptr, ptr @.compoundliteral, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 800, i32 noundef 3520) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 10
  store ptr @.str.58, ptr %12, align 4
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 23
  store ptr @tegra_pmc_core_pd_set_performance_state, ptr %13, align 8
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 22
  store ptr @tegra_pmc_core_pd_opp_to_performance_state, ptr %14, align 4
  %15 = load ptr, ptr @.compoundliteral, align 4
  %16 = call i32 @devm_pm_opp_set_regulators(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 1) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = call i32 @pm_genpd_init(ptr noundef nonnull %9, ptr noundef null, i1 noundef zeroext false) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.60, i32 noundef %19) #16
  br label %30

23:                                               ; preds = %18
  %24 = call i32 @of_genpd_add_provider_simple(ptr noundef nonnull %5, ptr noundef nonnull %9) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.61, i32 noundef %24) #16
  %28 = call i32 @pm_genpd_remove(ptr noundef nonnull %9) #14
  br label %30

29:                                               ; preds = %23
  store i8 1, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 29), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call void @of_node_put(ptr noundef nonnull %5) #14
  br label %36

30:                                               ; preds = %26, %21, %7
  %31 = phi i32 [ -12, %7 ], [ %24, %26 ], [ %19, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %232

32:                                               ; preds = %11
  %33 = load ptr, ptr @.compoundliteral, align 4
  %34 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %33, i32 noundef %16, ptr noundef nonnull @.str.59) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call void @of_node_put(ptr noundef nonnull %5) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %235

36:                                               ; preds = %32, %29, %1
  %37 = call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.55) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %235, label %39

39:                                               ; preds = %36
  %40 = call ptr @of_get_next_child(ptr noundef nonnull %37, ptr noundef null) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %232, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  br label %44

44:                                               ; preds = %226, %42
  %45 = phi ptr [ %40, %42 ], [ %228, %226 ]
  %46 = load ptr, ptr @.compoundliteral, align 4
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %48 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 824) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %230, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 4
  %52 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %53 = icmp ne ptr %52, null
  %54 = icmp ne ptr %51, null
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load i32, ptr %52, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %52, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %70, %59
  %63 = phi i32 [ 0, %59 ], [ %71, %70 ]
  %64 = getelementptr ptr, ptr %61, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = call i32 @strcmp(ptr noundef nonnull %51, ptr noundef nonnull %65) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67, %62
  %71 = add nuw i32 %63, 1
  %72 = icmp eq i32 %71, %57
  br i1 %72, label %75, label %62

73:                                               ; preds = %67
  %74 = icmp slt i32 %63, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %73, %70, %56, %50
  %76 = phi i32 [ -19, %70 ], [ -22, %50 ], [ -19, %56 ], [ %63, %73 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.64, ptr noundef nonnull %45, i32 noundef %76) #16
  call void @kfree(ptr noundef nonnull %48) #14
  br label %230

77:                                               ; preds = %73
  call void @_clear_bit(i32 noundef %63, ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22)) #14
  %78 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 2
  store i32 %63, ptr %78, align 4
  %79 = load ptr, ptr %45, align 4
  %80 = getelementptr inbounds %struct.generic_pm_domain, ptr %48, i32 0, i32 10
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.generic_pm_domain, ptr %48, i32 0, i32 18
  store ptr @tegra_genpd_power_off, ptr %81, align 4
  %82 = getelementptr inbounds %struct.generic_pm_domain, ptr %48, i32 0, i32 19
  store ptr @tegra_genpd_power_on, ptr %82, align 8
  %83 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 1
  store ptr @.compoundliteral, ptr %83, align 8
  %84 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr ptr, ptr %88, i32 %63
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %63) #14
  %94 = zext i1 %93 to i32
  br label %95

95:                                               ; preds = %92, %86, %77
  %96 = phi i32 [ %94, %92 ], [ -22, %86 ], [ -22, %77 ]
  %97 = icmp eq i32 %96, 0
  %98 = call i32 @of_clk_get_parent_count(ptr noundef nonnull %45) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %149, label %100

100:                                              ; preds = %95
  %101 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 4) #14
  %102 = extractvalue { i32, i1 } %101, 1
  %103 = extractvalue { i32, i1 } %101, 0
  br i1 %102, label %104, label %106, !prof !14

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 3
  store ptr null, ptr %105, align 8
  br label %149

106:                                              ; preds = %100
  %107 = call noalias align 64 ptr @__kmalloc(i32 noundef %103, i32 noundef 3520) #19
  %108 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 3
  store ptr %107, ptr %108, align 8
  %109 = icmp eq ptr %107, null
  br i1 %109, label %149, label %110

110:                                              ; preds = %106
  %111 = call noalias align 64 ptr @__kmalloc(i32 noundef %103, i32 noundef 3520) #19
  %112 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 5
  store ptr %111, ptr %112, align 8
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load ptr, ptr %108, align 8
  call void @kfree(ptr noundef %115) #14
  br label %149

116:                                              ; preds = %133, %110
  %117 = phi i32 [ %134, %133 ], [ 0, %110 ]
  %118 = call ptr @of_clk_get(ptr noundef nonnull %45, i32 noundef %117) #14
  %119 = load ptr, ptr %108, align 8
  %120 = getelementptr ptr, ptr %119, i32 %117
  store ptr %118, ptr %120, align 4
  %121 = load ptr, ptr %108, align 8
  %122 = getelementptr ptr, ptr %121, i32 %117
  %123 = load ptr, ptr %122, align 4
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = ptrtoint ptr %123 to i32
  %127 = icmp eq i32 %117, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %125
  %129 = add i32 %117, -1
  %130 = getelementptr ptr, ptr %121, i32 %129
  %131 = load ptr, ptr %130, align 4
  call void @clk_put(ptr noundef %131) #14
  %132 = icmp eq i32 %129, 0
  br i1 %132, label %145, label %138

133:                                              ; preds = %116
  %134 = add nuw i32 %117, 1
  %135 = icmp eq i32 %134, %98
  br i1 %135, label %136, label %116

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 4
  store i32 %98, ptr %137, align 4
  br label %151

138:                                              ; preds = %138, %128
  %139 = phi i32 [ %141, %138 ], [ %129, %128 ]
  %140 = load ptr, ptr %108, align 8
  %141 = add i32 %139, -1
  %142 = getelementptr ptr, ptr %140, i32 %141
  %143 = load ptr, ptr %142, align 4
  call void @clk_put(ptr noundef %143) #14
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %145, label %138

145:                                              ; preds = %138, %128, %125
  %146 = load ptr, ptr %112, align 8
  call void @kfree(ptr noundef %146) #14
  %147 = load ptr, ptr %108, align 8
  call void @kfree(ptr noundef %147) #14
  %148 = icmp slt ptr %123, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %114, %106, %104, %95
  %150 = phi i32 [ %126, %145 ], [ -12, %106 ], [ -12, %104 ], [ -19, %95 ], [ -12, %114 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.65, ptr noundef nonnull %45, i32 noundef %150) #16
  br label %215

151:                                              ; preds = %145, %136
  %152 = load ptr, ptr %83, align 8
  %153 = load ptr, ptr %152, align 4
  %154 = call ptr @of_reset_control_array_get(ptr noundef nonnull %45, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %155 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 6
  store ptr %154, ptr %155, align 4
  %156 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = ptrtoint ptr %154 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.72, i32 noundef %158) #16
  br label %180

159:                                              ; preds = %151
  %160 = call i32 @reset_control_acquire(ptr noundef %154) #14
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %160) #16
  br label %176

164:                                              ; preds = %159
  %165 = load ptr, ptr %155, align 4
  br i1 %97, label %166, label %168

166:                                              ; preds = %164
  %167 = call i32 @reset_control_assert(ptr noundef %165) #14
  br label %173

168:                                              ; preds = %164
  %169 = call i32 @reset_control_deassert(ptr noundef %165) #14
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %155, align 4
  call void @reset_control_release(ptr noundef %172) #14
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi i32 [ %167, %166 ], [ %169, %171 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %173, %168, %162
  %177 = phi i32 [ %174, %173 ], [ %169, %168 ], [ %160, %162 ]
  %178 = load ptr, ptr %155, align 4
  call void @reset_control_release(ptr noundef %178) #14
  %179 = load ptr, ptr %155, align 4
  call void @reset_control_put(ptr noundef %179) #14
  br label %180

180:                                              ; preds = %176, %157
  %181 = phi i32 [ %158, %157 ], [ %177, %176 ]
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.66, ptr noundef nonnull %45, i32 noundef %181) #16
  br label %196

184:                                              ; preds = %180, %173
  %185 = call i32 @pm_genpd_init(ptr noundef nonnull %48, ptr noundef null, i1 noundef zeroext %97) #14
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.67, ptr noundef nonnull %45, i32 noundef %185) #16
  br label %193

188:                                              ; preds = %184
  %189 = call i32 @of_genpd_add_provider_simple(ptr noundef nonnull %45, ptr noundef nonnull %48) #14
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %218

191:                                              ; preds = %188
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.68, ptr noundef nonnull %45, i32 noundef %189) #16
  %192 = call i32 @pm_genpd_remove(ptr noundef nonnull %48) #14
  br label %193

193:                                              ; preds = %191, %187
  %194 = phi i32 [ %185, %187 ], [ %189, %191 ]
  %195 = load ptr, ptr %155, align 4
  call void @reset_control_put(ptr noundef %195) #14
  br label %196

196:                                              ; preds = %193, %183
  %197 = phi i32 [ %181, %183 ], [ %194, %193 ]
  %198 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, -1
  store i32 %200, ptr %198, align 4
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 3
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi i32 [ %200, %202 ], [ %210, %204 ]
  %206 = load ptr, ptr %203, align 8
  %207 = getelementptr ptr, ptr %206, i32 %205
  %208 = load ptr, ptr %207, align 4
  call void @clk_put(ptr noundef %208) #14
  %209 = load i32, ptr %198, align 4
  %210 = add i32 %209, -1
  store i32 %210, ptr %198, align 4
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %204

212:                                              ; preds = %204, %196
  %213 = getelementptr inbounds %struct.tegra_powergate, ptr %48, i32 0, i32 3
  %214 = load ptr, ptr %213, align 8
  call void @kfree(ptr noundef %214) #14
  br label %215

215:                                              ; preds = %212, %149
  %216 = phi i32 [ %150, %149 ], [ %197, %212 ]
  call void @_set_bit(i32 noundef %63, ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22)) #14
  call void @kfree(ptr noundef nonnull %48) #14
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %230, label %218

218:                                              ; preds = %215, %188
  %219 = phi i32 [ %216, %215 ], [ 0, %188 ]
  %220 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %45, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %4) #14
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  store ptr %45, ptr %3, align 4
  store i32 0, ptr %43, align 4
  %223 = call i32 @of_genpd_add_subdomain(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %224 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %224) #14
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %222, %218
  %227 = phi i32 [ %219, %218 ], [ 0, %222 ]
  %228 = call ptr @of_get_next_child(ptr noundef nonnull %37, ptr noundef nonnull %45) #14
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %44

230:                                              ; preds = %222, %215, %75, %44
  %231 = phi i32 [ -19, %75 ], [ -12, %44 ], [ %216, %215 ], [ %223, %222 ]
  call void @of_node_put(ptr noundef nonnull %45) #14
  br label %232

232:                                              ; preds = %230, %226, %39, %30
  %233 = phi ptr [ %5, %30 ], [ %37, %230 ], [ %37, %39 ], [ %37, %226 ]
  %234 = phi i32 [ %31, %30 ], [ %231, %230 ], [ 0, %39 ], [ %227, %226 ]
  call void @of_node_put(ptr noundef nonnull %233) #14
  br label %235

235:                                              ; preds = %232, %36, %32
  %236 = phi i32 [ %34, %32 ], [ 0, %36 ], [ %234, %232 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #14
  ret i32 %236
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pmc_irq_init() unnamed_addr #0 {
  %1 = alloca %struct.irq_fwspec, align 4
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = load ptr, ptr @.compoundliteral, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_irq_find_parent(ptr noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #14
  %10 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #14
  store ptr %9, ptr %2, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call void @of_node_put(ptr noundef nonnull %6) #14
  br label %18

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #14
  %15 = getelementptr inbounds i8, ptr %1, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %15, i8 0, i64 68, i1 false) #14
  store ptr %9, ptr %1, align 4
  %16 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %1, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #14
  call void @of_node_put(ptr noundef nonnull %6) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %13
  %19 = phi ptr [ %11, %13 ], [ %16, %14 ]
  %20 = load ptr, ptr @.compoundliteral, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr %20, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %25, %24 ], [ %22, %18 ]
  store ptr %27, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 1), align 4
  store ptr @tegra_irq_mask_parent, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 7), align 4
  store ptr @tegra_irq_unmask_parent, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 9), align 4
  store ptr @tegra_irq_eoi_parent, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 10), align 4
  store ptr @tegra_irq_set_affinity_parent, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 11), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %29 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 13), align 4
  %31 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %28, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 26, i32 14), align 4
  %33 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = getelementptr inbounds %struct.device_node, ptr %34, i32 0, i32 3
  %37 = select i1 %35, ptr null, ptr %36
  %38 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %19, i32 noundef 0, i32 noundef 96, ptr noundef %37, ptr noundef nonnull @tegra_pmc_irq_domain_ops, ptr noundef nonnull @.compoundliteral) #14
  store ptr %38, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 25), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.74) #16
  br label %42

42:                                               ; preds = %40, %26, %14, %0
  %43 = phi i32 [ -12, %40 ], [ 0, %14 ], [ 0, %26 ], [ 0, %0 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_pmc_clock_register(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca %struct.clk_init_data, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %8 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %7, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %7, i32 0, i32 27
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %147, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @.compoundliteral, align 4
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 8, i32 noundef 3264) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %147, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @.compoundliteral, align 4
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 16, i32 noundef 3520) #14
  store ptr %21, ptr %17, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %147, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.clk_onecell_data, ptr %17, i32 0, i32 1
  store i32 4, ptr %24, align 4
  store ptr inttoptr (i32 -2 to ptr), ptr %21, align 4
  %25 = getelementptr ptr, ptr %21, i32 1
  store ptr inttoptr (i32 -2 to ptr), ptr %25, align 4
  %26 = getelementptr ptr, ptr %21, i32 2
  store ptr inttoptr (i32 -2 to ptr), ptr %26, align 4
  %27 = getelementptr ptr, ptr %21, i32 3
  store ptr inttoptr (i32 -2 to ptr), ptr %27, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %29 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %28, i32 0, i32 26
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %89, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %6, i32 12
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  br label %38

38:                                               ; preds = %79, %32
  %39 = phi ptr [ %28, %32 ], [ %85, %79 ]
  %40 = phi i32 [ 0, %32 ], [ %84, %79 ]
  %41 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %39, i32 0, i32 25
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.pmc_clk_init_data, ptr %42, i32 %40
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %33, i8 0, i32 12, i1 false) #14, !annotation !9
  %44 = load ptr, ptr @.compoundliteral, align 4
  %45 = call noalias ptr @devm_kmalloc(ptr noundef %44, i32 noundef 24, i32 noundef 3520) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #14
  br label %67

48:                                               ; preds = %38
  %49 = load ptr, ptr %43, align 4
  store ptr %49, ptr %6, align 4
  store ptr @pmc_clk_ops, ptr %34, align 4
  %50 = getelementptr %struct.pmc_clk_init_data, ptr %42, i32 %40, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %51, ptr %35, align 4
  %52 = getelementptr %struct.pmc_clk_init_data, ptr %42, i32 %40, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %36, align 4
  store i32 134, ptr %37, align 4
  %55 = getelementptr inbounds %struct.clk_hw, ptr %45, i32 0, i32 2
  store ptr %6, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pmc_clk, ptr %45, i32 0, i32 1
  store i32 424, ptr %56, align 4
  %57 = getelementptr %struct.pmc_clk_init_data, ptr %42, i32 %40, i32 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.pmc_clk, ptr %45, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = getelementptr %struct.pmc_clk_init_data, ptr %42, i32 %40, i32 5
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.pmc_clk, ptr %45, i32 0, i32 3
  store i32 %63, ptr %64, align 4
  %65 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %45) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #14
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %72

67:                                               ; preds = %48, %47
  %68 = phi ptr [ inttoptr (i32 -12 to ptr), %47 ], [ %65, %48 ]
  %69 = load ptr, ptr @.compoundliteral, align 4
  %70 = load ptr, ptr %43, align 4
  %71 = ptrtoint ptr %68 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.75, ptr noundef %70, i32 noundef %71) #16
  br label %147

72:                                               ; preds = %48
  %73 = load ptr, ptr %43, align 4
  %74 = call i32 @clk_register_clkdev(ptr noundef %65, ptr noundef %73, ptr noundef null) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @.compoundliteral, align 4
  %78 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.76, ptr noundef %78, i32 noundef %74) #16
  br label %147

79:                                               ; preds = %72
  %80 = load ptr, ptr %17, align 4
  %81 = getelementptr %struct.pmc_clk_init_data, ptr %42, i32 %40, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr ptr, ptr %80, i32 %82
  store ptr %65, ptr %83, align 4
  %84 = add nuw i32 %40, 1
  %85 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %86 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %85, i32 0, i32 26
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %38, label %89

89:                                               ; preds = %79, %23
  %90 = phi ptr [ %28, %23 ], [ %85, %79 ]
  %91 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %90, i32 0, i32 27
  %92 = load i8, ptr %91, align 4, !range !8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %142, label %94

94:                                               ; preds = %89
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef 0, i32 noundef 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr @.str.78, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #14
  %95 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %95, i8 0, i32 12, i1 false) #14, !annotation !9
  %96 = load ptr, ptr @.compoundliteral, align 4
  %97 = call noalias ptr @devm_kmalloc(ptr noundef %96, i32 noundef 20, i32 noundef 3520) #14
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %110

100:                                              ; preds = %94
  store ptr @.str.77, ptr %5, align 4
  %101 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @pmc_clk_gate_ops, ptr %101, align 4
  %102 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %102, align 4
  %103 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.clk_hw, ptr %97, i32 0, i32 2
  store ptr %5, ptr %105, align 4
  %106 = getelementptr inbounds %struct.pmc_clk_gate, ptr %97, i32 0, i32 1
  store i32 28, ptr %106, align 4
  %107 = getelementptr inbounds %struct.pmc_clk_gate, ptr %97, i32 0, i32 2
  store i32 20, ptr %107, align 4
  %108 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %97) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %109 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %110, label %114

110:                                              ; preds = %100, %99
  %111 = phi ptr [ inttoptr (i32 -12 to ptr), %99 ], [ %108, %100 ]
  %112 = load ptr, ptr @.compoundliteral, align 4
  %113 = ptrtoint ptr %111 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.79, i32 noundef %113) #16
  br label %147

114:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr @.str.77, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #14
  %115 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %115, i8 0, i32 12, i1 false) #14, !annotation !9
  %116 = load ptr, ptr @.compoundliteral, align 4
  %117 = call noalias ptr @devm_kmalloc(ptr noundef %116, i32 noundef 20, i32 noundef 3520) #14
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %130

120:                                              ; preds = %114
  store ptr @.str.80, ptr %3, align 4
  %121 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @pmc_clk_gate_ops, ptr %121, align 4
  %122 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %2, ptr %122, align 4
  %123 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.clk_hw, ptr %117, i32 0, i32 2
  store ptr %3, ptr %125, align 4
  %126 = getelementptr inbounds %struct.pmc_clk_gate, ptr %117, i32 0, i32 1
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.pmc_clk_gate, ptr %117, i32 0, i32 2
  store i32 7, ptr %127, align 4
  %128 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %117) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %134

130:                                              ; preds = %120, %119
  %131 = phi ptr [ inttoptr (i32 -12 to ptr), %119 ], [ %128, %120 ]
  %132 = load ptr, ptr @.compoundliteral, align 4
  %133 = ptrtoint ptr %131 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.81, i32 noundef %133) #16
  br label %147

134:                                              ; preds = %120
  %135 = call i32 @clk_register_clkdev(ptr noundef %128, ptr noundef nonnull @.str.80, ptr noundef null) #14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %138, ptr noundef nonnull @.str.82, i32 noundef %135) #16
  br label %147

139:                                              ; preds = %134
  %140 = load ptr, ptr %17, align 4
  %141 = getelementptr ptr, ptr %140, i32 3
  store ptr %128, ptr %141, align 4
  br label %142

142:                                              ; preds = %139, %89
  %143 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %17) #14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr @.compoundliteral, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %146, ptr noundef nonnull @.str.83, i32 noundef %143) #16
  br label %147

147:                                              ; preds = %145, %142, %137, %130, %110, %76, %67, %19, %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pm_init_suspend() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_powergate_remove_all(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.55) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_get_next_child(ptr noundef nonnull %2, ptr noundef null) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %33, %4
  %8 = phi ptr [ %34, %33 ], [ %5, %4 ]
  tail call void @of_genpd_del_provider(ptr noundef nonnull %8) #14
  %9 = tail call ptr @of_genpd_remove_last(ptr noundef nonnull %8) #14
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tegra_powergate, ptr %9, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @reset_control_put(ptr noundef %13) #14
  %14 = getelementptr inbounds %struct.tegra_powergate, ptr %9, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tegra_powergate, ptr %9, i32 0, i32 3
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %16, %18 ], [ %26, %20 ]
  %22 = load ptr, ptr %19, align 8
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_put(ptr noundef %24) #14
  %25 = load i32, ptr %14, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %14, align 4
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %11
  %29 = getelementptr inbounds %struct.tegra_powergate, ptr %9, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  tail call void @kfree(ptr noundef %30) #14
  %31 = getelementptr inbounds %struct.tegra_powergate, ptr %9, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  tail call void @_set_bit(i32 noundef %32, ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 22)) #14
  tail call void @kfree(ptr noundef %9) #14
  br label %33

33:                                               ; preds = %28, %7
  %34 = tail call ptr @of_get_next_child(ptr noundef nonnull %2, ptr noundef nonnull %8) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7

36:                                               ; preds = %33, %4
  tail call void @of_node_put(ptr noundef nonnull %2) #14
  %37 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.54) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  tail call void @of_genpd_del_provider(ptr noundef nonnull %37) #14
  %40 = tail call ptr @of_genpd_remove_last(ptr noundef nonnull %37) #14
  br label %41

41:                                               ; preds = %39, %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pm_validate_suspend_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @powergate_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @powergate_show, ptr noundef %4) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @powergate_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44) #14
  %3 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %27, %2
  %7 = phi i32 [ %28, %27 ], [ %4, %2 ]
  %8 = phi ptr [ %29, %27 ], [ %3, %2 ]
  %9 = phi i32 [ %30, %27 ], [ 0, %2 ]
  %10 = icmp eq ptr %8, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %9) #14
  %19 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %20 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr ptr, ptr %21, i32 %9
  %23 = load ptr, ptr %22, align 4
  %24 = select i1 %18, ptr @.str.46, ptr @.str.47
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %23, ptr noundef nonnull %24) #14
  %25 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %17, %11, %6
  %28 = phi i32 [ %7, %6 ], [ %7, %11 ], [ %26, %17 ]
  %29 = phi ptr [ null, %6 ], [ %8, %11 ], [ %25, %17 ]
  %30 = add nuw i32 %9, 1
  %31 = icmp ult i32 %30, %28
  br i1 %31, label %6, label %32

32:                                               ; preds = %27, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_reboot_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %58

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %8 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @.compoundliteral, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %17, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %14) #16
  br label %22

20:                                               ; preds = %16
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %14) #16
  br label %22

22:                                               ; preds = %20, %19, %13
  %23 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %29

25:                                               ; preds = %6
  %26 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 4), align 4
  %27 = getelementptr i8, ptr %26, i32 %10
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !18
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  %31 = and i32 %30, 1073741821
  %32 = icmp eq ptr %2, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull dereferenceable(9) @.str.48) #14
  %35 = icmp eq i32 %34, 0
  %36 = or i32 %31, -2147483648
  %37 = select i1 %35, i32 %36, i32 %31
  %38 = call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull dereferenceable(11) @.str.49) #14
  %39 = icmp eq i32 %38, 0
  %40 = or i32 %37, 1073741824
  %41 = select i1 %39, i32 %40, i32 %37
  %42 = call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull dereferenceable(16) @.str.50) #14
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %41, 2
  %45 = select i1 %43, i32 %44, i32 %41
  br label %46

46:                                               ; preds = %33, %29
  %47 = phi i32 [ %31, %29 ], [ %45, %33 ]
  %48 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %49 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %48, i32 0, i32 13
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 4
  %52 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %47, i32 noundef %51) #14
  br label %58

55:                                               ; preds = %46
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !19
  call void @arm_heavy_mb() #14
  %56 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 4), align 4
  %57 = getelementptr i8, ptr %56, i32 %51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %47) #14, !srcloc !11
  br label %58

58:                                               ; preds = %55, %54, %3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_restart_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @.compoundliteral, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %24 = or i32 %23, 16
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %24, i32 noundef 0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_io_pad_pinctrl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.tegra_pmc, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %4, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_io_pad_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.tegra_pmc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.tegra_io_pad_soc, ptr %7, i32 %1, i32 3
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_io_pad_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.tegra_pmc, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.tegra_io_pad_soc, ptr %9, i32 %1
  store ptr %10, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_io_pad_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  %5 = alloca %struct.arm_smccc_res, align 4
  %6 = alloca %struct.arm_smccc_res, align 4
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 255
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %10 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %151, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %11, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  br label %21

18:                                               ; preds = %21
  %19 = add nuw i32 %22, 1
  %20 = icmp eq i32 %19, %13
  br i1 %20, label %151, label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %15 ], [ %19, %18 ]
  %23 = getelementptr %struct.tegra_io_pad_soc, ptr %17, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %18

26:                                               ; preds = %21
  %27 = icmp eq ptr %23, null
  br i1 %27, label %151, label %28

28:                                               ; preds = %26
  %29 = trunc i32 %7 to i8
  switch i8 %29, label %151 [
    i8 21, label %33
    i8 15, label %101
  ]

30:                                               ; preds = %33
  %31 = add nuw i32 %34, 1
  %32 = icmp eq i32 %31, %13
  br i1 %32, label %151, label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %31, %30 ], [ 0, %28 ]
  %35 = getelementptr %struct.tegra_io_pad_soc, ptr %17, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %30

38:                                               ; preds = %33
  %39 = icmp eq ptr %35, null
  br i1 %39, label %151, label %40

40:                                               ; preds = %38
  %41 = getelementptr %struct.tegra_io_pad_soc, ptr %17, i32 %34, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %151, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %11, i32 0, i32 7
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #14, !annotation !9
  %49 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 8
  %50 = load i8, ptr %49, align 4, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef null) #14
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %9, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %56, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %53) #16
  br label %61

59:                                               ; preds = %55
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %53) #16
  br label %61

61:                                               ; preds = %59, %58, %52
  %62 = getelementptr inbounds %struct.arm_smccc_res, ptr %6, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  br label %69

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 64
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi i32 [ %63, %61 ], [ %68, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %94

71:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #14, !annotation !9
  %72 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 8
  %73 = load i8, ptr %72, align 4, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 228, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #14
  %76 = load i32, ptr %5, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %9, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %79, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %76) #16
  br label %84

82:                                               ; preds = %78
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %76) #16
  br label %84

84:                                               ; preds = %82, %81, %75
  %85 = getelementptr inbounds %struct.arm_smccc_res, ptr %5, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  br label %92

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 228
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i32 [ %86, %84 ], [ %91, %87 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %94

94:                                               ; preds = %92, %69
  %95 = phi i32 [ %70, %69 ], [ %93, %92 ]
  %96 = load i32, ptr %41, align 4
  %97 = lshr i32 %95, %96
  br label %146

98:                                               ; preds = %101
  %99 = add nuw i32 %102, 1
  %100 = icmp eq i32 %99, %13
  br i1 %100, label %108, label %101

101:                                              ; preds = %98, %28
  %102 = phi i32 [ %99, %98 ], [ 0, %28 ]
  %103 = getelementptr %struct.tegra_io_pad_soc, ptr %17, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, %1
  br i1 %105, label %106, label %98

106:                                              ; preds = %101
  %107 = icmp eq ptr %103, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %106, %98
  %109 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.6, i32 noundef %1) #16
  br label %151

110:                                              ; preds = %106
  %111 = getelementptr %struct.tegra_io_pad_soc, ptr %17, i32 %102, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %151, label %114

114:                                              ; preds = %110
  %115 = and i32 %112, 31
  %116 = icmp ult i32 %112, 32
  %117 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %11, i32 0, i32 13
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %118, i32 0, i32 2
  %121 = select i1 %116, ptr %120, ptr %119
  %122 = load i32, ptr %121, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %123 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 8
  %124 = load i8, ptr %123, align 4, !range !8
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %114
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %122, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %127 = load i32, ptr %4, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %9, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %130, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %127) #16
  br label %135

133:                                              ; preds = %129
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %127) #16
  br label %135

135:                                              ; preds = %133, %132, %126
  %136 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  br label %143

138:                                              ; preds = %114
  %139 = getelementptr inbounds %struct.tegra_pmc, ptr %9, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 %122
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %143

143:                                              ; preds = %138, %135
  %144 = phi i32 [ %137, %135 ], [ %142, %138 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %145 = lshr i32 %144, %115
  br label %146

146:                                              ; preds = %143, %94
  %147 = phi i32 [ %145, %143 ], [ %97, %94 ]
  %148 = shl i32 %147, 8
  %149 = and i32 %148, 256
  %150 = or i32 %149, %8
  store i32 %150, ptr %2, align 4
  br label %151

151:                                              ; preds = %146, %110, %108, %40, %38, %30, %28, %26, %18, %3
  %152 = phi i32 [ 0, %146 ], [ -22, %26 ], [ -22, %28 ], [ -22, %3 ], [ -524, %40 ], [ -2, %38 ], [ -524, %110 ], [ -2, %108 ], [ -2, %30 ], [ -22, %18 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_io_pad_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.arm_smccc_res, align 4
  %6 = alloca %struct.arm_smccc_res, align 4
  %7 = alloca %struct.arm_smccc_res, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %9 = getelementptr inbounds %struct.tegra_pmc, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %161, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %10, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  br label %20

17:                                               ; preds = %20
  %18 = add nuw i32 %21, 1
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %161, label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %14 ], [ %18, %17 ]
  %22 = getelementptr %struct.tegra_io_pad_soc, ptr %16, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = icmp eq ptr %22, null
  br i1 %26, label %161, label %27

27:                                               ; preds = %25
  %28 = icmp eq i32 %3, 0
  br i1 %28, label %161, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tegra_pmc, ptr %8, i32 0, i32 23
  %31 = getelementptr inbounds %struct.tegra_pmc, ptr %8, i32 0, i32 8
  %32 = getelementptr inbounds %struct.arm_smccc_res, ptr %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.tegra_pmc, ptr %8, i32 0, i32 1
  %34 = getelementptr inbounds %struct.arm_smccc_res, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.arm_smccc_res, ptr %5, i32 0, i32 1
  br label %36

36:                                               ; preds = %158, %29
  %37 = phi i32 [ 0, %29 ], [ %159, %158 ]
  %38 = getelementptr i32, ptr %2, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i8
  switch i8 %40, label %161 [
    i8 15, label %41
    i8 21, label %51
  ]

41:                                               ; preds = %36
  %42 = icmp ult i32 %39, 256
  %43 = load i32, ptr %22, align 4
  br i1 %42, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @tegra_io_pad_power_disable(i32 noundef %43)
  br label %48

46:                                               ; preds = %41
  %47 = call i32 @tegra_io_pad_power_enable(i32 noundef %43)
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %158, label %161

51:                                               ; preds = %36
  %52 = icmp ugt i32 %39, 511
  br i1 %52, label %161, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %22, align 4
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %55, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %161, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %55, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  br label %65

62:                                               ; preds = %65
  %63 = add nuw i32 %66, 1
  %64 = icmp eq i32 %63, %57
  br i1 %64, label %161, label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ 0, %59 ], [ %63, %62 ]
  %67 = getelementptr %struct.tegra_io_pad_soc, ptr %61, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, %54
  br i1 %69, label %70, label %62

70:                                               ; preds = %65
  %71 = icmp eq ptr %67, null
  br i1 %71, label %161, label %72

72:                                               ; preds = %70
  %73 = getelementptr %struct.tegra_io_pad_soc, ptr %61, i32 %66, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %161, label %76

76:                                               ; preds = %72
  call void @mutex_lock(ptr noundef %30) #14
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %77, i32 0, i32 7
  %79 = load i8, ptr %78, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #14, !annotation !9
  %82 = load i8, ptr %31, align 4, !range !8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef null) #14
  %85 = load i32, ptr %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %8, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %88, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %85) #16
  br label %93

91:                                               ; preds = %87
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %85) #16
  br label %93

93:                                               ; preds = %91, %90, %84
  %94 = load i32, ptr %32, align 4
  br label %99

95:                                               ; preds = %81
  %96 = load ptr, ptr %33, align 4
  %97 = getelementptr i8, ptr %96, i32 64
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  %101 = icmp ult i32 %39, 256
  %102 = load i32, ptr %73, align 4
  %103 = shl nuw i32 1, %102
  %104 = xor i32 %103, -1
  %105 = and i32 %100, %104
  %106 = or i32 %103, %100
  %107 = select i1 %101, i32 %105, i32 %106
  call fastcc void @tegra_pmc_writel(ptr noundef %8, i32 noundef %107, i32 noundef 64) #14
  br label %157

108:                                              ; preds = %76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #14, !annotation !9
  %109 = load i8, ptr %31, align 4, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %108
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 72, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef null) #14
  %112 = load i32, ptr %6, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %8, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %115, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %112) #16
  br label %120

118:                                              ; preds = %114
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %112) #16
  br label %120

120:                                              ; preds = %118, %117, %111
  %121 = load i32, ptr %34, align 4
  br label %126

122:                                              ; preds = %108
  %123 = load ptr, ptr %33, align 4
  %124 = getelementptr i8, ptr %123, i32 72
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %126

126:                                              ; preds = %122, %120
  %127 = phi i32 [ %121, %120 ], [ %125, %122 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  %128 = load i32, ptr %73, align 4
  %129 = shl nuw i32 1, %128
  %130 = or i32 %129, %127
  call fastcc void @tegra_pmc_writel(ptr noundef %8, i32 noundef %130, i32 noundef 72) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #14, !annotation !9
  %131 = load i8, ptr %31, align 4, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %126
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 228, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #14
  %134 = load i32, ptr %5, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %8, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %137, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %134) #16
  br label %142

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %134) #16
  br label %142

142:                                              ; preds = %140, %139, %133
  %143 = load i32, ptr %35, align 4
  br label %148

144:                                              ; preds = %126
  %145 = load ptr, ptr %33, align 4
  %146 = getelementptr i8, ptr %145, i32 228
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %148

148:                                              ; preds = %144, %142
  %149 = phi i32 [ %143, %142 ], [ %147, %144 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  %150 = icmp ult i32 %39, 256
  %151 = load i32, ptr %73, align 4
  %152 = shl nuw i32 1, %151
  %153 = xor i32 %152, -1
  %154 = and i32 %149, %153
  %155 = or i32 %152, %149
  %156 = select i1 %150, i32 %154, i32 %155
  call fastcc void @tegra_pmc_writel(ptr noundef %8, i32 noundef %156, i32 noundef 228) #14
  br label %157

157:                                              ; preds = %148, %99
  call void @mutex_unlock(ptr noundef %30) #14
  call void @usleep_range_state(i32 noundef 100, i32 noundef 250, i32 noundef 2) #14
  br label %158

158:                                              ; preds = %157, %48
  %159 = add nuw i32 %37, 1
  %160 = icmp eq i32 %159, %3
  br i1 %160, label %161, label %36

161:                                              ; preds = %158, %72, %70, %62, %53, %51, %48, %36, %27, %25, %17, %4
  %162 = phi i32 [ -22, %25 ], [ -22, %4 ], [ 0, %27 ], [ -2, %62 ], [ %49, %48 ], [ -22, %51 ], [ -22, %36 ], [ 0, %158 ], [ -2, %70 ], [ -524, %72 ], [ -2, %53 ], [ -22, %17 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_regmap_readl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

17:                                               ; preds = %15, %14, %8
  %18 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %25

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %19, %17 ], [ %24, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  store i32 %26, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_regmap_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %2, i32 noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_core_pd_set_performance_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = call ptr @dev_pm_opp_find_level_ceil(ptr noundef %0, ptr noundef nonnull %3) #14
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %7, ptr noundef nonnull %4) #16
  %8 = ptrtoint ptr %4 to i32
  br label %15

9:                                                ; preds = %2
  call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  %10 = load ptr, ptr @.compoundliteral, align 4
  %11 = call i32 @dev_pm_opp_set_opp(ptr noundef %10, ptr noundef %4) #14
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 23)) #14
  call void @dev_pm_opp_put(ptr noundef %4) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %14, i32 noundef %11) #16
  br label %15

15:                                               ; preds = %13, %9, %6
  %16 = phi i32 [ %8, %6 ], [ %11, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_core_pd_opp_to_performance_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @dev_pm_opp_get_level(ptr noundef %1) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_level_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_opp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_genpd_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_acquire(ptr noundef %6) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.69, ptr noundef %11, i32 noundef %7) #16
  br label %130

12:                                               ; preds = %1
  %13 = tail call fastcc i32 @tegra_powergate_prepare_clocks(ptr noundef %0) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %125

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @tegra_powergate_enable_clocks(ptr noundef %0) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  br label %101

21:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %26 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %36, %31 ]
  %33 = load ptr, ptr %30, align 8
  %34 = getelementptr ptr, ptr %33, i32 %32
  %35 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %35) #14
  tail call void @clk_unprepare(ptr noundef %35) #14
  %36 = add nuw i32 %32, 1
  %37 = load i32, ptr %26, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %31, label %39

39:                                               ; preds = %31, %25
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tegra_pmc, ptr %40, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %46, i32 0, i32 5
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %44, %39
  %51 = getelementptr inbounds %struct.tegra_pmc, ptr %40, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %51) #14
  %52 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %42) #14
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @mutex_unlock(ptr noundef %51) #14
  br label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tegra_pmc, ptr %40, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %56, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %40, i32 noundef %42, i1 noundef zeroext false) #14
  tail call void @mutex_unlock(ptr noundef %51) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %54, %53
  %62 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  %63 = load i32, ptr %26, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %130, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 5
  br label %71

67:                                               ; preds = %71
  %68 = add nuw i32 %72, 1
  %69 = load i32, ptr %26, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %130

71:                                               ; preds = %67, %65
  %72 = phi i32 [ 0, %65 ], [ %68, %67 ]
  %73 = load ptr, ptr %62, align 8
  %74 = getelementptr ptr, ptr %73, i32 %72
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %66, align 8
  %77 = getelementptr i32, ptr %76, i32 %72
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 @clk_set_rate(ptr noundef %75, i32 noundef %78) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %67, label %125

81:                                               ; preds = %54, %44
  %82 = phi i32 [ %59, %54 ], [ -22, %44 ]
  %83 = tail call fastcc i32 @tegra_powergate_enable_clocks(ptr noundef %0) #14
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %84 = load ptr, ptr %5, align 4
  %85 = tail call i32 @reset_control_deassert(ptr noundef %84) #14
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  br label %86

86:                                               ; preds = %81, %21
  %87 = phi i32 [ %23, %21 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i32 [ 0, %91 ], [ %98, %93 ]
  %95 = load ptr, ptr %92, align 8
  %96 = getelementptr ptr, ptr %95, i32 %94
  %97 = load ptr, ptr %96, align 4
  tail call void @clk_disable(ptr noundef %97) #14
  tail call void @clk_unprepare(ptr noundef %97) #14
  %98 = add nuw i32 %94, 1
  %99 = load i32, ptr %88, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %93, label %101

101:                                              ; preds = %93, %18
  %102 = phi i32 [ %20, %18 ], [ %99, %93 ]
  %103 = phi i32 [ %16, %18 ], [ %87, %93 ]
  %104 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 3
  %105 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 4
  %106 = icmp eq i32 %102, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 5
  br label %113

109:                                              ; preds = %113
  %110 = add nuw i32 %114, 1
  %111 = load i32, ptr %105, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109, %107
  %114 = phi i32 [ 0, %107 ], [ %110, %109 ]
  %115 = load ptr, ptr %104, align 8
  %116 = getelementptr ptr, ptr %115, i32 %114
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %108, align 8
  %119 = getelementptr i32, ptr %118, i32 %114
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @clk_set_rate(ptr noundef %117, i32 noundef %120) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %109, label %123

123:                                              ; preds = %113, %109, %101
  %124 = icmp eq i32 %103, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %123, %86, %71, %12
  %126 = phi i32 [ %103, %123 ], [ %87, %86 ], [ %13, %12 ], [ %79, %71 ]
  %127 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.70, ptr noundef %128, i32 noundef %126) #16
  %129 = load ptr, ptr %5, align 4
  tail call void @reset_control_release(ptr noundef %129) #14
  br label %130

130:                                              ; preds = %125, %123, %67, %61, %9
  %131 = phi i32 [ %7, %9 ], [ %126, %125 ], [ 0, %123 ], [ 0, %61 ], [ 0, %67 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_genpd_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @tegra_powergate_power_up(ptr noundef %0, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.71, ptr noundef %9, i32 noundef %5) #16
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tegra_powergate, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  tail call void @reset_control_release(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %10, %7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_irq_mask_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @irq_chip_mask_parent(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_irq_unmask_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_irq_eoi_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_irq_set_affinity_parent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #14
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_irq_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_pmc, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt i32 %2, 1
  br i1 %10, label %23, label %11, !prof !14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %9, i32 0, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %76, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %9, i32 0, i32 23
  %17 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %20 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds i8, ptr %5, i32 20
  br label %24

23:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2215, i32 noundef 9, ptr noundef null) #14
  br label %83

24:                                               ; preds = %73, %15
  %25 = phi i32 [ 0, %15 ], [ %74, %73 ]
  switch i32 %18, label %73 [
    i32 2, label %26
    i32 3, label %48
  ]

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %22, i8 0, i32 52, i1 false), !annotation !9
  %27 = getelementptr %struct.tegra_wake_event, ptr %21, i32 %25, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tegra_pmc, ptr %7, i32 0, i32 26
  %33 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %28, ptr noundef %32, ptr noundef %7) #14
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 3
  store ptr %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.tegra_wake_event, ptr %21, i32 %25, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %20, align 4
  %46 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 %45, ptr %46, align 4
  %47 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #14
  br label %70

48:                                               ; preds = %24
  %49 = getelementptr %struct.tegra_wake_event, ptr %21, i32 %25, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %19, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = getelementptr %struct.tegra_wake_event, ptr %21, i32 %25, i32 3, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %20, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = getelementptr %struct.tegra_wake_event, ptr %21, i32 %25, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tegra_pmc, ptr %7, i32 0, i32 26
  %62 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %60, ptr noundef %61, ptr noundef %7) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @irq_domain_disconnect_hierarchy(ptr noundef nonnull %66, i32 noundef %1) #14
  br label %76

70:                                               ; preds = %35, %31
  %71 = phi i32 [ %33, %31 ], [ %47, %35 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  br label %76

72:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  br label %73

73:                                               ; preds = %72, %53, %48, %24
  %74 = add nuw i32 %25, 1
  %75 = icmp ult i32 %74, %13
  br i1 %75, label %24, label %76

76:                                               ; preds = %73, %70, %68, %64, %58, %11
  %77 = phi i32 [ %25, %70 ], [ %25, %64 ], [ %25, %68 ], [ %25, %58 ], [ 0, %11 ], [ %74, %73 ]
  %78 = phi i32 [ %71, %70 ], [ 0, %64 ], [ %69, %68 ], [ %62, %58 ], [ 0, %11 ], [ 0, %73 ]
  %79 = load i32, ptr %12, align 4
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @irq_domain_disconnect_hierarchy(ptr noundef %0, i32 noundef %1) #14
  br label %83

83:                                               ; preds = %81, %76, %23
  %84 = phi i32 [ -22, %23 ], [ %82, %81 ], [ %78, %76 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_irq_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2197, i32 noundef 9, ptr noundef null) #14
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_disconnect_hierarchy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmc_clk_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @pmc_clk_set_state(i32 noundef %3, i32 noundef %5, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmc_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @pmc_clk_set_state(i32 noundef %3, i32 noundef %5, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmc_clk_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @.compoundliteral, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = getelementptr inbounds %struct.arm_smccc_res, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 %4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %25 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 1
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmc_clk_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  %4 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %6 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #14
  %9 = load i32, ptr %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @.compoundliteral, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

17:                                               ; preds = %15, %14, %8
  %18 = getelementptr inbounds %struct.arm_smccc_res, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %22 = getelementptr i8, ptr %21, i32 %5
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %26 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 3, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = zext i8 %1 to i32
  %32 = shl i32 %31, %27
  %33 = or i32 %30, %32
  %34 = load i32, ptr %4, align 4
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %33, i32 noundef %34)
  %35 = load i32, ptr %4, align 4
  call fastcc void @pmc_clk_fence_udelay(i32 noundef %35)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @pmc_clk_mux_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @.compoundliteral, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = getelementptr inbounds %struct.arm_smccc_res, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 %4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %25 = getelementptr inbounds %struct.pmc_clk, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 3
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pmc_clk_set_state(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @.compoundliteral, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 %0
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %25 = icmp eq i32 %2, 0
  %26 = shl nuw i32 1, %1
  %27 = or i32 %24, %26
  %28 = xor i32 %26, -1
  %29 = and i32 %24, %28
  %30 = select i1 %25, i32 %29, i32 %27
  call fastcc void @tegra_pmc_writel(ptr noundef nonnull @.compoundliteral, i32 noundef %30, i32 noundef %0)
  call fastcc void @pmc_clk_fence_udelay(i32 noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pmc_clk_fence_udelay(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %3 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @.compoundliteral, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %6) #16
  br label %18

12:                                               ; preds = %8
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %6) #16
  br label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %16 = getelementptr i8, ptr %15, i32 %0
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %18

18:                                               ; preds = %14, %12, %11, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 429496) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmc_clk_gate_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pmc_clk_gate, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pmc_clk_gate, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @pmc_clk_set_state(i32 noundef %3, i32 noundef %5, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmc_clk_gate_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pmc_clk_gate, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pmc_clk_gate, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @pmc_clk_set_state(i32 noundef %3, i32 noundef %5, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmc_clk_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = getelementptr inbounds %struct.pmc_clk_gate, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @.compoundliteral, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %8) #16
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = getelementptr inbounds %struct.arm_smccc_res, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 %4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %25 = getelementptr inbounds %struct.pmc_clk_gate, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 1
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_genpd_remove_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_reason_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %6 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %10 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @.compoundliteral, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %16, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %13) #16
  br label %21

19:                                               ; preds = %15
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %13) #16
  br label %21

21:                                               ; preds = %19, %18, %12
  %22 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 %9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %30 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %31 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %30, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %29
  %36 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %32, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %35, %37
  %39 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %30, i32 0, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %44, label %42, !prof !17

42:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2145, i32 noundef 9, ptr noundef null) #14
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86)
  br label %50

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %30, i32 0, i32 19
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr ptr, ptr %46, i32 %38
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef %48)
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32 [ %43, %42 ], [ %49, %44 ]
  ret i32 %51
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_level_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %6 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %10 = load i8, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 8), align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @.compoundliteral, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %16, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %13) #16
  br label %21

19:                                               ; preds = %15
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %13) #16
  br label %21

21:                                               ; preds = %19, %18, %12
  %22 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 %9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %30 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %31 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %30, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %32, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %29
  %36 = getelementptr inbounds %struct.tegra_pmc_regs, ptr %32, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %35, %37
  %39 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %30, i32 0, i32 22
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %44, label %42, !prof !17

42:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2162, i32 noundef 9, ptr noundef null) #14
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86)
  br label %50

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %30, i32 0, i32 21
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr ptr, ptr %46, i32 %38
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.85, ptr noundef %48)
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32 [ %43, %42 ], [ %49, %44 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra186_pmc_setup_irq_polarity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !9
  %5 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.10) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.89) #16
  br label %26

9:                                                ; preds = %3
  %10 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %4) #14
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 1, %11
  %15 = add i32 %14, %13
  %16 = call ptr @ioremap(i32 noundef %11, i32 noundef %15) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.90) #16
  br label %26

20:                                               ; preds = %9
  %21 = getelementptr i8, ptr %16, i32 1268
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  %23 = and i32 %22, -2
  %24 = zext i1 %2 to i32
  %25 = or i32 %23, %24
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %25) #14, !srcloc !11
  call void @iounmap(ptr noundef nonnull %16) #14
  br label %26

26:                                               ; preds = %20, %18, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra186_pmc_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  %8 = getelementptr inbounds %struct.tegra_pmc, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  %11 = shl i32 %10, 2
  %12 = add i32 %11, 780
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #14, !srcloc !11
  %14 = load ptr, ptr %8, align 4
  %15 = lshr i32 %6, 3
  %16 = and i32 %15, 536870908
  %17 = add nuw nsw i32 %16, 1228
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %20 = icmp ne i32 %1, 0
  %21 = shl nuw i32 1, %7
  %22 = or i32 %19, %21
  %23 = xor i32 %21, -1
  %24 = and i32 %19, %23
  %25 = select i1 %20, i32 %22, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !24
  tail call void @arm_heavy_mb() #14
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr i8, ptr %26, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #14, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !25
  tail call void @arm_heavy_mb() #14
  %28 = zext i1 %20 to i32
  %29 = load ptr, ptr %8, align 4
  %30 = load i32, ptr %5, align 4
  %31 = shl i32 %30, 2
  %32 = add i32 %31, 384
  %33 = getelementptr i8, ptr %29, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %28) #14, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra186_pmc_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_pmc, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !26
  switch i32 %1, label %24 [
    i32 1, label %12
    i32 4, label %12
    i32 2, label %14
    i32 8, label %14
    i32 3, label %16
  ]

12:                                               ; preds = %2, %2
  %13 = or i32 %11, 8
  br label %18

14:                                               ; preds = %2, %2
  %15 = and i32 %11, -9
  br label %18

16:                                               ; preds = %2
  %17 = xor i32 %11, 8
  br label %18

18:                                               ; preds = %16, %14, %12
  %19 = phi i32 [ %17, %16 ], [ %15, %14 ], [ %13, %12 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !27
  tail call void @arm_heavy_mb() #14
  %20 = load ptr, ptr %5, align 4
  %21 = load i32, ptr %7, align 4
  %22 = shl i32 %21, 2
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #14, !srcloc !11
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ 0, %18 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_pmc_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = alloca %struct.arm_smccc_res, align 4
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

17:                                               ; preds = %15, %14, %8
  %18 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %26 = or i32 %25, 65536
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %26, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %27 = load i8, ptr %5, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #14
  %30 = load i32, ptr %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %33, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %30) #16
  br label %38

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %30) #16
  br label %38

38:                                               ; preds = %36, %35, %29
  %39 = getelementptr inbounds %struct.arm_smccc_res, ptr %3, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i32 [ %40, %38 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %47 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 17
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  %50 = and i32 %46, -1281
  %51 = select i1 %49, i32 1024, i32 0
  %52 = or i32 %51, %50
  %53 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 16
  %54 = load i8, ptr %53, align 4, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 256, i32 0
  %57 = or i32 %52, %56
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %57, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %58 = load i8, ptr %5, align 4, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %45
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #14
  %61 = load i32, ptr %2, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %0, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %61) #16
  br label %69

67:                                               ; preds = %63
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %61) #16
  br label %69

69:                                               ; preds = %67, %66, %60
  %70 = getelementptr inbounds %struct.arm_smccc_res, ptr %2, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  br label %76

72:                                               ; preds = %45
  %73 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i32 [ %71, %69 ], [ %75, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %78 = or i32 %77, 2048
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %78, i32 noundef 0)
  %79 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %84, 13
  %86 = add i32 %85, 999999
  %87 = udiv i32 %86, 1000000
  %88 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 %89, 15
  %91 = add i32 %90, 999999
  %92 = udiv i32 %91, 1000000
  %93 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = shl i32 %94, 15
  %96 = add i32 %95, 999999
  %97 = udiv i32 %96, 1000000
  %98 = shl nuw nsw i32 %87, 8
  %99 = and i32 %98, 65280
  %100 = and i32 %92, 255
  %101 = or i32 %99, %100
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %101, i32 noundef 60)
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %97, i32 noundef 224)
  br label %102

102:                                              ; preds = %82, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_pmc_setup_irq_polarity(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %5 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %9) #16
  br label %17

17:                                               ; preds = %15, %14, %8
  %18 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %26 = and i32 %25, -131073
  %27 = select i1 %2, i32 131072, i32 0
  %28 = or i32 %26, %27
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %28, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra210_pmc_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  tail call fastcc void @tegra_pmc_writel(ptr noundef %5, i32 noundef 0, i32 noundef 24)
  tail call fastcc void @tegra_pmc_writel(ptr noundef %5, i32 noundef 0, i32 noundef 364)
  tail call fastcc void @tegra_pmc_writel(ptr noundef %5, i32 noundef 0, i32 noundef 20)
  tail call fastcc void @tegra_pmc_writel(ptr noundef %5, i32 noundef 0, i32 noundef 360)
  %8 = load i32, ptr %6, align 4
  %9 = icmp ugt i32 %8, 31
  %10 = select i1 %9, i32 352, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %11 = getelementptr inbounds %struct.tegra_pmc, ptr %5, i32 0, i32 8
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #14
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %18, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %15) #16
  br label %23

21:                                               ; preds = %17
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %15) #16
  br label %23

23:                                               ; preds = %21, %20, %14
  %24 = getelementptr inbounds %struct.arm_smccc_res, ptr %3, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  br label %31

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.tegra_pmc, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %10
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i32 [ %25, %23 ], [ %30, %26 ]
  %33 = and i32 %7, 31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %34 = icmp eq i32 %1, 0
  %35 = shl nuw i32 1, %33
  %36 = or i32 %32, %35
  %37 = xor i32 %35, -1
  %38 = and i32 %32, %37
  %39 = select i1 %34, i32 %38, i32 %36
  call fastcc void @tegra_pmc_writel(ptr noundef %5, i32 noundef %39, i32 noundef %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra210_pmc_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 31
  %9 = icmp ugt i32 %7, 31
  %10 = select i1 %9, i32 356, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #14, !annotation !9
  %11 = getelementptr inbounds %struct.tegra_pmc, ptr %5, i32 0, i32 8
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #14
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %18, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %15) #16
  br label %23

21:                                               ; preds = %17
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %15) #16
  br label %23

23:                                               ; preds = %21, %20, %14
  %24 = getelementptr inbounds %struct.arm_smccc_res, ptr %3, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  br label %31

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.tegra_pmc, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %10
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i32 [ %25, %23 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  switch i32 %1, label %45 [
    i32 1, label %33
    i32 4, label %33
    i32 2, label %36
    i32 8, label %36
    i32 3, label %40
  ]

33:                                               ; preds = %31, %31
  %34 = shl nuw i32 1, %8
  %35 = or i32 %32, %34
  br label %43

36:                                               ; preds = %31, %31
  %37 = shl nuw i32 1, %8
  %38 = xor i32 %37, -1
  %39 = and i32 %32, %38
  br label %43

40:                                               ; preds = %31
  %41 = shl nuw i32 1, %8
  %42 = xor i32 %32, %41
  br label %43

43:                                               ; preds = %40, %36, %33
  %44 = phi i32 [ %42, %40 ], [ %39, %36 ], [ %35, %33 ]
  call fastcc void @tegra_pmc_writel(ptr noundef %5, i32 noundef %44, i32 noundef %10)
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi i32 [ 0, %43 ], [ -22, %31 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra114_powergate_set(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  %5 = alloca %struct.arm_smccc_res, align 4
  %6 = alloca %struct.arm_smccc_res, align 4
  %7 = alloca %struct.arm_smccc_res, align 4
  %8 = tail call i64 @ktime_get() #14
  %9 = add i64 %8, 100000
  %10 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.arm_smccc_res, ptr %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tegra_pmc, ptr %0, i32 0, i32 1
  br label %13

13:                                               ; preds = %57, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #14, !annotation !9
  %14 = load i8, ptr %10, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 48, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef null) #14
  %17 = load i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %20, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %17) #16
  br label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %17) #16
  br label %25

25:                                               ; preds = %23, %22, %16
  %26 = load i32, ptr %11, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr i8, ptr %28, i32 48
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %31
  %36 = call i64 @ktime_get() #14
  %37 = icmp sgt i64 %36, %9
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #14, !annotation !9
  %39 = load i8, ptr %10, align 4, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 48, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef null) #14
  %42 = load i32, ptr %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %45, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %42) #16
  br label %50

48:                                               ; preds = %44
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %42) #16
  br label %50

50:                                               ; preds = %48, %47, %41
  %51 = getelementptr inbounds %struct.arm_smccc_res, ptr %6, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  br label %58

53:                                               ; preds = %38
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr i8, ptr %54, i32 48
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %58

57:                                               ; preds = %35
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  br label %13

58:                                               ; preds = %53, %50
  %59 = phi i32 [ %52, %50 ], [ %56, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %131

62:                                               ; preds = %58, %31
  %63 = or i32 %1, 256
  call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %63, i32 noundef 48)
  %64 = call i64 @ktime_get() #14
  %65 = add i64 %64, 100000
  %66 = getelementptr inbounds %struct.arm_smccc_res, ptr %5, i32 0, i32 1
  br label %67

67:                                               ; preds = %111, %62
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #14, !annotation !9
  %68 = load i8, ptr %10, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 48, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #14
  %71 = load i32, ptr %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %0, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %74, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %71) #16
  br label %79

77:                                               ; preds = %73
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %71) #16
  br label %79

79:                                               ; preds = %77, %76, %70
  %80 = load i32, ptr %66, align 4
  br label %85

81:                                               ; preds = %67
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr i8, ptr %82, i32 48
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %80, %79 ], [ %84, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  %87 = and i32 %86, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %85
  %90 = call i64 @ktime_get() #14
  %91 = icmp sgt i64 %90, %65
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14, !annotation !9
  %93 = load i8, ptr %10, align 4, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  call void @__arm_smccc_smc(i32 noundef -1023410688, i32 noundef 170, i32 noundef 48, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #14
  %96 = load i32, ptr %4, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %0, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %99, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %96) #16
  br label %104

102:                                              ; preds = %98
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_pmc_readl, i32 noundef %96) #16
  br label %104

104:                                              ; preds = %102, %101, %95
  %105 = getelementptr inbounds %struct.arm_smccc_res, ptr %4, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  br label %112

107:                                              ; preds = %92
  %108 = load ptr, ptr %12, align 4
  %109 = getelementptr i8, ptr %108, i32 48
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #14, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  br label %112

111:                                              ; preds = %89
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  br label %67

112:                                              ; preds = %107, %104
  %113 = phi i32 [ %106, %104 ], [ %110, %107 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %114 = and i32 %113, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %112, %85
  %117 = call i64 @ktime_get() #14
  %118 = add i64 %117, 100000000
  %119 = call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %1)
  %120 = xor i1 %119, %2
  br i1 %120, label %121, label %131

121:                                              ; preds = %124, %116
  %122 = call i64 @ktime_get() #14
  %123 = icmp sgt i64 %122, %118
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #14
  %125 = call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %1)
  %126 = xor i1 %125, %2
  br i1 %126, label %121, label %131

127:                                              ; preds = %121
  %128 = call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %1)
  %129 = xor i1 %128, %2
  %130 = select i1 %129, i32 -110, i32 0
  br label %131

131:                                              ; preds = %127, %124, %116, %112, %58
  %132 = phi i32 [ -110, %58 ], [ -110, %112 ], [ 0, %116 ], [ %130, %127 ], [ 0, %124 ]
  ret i32 %132
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_powergate_set(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = or i32 %1, 256
  br label %5

5:                                                ; preds = %22, %3
  %6 = phi i32 [ 100, %3 ], [ %23, %22 ]
  tail call fastcc void @tegra_pmc_writel(ptr noundef %0, i32 noundef %4, i32 noundef 48)
  %7 = tail call i64 @ktime_get() #14
  %8 = add i64 %7, 10000
  %9 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %1)
  %10 = xor i1 %9, %2
  br i1 %10, label %11, label %19

11:                                               ; preds = %16, %5
  %12 = tail call i64 @ktime_get() #14
  %13 = icmp sgt i64 %12, %8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %1)
  br label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %17 = tail call fastcc zeroext i1 @tegra_powergate_state(i32 noundef %1)
  %18 = xor i1 %17, %2
  br i1 %18, label %11, label %19

19:                                               ; preds = %16, %14, %5
  %20 = phi i1 [ %15, %14 ], [ %9, %5 ], [ %17, %16 ]
  %21 = xor i1 %20, %2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = add nsw i32 %6, -1
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %5

25:                                               ; preds = %22, %19
  %26 = phi i32 [ 0, %19 ], [ -110, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_sync_regulators(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @tegra_resume to i32), i32 -2130706432, i32 8454144) #17, !srcloc !28
  tail call fastcc void @tegra_pmc_writel(ptr noundef %3, i32 noundef %4, i32 noundef 320)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pmc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @tegra_pmc_writel(ptr noundef %3, i32 noundef 0, i32 noundef 320)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_resume() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tegra_pmc_detect_tz_only() unnamed_addr #6 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %2, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !29
  %8 = xor i32 %7, -1
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %9, i32 -559038737, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !30
  tail call void @arm_heavy_mb() #14
  %11 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %13 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %12, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #14, !srcloc !11
  %17 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %19 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %18, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !31
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256) #16
  br label %34

27:                                               ; preds = %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !32
  tail call void @arm_heavy_mb() #14
  %28 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 1), align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.tegra_pmc, ptr @.compoundliteral, i32 0, i32 7), align 4
  %30 = getelementptr inbounds %struct.tegra_pmc_soc, ptr %29, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %7) #14, !srcloc !11
  br label %34

34:                                               ; preds = %27, %25
  ret i1 %24
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(0) }

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
!10 = !{i64 2152754578}
!11 = !{i64 4803849}
!12 = !{i64 4804267}
!13 = !{i64 2152753162}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 1011296, i64 1011323}
!16 = !{i64 1011991, i64 1012018, i64 1012051, i64 1012072, i64 1012099, i64 1012125}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2152755058}
!19 = !{i64 2152755249}
!20 = !{i64 2152908881}
!21 = !{i64 2152909233}
!22 = !{i64 2152816135}
!23 = !{i64 2152816719}
!24 = !{i64 2152816956}
!25 = !{i64 2152817357}
!26 = !{i64 2152817963}
!27 = !{i64 2152818252}
!28 = !{i64 2148929870, i64 2148929893, i64 2148929925, i64 2148929957, i64 2148929995, i64 2148930025}
!29 = !{i64 2152947487}
!30 = !{i64 2152947693}
!31 = !{i64 2152948236}
!32 = !{i64 2152948959}
