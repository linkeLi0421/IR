; ModuleID = '/llk/IR/drivers/power/supply/bq27xxx_battery.c_pt.bc'
source_filename = "../drivers/power/supply/bq27xxx_battery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bq27xxx_battery_update:\09\09\09\09\09"
module asm "\09.asciz \09\22bq27xxx_battery_update\22\09\09\09\09\09"
module asm "__kstrtabns_bq27xxx_battery_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bq27xxx_battery_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22bq27xxx_battery_setup\22\09\09\09\09\09"
module asm "__kstrtabns_bq27xxx_battery_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bq27xxx_battery_teardown:\09\09\09\09\09"
module asm "\09.asciz \09\22bq27xxx_battery_teardown\22\09\09\09\09\09"
module asm "__kstrtabns_bq27xxx_battery_teardown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.anon.5 = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.bq27xxx_dm_reg = type { i8, i8, i8, i16, i16 }
%struct.bq27xxx_reg_cache = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bq27xxx_device_info = type { ptr, i32, i32, i32, ptr, ptr, i32, %struct.bq27xxx_access_methods, %struct.bq27xxx_reg_cache, i32, i32, %struct.delayed_work, ptr, %struct.list_head, %struct.mutex, ptr }
%struct.bq27xxx_access_methods = type { ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bq27xxx_dm_buf = type { i8, i8, [32 x i8], i8, i8 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__param_str_dt_monitored_battery_updates_nvm = internal constant [33 x i8] c"dt_monitored_battery_updates_nvm\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@bq27xxx_dt_to_nvm = internal global i8 1, align 1
@__param_dt_monitored_battery_updates_nvm = internal constant %struct.kernel_param { ptr @__param_str_dt_monitored_battery_updates_nvm, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.4 { ptr @bq27xxx_dt_to_nvm } }, section "__param", align 4
@__UNIQUE_ID_dt_monitored_battery_updates_nvmtype166 = internal constant [47 x i8] c"parmtype=dt_monitored_battery_updates_nvm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dt_monitored_battery_updates_nvm167 = internal constant [272 x i8] c"parm=dt_monitored_battery_updates_nvm:Devicetree monitored-battery config updates data memory on NVM/flash chips.\0AUsers must set this =0 when installing a different type of battery!\0ADefault is =1.\0ASetting this affects future kernel updates, not the current configuration.\00", section ".modinfo", align 1
@__param_str_poll_interval = internal constant [14 x i8] c"poll_interval\00", align 1
@param_ops_poll_interval = internal constant %struct.kernel_param_ops { i32 0, ptr @poll_interval_param_set, ptr @param_get_uint, ptr null }, align 4
@poll_interval = internal global i32 360, align 4
@__param_poll_interval = internal constant %struct.kernel_param { ptr @__param_str_poll_interval, ptr @__this_module, ptr @param_ops_poll_interval, i16 420, i8 -1, i8 0, %union.anon.4 { ptr @poll_interval } }, section "__param", align 4
@__UNIQUE_ID_poll_interval168 = internal constant [73 x i8] c"parm=poll_interval:battery poll interval in seconds - 0 disables polling\00", section ".modinfo", align 1
@bq27xxx_battery_update.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str = private unnamed_addr constant [53 x i8] c"battery is not calibrated! ignoring capacity values\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_bq27xxx_battery_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_bq27xxx_battery_update = external dso_local constant [0 x i8], align 1
@__ksymtab_bq27xxx_battery_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bq27xxx_battery_update to i32), ptr @__kstrtab_bq27xxx_battery_update, ptr @__kstrtabns_bq27xxx_battery_update }, section "___ksymtab_gpl+bq27xxx_battery_update", align 4
@bq27xxx_battery_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"&di->lock\00", align 1
@bq27xxx_chip_data = internal unnamed_addr constant [32 x %struct.anon.5] [%struct.anon.5 zeroinitializer, %struct.anon.5 { i32 193, i32 0, ptr @bq27000_regs, ptr null, ptr @bq27000_props, i32 19 }, %struct.anon.5 { i32 193, i32 0, ptr @bq27010_regs, ptr null, ptr @bq27010_props, i32 17 }, %struct.anon.5 { i32 2, i32 0, ptr @bq2750x_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27510g3_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27510g3_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.5 { i32 2, i32 68433522, ptr @bq27500_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27500_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27500_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27510g3_regs, ptr null, ptr @bq27510g3_props, i32 15 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27520g1_regs, ptr null, ptr @bq27520g1_props, i32 17 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27520g2_regs, ptr null, ptr @bq27500_props, i32 18 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27520g3_regs, ptr null, ptr @bq27520g3_props, i32 17 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27520g4_regs, ptr null, ptr @bq27520g4_props, i32 14 }, %struct.anon.5 { i32 0, i32 0, ptr @bq27521_regs, ptr null, ptr @bq27521_props, i32 6 }, %struct.anon.5 { i32 4, i32 0, ptr @bq27530_regs, ptr null, ptr @bq27530_props, i32 15 }, %struct.anon.5 { i32 4, i32 0, ptr @bq27530_regs, ptr null, ptr @bq27530_props, i32 15 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.5 { i32 2, i32 0, ptr @bq27541_regs, ptr null, ptr @bq27541_props, i32 16 }, %struct.anon.5 { i32 2, i32 68433522, ptr @bq27545_regs, ptr null, ptr @bq27545_props, i32 15 }, %struct.anon.5 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr @bq27411_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.5 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr @bq27421_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.5 { i32 12, i32 68433522, ptr @bq27421_regs, ptr @bq27425_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.5 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr @bq27426_dm_regs, ptr @bq27421_props, i32 12 }, %struct.anon.5 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr null, ptr @bq27421_props, i32 12 }, %struct.anon.5 { i32 28, i32 -2147450880, ptr @bq27421_regs, ptr null, ptr @bq27421_props, i32 12 }, %struct.anon.5 { i32 32, i32 0, ptr @bq27z561_regs, ptr null, ptr @bq27z561_props, i32 17 }, %struct.anon.5 { i32 32, i32 0, ptr @bq28z610_regs, ptr null, ptr @bq28z610_props, i32 17 }, %struct.anon.5 { i32 450, i32 0, ptr @bq34z100_regs, ptr null, ptr @bq34z100_props, i32 19 }, %struct.anon.5 { i32 32, i32 0, ptr @bq78z100_regs, ptr null, ptr @bq78z100_props, i32 17 }], align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@bq27xxx_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bq27xxx_list_lock, i64 12), ptr getelementptr (i8, ptr @bq27xxx_list_lock, i64 12) } }, align 4
@bq27xxx_battery_devices = internal global %struct.list_head { ptr @bq27xxx_battery_devices, ptr @bq27xxx_battery_devices }, align 4
@__kstrtab_bq27xxx_battery_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_bq27xxx_battery_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_bq27xxx_battery_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bq27xxx_battery_setup to i32), ptr @__kstrtab_bq27xxx_battery_setup, ptr @__kstrtabns_bq27xxx_battery_setup }, section "___ksymtab_gpl+bq27xxx_battery_setup", align 4
@__kstrtab_bq27xxx_battery_teardown = external dso_local constant [0 x i8], align 1
@__kstrtabns_bq27xxx_battery_teardown = external dso_local constant [0 x i8], align 1
@__ksymtab_bq27xxx_battery_teardown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bq27xxx_battery_teardown to i32), ptr @__kstrtab_bq27xxx_battery_teardown, ptr @__kstrtabns_bq27xxx_battery_teardown }, section "___ksymtab_gpl+bq27xxx_battery_teardown", align 4
@__UNIQUE_ID_author169 = internal constant [44 x i8] c"author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [43 x i8] c"description=BQ27xxx battery monitor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"error reading temperature\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"error reading cycle count total\0A\00", align 1
@bq27000_regs = internal global [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\FF\12*\22\0Bv$\FF\FF\FF\FF\FF", align 1
@bq27000_props = internal global [19 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 61, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], align 4
@bq27010_regs = internal global [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\FF\12*\FF\0Bv\FF\FF\FF\FF\FF\FF", align 1
@bq27010_props = internal global [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 61, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 2, i32 74], align 4
@bq2750x_regs = internal global [23 x i8] c"\00\06(\08\14\0A\16\FF\1A\FF\0C\10\12*\FF,<\FFa>?@`", align 1
@bq27510g3_props = internal global [15 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 22, i32 7, i32 2, i32 74], align 4
@bq27510g3_regs = internal global [23 x i8] c"\00\06(\08\14\0A\16\FF\1A\FF\0C\10\12\1E\FF .\FFa>?@`", align 1
@bq27500_regs = internal global [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\10\12*\22,<$a>?@`", align 1
@bq27500_props = internal global [18 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], align 4
@bq27520g1_regs = internal global [23 x i8] c"\00\06\FF\08\14\0A\16\18\1C&\0C\10\12\FF\22,<$a>?@`", align 1
@bq27520g1_props = internal global [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 45, i32 21, i32 2, i32 74], align 4
@bq27520g2_regs = internal global [23 x i8] c"\00\066\08\14\0A\16\18\1C&\0C\10\12*\22,<$a>?@`", align 1
@bq27520g3_regs = internal global [23 x i8] c"\00\066\08\14\0A\16\FF\1C&\0C\10\12*\22,<$a>?@`", align 1
@bq27520g3_props = internal global [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], align 4
@bq27520g4_regs = internal global [23 x i8] c"\00\06(\08\14\0A\16\FF\1C\FF\0C\10\12\1E\FF \FF\FFa>?@`", align 1
@bq27520g4_props = internal global [14 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 7, i32 2, i32 74], align 4
@bq27521_regs = internal global [23 x i8] c"\02\0A\FF\0C\0E\08\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@bq27521_props = internal global [6 x i32] [i32 0, i32 3, i32 12, i32 17, i32 52, i32 6], align 4
@bq27530_regs = internal global [23 x i8] c"\00\062\08\14\0A\16\FF\FF\FF\0C\10\12*\FF,\FF$a>?@`", align 1
@bq27530_props = internal global [15 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 21, i32 2, i32 7, i32 74], align 4
@bq27541_regs = internal global [23 x i8] c"\00\06(\08\14\0A\16\FF\FF\FF\0C\10\12*\FF,<$a>?@`", align 1
@bq27541_props = internal global [16 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], align 4
@bq27545_regs = internal global [23 x i8] c"\00\06(\08\14\0A\16\FF\FF\FF\0C\10\12*\FF,\FF$a>?@`", align 1
@bq27545_props = internal global [15 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 6, i32 24, i32 26, i32 2, i32 7, i32 21, i32 74], align 4
@bq27421_regs = internal global [23 x i8] c"\00\02\1E\04\10\06\FF\FF\FF\FF\08\0C\0E\FF\FF\1C<\18a>?@`", align 1
@bq27411_dm_regs = internal global [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 10, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 12, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 16, i8 2, i16 2800, i16 3700 }], align 2
@bq27421_props = internal global [12 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 6, i32 24, i32 26, i32 22, i32 74], align 4
@bq27421_dm_regs = internal global [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 10, i8 2, i16 0, i16 8000 }, %struct.bq27xxx_dm_reg { i8 82, i8 12, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 16, i8 2, i16 2500, i16 3700 }], align 2
@bq27425_dm_regs = internal global [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 12, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 14, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 18, i8 2, i16 2800, i16 3700 }], align 2
@bq27426_dm_regs = internal global [3 x %struct.bq27xxx_dm_reg] [%struct.bq27xxx_dm_reg { i8 82, i8 6, i8 2, i16 0, i16 8000 }, %struct.bq27xxx_dm_reg { i8 82, i8 8, i8 2, i16 0, i16 32767 }, %struct.bq27xxx_dm_reg { i8 82, i8 10, i8 2, i16 2500, i16 3700 }], align 2
@bq27z561_regs = internal global [23 x i8] c"\00\06\FF\08\14\0A\16\18\FF\FF\FF\10\12*\22,<\22a>?@`", align 1
@bq27z561_props = internal global [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], align 4
@bq28z610_regs = internal global [23 x i8] c"\00\06\FF\08\14\0A\16\18\FF\FF\FF\10\12*\22,<\22a>?@`", align 1
@bq28z610_props = internal global [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], align 4
@bq34z100_regs = internal global [23 x i8] c"\00\0C*\08\0A\0E\18\1A\1E\FF\FF\04\06,$\02<\22a>?@`", align 1
@bq34z100_props = internal global [19 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 61, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 45, i32 21, i32 2, i32 74], align 4
@bq78z100_regs = internal global [23 x i8] c"\00\06(\08\14\0A\16\18\1C\FF\FF\10\12*\FF,<\22a>?@`", align 1
@bq78z100_props = internal global [17 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 51, i32 52, i32 60, i32 62, i32 6, i32 24, i32 26, i32 22, i32 7, i32 21, i32 2, i32 74], align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Texas Instruments\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"error reading current\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"error reading flags\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"error reading voltage\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"error reading average power register %02x: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"data memory update not supported for chip\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"missing battery:energy-full-design-microwatt-hours\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"missing battery:charge-full-design-microamp-hours\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"invalid battery:energy-full-design-microwatt-hours %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"invalid battery:charge-full-design-microamp-hours %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"invalid battery:voltage-min-design-microvolt %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"unseal failed due to missing key\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"bus error on unseal: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"bus error reading chip memory: %d\0A\00", align 1
@bq27xxx_dm_reg_name = internal unnamed_addr constant [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26], align 4
@.str.19 = private unnamed_addr constant [34 x i8] c"buffer does not match %s dm spec\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"%s dm spec has unsupported byte size\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%s has %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"%s has %u; update to %u disallowed for flash/NVM data memory\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"update %s to %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"design-capacity\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"design-energy\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"terminate-voltage\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"bus error writing chip memory: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"bus error on set_cfgupdate: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"timed out waiting for cfgupdate flag %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"cfgupdate %d, retries %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"bus error on soft_reset: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"bus error on seal: %d\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_dt_monitored_battery_updates_nvm167, ptr @__UNIQUE_ID_dt_monitored_battery_updates_nvmtype166, ptr @__UNIQUE_ID_license171, ptr @__UNIQUE_ID_poll_interval168, ptr @__ksymtab_bq27xxx_battery_setup, ptr @__ksymtab_bq27xxx_battery_teardown, ptr @__ksymtab_bq27xxx_battery_update, ptr @__param_dt_monitored_battery_updates_nvm, ptr @__param_poll_interval], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bq27xxx_battery_update(ptr noundef %0) #0 {
  %2 = alloca %struct.bq27xxx_reg_cache, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %3 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %4, 1
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq ptr %0, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef nonnull %0, i8 noundef zeroext %14, i1 noundef zeroext %8) #10
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %19, %16 ], [ -22, %10 ]
  %22 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 8
  %23 = and i32 %21, 255
  %24 = icmp eq i32 %23, 255
  %25 = select i1 %24, i32 -1, i32 %21
  store i32 %25, ptr %22, align 4
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %29, label %238

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 8
  store i32 -22, ptr %28, align 4
  br label %238

