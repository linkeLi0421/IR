; ModuleID = '/llk/IR/drivers/clk/tegra/clk-dfll.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-dfll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_register\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tegra_dfll = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.clk_hw, ptr, %struct.dfll_rate_req, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [33 x i32], [33 x i32], i32, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.dfll_rate_req = type { i32, i32, i32, i8, i8 }
%struct.tegra_dfll_soc_data = type { ptr, i32, ptr, %struct.rail_alignment, ptr, ptr, ptr }
%struct.rail_alignment = type { i32, i32 }
%struct.cvb_table = type { i32, i32, i32, i32, i32, i32, [40 x %struct.cvb_table_freq_entry], %struct.cvb_cpu_dfll_data }
%struct.cvb_table_freq_entry = type { i32, %struct.cvb_coefficients }
%struct.cvb_coefficients = type { i32, i32, i32 }
%struct.cvb_cpu_dfll_data = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [32 x i8] c"could not enable ref clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not enable register clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"could not enable i2c clock: %d\0A\00", align 1
@__kstrtab_tegra_dfll_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_runtime_resume to i32), ptr @__kstrtab_tegra_dfll_runtime_resume, ptr @__kstrtabns_tegra_dfll_runtime_resume }, section "___ksymtab+tegra_dfll_runtime_resume", align 4
@__kstrtab_tegra_dfll_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_runtime_suspend to i32), ptr @__kstrtab_tegra_dfll_runtime_suspend, ptr @__kstrtabns_tegra_dfll_runtime_suspend }, section "___ksymtab+tegra_dfll_runtime_suspend", align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"DFLL still enabled while suspending\0A\00", align 1
@__kstrtab_tegra_dfll_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_suspend to i32), ptr @__kstrtab_tegra_dfll_suspend, ptr @__kstrtabns_tegra_dfll_suspend }, section "___ksymtab+tegra_dfll_suspend", align 4
@__kstrtab_tegra_dfll_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_resume to i32), ptr @__kstrtab_tegra_dfll_resume, ptr @__kstrtabns_tegra_dfll_resume }, section "___ksymtab+tegra_dfll_resume", align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"no tegra_dfll_soc_data provided\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dvco\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"couldn't get dvco reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"couldn't parse device tree parameters\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nvidia,pwm-to-pmic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vdd-cpu\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"couldn't get vdd_cpu regulator\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"couldn't build LUT\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"no control register resource\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"couldn't ioremap DFLL control registers\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"no i2c_base resource\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"couldn't ioremap i2c_base resource\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"no i2c_controller_base resource\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"couldn't ioremap i2c_controller_base resource\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"no lut_base resource\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"couldn't ioremap lut_base resource\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"DFLL clock init error\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"DFLL clk registration failed\0A\00", align 1
@__kstrtab_tegra_dfll_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_register to i32), ptr @__kstrtab_tegra_dfll_register, ptr @__kstrtabns_tegra_dfll_register }, section "___ksymtab+tegra_dfll_register", align 4
@.str.22 = private unnamed_addr constant [42 x i8] c"must disable DFLL before removing driver\0A\00", align 1
@__kstrtab_tegra_dfll_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_unregister to i32), ptr @__kstrtab_tegra_dfll_unregister, ptr @__kstrtabns_tegra_dfll_unregister }, section "___ksymtab+tegra_dfll_unregister", align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"drivers/clk/tegra/clk-dfll.c\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"nvidia,droop-ctrl\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"nvidia,sample-rate\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"nvidia,force-mode\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"nvidia,cf\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"nvidia,ci\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"nvidia,cg\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"nvidia,cg-scale\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"missing clock-output-names property\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"failed to read DT parameter %s: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Missing step or alignment info for PWM regulator\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"nvidia,pwm-tristate-microvolts\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"couldn't get initialized voltage\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"nvidia,pwm-period-nanoseconds\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"couldn't get PWM period\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"DT: missing pinctrl device\0A\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"dvfs_pwm_enable\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"DT: missing pwm enabled state\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"dvfs_pwm_disable\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"DT: missing pwm disabled state\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"nvidia,i2c-fs-rate\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"regulator unsuitable for DFLL I2C operation\0A\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"couldn't get vmax opp, empty opp table?\0A\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"no voltage above DFLL minimum %d mV\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"no opp below DFLL minimum voltage %d mV\0A\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"no opp above DFLL minimum voltage %d mV\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"no voltage map entry for %d uV\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"no voltage map entry rounding to %d uV\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"missing ref clock\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"missing soc clock\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"missing i2c clock\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"unexpected ref clk rate %lu, expecting %lu\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"failed to prepare ref_clk\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"failed to prepare soc_clk\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"failed to prepare i2c_clk\0A\00", align 1
@dfll_clk_init_data = internal global %struct.clk_init_data { ptr null, ptr @dfll_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.62 = private unnamed_addr constant [31 x i8] c"DFLL clock registration error\0A\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"of_clk_add_provider() failed\0A\00", align 1
@dfll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @dfll_clk_enable, ptr @dfll_clk_disable, ptr @dfll_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dfll_clk_recalc_rate, ptr null, ptr @dfll_clk_determine_rate, ptr null, ptr null, ptr @dfll_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.64 = private unnamed_addr constant [31 x i8] c"cannot enable DFLL in %s mode\0A\00", align 1
@mode_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"uninitialized\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"open_loop\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"closed_loop\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"%s: Cannot lock DFLL at rate 0\0A\00", align 1
@__func__.dfll_lock = private unnamed_addr constant [10 x i8] c"dfll_lock\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"%s: Cannot lock DFLL in %s mode\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"setting enable state failed\0A\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"setting disable state failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"cannot disable DFLL in %s mode\0A\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"%s: Cannot unlock DFLL in %s mode\0A\00", align 1
@__func__.dfll_unlock = private unnamed_addr constant [12 x i8] c"dfll_unlock\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"%s: Rate %lu is too low\0A\00", align 1
@__func__.dfll_calculate_rate_request = private unnamed_addr constant [28 x i8] c"dfll_calculate_rate_request\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"%s: Rate %lu is above dfll range\0A\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"%s: Cannot set DFLL rate in %s mode\0A\00", align 1
@__func__.dfll_request_rate = private unnamed_addr constant [18 x i8] c"dfll_request_rate\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"tegra_dfll_fcpu\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@enable_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @enable_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.80 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@lock_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lock_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.81 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@rate_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.82 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@attr_registers_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @attr_registers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.83 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"CONTROL REGISTERS:\0A\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"[0x%02x] = 0x%08x\0A\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"\0AI2C and INTR REGISTERS:\0A\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"\0AINTEGRATED I2C CONTROLLER REGISTERS:\0A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"\0ALUT:\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_tegra_dfll_register, ptr @__ksymtab_tegra_dfll_resume, ptr @__ksymtab_tegra_dfll_runtime_resume, ptr @__ksymtab_tegra_dfll_runtime_suspend, ptr @__ksymtab_tegra_dfll_suspend, ptr @__ksymtab_tegra_dfll_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %6) #10
  br label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %12) #10
  %15 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  br label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_enable(ptr noundef %18) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %19) #10
  %22 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  %23 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  br label %24