29:                                               ; preds = %20
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i8, ptr %30, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, -1
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef nonnull %0, i8 noundef zeroext %32, i1 noundef zeroext false) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %37, %34 ], [ -22, %29 ]
  %41 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.3) #11
  br label %49

42:                                               ; preds = %34
  %43 = load i32, ptr %3, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = mul i32 %37, 5
  %47 = sdiv i32 %46, 2
  %48 = select i1 %45, i32 %37, i32 %47
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi i32 [ %40, %39 ], [ %48, %42 ]
  store i32 %50, ptr %2, align 4
  %51 = and i32 %25, 16
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %6, i1 true, i1 %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load i1, ptr @bq27xxx_battery_update.__print_once, align 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  store i1 true, ptr @bq27xxx_battery_update.__print_once, align 1
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str) #11
  br label %58

58:                                               ; preds = %56, %54
  %59 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 6
  store i32 -61, ptr %59, align 4
  %60 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 7
  store i32 -61, ptr %60, align 4
  %61 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 1
  store i32 -61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 2
  store i32 -61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 3
  store i32 -61, ptr %63, align 4
  %64 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 4
  store i32 -61, ptr %64, align 4
  br label %194

65:                                               ; preds = %49
  %66 = load ptr, ptr %11, align 4
  %67 = getelementptr i8, ptr %66, i32 6
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, -1
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef nonnull %0, i8 noundef zeroext %68, i1 noundef zeroext false) #10
  %74 = icmp eq i32 %73, 65535
  %75 = mul i32 %73, 60
  %76 = select i1 %74, i32 -61, i32 %75
  %77 = icmp slt i32 %73, 0
  %78 = select i1 %77, i32 %73, i32 %76
  %79 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 1
  store i32 %78, ptr %79, align 4
  %80 = load ptr, ptr %11, align 4
  br label %81

81:                                               ; preds = %70, %65
  %82 = phi ptr [ %80, %70 ], [ %66, %65 ]
  %83 = getelementptr i8, ptr %82, i32 9
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, -1
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 %88(ptr noundef nonnull %0, i8 noundef zeroext %84, i1 noundef zeroext false) #10
  %90 = icmp eq i32 %89, 65535
  %91 = mul i32 %89, 60
  %92 = select i1 %90, i32 -61, i32 %91
  %93 = icmp slt i32 %89, 0
  %94 = select i1 %93, i32 %89, i32 %92
  %95 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 2
  store i32 %94, ptr %95, align 4
  %96 = load ptr, ptr %11, align 4
  br label %97

97:                                               ; preds = %86, %81
  %98 = phi ptr [ %96, %86 ], [ %82, %81 ]
  %99 = getelementptr i8, ptr %98, i32 7
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, -1
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 %104(ptr noundef nonnull %0, i8 noundef zeroext %100, i1 noundef zeroext false) #10
  %106 = icmp eq i32 %105, 65535
  %107 = mul i32 %105, 60
  %108 = select i1 %106, i32 -61, i32 %107
  %109 = icmp slt i32 %105, 0
  %110 = select i1 %109, i32 %105, i32 %108
  %111 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 3
  store i32 %110, ptr %111, align 4
  br label %112

112:                                              ; preds = %102, %97
  %113 = load ptr, ptr %11, align 4
  %114 = getelementptr i8, ptr %113, i32 12
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %115, -1
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 %119(ptr noundef nonnull %0, i8 noundef zeroext %115, i1 noundef zeroext false) #10
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %3, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 1000, i32 178
  %127 = mul i32 %126, %120
  br label %128

128:                                              ; preds = %122, %117, %112
  %129 = phi i32 [ %127, %122 ], [ %120, %117 ], [ -22, %112 ]
  %130 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 4
  store i32 %129, ptr %130, align 4
  %131 = load ptr, ptr %11, align 4
  %132 = getelementptr i8, ptr %131, i32 15
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, -1
  br i1 %134, label %142, label %135

135:                                              ; preds = %128
  %136 = load i32, ptr %3, align 4
  %137 = and i32 %136, 64
  %138 = icmp ne i32 %137, 0
  %139 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 %140(ptr noundef nonnull %0, i8 noundef zeroext %133, i1 noundef zeroext %138) #10
  br label %142

142:                                              ; preds = %135, %128
  %143 = phi i32 [ %141, %135 ], [ -22, %128 ]
  %144 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 6
  store i32 %143, ptr %144, align 4
  %145 = load ptr, ptr %11, align 4
  %146 = getelementptr i8, ptr %145, i32 14
  %147 = load i8, ptr %146, align 1
  %148 = icmp eq i8 %147, -1
  br i1 %148, label %163, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %151 = load ptr, ptr %150, align 4
  %152 = tail call i32 %151(ptr noundef nonnull %0, i8 noundef zeroext %147, i1 noundef zeroext false) #10
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load i32, ptr %3, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, i32 1000, i32 1460
  %159 = mul i32 %158, %152
  br label %160

160:                                              ; preds = %154, %149
  %161 = phi i32 [ %159, %154 ], [ %152, %149 ]
  %162 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 7
  store i32 %161, ptr %162, align 4
  br label %163

163:                                              ; preds = %160, %142
  %164 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 8, i32 8
  store i32 %25, ptr %164, align 4
  %165 = trunc i32 %25 to i16
  %166 = load i32, ptr %3, align 4
  %167 = and i32 %166, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %163
  %170 = icmp ugt i16 %165, 16383
  br i1 %170, label %194, label %171, !prof !8

171:                                              ; preds = %169
  %172 = and i32 %166, 4
  br label %178

173:                                              ; preds = %163
  %174 = and i32 %166, 4
  %175 = icmp ne i32 %174, 0
  %176 = icmp slt i16 %165, 0
  %177 = and i1 %176, %175
  br i1 %177, label %194, label %178, !prof !8

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %180 = icmp ne i32 %179, 0
  %181 = and i16 %165, 16384
  %182 = icmp ne i16 %181, 0
  %183 = and i1 %182, %180
  br i1 %183, label %194, label %184, !prof !8

184:                                              ; preds = %178
  %185 = and i32 %166, 1
  %186 = icmp eq i32 %185, 0
  %187 = and i32 %166, 32
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, i16 6, i16 16
  %190 = select i1 %186, i16 %189, i16 3
  %191 = and i16 %190, %165
  %192 = icmp eq i16 %191, 0
  %193 = select i1 %192, i32 1, i32 3, !prof !9
  br label %194

194:                                              ; preds = %184, %178, %173, %169, %58
  %195 = phi i32 [ -61, %58 ], [ 2, %173 ], [ 6, %178 ], [ %193, %184 ], [ 2, %169 ]
  %196 = phi i32 [ -61, %58 ], [ %143, %173 ], [ %143, %178 ], [ %143, %184 ], [ %143, %169 ]
  %197 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 9
  store i32 %195, ptr %197, align 4
  %198 = load ptr, ptr %11, align 4
  %199 = getelementptr i8, ptr %198, i32 13
  %200 = load i8, ptr %199, align 1
  %201 = icmp eq i8 %200, -1
  br i1 %201, label %211, label %202

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %204 = load ptr, ptr %203, align 4
  %205 = tail call i32 %204(ptr noundef nonnull %0, i8 noundef zeroext %200, i1 noundef zeroext false) #10
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.4) #11
  br label %209