24:                                               ; preds = %21, %16, %14, %8
  %25 = phi i32 [ %6, %8 ], [ %12, %14 ], [ %19, %21 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #10
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #9
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ -16, %7 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_deassert(ptr noundef %5) #9
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %9 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 15
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !8
  %12 = load ptr, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !9
  tail call fastcc void @dfll_set_default_params(ptr noundef %3)
  %14 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void %17() #9
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  store i32 1, ptr %21, align 4
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cvb_table, ptr %27, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !8
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cvb_table, ptr %34, i32 0, i32 7, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !8
  %39 = load ptr, ptr %10, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !9
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %24
  tail call void %43() #9
  br label %46

46:                                               ; preds = %45, %24, %20
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr i8, ptr %47, i32 20
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !9
  %50 = and i32 %49, -268500737
  %51 = or i32 %50, 65280
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #9, !srcloc !8
  %54 = load ptr, ptr %10, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !9
  tail call fastcc void @dfll_init_out_if(ptr noundef %3)
  %56 = load ptr, ptr %3, align 4
  %57 = tail call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dfll_set_default_params(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 5
  %7 = add i32 %3, -1
  %8 = add i32 %7, %6
  %9 = udiv i32 %8, %6
  %10 = icmp ugt i32 %9, 255
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1400, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %9) #9, !srcloc !8
  %16 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 22
  %19 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %21, %18
  %23 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %22, %25
  %27 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 27
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 28
  %31 = load i8, ptr %30, align 4, !range !12
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 0, i32 16777216
  %34 = or i32 %29, %33
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !8
  %37 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 16
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.cvb_table, ptr %41, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #9, !srcloc !8
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cvb_table, ptr %48, i32 0, i32 7, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !8
  %53 = load ptr, ptr %13, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !9
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %12
  tail call void %57() #9
  br label %60

60:                                               ; preds = %59, %12
  %61 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 22
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr i8, ptr %63, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !8
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr i8, ptr %65, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 6) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dfll_init_out_if(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 36
  store i8 %3, ptr %4, align 1
  %5 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 34
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = add i8 %7, -1
  %9 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 37
  store i8 %8, ptr %9, align 2
  %10 = icmp ult i8 %3, %8
  %11 = zext i1 %10 to i8
  %12 = add i8 %3, %11
  %13 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 38
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !8
  %17 = load ptr, ptr %14, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !9
  %19 = load i8, ptr %13, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = load i8, ptr %9, align 2
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = or i32 %24, %21
  %26 = load i8, ptr %4, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or i32 %25, %28
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !8
  %32 = load ptr, ptr %14, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !9
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr i8, ptr %34, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #9, !srcloc !8
  %36 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #9, !srcloc !8
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr i8, ptr %39, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 3) #9, !srcloc !8
  %41 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 39
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %90

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %48, i32 0, i32 3, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 33
  %52 = load i32, ptr %51, align 4
  %53 = icmp uge i32 %46, %52
  %54 = icmp ne i32 %50, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %151

56:                                               ; preds = %44
  %57 = add i32 %46, -1
  %58 = add i32 %57, %50
  %59 = sub i32 %58, %52
  %60 = udiv i32 %59, %50
  %61 = icmp ugt i32 %60, 63
  br i1 %61, label %151, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %14, align 4
  %64 = getelementptr i8, ptr %63, i32 36
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !9
  %66 = and i32 %65, 64
  %67 = or i32 %66, %60
  %68 = load ptr, ptr %14, align 4
  %69 = getelementptr i8, ptr %68, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #9, !srcloc !8
  %70 = load ptr, ptr %14, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !9
  %72 = load ptr, ptr %14, align 4
  %73 = getelementptr i8, ptr %72, i32 36
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !9
  %75 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %76 = load i32, ptr %75, align 4
  %77 = icmp ult i32 %76, 3
  %78 = and i32 %74, 64
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %151

81:                                               ; preds = %62
  %82 = load ptr, ptr %14, align 4
  %83 = getelementptr i8, ptr %82, i32 36
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !9
  %85 = or i32 %84, 64
  %86 = load ptr, ptr %14, align 4
  %87 = getelementptr i8, ptr %86, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #9, !srcloc !8
  %88 = load ptr, ptr %14, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !9
  br label %151

90:                                               ; preds = %1
  %91 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 5
  br label %93

93:                                               ; preds = %102, %90
  %94 = phi i32 [ 0, %90 ], [ %111, %102 ]
  %95 = load i8, ptr %4, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i8, ptr %9, align 2
  %100 = zext i8 %99 to i32
  %101 = tail call i32 @llvm.umin.i32(i32 %94, i32 %100) #9
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i32 [ %96, %93 ], [ %101, %98 ]
  %104 = load ptr, ptr %91, align 4
  %105 = getelementptr %struct.tegra_dfll, ptr %0, i32 0, i32 32, i32 %103
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @regulator_list_hardware_vsel(ptr noundef %104, i32 noundef %106) #9
  %108 = load ptr, ptr %92, align 4
  %109 = shl i32 %94, 2
  %110 = getelementptr i8, ptr %108, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %107) #9, !srcloc !8
  %111 = add nuw nsw i32 %94, 1
  %112 = icmp eq i32 %111, 33
  br i1 %112, label %113, label %93

113:                                              ; preds = %102
  %114 = load ptr, ptr %36, align 4
  %115 = getelementptr i8, ptr %114, i32 64
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #9, !srcloc !9
  %117 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 31
  %118 = load i32, ptr %117, align 4
  %119 = icmp ugt i32 %118, 127
  %120 = or i32 %118, 1024
  %121 = shl i32 %118, 1
  %122 = select i1 %119, i32 %120, i32 %121
  %123 = or i32 %122, 1077248
  %124 = load ptr, ptr %36, align 4
  %125 = getelementptr i8, ptr %124, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #9, !srcloc !8
  %126 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 30
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %36, align 4
  %129 = getelementptr i8, ptr %128, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #9, !srcloc !8
  %130 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 13
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 29
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %133, 3
  %135 = add i32 %131, -1
  %136 = add i32 %135, %134
  %137 = udiv i32 %136, %134
  %138 = icmp ugt i32 %134, %136
  %139 = icmp ugt i32 %137, 65535
  %140 = or i1 %139, %138
  br i1 %140, label %141, label %142, !prof !10

141:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 723, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

142:                                              ; preds = %113
  %143 = shl nuw i32 %137, 16
  %144 = add i32 %143, -65535
  %145 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %146, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %144) #9, !srcloc !8
  %148 = load ptr, ptr %36, align 4
  %149 = getelementptr i8, ptr %148, i32 64
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #9, !srcloc !9
  br label %151

151:                                              ; preds = %142, %81, %62, %56, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = icmp eq ptr %1, null
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %9, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.4) #10
  br label %677

12:                                               ; preds = %2
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 444, i32 noundef 3520) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %677, label %15

15:                                               ; preds = %12
  store ptr %10, ptr %13, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = tail call ptr @__devm_reset_control_get(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %19 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 11
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6) #10
  %23 = load ptr, ptr %19, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %677

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 22
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %29, ptr noundef nonnull @.str.24, ptr noundef %26, i32 noundef 1, i32 noundef 0) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.24, i32 noundef %30) #10
  br label %34

34:                                               ; preds = %32, %25
  %35 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 23
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.25, ptr noundef %35, i32 noundef 1, i32 noundef 0) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef %39) #10
  br label %43

43:                                               ; preds = %41, %34
  %44 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 24
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 25
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef nonnull @.str.26, ptr noundef %44, i32 noundef 1, i32 noundef 0) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, i32 noundef %48) #10
  br label %52

52:                                               ; preds = %50, %43
  %53 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 25
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %56, ptr noundef nonnull @.str.27, ptr noundef %53, i32 noundef 1, i32 noundef 0) #9
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef %57) #10
  br label %61

61:                                               ; preds = %59, %52
  %62 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 26
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 25
  %65 = load ptr, ptr %64, align 8
  %66 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %65, ptr noundef nonnull @.str.28, ptr noundef %62, i32 noundef 1, i32 noundef 0) #9
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, i32 noundef %66) #10
  br label %70

70:                                               ; preds = %68, %61
  %71 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 27
  %72 = load ptr, ptr %13, align 4
  %73 = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 25
  %74 = load ptr, ptr %73, align 8
  %75 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %74, ptr noundef nonnull @.str.29, ptr noundef %71, i32 noundef 1, i32 noundef 0) #9
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef %75) #10
  br label %79

79:                                               ; preds = %77, %70
  %80 = load ptr, ptr %13, align 4
  %81 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 25
  %82 = load ptr, ptr %81, align 8
  %83 = tail call ptr @of_find_property(ptr noundef %82, ptr noundef nonnull @.str.30, ptr noundef null) #9
  %84 = icmp ne ptr %83, null
  %85 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 28
  %86 = zext i1 %84 to i8
  store i8 %86, ptr %85, align 4
  %87 = load ptr, ptr %13, align 4
  %88 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 25
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 19
  %91 = tail call i32 @of_property_read_string(ptr noundef %89, ptr noundef nonnull @.str.31, ptr noundef %90) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %79
  %94 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.32) #10
  br label %102

95:                                               ; preds = %79
  %96 = or i32 %39, %30
  %97 = or i32 %96, %48
  %98 = or i32 %97, %57
  %99 = or i32 %98, %66
  %100 = or i32 %99, %75
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95, %93
  %103 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.7) #10
  br label %677

104:                                              ; preds = %95
  %105 = load ptr, ptr %13, align 4
  %106 = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 25
  %107 = load ptr, ptr %106, align 8
  %108 = tail call ptr @of_find_property(ptr noundef %107, ptr noundef nonnull @.str.8, ptr noundef null) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %192, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 39
  store i32 1, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !14
  %112 = load ptr, ptr %17, align 4
  %113 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %112, i32 0, i32 3, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %112, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 33, i32 0
  store i32 %118, ptr %121, align 4
  %122 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %112, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %112, i32 0, i32 3, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, %123
  %127 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 33, i32 1
  store i32 %126, ptr %127, align 4
  br label %130

128:                                              ; preds = %116, %110
  %129 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.34) #10
  br label %190

130:                                              ; preds = %130, %120
  %131 = phi i32 [ 2, %120 ], [ %140, %130 ]
  %132 = load ptr, ptr %17, align 4
  %133 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %132, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %132, i32 0, i32 3, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = mul i32 %131, %136
  %138 = add i32 %137, %134
  %139 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 33, i32 %131
  store i32 %138, ptr %139, align 4
  %140 = add nuw nsw i32 %131, 1
  %141 = icmp eq i32 %140, 33
  br i1 %141, label %142, label %130

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 44
  %144 = load ptr, ptr %13, align 4
  %145 = getelementptr inbounds %struct.device, ptr %144, i32 0, i32 25
  %146 = load ptr, ptr %145, align 8
  %147 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %146, ptr noundef nonnull @.str.35, ptr noundef %143, i32 noundef 1, i32 noundef 0) #9
  %148 = icmp slt i32 %147, 0
  %149 = load ptr, ptr %13, align 4
  br i1 %148, label %150, label %152

150:                                              ; preds = %142
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, i32 noundef %147) #10
  %151 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.36) #10
  br label %190

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.device, ptr %149, i32 0, i32 25
  %154 = load ptr, ptr %153, align 8
  %155 = call i32 @of_property_read_variable_u32_array(ptr noundef %154, ptr noundef nonnull @.str.37, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #9
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.37, i32 noundef %155) #10
  %159 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.38) #10
  br label %190

160:                                              ; preds = %152
  %161 = load i32, ptr %8, align 4
  %162 = udiv i32 1000000000, %161
  %163 = shl i32 %162, 5
  %164 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 40
  store i32 %163, ptr %164, align 4
  %165 = load ptr, ptr %13, align 4
  %166 = call ptr @devm_pinctrl_get(ptr noundef %165) #9
  %167 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 41
  store ptr %166, ptr %167, align 4
  %168 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.39) #10
  %171 = load ptr, ptr %167, align 4
  %172 = ptrtoint ptr %171 to i32
  br label %190

173:                                              ; preds = %160
  %174 = call ptr @pinctrl_lookup_state(ptr noundef %166, ptr noundef nonnull @.str.40) #9
  %175 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 42
  store ptr %174, ptr %175, align 4
  %176 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.41) #10
  %179 = load ptr, ptr %175, align 4
  %180 = ptrtoint ptr %179 to i32
  br label %190

181:                                              ; preds = %173
  %182 = load ptr, ptr %167, align 4
  %183 = call ptr @pinctrl_lookup_state(ptr noundef %182, ptr noundef nonnull @.str.42) #9
  %184 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 43
  store ptr %183, ptr %184, align 4
  %185 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.43) #10
  %188 = load ptr, ptr %184, align 4
  %189 = ptrtoint ptr %188 to i32
  br label %190

190:                                              ; preds = %186, %181, %177, %169, %157, %150, %128
  %191 = phi i32 [ %172, %169 ], [ %180, %177 ], [ %189, %186 ], [ -22, %157 ], [ -22, %150 ], [ -22, %128 ], [ 0, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %229

192:                                              ; preds = %104
  %193 = load ptr, ptr %13, align 4
  %194 = tail call ptr @devm_regulator_get(ptr noundef %193, ptr noundef nonnull @.str.9) #9
  %195 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 6
  store ptr %194, ptr %195, align 4
  %196 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.10) #10
  %199 = load ptr, ptr %195, align 4
  %200 = ptrtoint ptr %199 to i32
  br label %677

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 39
  store i32 0, ptr %202, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !14
  %203 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 29
  %204 = load ptr, ptr %13, align 4
  %205 = getelementptr inbounds %struct.device, ptr %204, i32 0, i32 25
  %206 = load ptr, ptr %205, align 8
  %207 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %206, ptr noundef nonnull @.str.44, ptr noundef %203, i32 noundef 1, i32 noundef 0) #9
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.44, i32 noundef %207) #10
  br label %227

211:                                              ; preds = %201
  %212 = load ptr, ptr %195, align 4
  %213 = tail call ptr @regulator_get_regmap(ptr noundef %212) #9
  %214 = tail call ptr @regmap_get_device(ptr noundef %213) #9
  %215 = getelementptr i8, ptr %214, i32 -30
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 31
  store i32 %217, ptr %218, align 4
  %219 = load ptr, ptr %195, align 4
  %220 = call i32 @regulator_get_hardware_vsel_register(ptr noundef %219, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %211
  %223 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.45) #10
  br label %227

224:                                              ; preds = %211
  %225 = load i32, ptr %6, align 4
  %226 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 30
  store i32 %225, ptr %226, align 4
  br label %227

227:                                              ; preds = %224, %222, %209
  %228 = phi i32 [ -22, %222 ], [ 0, %224 ], [ -22, %209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %229

229:                                              ; preds = %227, %190
  %230 = phi i32 [ %191, %190 ], [ %228, %227 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %677

232:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 -1, ptr %5, align 4
  %233 = load ptr, ptr %17, align 4
  %234 = load ptr, ptr %233, align 4
  %235 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %234, ptr noundef nonnull %5) #9
  %236 = icmp ugt ptr %235, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull @.str.46) #10
  br label %465

239:                                              ; preds = %232
  %240 = call i32 @dev_pm_opp_get_voltage(ptr noundef %235) #9
  call void @dev_pm_opp_put(ptr noundef %235) #9
  %241 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 39
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %322

244:                                              ; preds = %239
  %245 = load ptr, ptr %17, align 4
  %246 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %245, i32 0, i32 2
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.cvb_table, ptr %247, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  %250 = mul i32 %249, 1000
  br label %251

251:                                              ; preds = %259, %244
  %252 = phi i8 [ 33, %244 ], [ %265, %259 ]
  %253 = phi i32 [ 0, %244 ], [ %266, %259 ]
  %254 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 33, i32 %253
  %255 = load i32, ptr %254, align 4
  %256 = urem i32 %255, 1000
  %257 = sub i32 %255, %256
  %258 = icmp ugt i32 %257, %240
  br i1 %258, label %268, label %259

259:                                              ; preds = %251
  %260 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 32, i32 %253
  store i32 %253, ptr %260, align 4
  %261 = icmp ne i8 %252, 33
  %262 = icmp ult i32 %257, %250
  %263 = select i1 %261, i1 true, i1 %262
  %264 = trunc i32 %253 to i8
  %265 = select i1 %263, i8 %252, i8 %264
  %266 = add nuw nsw i32 %253, 1
  %267 = icmp eq i32 %266, 33
  br i1 %267, label %268, label %251

268:                                              ; preds = %259, %251
  %269 = phi i32 [ %253, %251 ], [ 33, %259 ]
  %270 = phi i8 [ %252, %251 ], [ %265, %259 ]
  %271 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 34
  store i32 %269, ptr %271, align 4
  %272 = icmp eq i8 %270, 33
  br i1 %272, label %277, label %273

273:                                              ; preds = %268
  %274 = zext i8 %270 to i32
  %275 = add nuw nsw i32 %274, 1
  %276 = icmp ult i32 %275, %269
  br i1 %276, label %284, label %277

277:                                              ; preds = %273, %268
  %278 = load ptr, ptr %13, align 4
  %279 = load ptr, ptr %17, align 4
  %280 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.cvb_table, ptr %281, i32 0, i32 2
  %283 = load i32, ptr %282, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.47, i32 noundef %283) #10
  br label %465

284:                                              ; preds = %273
  %285 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 35
  store i8 %270, ptr %285, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %286 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 33, i32 %274
  %287 = load i32, ptr %286, align 4
  store i32 0, ptr %4, align 4
  %288 = load ptr, ptr %17, align 4
  %289 = load ptr, ptr %288, align 4
  %290 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %289, ptr noundef nonnull %4) #9
  %291 = icmp ugt ptr %290, inttoptr (i32 -4096 to ptr)
  br i1 %291, label %298, label %292