209:                                              ; preds = %207, %202
  %210 = getelementptr inbounds %struct.bq27xxx_reg_cache, ptr %2, i32 0, i32 5
  store i32 %205, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %194
  %212 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 9
  %213 = load i32, ptr %212, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %238

215:                                              ; preds = %211
  %216 = load ptr, ptr %11, align 4
  %217 = getelementptr i8, ptr %216, i32 16
  %218 = load i8, ptr %217, align 1
  %219 = icmp eq i8 %218, -1
  br i1 %219, label %236, label %220

220:                                              ; preds = %215
  %221 = load i32, ptr %3, align 4
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  %224 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %225 = load ptr, ptr %224, align 4
  %226 = tail call i32 %225(ptr noundef nonnull %0, i8 noundef zeroext %218, i1 noundef zeroext %223) #10
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %220
  %229 = load i32, ptr %3, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  %232 = mul i32 %226, 913920
  %233 = sdiv i32 %232, 20
  %234 = mul i32 %226, 1000
  %235 = select i1 %231, i32 %234, i32 %233
  br label %236

236:                                              ; preds = %228, %220, %215
  %237 = phi i32 [ %235, %228 ], [ %226, %220 ], [ -22, %215 ]
  store i32 %237, ptr %212, align 4
  br label %238

238:                                              ; preds = %236, %211, %27, %20
  %239 = phi i32 [ -22, %27 ], [ %21, %211 ], [ %21, %236 ], [ %25, %20 ]
  %240 = phi i32 [ 0, %27 ], [ %196, %211 ], [ %196, %236 ], [ 0, %20 ]
  %241 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 8
  %242 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 8, i32 6
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, %240
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 8, i32 8
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, %239
  br i1 %248, label %252, label %249

249:                                              ; preds = %245, %238
  %250 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 12
  %251 = load ptr, ptr %250, align 4
  tail call void @power_supply_changed(ptr noundef %251) #10
  br label %252

252:                                              ; preds = %249, %245
  %253 = call i32 @bcmp(ptr noundef dereferenceable(40) %241, ptr noundef nonnull dereferenceable(40) %2, i32 40)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %241, ptr noundef nonnull align 4 dereferenceable(40) %2, i32 40, i1 false)
  br label %256

256:                                              ; preds = %255, %252
  %257 = load volatile i32, ptr @jiffies, align 64
  %258 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 10
  store i32 %257, ptr %258, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bq27xxx_battery_setup(ptr noundef %0) #0 {
  %2 = alloca %struct.bq27xxx_dm_buf, align 1
  %3 = alloca %struct.bq27xxx_dm_buf, align 1
  %4 = alloca ptr, align 4
  %5 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 1
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 2
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 3
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 4
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.power_supply_config, ptr %5, i32 0, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 11
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 11, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 11, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 11, i32 0, i32 2
  store ptr @bq27xxx_battery_poll, ptr %17, align 4
  %18 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %18, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %19 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @bq27xxx_battery_setup.__key) #10
  %20 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [32 x %struct.anon.5], ptr @bq27xxx_chip_data, i32 0, i32 %21, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  store ptr %23, ptr %24, align 4
  %25 = getelementptr [32 x %struct.anon.5], ptr @bq27xxx_chip_data, i32 0, i32 %21, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 6
  store i32 %26, ptr %27, align 4
  %28 = getelementptr [32 x %struct.anon.5], ptr @bq27xxx_chip_data, i32 0, i32 %21, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = getelementptr [32 x %struct.anon.5], ptr @bq27xxx_chip_data, i32 0, i32 %21
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 52, i32 noundef 3520) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %270, label %37

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  store ptr %39, ptr %35, align 4
  %40 = getelementptr inbounds %struct.power_supply_desc, ptr %35, i32 0, i32 1
  store i32 1, ptr %40, align 4
  %41 = load i32, ptr %20, align 4
  %42 = getelementptr [32 x %struct.anon.5], ptr @bq27xxx_chip_data, i32 0, i32 %41, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.power_supply_desc, ptr %35, i32 0, i32 4
  store ptr %43, ptr %44, align 4
  %45 = getelementptr [32 x %struct.anon.5], ptr @bq27xxx_chip_data, i32 0, i32 %41, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.power_supply_desc, ptr %35, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.power_supply_desc, ptr %35, i32 0, i32 6
  store ptr @bq27xxx_battery_get_property, ptr %48, align 4
  %49 = getelementptr inbounds %struct.power_supply_desc, ptr %35, i32 0, i32 9
  store ptr @bq27xxx_external_power_changed, ptr %49, align 4
  %50 = load ptr, ptr %0, align 4
  %51 = call ptr @power_supply_register_no_ws(ptr noundef %50, ptr noundef nonnull %35, ptr noundef nonnull %5) #10
  %52 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 12
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load ptr, ptr %0, align 4
  %56 = ptrtoint ptr %51 to i32
  %57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %55, i32 noundef %56, ptr noundef nonnull @.str.2) #10
  br label %270

58:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !10
  %59 = call i32 @power_supply_get_battery_info(ptr noundef %51, ptr noundef nonnull %4) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %265, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %30, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.10) #11
  br label %265

66:                                               ; preds = %61
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.power_supply_battery_info, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.power_supply_battery_info, ptr %67, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = icmp eq i32 %69, -22
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = icmp eq i32 %71, -22
  br i1 %76, label %77, label %84

77:                                               ; preds = %75, %73
  %78 = phi ptr [ @.str.11, %73 ], [ @.str.12, %75 ]
  %79 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull %78) #11
  %80 = load ptr, ptr %30, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr inbounds %struct.power_supply_battery_info, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %77, %75, %66
  %85 = phi i32 [ %83, %77 ], [ %69, %75 ], [ %69, %66 ]
  %86 = phi ptr [ %81, %77 ], [ %67, %75 ], [ %67, %66 ]
  %87 = phi ptr [ %80, %77 ], [ %62, %75 ], [ %62, %66 ]
  %88 = getelementptr %struct.bq27xxx_dm_reg, ptr %87, i32 1, i32 4
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  %91 = mul nuw nsw i32 %90, 1000
  %92 = icmp ugt i32 %85, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.13, i32 noundef %85) #11
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr inbounds %struct.power_supply_battery_info, ptr %95, i32 0, i32 1
  store i32 -22, ptr %96, align 4
  %97 = load ptr, ptr %30, align 4
  br label %98

98:                                               ; preds = %93, %84
  %99 = phi ptr [ %95, %93 ], [ %86, %84 ]
  %100 = phi ptr [ %97, %93 ], [ %87, %84 ]
  %101 = getelementptr inbounds %struct.bq27xxx_dm_reg, ptr %100, i32 0, i32 4
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds %struct.power_supply_battery_info, ptr %99, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = mul nuw nsw i32 %103, 1000
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.14, i32 noundef %105) #11
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr inbounds %struct.power_supply_battery_info, ptr %110, i32 0, i32 2
  store i32 -22, ptr %111, align 4
  %112 = load ptr, ptr %30, align 4
  br label %113