292:                                              ; preds = %284
  %293 = call i32 @dev_pm_opp_get_voltage(ptr noundef %290) #9
  call void @dev_pm_opp_put(ptr noundef %290) #9
  %294 = icmp ne i32 %293, 0
  %295 = icmp ugt i32 %293, %287
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %313

298:                                              ; preds = %284
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %313

299:                                              ; preds = %304
  %300 = call i32 @dev_pm_opp_get_voltage(ptr noundef %309) #9
  call void @dev_pm_opp_put(ptr noundef %309) #9
  %301 = icmp ne i32 %300, 0
  %302 = icmp ugt i32 %300, %287
  %303 = select i1 %301, i1 %302, i1 false
  br i1 %303, label %311, label %304

304:                                              ; preds = %299, %292
  %305 = load i32, ptr %4, align 4
  %306 = add i32 %305, 1
  store i32 %306, ptr %4, align 4
  %307 = load ptr, ptr %17, align 4
  %308 = load ptr, ptr %307, align 4
  %309 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %308, ptr noundef nonnull %4) #9
  %310 = icmp ugt ptr %309, inttoptr (i32 -4096 to ptr)
  br i1 %310, label %311, label %299

311:                                              ; preds = %304, %299
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %312 = icmp eq i32 %305, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %311, %298, %297
  %314 = load ptr, ptr %13, align 4
  %315 = load ptr, ptr %17, align 4
  %316 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %315, i32 0, i32 2
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.cvb_table, ptr %317, i32 0, i32 2
  %319 = load i32, ptr %318, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %314, ptr noundef nonnull @.str.48, i32 noundef %319) #10
  br label %465

320:                                              ; preds = %311
  %321 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 14
  store i32 %305, ptr %321, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %470

322:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %323 = load ptr, ptr %17, align 4
  %324 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %323, i32 0, i32 2
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.cvb_table, ptr %325, i32 0, i32 2
  %327 = load i32, ptr %326, align 4
  %328 = mul i32 %327, 1000
  %329 = call fastcc i32 @find_vdd_map_entry_exact(ptr noundef %13, i32 noundef %328) #9
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %466, label %331

331:                                              ; preds = %322
  %332 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 32
  store i32 %329, ptr %332, align 4
  %333 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 35
  store i8 0, ptr %333, align 4
  store i32 0, ptr %3, align 4
  %334 = load ptr, ptr %17, align 4
  %335 = load ptr, ptr %334, align 4
  %336 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %335, ptr noundef nonnull %3) #9
  %337 = icmp ugt ptr %336, inttoptr (i32 -4096 to ptr)
  br i1 %337, label %438, label %338

338:                                              ; preds = %331
  %339 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 14
  %340 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 6
  br label %341

341:                                              ; preds = %427, %338
  %342 = phi ptr [ %336, %338 ], [ %432, %427 ]
  %343 = phi i32 [ %328, %338 ], [ %413, %427 ]
  %344 = phi i32 [ 1, %338 ], [ %425, %427 ]
  %345 = call i32 @dev_pm_opp_get_voltage(ptr noundef %342) #9
  %346 = load ptr, ptr %17, align 4
  %347 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %346, i32 0, i32 2
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.cvb_table, ptr %348, i32 0, i32 2
  %350 = load i32, ptr %349, align 4
  %351 = mul i32 %350, 1000
  %352 = icmp ugt i32 %345, %351
  br i1 %352, label %355, label %353

353:                                              ; preds = %341
  %354 = call i32 @dev_pm_opp_get_freq(ptr noundef %342) #9
  store i32 %354, ptr %339, align 4
  br label %355

355:                                              ; preds = %353, %341
  call void @dev_pm_opp_put(ptr noundef %342) #9
  %356 = sub i32 %240, %343
  %357 = sub i32 33, %344
  %358 = udiv i32 %356, %357
  %359 = icmp ugt i32 %357, %356
  %360 = select i1 %359, i32 1, i32 %358
  %361 = add i32 %360, %343
  %362 = icmp ult i32 %361, %345
  br i1 %362, label %363, label %410

363:                                              ; preds = %401, %355
  %364 = phi i32 [ %408, %401 ], [ %361, %355 ]
  %365 = phi i32 [ %402, %401 ], [ %344, %355 ]
  %366 = load i32, ptr %241, align 4
  %367 = icmp eq i32 %366, 1
  br i1 %367, label %368, label %369, !prof !10

368:                                              ; preds = %363
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1611, i32 noundef 9, ptr noundef null) #9
  br label %466

369:                                              ; preds = %363
  %370 = load ptr, ptr %17, align 4
  %371 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %370, i32 0, i32 3, i32 1
  %372 = load i32, ptr %371, align 4
  %373 = sdiv i32 %364, %372
  %374 = load ptr, ptr %340, align 4
  %375 = call i32 @regulator_count_voltages(ptr noundef %374) #9
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %391

377:                                              ; preds = %388, %369
  %378 = phi i32 [ %389, %388 ], [ 0, %369 ]
  %379 = load ptr, ptr %340, align 4
  %380 = call i32 @regulator_list_voltage(ptr noundef %379, i32 noundef %378) #9
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %391, label %382

382:                                              ; preds = %377
  %383 = load ptr, ptr %17, align 4
  %384 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %383, i32 0, i32 3, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = sdiv i32 %380, %385
  %387 = icmp sgt i32 %373, %386
  br i1 %387, label %388, label %393

388:                                              ; preds = %382
  %389 = add nuw nsw i32 %378, 1
  %390 = icmp eq i32 %389, %375
  br i1 %390, label %391, label %377

391:                                              ; preds = %388, %377, %369
  %392 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.51, i32 noundef %364) #10
  br label %466

393:                                              ; preds = %382
  %394 = add i32 %365, -1
  %395 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 32, i32 %394
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %378, %396
  br i1 %397, label %401, label %398

398:                                              ; preds = %393
  %399 = add i32 %365, 1
  %400 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 32, i32 %365
  store i32 %378, ptr %400, align 4
  br label %401

401:                                              ; preds = %398, %393
  %402 = phi i32 [ %399, %398 ], [ %365, %393 ]
  %403 = sub i32 %240, %364
  %404 = sub i32 33, %402
  %405 = udiv i32 %403, %404
  %406 = icmp ugt i32 %404, %403
  %407 = select i1 %406, i32 1, i32 %405
  %408 = add i32 %407, %364
  %409 = icmp ult i32 %408, %345
  br i1 %409, label %363, label %410

410:                                              ; preds = %401, %355
  %411 = phi i32 [ %344, %355 ], [ %402, %401 ]
  %412 = icmp eq i32 %411, 32
  %413 = select i1 %412, i32 %240, i32 %345
  %414 = call fastcc i32 @find_vdd_map_entry_exact(ptr noundef %13, i32 noundef %413) #9
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %466, label %416

416:                                              ; preds = %410
  %417 = add i32 %411, -1
  %418 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 32, i32 %417
  %419 = load i32, ptr %418, align 4
  %420 = icmp eq i32 %414, %419
  br i1 %420, label %424, label %421

421:                                              ; preds = %416
  %422 = add i32 %411, 1
  %423 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 32, i32 %411
  store i32 %414, ptr %423, align 4
  br label %424

424:                                              ; preds = %421, %416
  %425 = phi i32 [ %422, %421 ], [ %411, %416 ]
  %426 = icmp ult i32 %413, %240
  br i1 %426, label %427, label %434

427:                                              ; preds = %424
  %428 = load i32, ptr %3, align 4
  %429 = add i32 %428, 1
  store i32 %429, ptr %3, align 4
  %430 = load ptr, ptr %17, align 4
  %431 = load ptr, ptr %430, align 4
  %432 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %431, ptr noundef nonnull %3) #9
  %433 = icmp ugt ptr %432, inttoptr (i32 -4096 to ptr)
  br i1 %433, label %434, label %341

434:                                              ; preds = %427, %424
  %435 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 34
  store i32 %425, ptr %435, align 4
  %436 = load i32, ptr %339, align 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %448, label %443

438:                                              ; preds = %331
  %439 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 34
  store i32 1, ptr %439, align 4
  %440 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 14
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %448, label %445

443:                                              ; preds = %434
  %444 = icmp sgt i32 %425, 0
  br i1 %444, label %445, label %467

445:                                              ; preds = %443, %438
  %446 = phi ptr [ %435, %443 ], [ %439, %438 ]
  %447 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 6
  br label %455

448:                                              ; preds = %438, %434
  %449 = load ptr, ptr %13, align 4
  %450 = load ptr, ptr %17, align 4
  %451 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %450, i32 0, i32 2
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr inbounds %struct.cvb_table, ptr %452, i32 0, i32 2
  %454 = load i32, ptr %453, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %449, ptr noundef nonnull @.str.49, i32 noundef %454) #10
  br label %466

455:                                              ; preds = %455, %445
  %456 = phi i32 [ 0, %445 ], [ %462, %455 ]
  %457 = load ptr, ptr %447, align 4
  %458 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 32, i32 %456
  %459 = load i32, ptr %458, align 4
  %460 = call i32 @regulator_list_voltage(ptr noundef %457, i32 noundef %459) #9
  %461 = getelementptr %struct.tegra_dfll, ptr %13, i32 0, i32 33, i32 %456
  store i32 %460, ptr %461, align 4
  %462 = add nuw nsw i32 %456, 1
  %463 = load i32, ptr %446, align 4
  %464 = icmp slt i32 %462, %463
  br i1 %464, label %455, label %467

465:                                              ; preds = %313, %277, %237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %468

466:                                              ; preds = %448, %410, %391, %368, %322
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %468

467:                                              ; preds = %455, %443
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %470

468:                                              ; preds = %466, %465
  %469 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %469, ptr noundef nonnull @.str.11) #10
  br label %677

470:                                              ; preds = %467, %320
  %471 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %472 = icmp eq ptr %471, null
  %473 = load ptr, ptr %13, align 4
  br i1 %472, label %474, label %475

474:                                              ; preds = %470
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %473, ptr noundef nonnull @.str.12) #10
  br label %677

475:                                              ; preds = %470
  %476 = load i32, ptr %471, align 4
  %477 = getelementptr inbounds %struct.resource, ptr %471, i32 0, i32 1
  %478 = load i32, ptr %477, align 4
  %479 = sub i32 1, %476
  %480 = add i32 %479, %478
  %481 = call ptr @devm_ioremap(ptr noundef %473, i32 noundef %476, i32 noundef %480) #9
  %482 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 2
  store ptr %481, ptr %482, align 4
  %483 = icmp eq ptr %481, null
  br i1 %483, label %484, label %486

484:                                              ; preds = %475
  %485 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %485, ptr noundef nonnull @.str.13) #10
  br label %677

486:                                              ; preds = %475
  %487 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #9
  %488 = icmp eq ptr %487, null
  %489 = load ptr, ptr %13, align 4
  br i1 %488, label %490, label %491

490:                                              ; preds = %486
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %489, ptr noundef nonnull @.str.14) #10
  br label %677

491:                                              ; preds = %486
  %492 = load i32, ptr %487, align 4
  %493 = getelementptr inbounds %struct.resource, ptr %487, i32 0, i32 1
  %494 = load i32, ptr %493, align 4
  %495 = sub i32 1, %492
  %496 = add i32 %495, %494
  %497 = call ptr @devm_ioremap(ptr noundef %489, i32 noundef %492, i32 noundef %496) #9
  %498 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 3
  store ptr %497, ptr %498, align 4
  %499 = icmp eq ptr %497, null
  br i1 %499, label %500, label %502

500:                                              ; preds = %491
  %501 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %501, ptr noundef nonnull @.str.15) #10
  br label %677

502:                                              ; preds = %491
  %503 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 2) #9
  %504 = icmp eq ptr %503, null
  %505 = load ptr, ptr %13, align 4
  br i1 %504, label %506, label %507

506:                                              ; preds = %502
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %505, ptr noundef nonnull @.str.16) #10
  br label %677

507:                                              ; preds = %502
  %508 = load i32, ptr %503, align 4
  %509 = getelementptr inbounds %struct.resource, ptr %503, i32 0, i32 1
  %510 = load i32, ptr %509, align 4
  %511 = sub i32 1, %508
  %512 = add i32 %511, %510
  %513 = call ptr @devm_ioremap(ptr noundef %505, i32 noundef %508, i32 noundef %512) #9
  %514 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 4
  store ptr %513, ptr %514, align 4
  %515 = icmp eq ptr %513, null
  br i1 %515, label %516, label %518

516:                                              ; preds = %507
  %517 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %517, ptr noundef nonnull @.str.17) #10
  br label %677

518:                                              ; preds = %507
  %519 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 3) #9
  %520 = icmp eq ptr %519, null
  %521 = load ptr, ptr %13, align 4
  br i1 %520, label %522, label %523

522:                                              ; preds = %518
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %521, ptr noundef nonnull @.str.18) #10
  br label %677

523:                                              ; preds = %518
  %524 = load i32, ptr %519, align 4
  %525 = getelementptr inbounds %struct.resource, ptr %519, i32 0, i32 1
  %526 = load i32, ptr %525, align 4
  %527 = sub i32 1, %524
  %528 = add i32 %527, %526
  %529 = call ptr @devm_ioremap(ptr noundef %521, i32 noundef %524, i32 noundef %528) #9
  %530 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 5
  store ptr %529, ptr %530, align 4
  %531 = icmp eq ptr %529, null
  %532 = load ptr, ptr %13, align 4
  br i1 %531, label %533, label %534

533:                                              ; preds = %523
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %532, ptr noundef nonnull @.str.19) #10
  br label %677

534:                                              ; preds = %523
  %535 = call ptr @devm_clk_get(ptr noundef %532, ptr noundef nonnull @.str.52) #9
  %536 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 8
  store ptr %535, ptr %536, align 4
  %537 = icmp ugt ptr %535, inttoptr (i32 -4096 to ptr)
  %538 = load ptr, ptr %13, align 4
  br i1 %537, label %539, label %540

539:                                              ; preds = %534
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %538, ptr noundef nonnull @.str.53) #10
  br label %555

540:                                              ; preds = %534
  %541 = call ptr @devm_clk_get(ptr noundef %538, ptr noundef nonnull @.str.54) #9
  %542 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 7
  store ptr %541, ptr %542, align 4
  %543 = icmp ugt ptr %541, inttoptr (i32 -4096 to ptr)
  %544 = load ptr, ptr %13, align 4
  br i1 %543, label %545, label %546

545:                                              ; preds = %540
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %544, ptr noundef nonnull @.str.55) #10
  br label %555

546:                                              ; preds = %540
  %547 = call ptr @devm_clk_get(ptr noundef %544, ptr noundef nonnull @.str.56) #9
  %548 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 9
  store ptr %547, ptr %548, align 4
  %549 = icmp ugt ptr %547, inttoptr (i32 -4096 to ptr)
  br i1 %549, label %550, label %552

550:                                              ; preds = %546
  %551 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %551, ptr noundef nonnull @.str.57) #10
  br label %555

552:                                              ; preds = %546
  %553 = call i32 @clk_get_rate(ptr noundef %547) #9
  %554 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 13
  store i32 %553, ptr %554, align 4
  br label %561

555:                                              ; preds = %550, %545, %539
  %556 = phi ptr [ %536, %539 ], [ %542, %545 ], [ %548, %550 ]
  %557 = load ptr, ptr %556, align 4
  %558 = icmp eq ptr %557, null
  br i1 %558, label %561, label %559

559:                                              ; preds = %555
  %560 = ptrtoint ptr %557 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20) #10
  br label %677

561:                                              ; preds = %555, %552
  %562 = load ptr, ptr %536, align 4
  %563 = call i32 @clk_get_rate(ptr noundef %562) #9
  %564 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 12
  store i32 %563, ptr %564, align 4
  %565 = icmp eq i32 %563, 51000000
  br i1 %565, label %568, label %566

566:                                              ; preds = %561
  %567 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %567, ptr noundef nonnull @.str.58, i32 noundef %563, i32 noundef 51000000) #10
  br label %677

568:                                              ; preds = %561
  %569 = load ptr, ptr %19, align 4
  %570 = call i32 @reset_control_deassert(ptr noundef %569) #9
  %571 = load ptr, ptr %536, align 4
  %572 = call i32 @clk_prepare(ptr noundef %571) #9
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %576, label %574