113:                                              ; preds = %108, %98
  %114 = phi ptr [ %110, %108 ], [ %99, %98 ]
  %115 = phi ptr [ %112, %108 ], [ %100, %98 ]
  %116 = getelementptr %struct.bq27xxx_dm_reg, ptr %115, i32 2, i32 3
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = getelementptr inbounds %struct.power_supply_battery_info, ptr %114, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = mul nuw nsw i32 %118, 1000
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %113
  %124 = getelementptr %struct.bq27xxx_dm_reg, ptr %115, i32 2, i32 4
  %125 = load i16, ptr %124, align 2
  %126 = zext i16 %125 to i32
  %127 = mul nuw nsw i32 %126, 1000
  %128 = icmp ule i32 %120, %127
  %129 = icmp eq i32 %120, -22
  %130 = or i1 %129, %128
  br i1 %130, label %137, label %133

131:                                              ; preds = %113
  %132 = icmp eq i32 %120, -22
  br i1 %132, label %137, label %133

133:                                              ; preds = %131, %123
  %134 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.15, i32 noundef %120) #11
  %135 = load ptr, ptr %4, align 4
  %136 = getelementptr inbounds %struct.power_supply_battery_info, ptr %135, i32 0, i32 3
  store i32 -22, ptr %136, align 4
  br label %137

137:                                              ; preds = %133, %131, %123
  %138 = phi i32 [ -22, %133 ], [ -22, %131 ], [ %120, %123 ]
  %139 = phi ptr [ %135, %133 ], [ %114, %131 ], [ %114, %123 ]
  %140 = getelementptr inbounds %struct.power_supply_battery_info, ptr %139, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, -22
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.power_supply_battery_info, ptr %139, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, -22
  %147 = icmp eq i32 %138, -22
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %265, label %151

149:                                              ; preds = %137
  %150 = icmp eq i32 %138, -22
  br i1 %150, label %265, label %151

151:                                              ; preds = %149, %143
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  %152 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(34) %152, i8 0, i64 34, i1 false) #10
  %153 = load ptr, ptr %30, align 4
  %154 = load i8, ptr %153, align 2
  store i8 %154, ptr %2, align 1
  %155 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %2, i32 0, i32 1
  %156 = getelementptr inbounds %struct.bq27xxx_dm_reg, ptr %153, i32 0, i32 1
  %157 = load i8, ptr %156, align 1
  %158 = lshr i8 %157, 5
  store i8 %158, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  %159 = getelementptr %struct.bq27xxx_dm_reg, ptr %153, i32 2
  %160 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(34) %160, i8 0, i64 34, i1 false) #10
  %161 = load i8, ptr %159, align 2
  store i8 %161, ptr %3, align 1
  %162 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %3, i32 0, i32 1
  %163 = getelementptr %struct.bq27xxx_dm_reg, ptr %153, i32 2, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = lshr i8 %164, 5
  store i8 %165, ptr %162, align 1
  %166 = load i32, ptr %27, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %151
  %169 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.16) #11
  br label %264

170:                                              ; preds = %151
  %171 = lshr i32 %166, 16
  %172 = icmp eq ptr %0, null
  br i1 %172, label %196, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %24, align 4
  %175 = load i8, ptr %174, align 1
  %176 = icmp eq i8 %175, -1
  br i1 %176, label %196, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %196, label %181

181:                                              ; preds = %177
  %182 = call i32 %179(ptr noundef nonnull %0, i8 noundef zeroext %175, i32 noundef %171, i1 noundef zeroext false) #10
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr %27, align 4
  %186 = load ptr, ptr %24, align 4
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, -1
  br i1 %188, label %196, label %189

189:                                              ; preds = %184
  %190 = load ptr, ptr %178, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = and i32 %185, 65535
  %194 = call i32 %190(ptr noundef nonnull %0, i8 noundef zeroext %187, i32 noundef %193, i1 noundef zeroext false) #10
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192, %189, %184, %181, %177, %173, %170
  %197 = phi i32 [ %182, %181 ], [ %194, %192 ], [ -1, %177 ], [ -22, %170 ], [ -22, %173 ], [ -1, %189 ], [ -22, %184 ]
  %198 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.17, i32 noundef %197) #11
  br label %264

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.power_supply_battery_info, ptr %139, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, -22
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load i32, ptr %140, align 4
  %205 = icmp eq i32 %204, -22
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  call fastcc void @bq27xxx_battery_read_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  %207 = load i32, ptr %200, align 4
  %208 = sdiv i32 %207, 1000
  call fastcc void @bq27xxx_battery_update_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %208) #10
  %209 = load i32, ptr %140, align 4
  %210 = sdiv i32 %209, 1000
  call fastcc void @bq27xxx_battery_update_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %210) #10
  br label %211

211:                                              ; preds = %206, %203, %199
  %212 = getelementptr inbounds %struct.power_supply_battery_info, ptr %139, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, -22
  br i1 %214, label %231, label %215

215:                                              ; preds = %211
  %216 = load i8, ptr %2, align 1
  %217 = icmp eq i8 %216, %161
  %218 = load i8, ptr %155, align 1
  %219 = icmp eq i8 %218, %165
  %220 = select i1 %217, i1 %219, i1 false
  br i1 %220, label %223, label %221

221:                                              ; preds = %215
  call fastcc void @bq27xxx_battery_read_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  %222 = load i32, ptr %212, align 4
  br label %223

223:                                              ; preds = %221, %215
  %224 = phi i32 [ %222, %221 ], [ %213, %215 ]
  %225 = phi ptr [ %3, %221 ], [ %2, %215 ]
  %226 = sdiv i32 %224, 1000
  call fastcc void @bq27xxx_battery_update_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %225, i32 noundef 2, i32 noundef %226) #10
  %227 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %3, i32 0, i32 4
  %228 = load i8, ptr %227, align 1
  %229 = and i8 %228, 1
  %230 = icmp ne i8 %229, 0
  br label %231

231:                                              ; preds = %223, %211
  %232 = phi i1 [ false, %211 ], [ %230, %223 ]
  %233 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %2, i32 0, i32 4
  %234 = load i8, ptr %233, align 1, !range !11
  %235 = icmp ne i8 %234, 0
  %236 = select i1 %235, i1 true, i1 %232
  call fastcc void @bq27xxx_battery_write_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  call fastcc void @bq27xxx_battery_write_dm_block(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  %237 = load ptr, ptr %24, align 4
  %238 = load i8, ptr %237, align 1
  %239 = icmp eq i8 %238, -1
  br i1 %239, label %246, label %240

240:                                              ; preds = %231
  %241 = load ptr, ptr %178, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = call i32 %241(ptr noundef nonnull %0, i8 noundef zeroext %238, i32 noundef 32, i1 noundef zeroext false) #10
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243, %240, %231
  %247 = phi i32 [ %244, %243 ], [ -1, %240 ], [ -22, %231 ]
  %248 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.32, i32 noundef %247) #11
  br label %249

249:                                              ; preds = %246, %243
  br i1 %236, label %250, label %264

250:                                              ; preds = %249
  %251 = load i32, ptr %33, align 4
  %252 = and i32 %251, 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %250
  %255 = load ptr, ptr %24, align 4
  %256 = load i8, ptr %255, align 1
  %257 = icmp eq i8 %256, -1
  br i1 %257, label %263, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %178, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = call i32 %259(ptr noundef nonnull %0, i8 noundef zeroext %256, i32 noundef 65, i1 noundef zeroext false) #10
  br label %263

263:                                              ; preds = %261, %258, %254
  call void @usleep_range_state(i32 noundef 300000, i32 noundef 300500, i32 noundef 2) #10
  br label %264

264:                                              ; preds = %263, %250, %249, %196, %168
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  br label %265