574:                                              ; preds = %568
  %575 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %575, ptr noundef nonnull @.str.59) #10
  br label %677

576:                                              ; preds = %568
  %577 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 7
  %578 = load ptr, ptr %577, align 4
  %579 = call i32 @clk_prepare(ptr noundef %578) #9
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %583, label %581

581:                                              ; preds = %576
  %582 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %582, ptr noundef nonnull @.str.60) #10
  br label %631

583:                                              ; preds = %576
  %584 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 9
  %585 = load ptr, ptr %584, align 4
  %586 = call i32 @clk_prepare(ptr noundef %585) #9
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %583
  %589 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %589, ptr noundef nonnull @.str.61) #10
  %590 = load ptr, ptr %577, align 4
  call void @clk_unprepare(ptr noundef %590) #9
  br label %631

591:                                              ; preds = %583
  %592 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 21
  store i32 0, ptr %592, align 4
  %593 = load ptr, ptr %13, align 4
  call void @pm_runtime_enable(ptr noundef %593) #9
  %594 = load ptr, ptr %13, align 4
  %595 = call i32 @__pm_runtime_resume(ptr noundef %594, i32 noundef 4) #9
  %596 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 15
  store i32 1, ptr %596, align 4
  %597 = load ptr, ptr %482, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %597, i32 0) #9, !srcloc !8
  %598 = load ptr, ptr %482, align 4
  %599 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %598) #9, !srcloc !9
  call fastcc void @dfll_set_default_params(ptr noundef %13) #9
  %600 = load ptr, ptr %17, align 4
  %601 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %600, i32 0, i32 4
  %602 = load ptr, ptr %601, align 4
  %603 = icmp eq ptr %602, null
  br i1 %603, label %605, label %604

604:                                              ; preds = %591
  call void %602() #9
  br label %605

605:                                              ; preds = %604, %591
  %606 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 16
  %607 = load i32, ptr %606, align 4
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %636, label %609

609:                                              ; preds = %605
  store i32 1, ptr %606, align 4
  %610 = load ptr, ptr %17, align 4
  %611 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %610, i32 0, i32 2
  %612 = load ptr, ptr %611, align 4
  %613 = getelementptr inbounds %struct.cvb_table, ptr %612, i32 0, i32 7
  %614 = load i32, ptr %613, align 4
  %615 = load ptr, ptr %482, align 4
  %616 = getelementptr i8, ptr %615, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %616, i32 %614) #9, !srcloc !8
  %617 = load ptr, ptr %17, align 4
  %618 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %617, i32 0, i32 2
  %619 = load ptr, ptr %618, align 4
  %620 = getelementptr inbounds %struct.cvb_table, ptr %619, i32 0, i32 7, i32 2
  %621 = load i32, ptr %620, align 4
  %622 = load ptr, ptr %482, align 4
  %623 = getelementptr i8, ptr %622, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %623, i32 %621) #9, !srcloc !8
  %624 = load ptr, ptr %482, align 4
  %625 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %624) #9, !srcloc !9
  %626 = load ptr, ptr %17, align 4
  %627 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %626, i32 0, i32 6
  %628 = load ptr, ptr %627, align 4
  %629 = icmp eq ptr %628, null
  br i1 %629, label %636, label %630

630:                                              ; preds = %609
  call void %628() #9
  br label %636

631:                                              ; preds = %588, %581
  %632 = phi i32 [ %579, %581 ], [ %586, %588 ]
  %633 = load ptr, ptr %536, align 4
  call void @clk_unprepare(ptr noundef %633) #9
  %634 = load ptr, ptr %19, align 4
  %635 = call i32 @reset_control_assert(ptr noundef %634) #9
  br label %677

636:                                              ; preds = %630, %609, %605
  %637 = load ptr, ptr %482, align 4
  %638 = getelementptr i8, ptr %637, i32 20
  %639 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %638) #9, !srcloc !9
  %640 = and i32 %639, -268500737
  %641 = or i32 %640, 65280
  %642 = load ptr, ptr %482, align 4
  %643 = getelementptr i8, ptr %642, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %643, i32 %641) #9, !srcloc !8
  %644 = load ptr, ptr %482, align 4
  %645 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %644) #9, !srcloc !9
  call fastcc void @dfll_init_out_if(ptr noundef %13) #9
  %646 = load ptr, ptr %13, align 4
  %647 = call i32 @__pm_runtime_idle(ptr noundef %646, i32 noundef 4) #9
  %648 = load ptr, ptr %90, align 4
  store ptr %648, ptr @dfll_clk_init_data, align 4
  %649 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 18
  %650 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 18, i32 2
  store ptr @dfll_clk_init_data, ptr %650, align 4
  %651 = load ptr, ptr %13, align 4
  %652 = call ptr @clk_register(ptr noundef %651, ptr noundef %649) #9
  %653 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 10
  store ptr %652, ptr %653, align 4
  %654 = icmp ugt ptr %652, inttoptr (i32 -4096 to ptr)
  %655 = load ptr, ptr %13, align 4
  br i1 %654, label %656, label %657

656:                                              ; preds = %636
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %655, ptr noundef nonnull @.str.62) #10
  br label %665

657:                                              ; preds = %636
  %658 = getelementptr inbounds %struct.device, ptr %655, i32 0, i32 25
  %659 = load ptr, ptr %658, align 8
  %660 = call i32 @of_clk_add_provider(ptr noundef %659, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %652) #9
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %667, label %662

662:                                              ; preds = %657
  %663 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %663, ptr noundef nonnull @.str.63) #10
  %664 = load ptr, ptr %653, align 4
  call void @clk_unregister(ptr noundef %664) #9
  br label %665

665:                                              ; preds = %662, %656
  %666 = phi i32 [ %660, %662 ], [ -22, %656 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21) #10
  br label %677

667:                                              ; preds = %657
  %668 = load i32, ptr %596, align 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %677, label %670

670:                                              ; preds = %667
  %671 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.78, ptr noundef null) #9
  %672 = getelementptr inbounds %struct.tegra_dfll, ptr %13, i32 0, i32 17
  store ptr %671, ptr %672, align 4
  %673 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.79, i16 noundef zeroext 420, ptr noundef %671, ptr noundef nonnull %13, ptr noundef nonnull @enable_fops) #9
  %674 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.80, i16 noundef zeroext 292, ptr noundef %671, ptr noundef nonnull %13, ptr noundef nonnull @lock_fops) #9
  %675 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.81, i16 noundef zeroext 292, ptr noundef %671, ptr noundef nonnull %13, ptr noundef nonnull @rate_fops) #9
  %676 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 292, ptr noundef %671, ptr noundef nonnull %13, ptr noundef nonnull @attr_registers_fops) #9
  br label %677

677:                                              ; preds = %670, %667, %665, %631, %574, %566, %559, %533, %522, %516, %506, %500, %490, %484, %474, %468, %229, %197, %102, %21, %12, %11
  %678 = phi i32 [ %24, %21 ], [ -22, %102 ], [ -22, %468 ], [ %560, %559 ], [ %666, %665 ], [ -19, %533 ], [ -19, %522 ], [ -19, %516 ], [ -19, %506 ], [ -19, %500 ], [ -19, %490 ], [ -19, %484 ], [ -19, %474 ], [ %200, %197 ], [ -22, %11 ], [ -12, %12 ], [ %230, %229 ], [ 0, %667 ], [ 0, %670 ], [ %632, %631 ], [ %572, %574 ], [ -22, %566 ]
  ret i32 %678
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_dfll_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.22) #10
  br label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  tail call void @debugfs_remove(ptr noundef %11) #9
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  tail call void @of_clk_del_provider(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_unregister(ptr noundef %16) #9
  store ptr null, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #9
  %18 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_unprepare(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_unprepare(ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_unprepare(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @reset_control_assert(ptr noundef %25) #9
  %27 = getelementptr inbounds %struct.tegra_dfll, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %9, %7
  %30 = phi ptr [ inttoptr (i32 -16 to ptr), %7 ], [ %28, %9 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_hardware_vsel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_hardware_vsel_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_vdd_map_entry_exact(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 39
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1583, i32 noundef 9, ptr noundef null) #9
  br label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %9, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sdiv i32 %1, %11
  %13 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regulator_count_voltages(ptr noundef %14) #9
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %28, %7
  %18 = phi i32 [ %29, %28 ], [ 0, %7 ]
  %19 = load ptr, ptr %13, align 4
  %20 = tail call i32 @regulator_list_voltage(ptr noundef %19, i32 noundef %18) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %23, i32 0, i32 3, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sdiv i32 %20, %25
  %27 = icmp eq i32 %12, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %18, 1
  %30 = icmp eq i32 %29, %15
  br i1 %30, label %31, label %17

31:                                               ; preds = %28, %17, %7
  %32 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.50, i32 noundef %1) #10
  br label %33

33:                                               ; preds = %31, %22, %6
  %34 = phi i32 [ -22, %6 ], [ -22, %31 ], [ %18, %22 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfll_clk_enable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  %6 = load ptr, ptr %2, align 4
  br i1 %5, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %4
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.64, ptr noundef %9) #10
  br label %31

10:                                               ; preds = %1
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #9
  store i32 2, ptr %3, align 4
  %12 = getelementptr i8, ptr %0, i32 -64
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #9, !srcloc !8
  %14 = load ptr, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  %16 = tail call fastcc i32 @dfll_lock(ptr noundef %2)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %3, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %19
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.73, ptr noundef %24) #10
  br label %31

25:                                               ; preds = %18
  store i32 1, ptr %3, align 4
  %26 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #9, !srcloc !8
  %27 = load ptr, ptr %12, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = load ptr, ptr %2, align 4
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #9
  br label %31

31:                                               ; preds = %25, %21, %10, %7
  %32 = phi i32 [ -1, %7 ], [ 0, %10 ], [ %16, %21 ], [ %16, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dfll_clk_disable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = tail call fastcc i32 @dfll_unlock(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %7
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.73, ptr noundef %12) #10
  br label %20

13:                                               ; preds = %5
  store i32 1, ptr %6, align 4
  %14 = getelementptr i8, ptr %0, i32 -64
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !8
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #9
  br label %20

20:                                               ; preds = %13, %9, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dfll_clk_is_enabled(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dfll_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfll_clk_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.dfll_rate_req, align 4
  %4 = getelementptr i8, ptr %0, i32 -72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !14
  %5 = load i32, ptr %1, align 4
  %6 = call fastcc i32 @dfll_calculate_rate_request(ptr noundef %4, ptr noundef nonnull %3, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfll_clk_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = tail call fastcc i32 @dfll_request_rate(ptr noundef %4, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dfll_lock(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %99 [
    i32 3, label %106
    i32 2, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.dfll_lock) #10
  br label %106

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 39
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 41
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 42
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @pinctrl_select_state(ptr noundef %16, ptr noundef %18) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.71) #10
  br label %58

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !9
  %28 = and i32 %27, -64
  %29 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 40
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %30, -1
  %34 = add i32 %33, %32
  %35 = udiv i32 %34, %32
  %36 = and i32 %35, 63
  %37 = or i32 %36, %28
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr i8, ptr %38, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #9, !srcloc !8
  %40 = load ptr, ptr %24, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !9
  %42 = or i32 %37, 64
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #9, !srcloc !8
  %45 = load ptr, ptr %24, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !9
  br label %58

47:                                               ; preds = %10
  %48 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !9
  %52 = or i32 %51, 1073741824
  %53 = load ptr, ptr %48, align 4
  %54 = getelementptr i8, ptr %53, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !8
  %55 = load ptr, ptr %48, align 4
  %56 = getelementptr i8, ptr %55, i32 64
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !9
  br label %58

58:                                               ; preds = %47, %23, %21
  store i32 3, ptr %2, align 4
  %59 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 2) #9, !srcloc !8
  %61 = load ptr, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !9
  %63 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 38
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = sub i32 %64, %67
  %69 = shl i32 %68, 7
  %70 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 27
  %71 = load i32, ptr %70, align 4
  %72 = udiv i32 %69, %71
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 -2048) #9
  %74 = tail call i32 @llvm.smin.i32(i32 %73, i32 2047) #9
  %75 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20, i32 3
  %76 = load i8, ptr %75, align 4
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20, i32 4
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = shl nsw i32 %74, 16
  %83 = and i32 %82, 268369920
  %84 = or i32 %81, %77
  %85 = or i32 %84, %83
  %86 = or i32 %85, 268435584
  %87 = load ptr, ptr %59, align 4
  %88 = getelementptr i8, ptr %87, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #9, !srcloc !8
  %89 = load ptr, ptr %59, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !9
  %91 = load ptr, ptr %59, align 4
  %92 = getelementptr i8, ptr %91, i32 36
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !9
  %94 = and i32 %93, -65
  %95 = load ptr, ptr %59, align 4
  %96 = getelementptr i8, ptr %95, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #9, !srcloc !8
  %97 = load ptr, ptr %59, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !9
  br label %106

99:                                               ; preds = %1
  %100 = icmp ugt i32 %3, 3
  br i1 %100, label %101, label %102, !prof !10

101:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1041, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

102:                                              ; preds = %99
  %103 = load ptr, ptr %0, align 4
  %104 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %3
  %105 = load ptr, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.dfll_lock, ptr noundef %105) #10
  br label %106

106:                                              ; preds = %102, %58, %8, %1
  %107 = phi i32 [ -1, %102 ], [ -22, %8 ], [ 0, %58 ], [ 0, %1 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dfll_unlock(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %78 [
    i32 3, label %4
    i32 2, label %85
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  store i32 1, ptr %5, align 4
  %9 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cvb_table, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #9, !srcloc !8
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cvb_table, ptr %20, i32 0, i32 7, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !8
  %25 = load ptr, ptr %15, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !9
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %8
  tail call void %29() #9
  br label %32

32:                                               ; preds = %31, %8, %4
  %33 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !9
  %37 = and i32 %36, -268500737
  %38 = or i32 %37, 65280
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !8
  %41 = load ptr, ptr %33, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !9
  store i32 2, ptr %2, align 4
  %43 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #9, !srcloc !8
  %44 = load ptr, ptr %33, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !9
  %46 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 39
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %67

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 41
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 43
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @pinctrl_select_state(ptr noundef %51, ptr noundef %53) #9
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.72) #10
  br label %58

58:                                               ; preds = %56, %49
  %59 = load ptr, ptr %33, align 4
  %60 = getelementptr i8, ptr %59, i32 32
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !9
  %62 = and i32 %61, -65
  %63 = load ptr, ptr %33, align 4
  %64 = getelementptr i8, ptr %63, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !8
  %65 = load ptr, ptr %33, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !9
  br label %85

67:                                               ; preds = %32
  %68 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 32
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !9
  %72 = and i32 %71, -1073741825
  %73 = load ptr, ptr %68, align 4
  %74 = getelementptr i8, ptr %73, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !8
  %75 = load ptr, ptr %68, align 4
  %76 = getelementptr i8, ptr %75, i32 64
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !9
  br label %85

78:                                               ; preds = %1
  %79 = icmp ugt i32 %3, 3
  br i1 %79, label %80, label %81, !prof !10

80:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1071, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

81:                                               ; preds = %78
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %3
  %84 = load ptr, ptr %83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.dfll_unlock, ptr noundef %84) #10
  br label %85

85:                                               ; preds = %81, %67, %58, %1
  %86 = phi i32 [ -1, %81 ], [ 0, %67 ], [ 0, %58 ], [ 0, %1 ]
  ret i32 %86
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dfll_calculate_rate_request(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dfll_rate_req, ptr %1, i32 0, i32 4
  store i8 -1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %2
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = udiv i32 %2, 1000
  %11 = shl nuw nsw i32 %10, 8
  %12 = udiv i32 %7, 1000
  %13 = udiv i32 %7, 2000
  %14 = add nuw nsw i32 %13, %11
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.dfll_calculate_rate_request, i32 noundef %2) #10
  br label %87

18:                                               ; preds = %9
  %19 = udiv i32 %14, %12
  %20 = trunc i32 %19 to i8
  %21 = add i8 %20, -1
  store i8 %21, ptr %5, align 1
  %22 = load i32, ptr %6, align 4
  %23 = zext i8 %21 to i32
  %24 = add nuw nsw i32 %23, 1
  br label %25

25:                                               ; preds = %18, %3
  %26 = phi i32 [ %24, %18 ], [ 256, %3 ]
  %27 = phi i32 [ %22, %18 ], [ %2, %3 ]
  %28 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 1
  %31 = udiv i32 %27, %30
  %32 = icmp ugt i32 %31, 127
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.dfll_calculate_rate_request, i32 noundef %27) #10
  br label %87

35:                                               ; preds = %25
  %36 = trunc i32 %31 to i8
  %37 = getelementptr inbounds %struct.dfll_rate_req, ptr %1, i32 0, i32 3
  store i8 %36, ptr %37, align 4
  %38 = load i32, ptr %28, align 4
  %39 = lshr i32 %38, 1
  %40 = mul i32 %39, %31
  %41 = getelementptr inbounds %struct.dfll_rate_req, ptr %1, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = zext i32 %40 to i64
  %43 = zext i32 %26 to i64
  %44 = mul nuw nsw i64 %43, %42
  %45 = lshr i64 %44, 8
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %40, ptr %4, align 4
  %47 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %49, ptr noundef nonnull %4) #9
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %81, label %52

52:                                               ; preds = %35
  %53 = call i32 @dev_pm_opp_get_voltage(ptr noundef %50) #9
  %54 = load ptr, ptr %47, align 4
  %55 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %54, i32 0, i32 3, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = udiv i32 %53, %56
  call void @dev_pm_opp_put(ptr noundef %50) #9
  %58 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 35
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 34
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, %60
  br i1 %63, label %64, label %79

64:                                               ; preds = %52
  %65 = load ptr, ptr %47, align 4
  %66 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %65, i32 0, i32 3, i32 1
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %76, %64
  %69 = phi i32 [ %60, %64 ], [ %77, %76 ]
  %70 = getelementptr %struct.tegra_dfll, ptr %0, i32 0, i32 33, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = udiv i32 %71, %67
  %73 = icmp ult i32 %72, %57
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %75 = getelementptr inbounds %struct.dfll_rate_req, ptr %1, i32 0, i32 2
  store i32 %69, ptr %75, align 4
  br label %87

76:                                               ; preds = %68
  %77 = add nuw nsw i32 %69, 1
  %78 = icmp eq i32 %77, %62
  br i1 %78, label %79, label %68

79:                                               ; preds = %76, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %80 = getelementptr inbounds %struct.dfll_rate_req, ptr %1, i32 0, i32 2
  store i32 -2, ptr %80, align 4
  br label %85

81:                                               ; preds = %35
  %82 = ptrtoint ptr %50 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %83 = getelementptr inbounds %struct.dfll_rate_req, ptr %1, i32 0, i32 2
  store i32 %82, ptr %83, align 4
  %84 = icmp slt ptr %50, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %79
  %86 = phi i32 [ -2, %79 ], [ %82, %81 ]
  br label %87

87:                                               ; preds = %85, %81, %74, %33, %16
  %88 = phi i32 [ -22, %33 ], [ -22, %16 ], [ %86, %85 ], [ 0, %81 ], [ 0, %74 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dfll_request_rate(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dfll_rate_req, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !14
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.dfll_request_rate, ptr noundef nonnull @.str.65) #10
  br label %47

9:                                                ; preds = %2
  %10 = call fastcc i32 @dfll_calculate_rate_request(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 21
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 38
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = sub i32 %19, %22
  %24 = shl i32 %23, 7
  %25 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 27
  %26 = load i32, ptr %25, align 4
  %27 = udiv i32 %24, %26
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 -2048) #9
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 2047) #9
  %30 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20, i32 3
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 20, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = shl nsw i32 %29, 16
  %38 = and i32 %37, 268369920
  %39 = or i32 %36, %32
  %40 = or i32 %39, %38
  %41 = or i32 %40, 268435584
  %42 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #9, !srcloc !8
  %45 = load ptr, ptr %42, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !9
  br label %47

47:                                               ; preds = %17, %12, %9, %7
  %48 = phi i32 [ -1, %7 ], [ %10, %9 ], [ 0, %17 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @attr_enable_get, ptr noundef nonnull @attr_enable_set, ptr noundef nonnull @.str.83) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @attr_enable_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  %6 = zext i1 %5 to i64
  store i64 %6, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attr_enable_set(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  %4 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  br i1 %3, label %18, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %5, 1
  %8 = load ptr, ptr %0, align 4
  br i1 %7, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %5
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.64, ptr noundef %11) #10
  br label %31

12:                                               ; preds = %6
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #9
  store i32 2, ptr %4, align 4
  %14 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #9, !srcloc !8
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  br label %31

18:                                               ; preds = %2
  %19 = icmp eq i32 %5, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %5
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.73, ptr noundef %23) #10
  br label %31

24:                                               ; preds = %18
  store i32 1, ptr %4, align 4
  %25 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #9, !srcloc !8
  %27 = load ptr, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = load ptr, ptr %0, align 4
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #9
  br label %31

31:                                               ; preds = %24, %20, %12, %9
  %32 = phi i32 [ -1, %9 ], [ 0, %12 ], [ -22, %20 ], [ 0, %24 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lock_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @attr_lock_get, ptr noundef nonnull @attr_lock_set, ptr noundef nonnull @.str.83) #9
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @attr_lock_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  %6 = zext i1 %5 to i64
  store i64 %6, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attr_lock_set(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @dfll_lock(ptr noundef %0)
  br label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @dfll_unlock(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rate_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @attr_rate_get, ptr noundef nonnull @attr_rate_set, ptr noundef nonnull @.str.83) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attr_rate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  %11 = and i32 %10, 65535
  %12 = getelementptr inbounds %struct.tegra_dfll, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 2
  %15 = mul i32 %14, %11
  %16 = zext i32 %15 to i64
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !9
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = add nuw nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = mul nuw nsw i64 %23, %16
  %25 = lshr i64 %24, 8
  br label %26

26:                                               ; preds = %6, %2
  %27 = phi i64 [ %25, %6 ], [ 0, %2 ]
  store i64 %27, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attr_rate_set(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc i32 @dfll_request_rate(ptr noundef %0, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attr_registers_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @attr_registers_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @attr_registers_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.84) #9
  %5 = getelementptr inbounds %struct.tegra_dfll, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tegra_dfll, ptr %4, i32 0, i32 3
  br label %7

7:                                                ; preds = %18, %2
  %8 = phi i32 [ 0, %2 ], [ %20, %18 ]
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !9
  br label %18

14:                                               ; preds = %7
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 %8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %8, i32 noundef %19) #9
  %20 = add nuw nsw i32 %8, 4
  %21 = icmp ult i32 %8, 41
  br i1 %21, label %7, label %22

22:                                               ; preds = %18
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.86) #9
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i8, ptr %23, i32 64
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 64, i32 noundef %25) #9
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 68, i32 noundef %28) #9
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 72
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 72, i32 noundef %31) #9
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 92
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 92, i32 noundef %34) #9
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 96
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 96, i32 noundef %37) #9
  %38 = getelementptr inbounds %struct.tegra_dfll, ptr %4, i32 0, i32 39
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.87) #9
  %42 = getelementptr inbounds %struct.tegra_dfll, ptr %4, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 108
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef %45) #9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.88) #9
  %46 = getelementptr inbounds %struct.tegra_dfll, ptr %4, i32 0, i32 5
  br label %47