265:                                              ; preds = %264, %149, %143, %64, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @bq27xxx_battery_update(ptr noundef %0)
  call void @mutex_lock(ptr noundef nonnull @bq27xxx_list_lock) #10
  %266 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 13
  %267 = load ptr, ptr @bq27xxx_battery_devices, align 4
  %268 = getelementptr inbounds %struct.list_head, ptr %267, i32 0, i32 1
  store ptr %266, ptr %268, align 4
  store ptr %267, ptr %266, align 4
  %269 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 13, i32 1
  store ptr @bq27xxx_battery_devices, ptr %269, align 4
  store volatile ptr %266, ptr @bq27xxx_battery_devices, align 4
  call void @mutex_unlock(ptr noundef nonnull @bq27xxx_list_lock) #10
  br label %270

270:                                              ; preds = %265, %54, %1
  %271 = phi i32 [ %57, %54 ], [ 0, %265 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret i32 %271
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bq27xxx_battery_poll(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -92
  tail call void @bq27xxx_battery_update(ptr noundef %2)
  %3 = load i32, ptr @poll_interval, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = mul i32 %3, 100
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %0, i32 noundef %6) #10
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq27xxx_battery_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 500
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = sub i32 %8, %9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 11
  %14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %13) #10
  tail call void @bq27xxx_battery_update(ptr noundef %4) #10
  %15 = load i32, ptr @poll_interval, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = mul i32 %15, 100
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %13, i32 noundef %18) #10
  br label %21

21:                                               ; preds = %17, %12, %3
  tail call void @mutex_unlock(ptr noundef %5) #10
  %22 = icmp eq i32 %1, 3
  %23 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 8
  %24 = load i32, ptr %23, align 4
  br i1 %22, label %32, label %25

25:                                               ; preds = %21
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %113, label %27

27:                                               ; preds = %25
  switch i32 %1, label %113 [
    i32 0, label %28
    i32 12, label %30
    i32 21, label %105
    i32 17, label %35
    i32 47, label %37
    i32 51, label %42
    i32 52, label %43
    i32 60, label %49
    i32 61, label %54
    i32 62, label %59
    i32 6, label %64
    i32 26, label %71
    i32 24, label %85
    i32 22, label %90
    i32 74, label %112
    i32 2, label %107
    i32 7, label %95
    i32 45, label %100
  ]

28:                                               ; preds = %27
  %29 = tail call fastcc i32 @bq27xxx_battery_current_and_status(ptr noundef %4, ptr noundef null, ptr noundef %2)
  br label %113

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @bq27xxx_battery_voltage(ptr noundef %4, ptr noundef %2)
  br label %113

32:                                               ; preds = %21
  %33 = xor i32 %24, -1
  %34 = lshr i32 %33, 31
  store i32 %34, ptr %2, align 4
  br label %113

35:                                               ; preds = %27
  %36 = tail call fastcc i32 @bq27xxx_battery_current_and_status(ptr noundef %4, ptr noundef %2, ptr noundef null)
  br label %113

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %113, label %41

41:                                               ; preds = %37
  store i32 %39, ptr %2, align 4
  br label %113

42:                                               ; preds = %27
  tail call fastcc void @bq27xxx_battery_capacity_level(ptr noundef %4, ptr noundef %2)
  br label %113

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %113, label %47

47:                                               ; preds = %43
  %48 = add nsw i32 %45, -2731
  store i32 %48, ptr %2, align 4
  br label %113

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %113, label %53

53:                                               ; preds = %49
  store i32 %51, ptr %2, align 4
  br label %113

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %113, label %58

58:                                               ; preds = %54
  store i32 %56, ptr %2, align 4
  br label %113

59:                                               ; preds = %27
  %60 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %113, label %63

63:                                               ; preds = %59
  store i32 %61, ptr %2, align 4
  br label %113

64:                                               ; preds = %27
  %65 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, ptr %2, align 4
  br label %113

70:                                               ; preds = %64
  store i32 2, ptr %2, align 4
  br label %113

71:                                               ; preds = %27
  %72 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 10
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, -1
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = tail call fastcc i32 @bq27xxx_battery_read_nac(ptr noundef %4)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %113, label %80

80:                                               ; preds = %77
  store i32 %78, ptr %2, align 4
  br label %113

81:                                               ; preds = %71
  %82 = tail call fastcc i32 @bq27xxx_battery_read_rc(ptr noundef %4)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %81
  store i32 %82, ptr %2, align 4
  br label %113

85:                                               ; preds = %27
  %86 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %85
  store i32 %87, ptr %2, align 4
  br label %113

90:                                               ; preds = %27
  %91 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %90
  store i32 %92, ptr %2, align 4
  br label %113

95:                                               ; preds = %27
  %96 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %95
  store i32 %97, ptr %2, align 4
  br label %113

100:                                              ; preds = %27
  %101 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 7
  %102 = load i32, ptr %101, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %100
  store i32 %102, ptr %2, align 4
  br label %113

105:                                              ; preds = %27
  %106 = tail call fastcc i32 @bq27xxx_battery_pwr_avg(ptr noundef %4, ptr noundef %2)
  br label %113

107:                                              ; preds = %27
  %108 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %4, i32 0, i32 8, i32 9
  %109 = load i32, ptr %108, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  store i32 %109, ptr %2, align 4
  br label %113

112:                                              ; preds = %27
  store ptr @.str.5, ptr %2, align 4
  br label %113

113:                                              ; preds = %112, %111, %107, %105, %104, %100, %99, %95, %94, %90, %89, %85, %84, %81, %80, %77, %70, %69, %63, %59, %58, %54, %53, %49, %47, %43, %42, %41, %37, %35, %32, %30, %28, %27, %25
  %114 = phi i32 [ -19, %25 ], [ -22, %27 ], [ 0, %112 ], [ %106, %105 ], [ 0, %69 ], [ 0, %70 ], [ 0, %47 ], [ 0, %42 ], [ %36, %35 ], [ 0, %32 ], [ %31, %30 ], [ %29, %28 ], [ 0, %41 ], [ %39, %37 ], [ %45, %43 ], [ 0, %53 ], [ %51, %49 ], [ 0, %58 ], [ %56, %54 ], [ 0, %63 ], [ %61, %59 ], [ 0, %80 ], [ %78, %77 ], [ 0, %84 ], [ %82, %81 ], [ 0, %89 ], [ %87, %85 ], [ 0, %94 ], [ %92, %90 ], [ 0, %99 ], [ %97, %95 ], [ 0, %104 ], [ %102, %100 ], [ 0, %111 ], [ %109, %107 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bq27xxx_external_power_changed(ptr noundef %0) #0 {
  %2 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %2, i32 0, i32 11
  %4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %3) #10
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %3, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register_no_ws(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bq27xxx_battery_teardown(ptr noundef %0) #0 {
  store i32 0, ptr @poll_interval, align 4
  %2 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 11
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #10
  tail call void @mutex_lock(ptr noundef nonnull @bq27xxx_list_lock) #10
  %6 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 13
  %7 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 13, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bq27xxx_list_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @poll_interval_param_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @param_set_uint(ptr noundef %0, ptr noundef %1) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @bq27xxx_list_lock) #10
  %13 = load ptr, ptr @bq27xxx_battery_devices, align 4
  %14 = icmp eq ptr %13, @bq27xxx_battery_devices
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %21, %15 ], [ %13, %12 ]
  %17 = getelementptr i8, ptr %16, i32 -48
  %18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %17) #10
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %17, i32 noundef 0) #10
  %21 = load ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, @bq27xxx_battery_devices
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %12
  tail call void @mutex_unlock(ptr noundef nonnull @bq27xxx_list_lock) #10
  br label %24

24:                                               ; preds = %23, %8, %2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_current_and_status(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef nonnull %0, i8 noundef zeroext %11, i1 noundef zeroext false) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %7, %3
  %19 = phi i32 [ %16, %13 ], [ -22, %7 ], [ -22, %3 ]
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6) #11
  br label %71

21:                                               ; preds = %13
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = and i32 %5, 1
  %28 = icmp ne i32 %27, 0
  %29 = load ptr, ptr %14, align 4
  %30 = tail call i32 %29(ptr noundef nonnull %0, i8 noundef zeroext %24, i1 noundef zeroext %28) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %21
  %33 = phi i32 [ %30, %26 ], [ -22, %21 ]
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.7) #11
  br label %71

35:                                               ; preds = %26
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = and i32 %30, 128
  %41 = icmp eq i32 %40, 0
  %42 = sub nsw i32 0, %16
  %43 = select i1 %41, i32 %42, i32 %16
  %44 = mul i32 %43, 3570
  %45 = sdiv i32 %44, 20
  br label %50

46:                                               ; preds = %35
  %47 = shl i32 %16, 16
  %48 = ashr exact i32 %47, 16
  %49 = mul nsw i32 %48, 1000
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i32 [ %45, %39 ], [ %49, %46 ]
  %52 = icmp eq ptr %1, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 %51, ptr %1, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = icmp eq ptr %2, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %54
  %57 = icmp sgt i32 %51, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store i32 1, ptr %2, align 4
  br label %71

59:                                               ; preds = %56
  %60 = icmp slt i32 %51, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  store i32 2, ptr %2, align 4
  br label %71

62:                                               ; preds = %59
  %63 = load i32, ptr %4, align 4
  %64 = and i32 %63, 33
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 512, i32 32
  %67 = and i32 %66, %30
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 4, ptr %2, align 4
  br label %71

70:                                               ; preds = %62
  store i32 3, ptr %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %61, %58, %54, %32, %18
  %72 = phi i32 [ %19, %18 ], [ %33, %32 ], [ 0, %58 ], [ 0, %69 ], [ 0, %70 ], [ 0, %61 ], [ 0, %54 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_voltage(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef nonnull %0, i8 noundef zeroext %8, i1 noundef zeroext false) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %4, %2
  %16 = phi i32 [ %13, %10 ], [ -22, %4 ], [ -22, %2 ]
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8) #11
  br label %20

18:                                               ; preds = %10
  %19 = mul i32 %13, 1000
  store i32 %19, ptr %1, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %16, %15 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @bq27xxx_battery_capacity_level(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 8, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = and i32 %9, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = and i32 %9, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 3, i32 1
  br label %40

19:                                               ; preds = %2
  %20 = and i32 %4, 32
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 8, i32 8
  %23 = load i32, ptr %22, align 4
  br i1 %21, label %31, label %24

24:                                               ; preds = %19
  %25 = and i32 %23, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = and i32 %23, 16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 3, i32 1
  br label %40

31:                                               ; preds = %19
  %32 = and i32 %23, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = and i32 %23, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = and i32 %23, 2
  %39 = xor i32 %38, 3
  br label %40

40:                                               ; preds = %37, %34, %31, %27, %24, %15, %12, %7
  %41 = phi i32 [ 5, %7 ], [ 2, %12 ], [ %18, %15 ], [ 5, %24 ], [ %30, %27 ], [ 5, %31 ], [ 2, %34 ], [ %39, %37 ]
  store i32 %41, ptr %1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_read_nac(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %0, null
  br i1 %5, label %20, label %7

7:                                                ; preds = %1
  br i1 %6, label %38, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %0, i8 noundef zeroext %12, i1 noundef zeroext true) #10
  %18 = and i32 %17, -2147483632
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %38, label %21

20:                                               ; preds = %1
  br i1 %6, label %38, label %21

21:                                               ; preds = %20, %14, %8
  %22 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 10
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef nonnull %0, i8 noundef zeroext %25, i1 noundef zeroext false) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %2, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1000, i32 178
  %37 = mul i32 %36, %30
  br label %38

38:                                               ; preds = %32, %27, %21, %20, %14, %7
  %39 = phi i32 [ -61, %14 ], [ %37, %32 ], [ %30, %27 ], [ -22, %21 ], [ -22, %20 ], [ -22, %7 ]
  ret i32 %39
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_read_rc(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 11
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef nonnull %0, i8 noundef zeroext %7, i1 noundef zeroext false) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1000, i32 178
  %20 = mul i32 %19, %12
  br label %21

21:                                               ; preds = %14, %9, %3, %1
  %22 = phi i32 [ %20, %14 ], [ %12, %9 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_pwr_avg(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 17
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef nonnull %0, i8 noundef zeroext %8, i1 noundef zeroext false) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %4, %2
  %16 = phi i32 [ %13, %10 ], [ -22, %4 ], [ -22, %2 ]
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9, i32 noundef 17, i32 noundef %16) #11
  br label %32

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = mul i32 %13, 29200
  %25 = sdiv i32 %24, 20
  br label %30

26:                                               ; preds = %18
  %27 = shl i32 %13, 16
  %28 = ashr exact i32 %27, 16
  %29 = mul nsw i32 %28, 10000
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %29, %26 ], [ %25, %23 ]
  store i32 %31, ptr %1, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi i32 [ %16, %15 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_read_dm_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 3
  store i8 0, ptr %3, align 1
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 19
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %74, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %74, label %16

16:                                               ; preds = %12
  %17 = zext i8 %4 to i32
  %18 = tail call i32 %14(ptr noundef nonnull %0, i8 noundef zeroext %10, i32 noundef %17, i1 noundef zeroext true) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %74, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %74, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %13, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %27
  %31 = zext i8 %22 to i32
  %32 = tail call i32 %28(ptr noundef nonnull %0, i8 noundef zeroext %25, i32 noundef %31, i1 noundef zeroext true) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %30
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #10
  %35 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 2
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr i8, ptr %36, i32 21
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, -1
  br i1 %39, label %74, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef nonnull %0, i8 noundef zeroext %38, ptr noundef %35, i32 noundef 32) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %48, i32 22
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %74, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef nonnull %0, i8 noundef zeroext %50, i1 noundef zeroext true) #10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %57, %52
  %58 = phi i32 [ %64, %57 ], [ 0, %52 ]
  %59 = phi i32 [ %65, %57 ], [ 0, %52 ]
  %60 = getelementptr %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 2, i32 %58
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %59, %62
  %64 = add nuw nsw i32 %58, 1
  %65 = and i32 %63, 65535
  %66 = icmp eq i32 %64, 32
  br i1 %66, label %67, label %57

67:                                               ; preds = %57
  %68 = trunc i32 %63 to i8
  %69 = xor i8 %68, -1
  %70 = trunc i32 %55 to i8
  %71 = icmp eq i8 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  store i8 1, ptr %3, align 1
  %73 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 4
  store i8 0, ptr %73, align 1
  br label %77

74:                                               ; preds = %67, %52, %47, %44, %40, %34, %30, %27, %20, %16, %12, %6, %2
  %75 = phi i32 [ %18, %16 ], [ %32, %30 ], [ %45, %44 ], [ %55, %52 ], [ -22, %67 ], [ -1, %12 ], [ -22, %2 ], [ -22, %6 ], [ -1, %27 ], [ -22, %20 ], [ -1, %40 ], [ -22, %34 ], [ -22, %47 ]
  %76 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.18, i32 noundef %75) #11
  br label %77