47:                                               ; preds = %47, %41
  %48 = phi i32 [ 0, %41 ], [ %52, %47 ]
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %48, i32 noundef %51) #9
  %52 = add nuw nsw i32 %48, 4
  %53 = icmp ult i32 %48, 128
  br i1 %53, label %47, label %54

54:                                               ; preds = %47, %22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 5503649}
!9 = !{i64 5504067}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154420300, i64 2154420794, i64 2154420337, i64 2154420393, i64 2154420427, i64 2154420451, i64 2154420492, i64 2154420513, i64 2154420541, i64 2154420575}
!12 = !{i8 0, i8 2}
!13 = !{i64 2154385983, i64 2154386476, i64 2154386020, i64 2154386076, i64 2154386110, i64 2154386134, i64 2154386175, i64 2154386196, i64 2154386224, i64 2154386258}
!14 = !{!"auto-init"}
!15 = !{i64 2154405613, i64 2154406107, i64 2154405650, i64 2154405706, i64 2154405740, i64 2154405764, i64 2154405805, i64 2154405826, i64 2154405854, i64 2154405888}
!16 = !{i64 2154407347, i64 2154407841, i64 2154407384, i64 2154407440, i64 2154407474, i64 2154407498, i64 2154407539, i64 2154407560, i64 2154407588, i64 2154407622}