77:                                               ; preds = %74, %72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_update_dm_block(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.bq27xxx_dm_reg, ptr %6, i32 %2
  %8 = getelementptr [3 x ptr], ptr @bq27xxx_dm_reg_name, i32 0, i32 %2
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %1, align 1
  %11 = load i8, ptr %7, align 2
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.bq27xxx_dm_reg, ptr %6, i32 %2, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %19, 5
  %21 = icmp eq i32 %20, %16
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 2
  %24 = and i32 %19, 31
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %13, %4
  %28 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.19, ptr noundef %9) #11
  br label %57

29:                                               ; preds = %22
  %30 = getelementptr %struct.bq27xxx_dm_reg, ptr %6, i32 %2, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.20, ptr noundef %9) #11
  br label %57

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 3
  %37 = load i8, ptr %36, align 1, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = load i16, ptr %25, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #10
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %9, i32 noundef %3) #11
  br label %57

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr %0, align 4
  br i1 %50, label %52, label %53

52:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.22, ptr noundef %9, i32 noundef %42, i32 noundef %3) #11
  br label %57

53:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef %3) #11
  %54 = trunc i32 %3 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  store i16 %55, ptr %25, align 2
  %56 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 4
  store i8 1, ptr %56, align 1
  br label %57

57:                                               ; preds = %53, %52, %44, %35, %33, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bq27xxx_battery_write_dm_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 4
  %8 = load i8, ptr %7, align 1, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %119, label %10

10:                                               ; preds = %2
  br i1 %6, label %19, label %11

11:                                               ; preds = %10
  %12 = tail call fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef %0, i1 noundef zeroext true) #10
  %13 = icmp slt i32 %12, 0
  %14 = icmp ne i32 %12, -22
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.28, i32 noundef %12) #11
  br label %18

18:                                               ; preds = %16, %11
  br i1 %13, label %119, label %19

19:                                               ; preds = %18, %10
  %20 = icmp eq ptr %0, null
  br i1 %20, label %108, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 18
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %108, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %108, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %0, i8 noundef zeroext %25, i32 noundef 0, i1 noundef zeroext true) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %108, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %1, align 1
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr i8, ptr %36, i32 19
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, -1
  br i1 %39, label %108, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %28, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %108, label %43

43:                                               ; preds = %40
  %44 = zext i8 %35 to i32
  %45 = tail call i32 %41(ptr noundef nonnull %0, i8 noundef zeroext %38, i32 noundef %44, i1 noundef zeroext true) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %108, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = load ptr, ptr %22, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, -1
  br i1 %53, label %108, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %28, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %108, label %57

57:                                               ; preds = %54
  %58 = zext i8 %49 to i32
  %59 = tail call i32 %55(ptr noundef nonnull %0, i8 noundef zeroext %52, i32 noundef %58, i1 noundef zeroext true) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %108, label %61

61:                                               ; preds = %57
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #10
  %62 = getelementptr inbounds %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 2
  %63 = load ptr, ptr %22, align 4
  %64 = getelementptr i8, ptr %63, i32 21
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, -1
  br i1 %66, label %108, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %108, label %71

71:                                               ; preds = %67
  %72 = tail call i32 %69(ptr noundef nonnull %0, i8 noundef zeroext %65, ptr noundef %62, i32 noundef 32) #10
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %74, %71
  %75 = phi i32 [ %81, %74 ], [ 0, %71 ]
  %76 = phi i32 [ %82, %74 ], [ 0, %71 ]
  %77 = getelementptr %struct.bq27xxx_dm_buf, ptr %1, i32 0, i32 2, i32 %75
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add nuw nsw i32 %76, %79
  %81 = add nuw nsw i32 %75, 1
  %82 = and i32 %80, 65535
  %83 = icmp eq i32 %81, 32
  br i1 %83, label %84, label %74

84:                                               ; preds = %74
  %85 = load ptr, ptr %22, align 4
  %86 = getelementptr i8, ptr %85, i32 22
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, -1
  br i1 %88, label %108, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %28, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %89
  %93 = and i32 %80, 255
  %94 = xor i32 %93, 255
  %95 = tail call i32 %90(ptr noundef nonnull %0, i8 noundef zeroext %87, i32 noundef %94, i1 noundef zeroext true) #10
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  br i1 %6, label %106, label %98

98:                                               ; preds = %97
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #10
  %99 = tail call fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef nonnull %0, i1 noundef zeroext false) #10
  %100 = icmp slt i32 %99, 0
  %101 = icmp ne i32 %99, -22
  %102 = and i1 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.31, i32 noundef %99) #11
  br label %105

105:                                              ; preds = %103, %98
  br i1 %100, label %119, label %107

106:                                              ; preds = %97
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 100500, i32 noundef 2) #10
  br label %107

107:                                              ; preds = %106, %105
  store i8 0, ptr %7, align 1
  br label %119

108:                                              ; preds = %92, %89, %84, %71, %67, %61, %57, %54, %47, %43, %40, %34, %31, %27, %21, %19
  %109 = phi i32 [ %32, %31 ], [ %45, %43 ], [ %59, %57 ], [ %72, %71 ], [ %95, %92 ], [ -1, %27 ], [ -22, %19 ], [ -22, %21 ], [ -1, %40 ], [ -22, %34 ], [ -1, %54 ], [ -22, %47 ], [ -1, %67 ], [ -22, %61 ], [ -1, %89 ], [ -22, %84 ]
  br i1 %6, label %117, label %110

110:                                              ; preds = %108
  %111 = tail call fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef %0, i1 noundef zeroext false) #10
  %112 = icmp slt i32 %111, 0
  %113 = icmp ne i32 %111, -22
  %114 = and i1 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.31, i32 noundef %111) #11
  br label %117

117:                                              ; preds = %115, %110, %108
  %118 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.27, i32 noundef %109) #11
  br label %119

119:                                              ; preds = %117, %107, %105, %18, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bq27xxx_battery_cfgupdate_priv(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = select i1 %1, i32 19, i32 66
  %15 = tail call i32 %11(ptr noundef nonnull %0, i8 noundef zeroext %7, i32 noundef %14, i1 noundef zeroext false) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 7
  %19 = zext i1 %1 to i32
  br label %20

20:                                               ; preds = %34, %17
  %21 = phi i32 [ %35, %34 ], [ 100, %17 ]
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 25500, i32 noundef 2) #10
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, -1
  br i1 %25, label %49, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %18, align 4
  %28 = tail call i32 %27(ptr noundef nonnull %0, i8 noundef zeroext %24, i1 noundef zeroext false) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = lshr i32 %28, 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %21, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %20

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.bq27xxx_device_info, ptr %0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 24
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.29, i32 noundef %19) #11
  br label %49

43:                                               ; preds = %37, %30
  %44 = phi i32 [ 0, %37 ], [ %21, %30 ]
  %45 = sub i32 100, %44
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.30, i32 noundef %19, i32 noundef %45) #11
  br label %49

49:                                               ; preds = %47, %43, %41, %26, %20, %13, %9, %4, %2
  %50 = phi i32 [ -22, %41 ], [ %15, %13 ], [ 0, %47 ], [ 0, %43 ], [ -1, %9 ], [ -22, %2 ], [ -22, %4 ], [ -22, %20 ], [ %28, %26 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
