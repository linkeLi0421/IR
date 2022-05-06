; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib9000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib9000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_fw_set_component_bus_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_fw_set_component_bus_speed\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_fw_set_component_bus_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_get_tuner_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_get_tuner_interface\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_get_tuner_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_get_component_bus_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_get_component_bus_interface\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_get_component_bus_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_get_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_get_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_get_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_set_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_set_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_set_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_set_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_set_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_set_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_fw_pid_filter_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_fw_pid_filter_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_fw_pid_filter_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_fw_pid_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_fw_pid_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_fw_pid_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_firmware_post_pll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_firmware_post_pll_init\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_firmware_post_pll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_i2c_enumeration:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_i2c_enumeration\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_i2c_enumeration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_set_slave_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_set_slave_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_set_slave_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_get_slave_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_get_slave_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_get_slave_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib9000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib9000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib9000_attach:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib9000_state = type { %struct.i2c_device, %struct.dibx000_i2c_master, %struct.i2c_adapter, %struct.i2c_adapter, i16, i8, i32, i32, %struct.dvb_frontend_parametersContext, i8, i16, i16, i16, %union.anon.73, %union.anon.76, [6 x ptr], i16, [2 x %struct.i2c_msg], [255 x i8], [255 x i8], %struct.mutex, i8, [10 x %struct.dib9000_pid_ctrl], i8 }
%struct.i2c_device = type { ptr, i8, ptr, ptr }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, ptr, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_frontend_parametersContext = type { i8, [2 x i32], i32, [9 x i16] }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { [18 x %struct.dib9000_fe_memory_map], i8, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, [2 x [54 x i16]], i8 }
%struct.dib9000_fe_memory_map = type { i16, i16 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.dib9000_config }
%struct.dib9000_config = type { i8, i8, i8, ptr, i16, i32, i32, i32, i32, ptr, i32, [2 x %struct.dibGPIOFunction], %struct.dibSubbandSelection, i8 }
%struct.dibGPIOFunction = type { i8, i8, i32, i32, i32 }
%struct.dibSubbandSelection = type { i8, [8 x %struct.anon.78] }
%struct.anon.78 = type { i16, %struct.dibGPIOFunction }
%struct.dib9000_pid_ctrl = type { i8, i8, i16, i8 }
%struct.dibDVBTChannel = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib9000_fw_set_component_bus_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_fw_set_component_bus_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_fw_set_component_bus_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_fw_set_component_bus_speed to i32), ptr @__kstrtab_dib9000_fw_set_component_bus_speed, ptr @__kstrtabns_dib9000_fw_set_component_bus_speed }, section "___ksymtab+dib9000_fw_set_component_bus_speed", align 4
@__kstrtab_dib9000_get_tuner_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_get_tuner_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_get_tuner_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_get_tuner_interface to i32), ptr @__kstrtab_dib9000_get_tuner_interface, ptr @__kstrtabns_dib9000_get_tuner_interface }, section "___ksymtab+dib9000_get_tuner_interface", align 4
@__kstrtab_dib9000_get_component_bus_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_get_component_bus_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_get_component_bus_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_get_component_bus_interface to i32), ptr @__kstrtab_dib9000_get_component_bus_interface, ptr @__kstrtabns_dib9000_get_component_bus_interface }, section "___ksymtab+dib9000_get_component_bus_interface", align 4
@__kstrtab_dib9000_get_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_get_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_get_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_get_i2c_master to i32), ptr @__kstrtab_dib9000_get_i2c_master, ptr @__kstrtabns_dib9000_get_i2c_master }, section "___ksymtab+dib9000_get_i2c_master", align 4
@__kstrtab_dib9000_set_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_set_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_set_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_set_i2c_adapter to i32), ptr @__kstrtab_dib9000_set_i2c_adapter, ptr @__kstrtabns_dib9000_set_i2c_adapter }, section "___ksymtab+dib9000_set_i2c_adapter", align 4
@__kstrtab_dib9000_set_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_set_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_set_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_set_gpio to i32), ptr @__kstrtab_dib9000_set_gpio, ptr @__kstrtabns_dib9000_set_gpio }, section "___ksymtab+dib9000_set_gpio", align 4
@.str = private unnamed_addr constant [40 x i8] c"\017dib9000: %s: pid filter cmd postpone\0A\00", align 1
@__func__.dib9000_fw_pid_filter_ctrl = private unnamed_addr constant [27 x i8] c"dib9000_fw_pid_filter_ctrl\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\017dib9000: %s: could not get the lock\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\017dib9000: %s: PID filter enabled %d\0A\00", align 1
@__kstrtab_dib9000_fw_pid_filter_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_fw_pid_filter_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_fw_pid_filter_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_fw_pid_filter_ctrl to i32), ptr @__kstrtab_dib9000_fw_pid_filter_ctrl, ptr @__kstrtabns_dib9000_fw_pid_filter_ctrl }, section "___ksymtab+dib9000_fw_pid_filter_ctrl", align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"\017dib9000: %s: pid filter postpone\0A\00", align 1
@__func__.dib9000_fw_pid_filter = private unnamed_addr constant [22 x i8] c"dib9000_fw_pid_filter\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\017dib9000: %s: can not add any more pid ctrl cmd\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\017dib9000: %s: Index %x, PID %d, OnOff %d\0A\00", align 1
@__kstrtab_dib9000_fw_pid_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_fw_pid_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_fw_pid_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_fw_pid_filter to i32), ptr @__kstrtab_dib9000_fw_pid_filter, ptr @__kstrtabns_dib9000_fw_pid_filter }, section "___ksymtab+dib9000_fw_pid_filter", align 4
@__kstrtab_dib9000_firmware_post_pll_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_firmware_post_pll_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_firmware_post_pll_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_firmware_post_pll_init to i32), ptr @__kstrtab_dib9000_firmware_post_pll_init, ptr @__kstrtabns_dib9000_firmware_post_pll_init }, section "___ksymtab+dib9000_firmware_post_pll_init", align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"\017dib9000: %s: %s: not enough memory\0A\00", align 1
@__func__.dib9000_i2c_enumeration = private unnamed_addr constant [24 x i8] c"dib9000_i2c_enumeration\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\017dib9000: %s: DiB9000 #%d: not identified\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"\017dib9000: %s: IC %d initialized (to i2c_address 0x%x)\0A\00", align 1
@__kstrtab_dib9000_i2c_enumeration = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_i2c_enumeration = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_i2c_enumeration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_i2c_enumeration to i32), ptr @__kstrtab_dib9000_i2c_enumeration, ptr @__kstrtabns_dib9000_i2c_enumeration }, section "___ksymtab+dib9000_i2c_enumeration", align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"\017dib9000: %s: set slave fe %p to index %i\0A\00", align 1
@__func__.dib9000_set_slave_frontend = private unnamed_addr constant [27 x i8] c"dib9000_set_slave_frontend\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\017dib9000: %s: too many slave frontend\0A\00", align 1
@__kstrtab_dib9000_set_slave_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_set_slave_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_set_slave_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_set_slave_frontend to i32), ptr @__kstrtab_dib9000_set_slave_frontend, ptr @__kstrtabns_dib9000_set_slave_frontend }, section "___ksymtab+dib9000_set_slave_frontend", align 4
@__kstrtab_dib9000_get_slave_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_get_slave_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_get_slave_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_get_slave_frontend to i32), ptr @__kstrtab_dib9000_get_slave_frontend, ptr @__kstrtabns_dib9000_get_slave_frontend }, section "___ksymtab+dib9000_get_slave_frontend", align 4
@dib9000_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"&st->platform.risc.mbx_if_lock\00", align 1
@dib9000_attach.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"&st->platform.risc.mbx_lock\00", align 1
@dib9000_attach.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"&st->platform.risc.mem_lock\00", align 1
@dib9000_attach.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"&st->platform.risc.mem_mbx_lock\00", align 1
@dib9000_attach.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"&st->demod_lock\00", align 1
@dib9000_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 9000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib9000_release, ptr null, ptr @dib9000_wakeup, ptr @dib9000_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib9000_set_frontend, ptr @dib9000_fe_get_tune_settings, ptr @dib9000_get_frontend, ptr @dib9000_read_status, ptr @dib9000_read_ber, ptr @dib9000_read_signal_strength, ptr @dib9000_read_snr, ptr @dib9000_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"DIB9000_FW TUNER ACCESS\00", align 1
@dib9000_tuner_algo = internal constant %struct.i2c_algorithm { ptr @dib9000_tuner_xfer, ptr null, ptr null, ptr null, ptr @dib9000_i2c_func, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"DIB9000_FW COMPONENT BUS ACCESS\00", align 1
@dib9000_component_bus_algo = internal constant %struct.i2c_algorithm { ptr @dib9000_fw_component_bus_xfer, ptr null, ptr null, ptr null, ptr @dib9000_i2c_func, ptr null, ptr null }, align 4
@__kstrtab_dib9000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib9000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib9000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib9000_attach to i32), ptr @__kstrtab_dib9000_attach, ptr @__kstrtabns_dib9000_attach }, section "___ksymtab+dib9000_attach", align 4
@__UNIQUE_ID_author255 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [50 x i8] c"author=Olivier Grenie <olivier.grenie@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [57 x i8] c"description=Driver for the DiBcom 9000 COFDM demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"\017dib9000: %s: gpio dir: %04x: gpio val: %04x\0A\00", align 1
@__func__.dib9000_cfg_gpio = private unnamed_addr constant [17 x i8] c"dib9000_cfg_gpio\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"\017dib9000: %s: i2c read error on %d\0A\00", align 1
@__func__.dib9000_read16_attr = private unnamed_addr constant [20 x i8] c"dib9000_read16_attr\00", align 1
@__func__.dib9000_mbx_send_attr = private unnamed_addr constant [22 x i8] c"dib9000_mbx_send_attr\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"\017dib9000: %s: MBX: RISC mbx full, retrying\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"\017dib9000: %s: waiting for message %d timed out\0A\00", align 1
@__func__.dib9000_mbx_get_message_attr = private unnamed_addr constant [29 x i8] c"dib9000_mbx_get_message_attr\00", align 1
@__func__.dib9000_mbx_process = private unnamed_addr constant [20 x i8] c"dib9000_mbx_process\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"\017dib9000: %s: MBX: no free cache-slot found for new message...\0A\00", align 1
@__func__.dib9000_mbx_fetch_to_cache = private unnamed_addr constant [27 x i8] c"dib9000_mbx_fetch_to_cache\00", align 1
@__func__.dib9000_mbx_read = private unnamed_addr constant [17 x i8] c"dib9000_mbx_read\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"\017dib9000: %s: MBX: message is too big for message cache (%d), flushing message\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"\017dib9000: %s: %s\0A\00", align 1
@__func__.dib9000_risc_debug_buf = private unnamed_addr constant [23 x i8] c"dib9000_risc_debug_buf\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"\017dib9000: %s: RISC%d: %d.%04d %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@.str.31 = private unnamed_addr constant [116 x i8] c"\017dib9000: %s: error : firmware returned %dbytes needed but the used buffer has only %dbytes\0A Firmware init ABORTED\00", align 1
@__func__.dib9000_fw_init = private unnamed_addr constant [16 x i8] c"dib9000_fw_init\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"\017dib9000: %s: going to download %dB of microcode\0A\00", align 1
@__func__.dib9000_firmware_download = private unnamed_addr constant [26 x i8] c"dib9000_firmware_download\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"\017dib9000: %s: error while downloading microcode for RISC %c\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"\017dib9000: %s: Microcode for RISC %c loaded\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"\017dib9000: %s: MBX: init ERROR, no response from RISC %c\0A\00", align 1
@__func__.dib9000_mbx_host_init = private unnamed_addr constant [22 x i8] c"dib9000_mbx_host_init\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\017dib9000: %s: MBX: initialized\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"\017dib9000: %s: RISC: ver: %d.%02d (IC: %d)\0A\00", align 1
@__func__.dib9000_risc_check_version = private unnamed_addr constant [27 x i8] c"dib9000_risc_check_version\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"\017dib9000: %s: RISC: invalid firmware version\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"\017dib9000: %s: RISC: valid firmware version\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.40 = private unnamed_addr constant [39 x i8] c"\017dib9000: %s: wrong Vendor ID (0x%x)\0A\00", align 1
@__func__.dib9000_identify = private unnamed_addr constant [17 x i8] c"dib9000_identify\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"\017dib9000: %s: wrong Device ID (0x%x)\0A\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"\017dib9000: %s: this driver does not work with DiB7000PC\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"\017dib9000: %s: found DiB7000MA/PA/MB/PB\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"\017dib9000: %s: found DiB7000HC\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"\017dib9000: %s: found DiB7000MC\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"\017dib9000: %s: found DiB9000A\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"\017dib9000: %s: found DiB9000H\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"\017dib9000: %s: found DiB9000M\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"\017dib9000: %s: read register %x error\0A\00", align 1
@__func__.dib9000_i2c_read16 = private unnamed_addr constant [19 x i8] c"dib9000_i2c_read16\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"\017dib9000: %s: TunerITF: read busy\0A\00", align 1
@__func__.dib9000_tuner_xfer = private unnamed_addr constant [19 x i8] c"dib9000_tuner_xfer\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"\017dib9000: %s: TunerITF: read failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"\017dib9000: %s: TunerITF: read more data than expected\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"\017dib9000: %s: TunerITF: write busy\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"\017dib9000: %s: TunerITF: write failed\0A\00", align 1
@__func__.dib9000_fw_component_bus_xfer = private unnamed_addr constant [30 x i8] c"dib9000_fw_component_bus_xfer\00", align 1
@__func__.dib9000_risc_mem_write = private unnamed_addr constant [23 x i8] c"dib9000_risc_mem_write\00", align 1
@__func__.dib9000_risc_mem_read = private unnamed_addr constant [22 x i8] c"dib9000_risc_mem_read\00", align 1
@__func__.dib9000_sleep = private unnamed_addr constant [14 x i8] c"dib9000_sleep\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"\017dib9000: %s: dib9000: must specify frequency\0A\00", align 1
@__func__.dib9000_set_frontend = private unnamed_addr constant [21 x i8] c"dib9000_set_frontend\00", align 1
@.str.56 = private unnamed_addr constant [48 x i8] c"\017dib9000: %s: dib9000: must specify bandwidth\0A\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"\017dib9000: %s: tune failed\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"\017dib9000: %s: tune success on frontend%i\0A\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"\017dib9000: %s: setting output mode for demod %p to %d\0A\00", align 1
@__func__.dib9000_fw_set_output_mode = private unnamed_addr constant [27 x i8] c"dib9000_fw_set_output_mode\00", align 1
@.str.60 = private unnamed_addr constant [68 x i8] c"\017dib9000: %s: Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@fe_info = internal constant [44 x i32] zeroinitializer, align 4
@__func__.dib9000_get_frontend = private unnamed_addr constant [21 x i8] c"dib9000_get_frontend\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"\017dib9000: %s: TPS lock on the slave%i\0A\00", align 1
@__func__.dib9000_fw_get_channel = private unnamed_addr constant [23 x i8] c"dib9000_fw_get_channel\00", align 1
@__func__.dib9000_read_status = private unnamed_addr constant [20 x i8] c"dib9000_read_status\00", align 1
@__func__.dib9000_read_ber = private unnamed_addr constant [17 x i8] c"dib9000_read_ber\00", align 1
@__func__.dib9000_read_signal_strength = private unnamed_addr constant [29 x i8] c"dib9000_read_signal_strength\00", align 1
@__func__.dib9000_read_snr = private unnamed_addr constant [17 x i8] c"dib9000_read_snr\00", align 1
@__func__.dib9000_get_snr = private unnamed_addr constant [16 x i8] c"dib9000_get_snr\00", align 1
@__func__.dib9000_read_unc_blocks = private unnamed_addr constant [24 x i8] c"dib9000_read_unc_blocks\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_license258, ptr @__ksymtab_dib9000_attach, ptr @__ksymtab_dib9000_firmware_post_pll_init, ptr @__ksymtab_dib9000_fw_pid_filter, ptr @__ksymtab_dib9000_fw_pid_filter_ctrl, ptr @__ksymtab_dib9000_fw_set_component_bus_speed, ptr @__ksymtab_dib9000_get_component_bus_interface, ptr @__ksymtab_dib9000_get_i2c_master, ptr @__ksymtab_dib9000_get_slave_frontend, ptr @__ksymtab_dib9000_get_tuner_interface, ptr @__ksymtab_dib9000_i2c_enumeration, ptr @__ksymtab_dib9000_set_gpio, ptr @__ksymtab_dib9000_set_i2c_adapter, ptr @__ksymtab_dib9000_set_slave_frontend, ptr @__param_debug], section "llvm.metadata"
@switch.table.dib9000_get_frontend.63 = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 3, i32 9, i32 5, i32 9, i32 7], align 4
@switch.table.dib9000_get_frontend.64 = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.dib9000_fw_set_output_mode = private unnamed_addr constant [7 x i16] [i16 4, i16 8, i16 0, i16 128, i16 2, i16 1, i16 16], align 2
@switch.table.dib9000_fw_tune.65 = private unnamed_addr constant [7 x i8] c"\01\02\03\FF\05\FF\07", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dib9000_fw_set_component_bus_speed(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 16
  store i16 %1, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dib9000_get_tuner_interface(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 2
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dib9000_get_component_bus_interface(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib9000_get_i2c_master(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 1
  %7 = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %6, i32 noundef %1, i32 noundef %2) #13
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dib9000_set_i2c_adapter(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib9000_set_gpio(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #3 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 19
  %10 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %8, i16 noundef zeroext 773, ptr noundef %9, i32 noundef 2, i16 noundef zeroext 0) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i8, ptr %9, align 1
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 19, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  %19 = or i16 %15, %18
  br label %20

20:                                               ; preds = %12, %4
  %21 = phi i16 [ %19, %12 ], [ 0, %4 ]
  %22 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 10
  %23 = zext i8 %1 to i32
  %24 = shl nuw i32 1, %23
  %25 = trunc i32 %24 to i16
  %26 = xor i16 %25, -1
  %27 = and i16 %21, %26
  %28 = and i8 %2, 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, %23
  %31 = trunc i32 %30 to i16
  %32 = or i16 %27, %31
  store i16 %32, ptr %22, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  %33 = lshr i16 %32, 8
  %34 = trunc i16 %33 to i8
  store i8 %34, ptr %6, align 2
  %35 = getelementptr inbounds i8, ptr %6, i32 1
  %36 = trunc i16 %32 to i8
  store i8 %36, ptr %35, align 1
  %37 = call fastcc i32 @dib9000_write16_attr(ptr noundef %8, i16 noundef zeroext 773, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %38 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %8, i16 noundef zeroext 774, ptr noundef %9, i32 noundef 2, i16 noundef zeroext 0) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %20
  %41 = load i8, ptr %9, align 1
  %42 = zext i8 %41 to i16
  %43 = shl nuw i16 %42, 8
  %44 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 19, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = or i16 %43, %46
  br label %48

48:                                               ; preds = %40, %20
  %49 = phi i16 [ %47, %40 ], [ 0, %20 ]
  %50 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 11
  %51 = and i16 %49, %26
  %52 = and i8 %3, 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 %53, %23
  %55 = trunc i32 %54 to i16
  %56 = or i16 %51, %55
  store i16 %56, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %57 = lshr i16 %56, 8
  %58 = trunc i16 %57 to i8
  store i8 %58, ptr %5, align 2
  %59 = getelementptr inbounds i8, ptr %5, i32 1
  %60 = trunc i16 %56 to i8
  store i8 %60, ptr %59, align 1
  %61 = call fastcc i32 @dib9000_write16_attr(ptr noundef %8, i16 noundef zeroext 774, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %48
  %65 = load i16, ptr %22, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, ptr %50, align 4
  %68 = zext i16 %67 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dib9000_cfg_gpio, i32 noundef %66, i32 noundef %68) #14
  br label %70

70:                                               ; preds = %64, %48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib9000_fw_pid_filter_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #3 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 23
  %7 = load i8, ptr %6, align 2
  %8 = icmp ne i8 %7, -2
  %9 = icmp slt i8 %7, 9
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib9000_fw_pid_filter_ctrl) #14
  %16 = load i8, ptr %6, align 2
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i8 [ %16, %14 ], [ %7, %11 ]
  %19 = add i8 %18, 1
  store i8 %19, ptr %6, align 2
  %20 = sext i8 %19 to i32
  %21 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 22, i32 %20
  store i8 0, ptr %21, align 2
  %22 = load i8, ptr %6, align 2
  %23 = sext i8 %22 to i32
  %24 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 22, i32 %23, i32 3
  store i8 %1, ptr %24, align 2
  br label %64

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 20
  %27 = tail call i32 @mutex_lock_interruptible(ptr noundef %26) #13
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_fw_pid_filter_ctrl) #14
  br label %64

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 19
  %36 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %5, i16 noundef zeroext 295, ptr noundef %35, i32 noundef 2, i16 noundef zeroext 0) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i8, ptr %35, align 1
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 19, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, -17
  %45 = zext i8 %44 to i16
  %46 = or i16 %41, %45
  br label %47

47:                                               ; preds = %38, %34
  %48 = phi i16 [ %46, %38 ], [ 0, %34 ]
  %49 = zext i8 %1 to i16
  %50 = shl nuw nsw i16 %49, 4
  %51 = and i16 %50, 16
  %52 = or i16 %48, %51
  %53 = load i32, ptr @debug, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = zext i8 %1 to i32
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dib9000_fw_pid_filter_ctrl, i32 noundef %56) #14
  br label %58

58:                                               ; preds = %55, %47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %59 = lshr i16 %48, 8
  %60 = trunc i16 %59 to i8
  store i8 %60, ptr %3, align 2
  %61 = getelementptr inbounds i8, ptr %3, i32 1
  %62 = trunc i16 %52 to i8
  store i8 %62, ptr %61, align 1
  %63 = call fastcc i32 @dib9000_write16_attr(ptr noundef %5, i16 noundef zeroext 295, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  tail call void @mutex_unlock(ptr noundef %26) #13
  br label %64

64:                                               ; preds = %58, %32, %29, %17
  %65 = phi i32 [ 0, %17 ], [ %63, %58 ], [ -4, %32 ], [ -4, %29 ]
  ret i32 %65
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib9000_fw_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #3 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 23
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, -2
  br i1 %10, label %36, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib9000_fw_pid_filter) #14
  %16 = load i8, ptr %8, align 2
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i8 [ %16, %14 ], [ %9, %11 ]
  %19 = icmp slt i8 %18, 9
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = add nsw i8 %18, 1
  store i8 %21, ptr %8, align 2
  %22 = sext i8 %21 to i32
  %23 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %22
  store i8 1, ptr %23, align 2
  %24 = load i8, ptr %8, align 2
  %25 = sext i8 %24 to i32
  %26 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %25, i32 1
  store i8 %1, ptr %26, align 1
  %27 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %25, i32 2
  store i16 %2, ptr %27, align 2
  %28 = load i8, ptr %8, align 2
  %29 = sext i8 %28 to i32
  %30 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %29, i32 3
  store i8 %3, ptr %30, align 2
  br label %62

31:                                               ; preds = %17
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dib9000_fw_pid_filter) #14
  br label %62

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 20
  %38 = tail call i32 @mutex_lock_interruptible(ptr noundef %37) #13
  %39 = icmp slt i32 %38, 0
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %39, label %42, label %45

42:                                               ; preds = %36
  br i1 %41, label %62, label %43

43:                                               ; preds = %42
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_fw_pid_filter) #14
  br label %62

45:                                               ; preds = %36
  br i1 %41, label %51, label %46

46:                                               ; preds = %45
  %47 = zext i8 %1 to i32
  %48 = zext i16 %2 to i32
  %49 = zext i8 %3 to i32
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dib9000_fw_pid_filter, i32 noundef %47, i32 noundef %48, i32 noundef %49) #14
  br label %51

51:                                               ; preds = %46, %45
  %52 = zext i8 %1 to i16
  %53 = add nuw nsw i16 %52, 301
  %54 = icmp eq i8 %3, 0
  %55 = or i16 %2, 8192
  %56 = select i1 %54, i16 0, i16 %55
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %57 = lshr i16 %56, 8
  %58 = trunc i16 %57 to i8
  store i8 %58, ptr %5, align 2
  %59 = getelementptr inbounds i8, ptr %5, i32 1
  %60 = trunc i16 %56 to i8
  store i8 %60, ptr %59, align 1
  %61 = call fastcc i32 @dib9000_write16_attr(ptr noundef %7, i16 noundef zeroext %53, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  tail call void @mutex_unlock(ptr noundef %37) #13
  br label %62

62:                                               ; preds = %51, %43, %42, %34, %31, %20
  %63 = phi i32 [ %61, %51 ], [ 0, %31 ], [ 0, %34 ], [ 0, %20 ], [ -4, %43 ], [ -4, %42 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib9000_firmware_post_pll_init(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca [40 x i16], align 2
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(80) %5, i8 0, i32 80, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 17
  store i64 17179869184, ptr %13, align 8
  %14 = getelementptr inbounds %struct.i2c_device, ptr %8, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = lshr i8 %15, 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %13, align 8
  %18 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 18
  %19 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 17, i32 0, i32 3
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 17, i32 0, i32 2
  store i8 4, ptr %18, align 8
  %21 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 18, i32 1
  store i8 -55, ptr %21, align 1
  %22 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 18, i32 2
  store i16 512, ptr %22, align 2
  %23 = load ptr, ptr %8, align 8
  %24 = tail call i32 @i2c_transfer(ptr noundef %23, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %25 = load i8, ptr %14, align 4
  %26 = lshr i8 %25, 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 -54, ptr %21, align 1
  store i16 1280, ptr %22, align 2
  %28 = load ptr, ptr %8, align 8
  %29 = tail call i32 @i2c_transfer(ptr noundef %28, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %30 = load i8, ptr %14, align 4
  %31 = lshr i8 %30, 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 6, ptr %18, align 8
  store i8 6, ptr %21, align 1
  store i16 256, ptr %22, align 2
  %33 = load ptr, ptr %8, align 8
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %35 = load i8, ptr %14, align 4
  %36 = lshr i8 %35, 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 50, ptr %21, align 1
  store i16 0, ptr %22, align 2
  %38 = load ptr, ptr %8, align 8
  %39 = tail call i32 @i2c_transfer(ptr noundef %38, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %40 = load i8, ptr %14, align 4
  %41 = lshr i8 %40, 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 51, ptr %21, align 1
  store i16 0, ptr %22, align 2
  %43 = load ptr, ptr %8, align 8
  %44 = tail call i32 @i2c_transfer(ptr noundef %43, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %45 = load i8, ptr %14, align 4
  %46 = lshr i8 %45, 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 -43, ptr %21, align 1
  store i16 0, ptr %22, align 2
  %48 = load ptr, ptr %8, align 8
  %49 = tail call i32 @i2c_transfer(ptr noundef %48, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %50 = load i8, ptr %14, align 4
  %51 = lshr i8 %50, 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 0, ptr %21, align 1
  store i16 3840, ptr %22, align 2
  %53 = load ptr, ptr %8, align 8
  %54 = tail call i32 @i2c_transfer(ptr noundef %53, ptr noundef %13, i32 noundef 1) #13
  %55 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 13, i32 0, i32 7
  %56 = icmp eq ptr %10, null
  br i1 %56, label %158, label %57

57:                                               ; preds = %1
  store i64 17179869184, ptr %13, align 8
  %58 = load i8, ptr %14, align 4
  %59 = lshr i8 %58, 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 16, ptr %21, align 1
  store i16 512, ptr %22, align 2
  %61 = load ptr, ptr %8, align 8
  %62 = tail call i32 @i2c_transfer(ptr noundef %61, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %63 = load i8, ptr %14, align 4
  %64 = lshr i8 %63, 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 16, ptr %21, align 1
  store i16 3840, ptr %22, align 2
  %66 = load ptr, ptr %8, align 8
  %67 = tail call i32 @i2c_transfer(ptr noundef %66, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %68 = load i8, ptr %14, align 4
  %69 = lshr i8 %68, 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 17, ptr %21, align 1
  store i16 0, ptr %22, align 2
  %71 = load ptr, ptr %8, align 8
  %72 = tail call i32 @i2c_transfer(ptr noundef %71, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %73 = load i8, ptr %14, align 4
  %74 = lshr i8 %73, 1
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 23, ptr %21, align 1
  store i16 13330, ptr %22, align 2
  %76 = load ptr, ptr %8, align 8
  %77 = tail call i32 @i2c_transfer(ptr noundef %76, ptr noundef %13, i32 noundef 1) #13
  %78 = load i32, ptr @debug, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %57
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dib9000_firmware_download, i32 noundef %12) #14
  br label %82

82:                                               ; preds = %80, %57
  %83 = and i32 %12, 65535
  store i64 0, ptr %13, align 8
  %84 = load i8, ptr %14, align 4
  %85 = lshr i8 %84, 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 18, ptr %21, align 1
  store i8 20, ptr %18, align 8
  br label %87

87:                                               ; preds = %87, %82
  %88 = phi i32 [ %83, %82 ], [ %97, %87 ]
  %89 = phi ptr [ %10, %82 ], [ %96, %87 ]
  %90 = tail call i32 @llvm.umin.i32(i32 %88, i32 126) #13
  %91 = trunc i32 %90 to i16
  %92 = add nuw nsw i16 %91, 2
  store i16 %92, ptr %20, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %22, ptr align 1 %89, i32 %90, i1 false) #13
  %93 = load ptr, ptr %8, align 8
  %94 = tail call i32 @i2c_transfer(ptr noundef %93, ptr noundef %13, i32 noundef 1) #13
  %95 = icmp eq i32 %94, 1
  %96 = getelementptr i8, ptr %89, i32 %90
  %97 = sub i32 %88, %90
  %98 = icmp ne i32 %97, 0
  %99 = select i1 %95, i1 %98, i1 false
  br i1 %99, label %87, label %100

100:                                              ; preds = %87
  %101 = load i32, ptr @debug, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = select i1 %95, ptr @.str.34, ptr @.str.33
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %104, ptr noundef nonnull @__func__.dib9000_firmware_download, i32 noundef 66) #14
  br label %106

106:                                              ; preds = %103, %100
  store i64 17179869184, ptr %13, align 8
  %107 = load i8, ptr %14, align 4
  %108 = lshr i8 %107, 1
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 16, ptr %21, align 1
  store i16 0, ptr %22, align 2
  %110 = load ptr, ptr %8, align 8
  %111 = tail call i32 @i2c_transfer(ptr noundef %110, ptr noundef %13, i32 noundef 1) #13
  store i64 17179869184, ptr %13, align 8
  %112 = load i8, ptr %14, align 4
  %113 = lshr i8 %112, 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i8 4, ptr %18, align 8
  store i8 19, ptr %21, align 1
  store i16 128, ptr %22, align 2
  %115 = load ptr, ptr %8, align 8
  %116 = tail call i32 @i2c_transfer(ptr noundef %115, ptr noundef %13, i32 noundef 1) #13
  %117 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 19
  %118 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 17, i32 1
  %119 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 17, i32 1, i32 1
  %120 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 17, i32 1, i32 3
  %121 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 17, i32 1, i32 2
  %122 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 19, i32 1
  br label %123

123:                                              ; preds = %143, %106
  %124 = phi i16 [ 1000, %106 ], [ %146, %143 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %13, i8 0, i32 24, i1 false) #13
  %125 = load i8, ptr %14, align 4
  %126 = lshr i8 %125, 1
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %13, align 8
  store ptr %18, ptr %19, align 8
  store i16 2, ptr %20, align 4
  store i16 %127, ptr %118, align 4
  store i16 1, ptr %119, align 2
  store i8 4, ptr %18, align 8
  store i8 19, ptr %21, align 1
  store i16 2, ptr %121, align 4
  store ptr %117, ptr %120, align 4
  %128 = load ptr, ptr %8, align 8
  %129 = tail call i32 @i2c_transfer(ptr noundef %128, ptr noundef %13, i32 noundef 2) #13
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load i32, ptr @debug, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib9000_read16_attr, i32 noundef 1043) #14
  br label %143

136:                                              ; preds = %123
  %137 = load i8, ptr %117, align 1
  %138 = zext i8 %137 to i16
  %139 = shl nuw i16 %138, 8
  %140 = load i8, ptr %122, align 1
  %141 = zext i8 %140 to i16
  %142 = or i16 %139, %141
  br label %143

143:                                              ; preds = %136, %134, %131
  %144 = phi i16 [ %142, %136 ], [ 0, %134 ], [ 0, %131 ]
  tail call void @msleep(i32 noundef 100) #13
  %145 = icmp sgt i16 %144, -1
  %146 = add nsw i16 %124, -1
  %147 = icmp eq i16 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  br i1 %148, label %149, label %123

149:                                              ; preds = %143
  %150 = load i32, ptr @debug, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %145, label %155, label %152

152:                                              ; preds = %149
  br i1 %151, label %350, label %153

153:                                              ; preds = %152
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dib9000_mbx_host_init, i32 noundef 66) #14
  br label %350

155:                                              ; preds = %149
  br i1 %151, label %158, label %156

156:                                              ; preds = %155
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.dib9000_mbx_host_init) #14
  br label %158

158:                                              ; preds = %156, %155, %1
  tail call void @msleep(i32 noundef 100) #13
  store i8 1, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %159 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %8, i8 noundef zeroext 2, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 0) #13
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %200

161:                                              ; preds = %158
  %162 = call fastcc i32 @dib9000_mbx_get_message_attr(ptr noundef %8, i16 noundef zeroext 9, ptr noundef nonnull %2, ptr noundef nonnull %3, i16 noundef zeroext 0) #13
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %200, label %164

164:                                              ; preds = %161
  %165 = load i8, ptr %2, align 4
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 8
  %168 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %167, %170
  %172 = load i32, ptr @debug, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %164
  %175 = lshr i32 %166, 2
  %176 = and i32 %171, 1023
  %177 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  %178 = load i8, ptr %177, align 2
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 8
  %181 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %180, %183
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.dib9000_risc_check_version, i32 noundef %175, i32 noundef %176, i32 noundef %184) #14
  br label %186

186:                                              ; preds = %174, %164
  %187 = and i32 %166, 252
  %188 = icmp eq i32 %187, 28
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = and i32 %171, 1023
  switch i32 %190, label %191 [
    i32 11, label %194
    i32 12, label %194
    i32 14, label %194
    i32 15, label %194
    i32 16, label %194
    i32 17, label %194
  ]

191:                                              ; preds = %189
  %192 = load i32, ptr @debug, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %201

194:                                              ; preds = %189, %189, %189, %189, %189, %189
  %195 = load i32, ptr @debug, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.dib9000_risc_check_version) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %203

199:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %203

200:                                              ; preds = %191, %186, %161, %158
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %350

201:                                              ; preds = %191
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.dib9000_risc_check_version) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %350

203:                                              ; preds = %199, %197
  %204 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 13, i32 0, i32 1
  store i8 -1, ptr %204, align 8
  %205 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 3
  %206 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 4
  %207 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 5
  %208 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 1
  %209 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 2
  %210 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 0, i32 2
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %203
  %214 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 0, i32 1
  %215 = load i8, ptr %214, align 1
  switch i8 %215, label %229 [
    i8 3, label %216
    i8 4, label %218
  ]

216:                                              ; preds = %213
  %217 = trunc i32 %211 to i16
  store i16 %217, ptr %5, align 2
  br label %220

218:                                              ; preds = %213
  %219 = trunc i32 %211 to i16
  store i16 %219, ptr %205, align 2
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi ptr [ %206, %218 ], [ %208, %216 ]
  %222 = phi ptr [ %207, %218 ], [ %209, %216 ]
  %223 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 0, i32 3
  %224 = load i32, ptr %223, align 4
  %225 = trunc i32 %224 to i16
  store i16 %225, ptr %221, align 2
  %226 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 0, i32 4
  %227 = load i32, ptr %226, align 4
  %228 = trunc i32 %227 to i16
  store i16 %228, ptr %222, align 2
  br label %229

229:                                              ; preds = %220, %213, %203
  %230 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 1, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %249, label %233

233:                                              ; preds = %229
  %234 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 1, i32 1
  %235 = load i8, ptr %234, align 1
  switch i8 %235, label %249 [
    i8 3, label %238
    i8 4, label %236
  ]

236:                                              ; preds = %233
  %237 = trunc i32 %231 to i16
  store i16 %237, ptr %205, align 2
  br label %240

238:                                              ; preds = %233
  %239 = trunc i32 %231 to i16
  store i16 %239, ptr %5, align 2
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi ptr [ %208, %238 ], [ %206, %236 ]
  %242 = phi ptr [ %209, %238 ], [ %207, %236 ]
  %243 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 1, i32 3
  %244 = load i32, ptr %243, align 4
  %245 = trunc i32 %244 to i16
  store i16 %245, ptr %241, align 2
  %246 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 11, i32 1, i32 4
  %247 = load i32, ptr %246, align 4
  %248 = trunc i32 %247 to i16
  store i16 %248, ptr %242, align 2
  br label %249

249:                                              ; preds = %240, %233, %229
  %250 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %8, i8 noundef zeroext 9, ptr noundef nonnull %5, i8 noundef zeroext 15, i16 noundef zeroext 0) #13
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %350

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 12
  %254 = load i8, ptr %253, align 4
  %255 = zext i8 %254 to i16
  store i16 %255, ptr %5, align 2
  %256 = icmp eq i8 %254, 0
  br i1 %256, label %285, label %257

257:                                              ; preds = %252
  %258 = zext i8 %254 to i32
  br label %259

259:                                              ; preds = %259, %257
  %260 = phi i32 [ 0, %257 ], [ %281, %259 ]
  %261 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 12, i32 1, i32 %260
  %262 = load i16, ptr %261, align 4
  %263 = shl nuw nsw i32 %260, 2
  %264 = or i32 %263, 1
  %265 = getelementptr [40 x i16], ptr %5, i32 0, i32 %264
  store i16 %262, ptr %265, align 2
  %266 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 12, i32 1, i32 %260, i32 1, i32 2
  %267 = load i32, ptr %266, align 4
  %268 = trunc i32 %267 to i16
  %269 = or i32 %263, 2
  %270 = getelementptr [40 x i16], ptr %5, i32 0, i32 %269
  store i16 %268, ptr %270, align 2
  %271 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 12, i32 1, i32 %260, i32 1, i32 3
  %272 = load i32, ptr %271, align 4
  %273 = trunc i32 %272 to i16
  %274 = or i32 %263, 3
  %275 = getelementptr [40 x i16], ptr %5, i32 0, i32 %274
  store i16 %273, ptr %275, align 2
  %276 = getelementptr %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 12, i32 1, i32 %260, i32 1, i32 4
  %277 = load i32, ptr %276, align 4
  %278 = trunc i32 %277 to i16
  %279 = add nuw nsw i32 %263, 4
  %280 = getelementptr [40 x i16], ptr %5, i32 0, i32 %279
  store i16 %278, ptr %280, align 2
  %281 = add nuw nsw i32 %260, 1
  %282 = icmp eq i32 %281, %258
  br i1 %282, label %283, label %259

283:                                              ; preds = %259
  %284 = shl nuw nsw i32 %258, 2
  br label %285

285:                                              ; preds = %283, %252
  %286 = phi i32 [ 0, %252 ], [ %284, %283 ]
  %287 = or i32 %286, 1
  %288 = getelementptr [40 x i16], ptr %5, i32 0, i32 %287
  store i16 0, ptr %288, align 2
  %289 = trunc i32 %286 to i8
  %290 = or i8 %289, 2
  %291 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %8, i8 noundef zeroext 11, ptr noundef nonnull %5, i8 noundef zeroext %290, i16 noundef zeroext 0) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %350

293:                                              ; preds = %285
  store i16 1, ptr %5, align 2
  store i16 0, ptr %208, align 2
  %294 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 6
  %295 = load i32, ptr %294, align 8
  %296 = mul i32 %295, 1000
  %297 = lshr i32 %296, 16
  %298 = trunc i32 %297 to i16
  store i16 %298, ptr %209, align 2
  %299 = trunc i32 %295 to i16
  %300 = mul i16 %299, 1000
  store i16 %300, ptr %205, align 2
  %301 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 7
  %302 = load i32, ptr %301, align 4
  %303 = lshr i32 %302, 16
  %304 = trunc i32 %303 to i16
  store i16 %304, ptr %206, align 2
  %305 = trunc i32 %302 to i16
  store i16 %305, ptr %207, align 2
  %306 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 5
  %307 = load i32, ptr %306, align 4
  %308 = lshr i32 %307, 16
  %309 = trunc i32 %308 to i16
  %310 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 6
  store i16 %309, ptr %310, align 2
  %311 = trunc i32 %307 to i16
  %312 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 7
  store i16 %311, ptr %312, align 2
  %313 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 14, i32 0, i32 0, i32 4
  %314 = load i16, ptr %313, align 8
  %315 = getelementptr inbounds [40 x i16], ptr %5, i32 0, i32 29
  store i16 %314, ptr %315, align 2
  %316 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %8, i8 noundef zeroext 21, ptr noundef nonnull %5, i8 noundef zeroext 40, i16 noundef zeroext 0) #13
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %350

318:                                              ; preds = %293
  %319 = tail call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %8, i8 noundef zeroext 13, ptr noundef null, i8 noundef zeroext 0, i16 noundef zeroext 0) #13
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %350

321:                                              ; preds = %318
  %322 = call fastcc i32 @dib9000_mbx_get_message_attr(ptr noundef %8, i16 noundef zeroext 13, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext 0) #13
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %350, label %324

324:                                              ; preds = %321
  %325 = load i8, ptr %6, align 1
  %326 = zext i8 %325 to i32
  %327 = icmp ugt i8 %325, 40
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = icmp eq i8 %325, 0
  br i1 %329, label %350, label %330

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.dib9000_state, ptr %8, i32 0, i32 13
  br label %337

332:                                              ; preds = %324
  %333 = load i32, ptr @debug, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %350, label %335

335:                                              ; preds = %332
  %336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dib9000_fw_init, i32 noundef %326, i32 noundef 40) #14
  br label %350

337:                                              ; preds = %337, %330
  %338 = phi i32 [ 0, %330 ], [ %348, %337 ]
  %339 = getelementptr [40 x i16], ptr %5, i32 0, i32 %338
  %340 = load i16, ptr %339, align 2
  %341 = lshr i32 %338, 1
  %342 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %331, i32 0, i32 %341
  store i16 %340, ptr %342, align 4
  %343 = add nuw nsw i32 %338, 1
  %344 = getelementptr [40 x i16], ptr %5, i32 0, i32 %343
  %345 = load i16, ptr %344, align 2
  %346 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %331, i32 0, i32 %341, i32 1
  store i16 %345, ptr %346, align 2
  %347 = add nuw nsw i32 %338, 2
  %348 = and i32 %347, 255
  %349 = icmp ult i32 %348, %326
  br i1 %349, label %337, label %350

350:                                              ; preds = %337, %335, %332, %328, %321, %318, %293, %285, %249, %201, %200, %153, %152
  %351 = phi i32 [ -5, %249 ], [ -5, %285 ], [ -5, %293 ], [ -5, %318 ], [ -5, %321 ], [ -22, %335 ], [ -22, %332 ], [ -5, %201 ], [ -5, %152 ], [ -5, %153 ], [ -5, %200 ], [ 0, %328 ], [ 0, %337 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  ret i32 %351
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib9000_i2c_enumeration(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #3 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_device, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #13
  %19 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 0, ptr %19, align 4, !annotation !8
  store ptr %0, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_device, ptr %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.i2c_device, ptr %18, i32 0, i32 2
  %22 = getelementptr inbounds %struct.i2c_device, ptr %18, i32 0, i32 3
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 4) #15
  store ptr %24, ptr %22, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %277, label %29

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib9000_i2c_enumeration, ptr noundef nonnull @__func__.dib9000_i2c_enumeration) #14
  br label %277

31:                                               ; preds = %4
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 4) #15
  store ptr %33, ptr %21, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, ptr @debug, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %274, label %38

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib9000_i2c_enumeration, ptr noundef nonnull @__func__.dib9000_i2c_enumeration) #14
  br label %274

40:                                               ; preds = %31
  %41 = add i8 %2, 16
  store i8 %41, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  %42 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %42, align 4, !annotation !8
  %43 = lshr i8 %41, 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %17, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %24, ptr %46, align 4
  store i8 7, ptr %24, align 8
  %47 = getelementptr i8, ptr %24, i32 1
  store i8 4, ptr %47, align 1
  %48 = getelementptr i8, ptr %24, i32 2
  store i8 0, ptr %48, align 2
  %49 = getelementptr i8, ptr %24, i32 3
  store i8 0, ptr %49, align 1
  %50 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  %51 = add i32 %1, -1
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %270

53:                                               ; preds = %40
  %54 = getelementptr inbounds i8, ptr %16, i32 4
  %55 = lshr i8 %2, 1
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  %59 = getelementptr inbounds i8, ptr %15, i32 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %62 = getelementptr inbounds i8, ptr %14, i32 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  %65 = getelementptr inbounds i8, ptr %13, i32 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %68 = getelementptr inbounds i8, ptr %12, i32 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %71 = getelementptr inbounds i8, ptr %11, i32 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %74 = getelementptr inbounds i8, ptr %10, i32 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %77 = getelementptr inbounds i8, ptr %9, i32 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %80 = getelementptr inbounds i8, ptr %8, i32 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %83 = getelementptr inbounds i8, ptr %7, i32 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  br label %95

86:                                               ; preds = %235
  %87 = icmp sgt i32 %1, 0
  br i1 %87, label %88, label %270

88:                                               ; preds = %86
  %89 = getelementptr inbounds i8, ptr %6, i32 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %92 = getelementptr inbounds i8, ptr %5, i32 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %238

95:                                               ; preds = %235, %53
  %96 = phi i32 [ %51, %53 ], [ %236, %235 ]
  %97 = trunc i32 %96 to i8
  %98 = shl i8 %97, 1
  %99 = add i8 %98, %3
  store i8 %2, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  store i32 4, ptr %54, align 4, !annotation !8
  store i16 %56, ptr %16, align 4
  store i16 0, ptr %57, align 2
  %100 = load ptr, ptr %22, align 4
  store ptr %100, ptr %58, align 4
  store i8 7, ptr %100, align 1
  %101 = load ptr, ptr %22, align 4
  %102 = getelementptr i8, ptr %101, i32 1
  store i8 25, ptr %102, align 1
  %103 = load ptr, ptr %22, align 4
  %104 = getelementptr i8, ptr %103, i32 2
  store i8 0, ptr %104, align 1
  %105 = load ptr, ptr %22, align 4
  %106 = getelementptr i8, ptr %105, i32 3
  store i8 3, ptr %106, align 1
  %107 = load ptr, ptr %18, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %16, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  store i32 4, ptr %59, align 4, !annotation !8
  %109 = load i8, ptr %20, align 4
  %110 = lshr i8 %109, 1
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %15, align 4
  store i16 0, ptr %60, align 2
  %112 = load ptr, ptr %22, align 4
  store ptr %112, ptr %61, align 4
  store i8 7, ptr %112, align 1
  %113 = load ptr, ptr %22, align 4
  %114 = getelementptr i8, ptr %113, i32 1
  store i8 4, ptr %114, align 1
  %115 = load ptr, ptr %22, align 4
  %116 = getelementptr i8, ptr %115, i32 2
  store i8 0, ptr %116, align 1
  %117 = load ptr, ptr %22, align 4
  %118 = getelementptr i8, ptr %117, i32 3
  store i8 0, ptr %118, align 1
  %119 = load ptr, ptr %18, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %15, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  store i32 4, ptr %62, align 4, !annotation !8
  %121 = load i8, ptr %20, align 4
  %122 = lshr i8 %121, 1
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %14, align 4
  store i16 0, ptr %63, align 2
  %124 = load ptr, ptr %22, align 4
  store ptr %124, ptr %64, align 4
  store i8 4, ptr %124, align 1
  %125 = load ptr, ptr %22, align 4
  %126 = getelementptr i8, ptr %125, i32 1
  store i8 -53, ptr %126, align 1
  %127 = load ptr, ptr %22, align 4
  %128 = getelementptr i8, ptr %127, i32 2
  store i8 0, ptr %128, align 1
  %129 = load ptr, ptr %22, align 4
  %130 = getelementptr i8, ptr %129, i32 3
  store i8 1, ptr %130, align 1
  %131 = load ptr, ptr %18, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %14, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  store i32 4, ptr %65, align 4, !annotation !8
  %133 = load i8, ptr %20, align 4
  %134 = lshr i8 %133, 1
  %135 = zext i8 %134 to i16
  store i16 %135, ptr %13, align 4
  store i16 0, ptr %66, align 2
  %136 = load ptr, ptr %22, align 4
  store ptr %136, ptr %67, align 4
  store i8 4, ptr %136, align 1
  %137 = load ptr, ptr %22, align 4
  %138 = getelementptr i8, ptr %137, i32 1
  store i8 -53, ptr %138, align 1
  %139 = load ptr, ptr %22, align 4
  %140 = getelementptr i8, ptr %139, i32 2
  store i8 0, ptr %140, align 1
  %141 = load ptr, ptr %22, align 4
  %142 = getelementptr i8, ptr %141, i32 3
  store i8 0, ptr %142, align 1
  %143 = load ptr, ptr %18, align 4
  %144 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %13, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  store i8 %99, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  store i32 4, ptr %68, align 4, !annotation !8
  %145 = lshr i8 %99, 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %12, align 4
  store i16 0, ptr %69, align 2
  %147 = load ptr, ptr %22, align 4
  store ptr %147, ptr %70, align 4
  store i8 7, ptr %147, align 1
  %148 = load ptr, ptr %22, align 4
  %149 = getelementptr i8, ptr %148, i32 1
  store i8 25, ptr %149, align 1
  %150 = load ptr, ptr %22, align 4
  %151 = getelementptr i8, ptr %150, i32 2
  store i8 0, ptr %151, align 1
  %152 = load ptr, ptr %22, align 4
  %153 = getelementptr i8, ptr %152, i32 3
  store i8 3, ptr %153, align 1
  %154 = load ptr, ptr %18, align 4
  %155 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %12, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  store i32 4, ptr %71, align 4, !annotation !8
  %156 = load i8, ptr %20, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %11, align 4
  store i16 0, ptr %72, align 2
  %159 = load ptr, ptr %22, align 4
  store ptr %159, ptr %73, align 4
  store i8 7, ptr %159, align 1
  %160 = load ptr, ptr %22, align 4
  %161 = getelementptr i8, ptr %160, i32 1
  store i8 4, ptr %161, align 1
  %162 = load ptr, ptr %22, align 4
  %163 = getelementptr i8, ptr %162, i32 2
  store i8 0, ptr %163, align 1
  %164 = load ptr, ptr %22, align 4
  %165 = getelementptr i8, ptr %164, i32 3
  store i8 0, ptr %165, align 1
  %166 = load ptr, ptr %18, align 4
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %11, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  store i32 4, ptr %74, align 4, !annotation !8
  %168 = load i8, ptr %20, align 4
  %169 = lshr i8 %168, 1
  %170 = zext i8 %169 to i16
  store i16 %170, ptr %10, align 4
  store i16 0, ptr %75, align 2
  %171 = load ptr, ptr %22, align 4
  store ptr %171, ptr %76, align 4
  store i8 4, ptr %171, align 1
  %172 = load ptr, ptr %22, align 4
  %173 = getelementptr i8, ptr %172, i32 1
  store i8 -53, ptr %173, align 1
  %174 = load ptr, ptr %22, align 4
  %175 = getelementptr i8, ptr %174, i32 2
  store i8 0, ptr %175, align 1
  %176 = load ptr, ptr %22, align 4
  %177 = getelementptr i8, ptr %176, i32 3
  store i8 1, ptr %177, align 1
  %178 = load ptr, ptr %18, align 4
  %179 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %10, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  store i32 4, ptr %77, align 4, !annotation !8
  %180 = load i8, ptr %20, align 4
  %181 = lshr i8 %180, 1
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %9, align 4
  store i16 0, ptr %78, align 2
  %183 = load ptr, ptr %22, align 4
  store ptr %183, ptr %79, align 4
  store i8 4, ptr %183, align 1
  %184 = load ptr, ptr %22, align 4
  %185 = getelementptr i8, ptr %184, i32 1
  store i8 -53, ptr %185, align 1
  %186 = load ptr, ptr %22, align 4
  %187 = getelementptr i8, ptr %186, i32 2
  store i8 0, ptr %187, align 1
  %188 = load ptr, ptr %22, align 4
  %189 = getelementptr i8, ptr %188, i32 3
  store i8 0, ptr %189, align 1
  %190 = load ptr, ptr %18, align 4
  %191 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %9, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  %192 = call fastcc zeroext i16 @dib9000_identify(ptr noundef nonnull %18)
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %95
  store i8 %2, ptr %20, align 4
  %195 = call fastcc zeroext i16 @dib9000_identify(ptr noundef nonnull %18)
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i32, ptr @debug, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %270, label %200

200:                                              ; preds = %197
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dib9000_i2c_enumeration, i32 noundef %96) #14
  br label %270

202:                                              ; preds = %194, %95
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  store i32 4, ptr %80, align 4, !annotation !8
  %203 = load i8, ptr %20, align 4
  %204 = lshr i8 %203, 1
  %205 = zext i8 %204 to i16
  store i16 %205, ptr %8, align 4
  store i16 0, ptr %81, align 2
  %206 = load ptr, ptr %22, align 4
  store ptr %206, ptr %82, align 4
  store i8 7, ptr %206, align 1
  %207 = load ptr, ptr %22, align 4
  %208 = getelementptr i8, ptr %207, i32 1
  store i8 3, ptr %208, align 1
  %209 = load ptr, ptr %22, align 4
  %210 = getelementptr i8, ptr %209, i32 2
  store i8 5, ptr %210, align 1
  %211 = load ptr, ptr %22, align 4
  %212 = getelementptr i8, ptr %211, i32 3
  store i8 0, ptr %212, align 1
  %213 = load ptr, ptr %18, align 4
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %8, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  %215 = shl i8 %99, 2
  %216 = or i8 %215, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  store i32 4, ptr %83, align 4, !annotation !8
  %217 = load i8, ptr %20, align 4
  %218 = lshr i8 %217, 1
  %219 = zext i8 %218 to i16
  store i16 %219, ptr %7, align 4
  store i16 0, ptr %84, align 2
  %220 = load ptr, ptr %22, align 4
  store ptr %220, ptr %85, align 4
  store i8 7, ptr %220, align 1
  %221 = load ptr, ptr %22, align 4
  %222 = getelementptr i8, ptr %221, i32 1
  store i8 2, ptr %222, align 1
  %223 = lshr i8 %99, 6
  %224 = load ptr, ptr %22, align 4
  %225 = getelementptr i8, ptr %224, i32 2
  store i8 %223, ptr %225, align 1
  %226 = load ptr, ptr %22, align 4
  %227 = getelementptr i8, ptr %226, i32 3
  store i8 %216, ptr %227, align 1
  %228 = load ptr, ptr %18, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %7, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  %230 = load i32, ptr @debug, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %202
  %233 = zext i8 %99 to i32
  %234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib9000_i2c_enumeration, i32 noundef %96, i32 noundef %233) #14
  br label %235

235:                                              ; preds = %232, %202
  %236 = add i32 %96, -1
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %95, label %86

238:                                              ; preds = %238, %88
  %239 = phi i32 [ 0, %88 ], [ %268, %238 ]
  %240 = trunc i32 %239 to i8
  %241 = shl i8 %240, 1
  %242 = or i8 %241, %3
  store i8 %242, ptr %20, align 4
  %243 = shl i8 %242, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  store i32 4, ptr %89, align 4, !annotation !8
  %244 = lshr i8 %242, 1
  %245 = zext i8 %244 to i16
  store i16 %245, ptr %6, align 4
  store i16 0, ptr %90, align 2
  %246 = load ptr, ptr %22, align 4
  store ptr %246, ptr %91, align 4
  store i8 7, ptr %246, align 1
  %247 = load ptr, ptr %22, align 4
  %248 = getelementptr i8, ptr %247, i32 1
  store i8 2, ptr %248, align 1
  %249 = lshr i8 %242, 6
  %250 = load ptr, ptr %22, align 4
  %251 = getelementptr i8, ptr %250, i32 2
  store i8 %249, ptr %251, align 1
  %252 = load ptr, ptr %22, align 4
  %253 = getelementptr i8, ptr %252, i32 3
  store i8 %243, ptr %253, align 1
  %254 = load ptr, ptr %18, align 4
  %255 = call i32 @i2c_transfer(ptr noundef %254, ptr noundef nonnull %6, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  store i32 4, ptr %92, align 4, !annotation !8
  %256 = load i8, ptr %20, align 4
  %257 = lshr i8 %256, 1
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %5, align 4
  store i16 0, ptr %93, align 2
  %259 = load ptr, ptr %22, align 4
  store ptr %259, ptr %94, align 4
  store i8 7, ptr %259, align 1
  %260 = load ptr, ptr %22, align 4
  %261 = getelementptr i8, ptr %260, i32 1
  store i8 3, ptr %261, align 1
  %262 = load ptr, ptr %22, align 4
  %263 = getelementptr i8, ptr %262, i32 2
  store i8 0, ptr %263, align 1
  %264 = load ptr, ptr %22, align 4
  %265 = getelementptr i8, ptr %264, i32 3
  store i8 0, ptr %265, align 1
  %266 = load ptr, ptr %18, align 4
  %267 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %5, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  %268 = add nuw nsw i32 %239, 1
  %269 = icmp eq i32 %268, %1
  br i1 %269, label %270, label %238

270:                                              ; preds = %238, %200, %197, %86, %40
  %271 = phi i32 [ -5, %200 ], [ -5, %197 ], [ 0, %86 ], [ 0, %40 ], [ 0, %238 ]
  %272 = load ptr, ptr %21, align 4
  call void @kfree(ptr noundef %272) #13
  %273 = load ptr, ptr %22, align 4
  br label %274

274:                                              ; preds = %270, %38, %35
  %275 = phi ptr [ %273, %270 ], [ %24, %38 ], [ %24, %35 ]
  %276 = phi i32 [ %271, %270 ], [ -12, %38 ], [ -12, %35 ]
  call void @kfree(ptr noundef %275) #13
  br label %277

277:                                              ; preds = %274, %29, %26
  %278 = phi i32 [ %276, %274 ], [ -12, %29 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #13
  ret i32 %278
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib9000_identify(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca [2 x %struct.i2c_msg], align 4
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false) #13, !annotation !8
  %6 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = lshr i8 %7, 1
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %10, align 2
  store i16 2, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  %18 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %17, align 4
  store i8 3, ptr %13, align 1
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 1
  store i8 -128, ptr %21, align 1
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %4, i32 noundef 2) #13
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dib9000_i2c_read16, i32 noundef 896) #14
  br label %30

30:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %42

31:                                               ; preds = %1
  %32 = load ptr, ptr %18, align 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr i8, ptr %32, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  %39 = or i16 %35, %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %40 = zext i16 %39 to i32
  %41 = icmp eq i16 %39, 435
  br i1 %41, label %48, label %42

42:                                               ; preds = %31, %30
  %43 = phi i32 [ 0, %30 ], [ %40, %31 ]
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %158, label %46

46:                                               ; preds = %42
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.dib9000_identify, i32 noundef %43) #14
  br label %158

48:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %49 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %49, i8 0, i32 16, i1 false) #13, !annotation !8
  %50 = load i8, ptr %6, align 4
  %51 = lshr i8 %50, 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %3, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %53, align 2
  store i16 2, ptr %49, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %55 = load ptr, ptr %12, align 4
  store ptr %55, ptr %54, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %52, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %32, ptr %59, align 4
  store i8 3, ptr %55, align 1
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr i8, ptr %60, i32 1
  store i8 -127, ptr %61, align 1
  %62 = load ptr, ptr %0, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %3, i32 noundef 2) #13
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %71, label %65

65:                                               ; preds = %48
  %66 = load i32, ptr @debug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dib9000_i2c_read16, i32 noundef 897) #14
  br label %70

70:                                               ; preds = %68, %65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %83

71:                                               ; preds = %48
  %72 = load ptr, ptr %18, align 4
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i16
  %75 = shl nuw i16 %74, 8
  %76 = getelementptr i8, ptr %72, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  %79 = or i16 %75, %78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %80 = zext i16 %79 to i32
  %81 = add i16 %79, -16390
  %82 = icmp ult i16 %81, -6
  br i1 %82, label %83, label %89

83:                                               ; preds = %71, %70
  %84 = phi i32 [ 0, %70 ], [ %80, %71 ]
  %85 = load i32, ptr @debug, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %158, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.dib9000_identify, i32 noundef %84) #14
  br label %158

89:                                               ; preds = %71
  switch i16 %79, label %158 [
    i16 16384, label %90
    i16 16385, label %133
    i16 16386, label %138
    i16 16387, label %143
    i16 16388, label %148
    i16 16389, label %153
  ]

90:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %91 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %91, i8 0, i32 16, i1 false) #13, !annotation !8
  %92 = load i8, ptr %6, align 4
  %93 = lshr i8 %92, 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %2, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %95, align 2
  store i16 2, ptr %91, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %97 = load ptr, ptr %12, align 4
  store ptr %97, ptr %96, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1
  store i16 %94, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1, i32 1
  store i16 1, ptr %99, align 2
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1, i32 2
  store i16 2, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1, i32 3
  store ptr %72, ptr %101, align 4
  store i8 3, ptr %97, align 1
  %102 = load ptr, ptr %12, align 4
  %103 = getelementptr i8, ptr %102, i32 1
  store i8 1, ptr %103, align 1
  %104 = load ptr, ptr %0, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %2, i32 noundef 2) #13
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %113, label %107

107:                                              ; preds = %90
  %108 = load i32, ptr @debug, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dib9000_i2c_read16, i32 noundef 769) #14
  br label %112

112:                                              ; preds = %110, %107
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %128

113:                                              ; preds = %90
  %114 = load ptr, ptr %18, align 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i16
  %117 = shl nuw i16 %116, 8
  %118 = getelementptr i8, ptr %114, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i16
  %121 = or i16 %117, %120
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  %122 = icmp eq i16 %121, 16384
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %158, label %126

126:                                              ; preds = %123
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

128:                                              ; preds = %113, %112
  %129 = load i32, ptr @debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %158, label %131

131:                                              ; preds = %128
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

133:                                              ; preds = %89
  %134 = load i32, ptr @debug, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %158, label %136

136:                                              ; preds = %133
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

138:                                              ; preds = %89
  %139 = load i32, ptr @debug, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

143:                                              ; preds = %89
  %144 = load i32, ptr @debug, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %143
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

148:                                              ; preds = %89
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

153:                                              ; preds = %89
  %154 = load i32, ptr @debug, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.dib9000_identify) #14
  br label %158

158:                                              ; preds = %156, %153, %151, %148, %146, %143, %141, %138, %136, %133, %131, %128, %126, %123, %89, %87, %83, %46, %42
  %159 = phi i16 [ 0, %46 ], [ 0, %42 ], [ 0, %87 ], [ 0, %83 ], [ 0, %126 ], [ 0, %123 ], [ %79, %89 ], [ 16389, %153 ], [ 16389, %156 ], [ 16388, %148 ], [ 16388, %151 ], [ 16387, %143 ], [ 16387, %146 ], [ 16386, %138 ], [ 16386, %141 ], [ 16385, %133 ], [ 16385, %136 ], [ 16384, %128 ], [ 16384, %131 ]
  ret i16 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib9000_set_slave_frontend(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %35

27:                                               ; preds = %20, %16, %12, %8, %2
  %28 = phi i32 [ 1, %2 ], [ 2, %8 ], [ 3, %12 ], [ 4, %16 ], [ 5, %20 ]
  %29 = phi ptr [ %5, %2 ], [ %9, %8 ], [ %13, %12 ], [ %17, %16 ], [ %21, %20 ]
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dib9000_set_slave_frontend, ptr noundef %1, i32 noundef %28) #14
  br label %34

34:                                               ; preds = %32, %27
  store ptr %1, ptr %29, align 4
  br label %37

35:                                               ; preds = %24
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dib9000_set_slave_frontend) #14
  br label %37

37:                                               ; preds = %35, %34, %24
  %38 = phi i32 [ 0, %34 ], [ -12, %35 ], [ -12, %24 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dib9000_get_slave_frontend(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = icmp sgt i32 %1, 5
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 15, i32 %1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi ptr [ %8, %4 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib9000_attach(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #3 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 5728) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %180, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1040) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %180

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(236) %24, ptr noundef align 4 dereferenceable(236) %2, i32 236, i1 false)
  store ptr %0, ptr %16, align 8
  %25 = getelementptr inbounds %struct.i2c_device, ptr %16, i32 0, i32 1
  store i8 %1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 18
  %27 = getelementptr inbounds %struct.i2c_device, ptr %16, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 19
  %29 = getelementptr inbounds %struct.i2c_device, ptr %16, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 10
  store i16 -1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 11
  store i16 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 12
  store i16 -1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 13, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef nonnull @dib9000_attach.__key) #13
  %34 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 13, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.13, ptr noundef nonnull @dib9000_attach.__key.12) #13
  %35 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 13, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.15, ptr noundef nonnull @dib9000_attach.__key.14) #13
  %36 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 13, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.17, ptr noundef nonnull @dib9000_attach.__key.16) #13
  %37 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %37, ptr noundef nonnull @.str.19, ptr noundef nonnull @dib9000_attach.__key.18) #13
  %38 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 21
  store i8 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 23
  store i8 -2, ptr %39, align 2
  %40 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 15
  store ptr %20, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %20, i32 0, i32 3
  store ptr %16, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %20, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %42, ptr noundef nonnull align 4 dereferenceable(544) @dib9000_ops, i32 544, i1 false)
  %43 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 14, i32 0, i32 0, i32 13
  %44 = load i8, ptr %43, align 8
  switch i8 %44, label %45 [
    i8 7, label %46
    i8 1, label %46
  ]

45:                                               ; preds = %23
  store i8 5, ptr %43, align 8
  br label %46

46:                                               ; preds = %45, %23, %23
  %47 = tail call fastcc zeroext i16 @dib9000_identify(ptr noundef nonnull %16)
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %179, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 1
  %51 = load ptr, ptr %16, align 8
  %52 = load i8, ptr %25, align 4
  %53 = tail call i32 @dibx000_init_i2c_master(ptr noundef %50, i16 noundef zeroext 12, ptr noundef %51, i8 noundef zeroext %52) #13
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 2
  %57 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 2, i32 9, i32 1
  store ptr %55, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 2, i32 12
  %59 = tail call i32 @strscpy(ptr noundef %58, ptr noundef nonnull @.str.20, i32 noundef 48) #13
  %60 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 2, i32 2
  store ptr @dib9000_tuner_algo, ptr %60, align 8
  %61 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 2, i32 3
  store ptr null, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 2, i32 9, i32 8
  store ptr %16, ptr %62, align 8
  %63 = tail call i32 @i2c_add_adapter(ptr noundef %56) #13
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %179, label %65

65:                                               ; preds = %49
  %66 = load ptr, ptr %54, align 4
  %67 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 3
  %68 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 3, i32 9, i32 1
  store ptr %66, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 3, i32 12
  %70 = tail call i32 @strscpy(ptr noundef %69, ptr noundef nonnull @.str.21, i32 noundef 48) #13
  %71 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 3, i32 2
  store ptr @dib9000_component_bus_algo, ptr %71, align 8
  %72 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 3, i32 3
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 16
  store i16 340, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dib9000_state, ptr %16, i32 0, i32 3, i32 9, i32 8
  store ptr %16, ptr %74, align 8
  %75 = tail call i32 @i2c_add_adapter(ptr noundef %67) #13
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %178, label %77

77:                                               ; preds = %65
  %78 = load ptr, ptr %41, align 8
  %79 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 17
  store i64 17179869184, ptr %79, align 8
  %80 = getelementptr inbounds %struct.i2c_device, ptr %78, i32 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = lshr i8 %81, 1
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %79, align 8
  %84 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 18
  %85 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 17, i32 0, i32 3
  store ptr %84, ptr %85, align 8
  store i8 7, ptr %84, align 8
  %86 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 18, i32 1
  store i8 25, ptr %86, align 1
  %87 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 18, i32 2
  store i16 768, ptr %87, align 2
  %88 = load ptr, ptr %78, align 8
  %89 = tail call i32 @i2c_transfer(ptr noundef %88, ptr noundef %79, i32 noundef 1) #13
  store i64 17179869184, ptr %79, align 8
  %90 = load i8, ptr %80, align 4
  %91 = lshr i8 %90, 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %79, align 8
  store ptr %84, ptr %85, align 8
  store i8 4, ptr %84, align 8
  store i8 -53, ptr %86, align 1
  store i16 256, ptr %87, align 2
  %93 = load ptr, ptr %78, align 8
  %94 = tail call i32 @i2c_transfer(ptr noundef %93, ptr noundef %79, i32 noundef 1) #13
  store i64 17179869184, ptr %79, align 8
  %95 = load i8, ptr %80, align 4
  %96 = lshr i8 %95, 1
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %79, align 8
  store ptr %84, ptr %85, align 8
  store i8 4, ptr %84, align 8
  store i8 -53, ptr %86, align 1
  store i16 0, ptr %87, align 2
  %98 = load ptr, ptr %78, align 8
  %99 = tail call i32 @i2c_transfer(ptr noundef %98, ptr noundef %79, i32 noundef 1) #13
  %100 = tail call fastcc zeroext i16 @dib9000_identify(ptr noundef %78) #13
  %101 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 4
  store i16 %100, ptr %101, align 8
  %102 = add i16 %100, -16387
  %103 = icmp ult i16 %102, 3
  br i1 %103, label %104, label %180

104:                                              ; preds = %77
  %105 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 17, i32 0, i32 2
  %106 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 5
  store i8 1, ptr %106, align 2
  %107 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 1
  tail call void @dibx000_reset_i2c_master(ptr noundef %107) #13
  tail call fastcc void @dib9000_set_power_mode(ptr noundef %78, i32 noundef 0) #13
  %108 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 19
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %79, i8 0, i32 24, i1 false) #13
  %109 = load i8, ptr %80, align 4
  %110 = lshr i8 %109, 1
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %79, align 8
  store ptr %84, ptr %85, align 8
  store i16 2, ptr %105, align 4
  %112 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 17, i32 1
  store i16 %111, ptr %112, align 4
  %113 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 17, i32 1, i32 1
  store i16 1, ptr %113, align 2
  %114 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 17, i32 1, i32 3
  %115 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 17, i32 1, i32 2
  store i8 7, ptr %84, align 8
  store i8 2, ptr %86, align 1
  store i16 2, ptr %115, align 4
  store ptr %108, ptr %114, align 4
  %116 = load ptr, ptr %78, align 8
  %117 = tail call i32 @i2c_transfer(ptr noundef %116, ptr noundef %79, i32 noundef 2) #13
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %124, label %119

119:                                              ; preds = %104
  %120 = load i32, ptr @debug, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib9000_read16_attr, i32 noundef 1794) #14
  br label %129

124:                                              ; preds = %104
  %125 = load i8, ptr %108, align 1
  %126 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 19, i32 1
  %127 = load i8, ptr %126, align 1
  %128 = and i8 %127, -3
  br label %129

129:                                              ; preds = %124, %122, %119
  %130 = phi i8 [ %128, %124 ], [ 0, %122 ], [ 0, %119 ]
  %131 = phi i8 [ %125, %124 ], [ 0, %122 ], [ 0, %119 ]
  store i64 17179869184, ptr %79, align 8
  %132 = load i8, ptr %80, align 4
  %133 = lshr i8 %132, 1
  %134 = zext i8 %133 to i16
  store i16 %134, ptr %79, align 8
  store ptr %84, ptr %85, align 8
  store i8 7, ptr %84, align 8
  store i8 2, ptr %86, align 1
  %135 = zext i8 %130 to i16
  %136 = shl nuw i16 %135, 8
  %137 = zext i8 %131 to i16
  %138 = or i16 %136, %137
  store i16 %138, ptr %87, align 2
  %139 = load ptr, ptr %78, align 8
  %140 = tail call i32 @i2c_transfer(ptr noundef %139, ptr noundef %79, i32 noundef 1) #13
  store i64 17179869184, ptr %79, align 8
  %141 = load i8, ptr %80, align 4
  %142 = lshr i8 %141, 1
  %143 = zext i8 %142 to i16
  store i16 %143, ptr %79, align 8
  store ptr %84, ptr %85, align 8
  store i8 7, ptr %84, align 8
  store i8 4, ptr %86, align 1
  store i16 0, ptr %87, align 2
  %144 = load ptr, ptr %78, align 8
  %145 = tail call i32 @i2c_transfer(ptr noundef %144, ptr noundef %79, i32 noundef 1) #13
  store i64 17179869184, ptr %79, align 8
  %146 = load i8, ptr %80, align 4
  %147 = lshr i8 %146, 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %79, align 8
  store ptr %84, ptr %85, align 8
  store i8 7, ptr %84, align 8
  store i8 13, ptr %86, align 1
  store i16 1288, ptr %87, align 2
  %149 = load ptr, ptr %78, align 8
  %150 = tail call i32 @i2c_transfer(ptr noundef %149, ptr noundef %79, i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 -1, ptr %14, align 2
  %151 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -1, ptr %151, align 1
  %152 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 898, ptr noundef nonnull %14, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 -1, ptr %13, align 2
  %153 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 -1, ptr %153, align 1
  %154 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 899, ptr noundef nonnull %13, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 0, ptr %12, align 2
  %155 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 1, ptr %155, align 1
  %156 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 900, ptr noundef nonnull %12, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 -1, ptr %11, align 2
  %157 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 25, ptr %157, align 1
  %158 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 901, ptr noundef nonnull %11, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 0, ptr %10, align 2
  %159 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 60, ptr %159, align 1
  %160 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 902, ptr noundef nonnull %10, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 0, ptr %9, align 2
  %161 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 898, ptr noundef nonnull %9, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 0, ptr %8, align 2
  %163 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %163, align 1
  %164 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 899, ptr noundef nonnull %8, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 0, ptr %7, align 2
  %165 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %165, align 1
  %166 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 900, ptr noundef nonnull %7, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %167 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 901, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 0, ptr %5, align 2
  %169 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %169, align 1
  %170 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 902, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %171 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 14, i32 0, i32 0, i32 4
  %172 = load i16, ptr %171, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  %173 = lshr i16 %172, 8
  %174 = trunc i16 %173 to i8
  store i8 %174, ptr %4, align 2
  %175 = getelementptr inbounds i8, ptr %4, i32 1
  %176 = trunc i16 %172 to i8
  store i8 %176, ptr %175, align 1
  %177 = call fastcc i32 @dib9000_write16_attr(ptr noundef %78, i16 noundef zeroext 911, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  tail call fastcc void @dib9000_set_power_mode(ptr noundef %78, i32 noundef 5) #13
  br label %180

178:                                              ; preds = %65
  tail call void @i2c_del_adapter(ptr noundef %56) #13
  br label %179

179:                                              ; preds = %178, %49, %46
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %180

180:                                              ; preds = %179, %129, %77, %22, %3
  %181 = phi ptr [ null, %22 ], [ null, %179 ], [ null, %3 ], [ %20, %77 ], [ %20, %129 ]
  ret ptr %181
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #3 {
  %6 = alloca [10 x i16], align 2
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = icmp ne i8 %9, 0
  %11 = icmp ult i16 %1, 1024
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %42

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  %14 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %14, i8 0, i32 16, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !8
  store i16 %1, ptr %6, align 2
  %15 = lshr i32 %3, 1
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds [10 x i16], ptr %6, i32 0, i32 1
  store i16 %16, ptr %17, align 2
  %18 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %0, i8 noundef zeroext 6, ptr noundef nonnull %6, i8 noundef zeroext 2, i16 noundef zeroext %4) #13
  %19 = call fastcc i32 @dib9000_mbx_get_message_attr(ptr noundef %0, i16 noundef zeroext 8, ptr noundef nonnull %6, ptr noundef nonnull %7, i16 noundef zeroext %4) #13
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load i8, ptr %7, align 1
  %23 = add i8 %22, -1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = zext i8 %23 to i32
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %29, %27 ]
  %29 = add nuw nsw i32 %28, 1
  %30 = getelementptr [10 x i16], ptr %6, i32 0, i32 %29
  %31 = load i16, ptr %30, align 2
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  %34 = shl nuw nsw i32 %28, 1
  %35 = getelementptr i8, ptr %2, i32 %34
  store i8 %33, ptr %35, align 1
  %36 = trunc i16 %31 to i8
  %37 = or i32 %34, 1
  %38 = getelementptr i8, ptr %2, i32 %37
  store i8 %36, ptr %38, align 1
  %39 = icmp eq i32 %29, %26
  br i1 %39, label %40, label %27

40:                                               ; preds = %27, %21, %13
  %41 = phi i32 [ -5, %13 ], [ 0, %21 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %95

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %43, i8 0, i32 24, i1 false)
  %44 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = lshr i8 %45, 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %43, align 8
  %48 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %49 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i16 2, ptr %50, align 4
  %51 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1
  store i16 %47, ptr %51, align 4
  %52 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1, i32 1
  store i16 1, ptr %52, align 2
  %53 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1, i32 3
  %54 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1, i32 2
  %55 = lshr i16 %1, 8
  %56 = trunc i16 %55 to i8
  store i8 %56, ptr %48, align 8
  %57 = trunc i16 %1 to i8
  %58 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %57, ptr %58, align 1
  %59 = zext i16 %4 to i32
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %59, 17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %42
  %65 = trunc i16 %4 to i8
  %66 = shl i8 %65, 5
  %67 = and i8 %66, 32
  %68 = or i8 %67, %56
  %69 = trunc i32 %60 to i8
  %70 = or i8 %68, %69
  store i8 %70, ptr %48, align 8
  br label %71

71:                                               ; preds = %64, %42
  br label %72

72:                                               ; preds = %87, %71
  %73 = phi i32 [ %89, %87 ], [ %3, %71 ]
  %74 = phi ptr [ %88, %87 ], [ %2, %71 ]
  %75 = phi i16 [ %93, %87 ], [ %1, %71 ]
  %76 = tail call i32 @llvm.umin.i32(i32 %73, i32 126)
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %54, align 4
  store ptr %74, ptr %53, align 4
  %78 = load ptr, ptr %0, align 8
  %79 = tail call i32 @i2c_transfer(ptr noundef %78, ptr noundef %43, i32 noundef 2) #13
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %87, label %81

81:                                               ; preds = %72
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = zext i16 %75 to i32
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib9000_read16_attr, i32 noundef %85) #14
  br label %95

87:                                               ; preds = %72
  %88 = getelementptr i8, ptr %74, i32 %76
  %89 = sub i32 %73, %76
  %90 = lshr i32 %76, 1
  %91 = trunc i32 %90 to i16
  %92 = select i1 %61, i16 %91, i16 0
  %93 = add i16 %92, %75
  %94 = icmp eq i32 %89, 0
  br i1 %94, label %95, label %72

95:                                               ; preds = %87, %84, %81, %40
  %96 = phi i32 [ %41, %40 ], [ -121, %84 ], [ -121, %81 ], [ 0, %87 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_mbx_send_attr(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, i8 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %118, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 2
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 19
  %15 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 19, i32 1
  %16 = zext i8 %3 to i32
  br label %22

17:                                               ; preds = %9
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %118, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_mbx_send_attr) #14
  br label %118

22:                                               ; preds = %43, %13
  %23 = phi i16 [ %36, %43 ], [ 100, %13 ]
  %24 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1043, ptr noundef %14, i32 noundef 2, i16 noundef zeroext %4) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8, ptr %15, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %28, %26 ], [ 0, %22 ]
  %31 = add nuw nsw i32 %30, %16
  %32 = icmp ugt i32 %31, 53
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = icmp eq i8 %3, 0
  br i1 %34, label %56, label %44

35:                                               ; preds = %29
  %36 = add nsw i16 %23, -1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %116, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dib9000_mbx_send_attr) #14
  br label %43

43:                                               ; preds = %41, %38
  tail call void @msleep(i32 noundef 100) #13
  br label %22

44:                                               ; preds = %44, %33
  %45 = phi ptr [ %53, %44 ], [ %2, %33 ]
  %46 = phi i32 [ %54, %44 ], [ 0, %33 ]
  %47 = getelementptr i16, ptr %2, i32 %46
  %48 = load i16, ptr %47, align 2
  %49 = lshr i16 %48, 8
  %50 = trunc i16 %49 to i8
  %51 = getelementptr i8, ptr %45, i32 1
  store i8 %50, ptr %45, align 1
  %52 = trunc i16 %48 to i8
  %53 = getelementptr i8, ptr %45, i32 2
  store i8 %52, ptr %51, align 1
  %54 = add nuw nsw i32 %46, 1
  %55 = icmp eq i32 %54, %16
  br i1 %55, label %56, label %44

56:                                               ; preds = %44, %33
  %57 = add i8 %3, 1
  %58 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  store i64 17179869184, ptr %58, align 8
  %59 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = lshr i8 %60, 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %58, align 8
  %63 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %64 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  %66 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 21, ptr %66, align 1
  %67 = and i16 %4, 1
  %68 = icmp eq i16 %67, 0
  %69 = select i1 %68, i8 20, i8 52
  store i8 %69, ptr %63, align 8
  %70 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 2
  %71 = zext i8 %57 to i16
  %72 = shl nuw i16 %71, 8
  %73 = zext i8 %1 to i16
  %74 = or i16 %72, %73
  store i16 %74, ptr %70, align 2
  %75 = load ptr, ptr %0, align 8
  %76 = tail call i32 @i2c_transfer(ptr noundef %75, ptr noundef %58, i32 noundef 1) #13
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %116

78:                                               ; preds = %56
  %79 = shl nuw nsw i32 %16, 1
  store i64 0, ptr %58, align 8
  %80 = load i8, ptr %59, align 4
  %81 = lshr i8 %80, 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %58, align 8
  store ptr %63, ptr %64, align 8
  store i8 21, ptr %66, align 1
  store i8 %69, ptr %63, align 8
  br label %83

83:                                               ; preds = %83, %78
  %84 = phi i32 [ %79, %78 ], [ %93, %83 ]
  %85 = phi ptr [ %2, %78 ], [ %92, %83 ]
  %86 = tail call i32 @llvm.umin.i32(i32 %84, i32 126) #13
  %87 = trunc i32 %86 to i16
  %88 = add nuw nsw i16 %87, 2
  store i16 %88, ptr %65, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %70, ptr align 1 %85, i32 %86, i1 false) #13
  %89 = load ptr, ptr %0, align 8
  %90 = tail call i32 @i2c_transfer(ptr noundef %89, ptr noundef %58, i32 noundef 1) #13
  %91 = icmp eq i32 %90, 1
  %92 = getelementptr i8, ptr %85, i32 %86
  %93 = sub i32 %84, %86
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %91, i1 %94, i1 false
  br i1 %95, label %83, label %96

96:                                               ; preds = %83
  br i1 %91, label %97, label %116

97:                                               ; preds = %96
  store i64 17179869184, ptr %58, align 8
  %98 = load i8, ptr %59, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %58, align 8
  store ptr %63, ptr %64, align 8
  store i8 4, ptr %63, align 8
  store i8 19, ptr %66, align 1
  %101 = zext i16 %4 to i32
  %102 = and i32 %101, 17
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = and i32 %101, 16
  %106 = icmp eq i32 %105, 0
  %107 = and i32 %101, 1
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i8 20, i8 52
  %110 = select i1 %106, i8 36, i8 %109
  store i8 %110, ptr %63, align 8
  br label %111

111:                                              ; preds = %104, %97
  store i16 64, ptr %70, align 2
  %112 = load ptr, ptr %0, align 8
  %113 = tail call i32 @i2c_transfer(ptr noundef %112, ptr noundef %58, i32 noundef 1) #13
  %114 = icmp eq i32 %113, 1
  %115 = select i1 %114, i32 0, i32 135
  br label %116

116:                                              ; preds = %111, %96, %56, %35
  %117 = phi i32 [ %115, %111 ], [ -5, %96 ], [ -5, %56 ], [ -22, %35 ]
  tail call void @mutex_unlock(ptr noundef %10) #13
  br label %118

118:                                              ; preds = %116, %20, %17, %5
  %119 = phi i32 [ %117, %116 ], [ -22, %5 ], [ -4, %20 ], [ -4, %17 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_mbx_get_message_attr(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i16 noundef zeroext %4) unnamed_addr #3 {
  store i16 0, ptr %2, align 2
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %7 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 3
  %8 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 19
  %9 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 2
  %10 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 19, i32 1
  %11 = or i16 %4, 16
  %12 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  %13 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %15 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  %16 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  %17 = zext i16 %4 to i32
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %17, 16
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 2
  %23 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 9
  %24 = getelementptr i8, ptr %0, i32 4620
  %25 = getelementptr i8, ptr %0, i32 4728
  %26 = and i32 %17, 17
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %19, i8 20, i8 52
  %29 = select i1 %21, i8 36, i8 %28
  br label %30

30:                                               ; preds = %172, %5
  %31 = phi i16 [ 30, %5 ], [ %174, %172 ]
  %32 = load i16, ptr %24, align 2
  %33 = lshr i16 %32, 8
  %34 = icmp eq i16 %33, %1
  br i1 %34, label %178, label %35

35:                                               ; preds = %30
  %36 = load i16, ptr %25, align 2
  %37 = lshr i16 %36, 8
  %38 = icmp eq i16 %37, %1
  br i1 %38, label %176, label %39

39:                                               ; preds = %35
  %40 = load i8, ptr %6, align 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %196, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #13
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %196, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_mbx_process) #14
  br label %196

50:                                               ; preds = %42
  %51 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1044, ptr noundef %8, i32 noundef 2, i16 noundef zeroext %4) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %172

53:                                               ; preds = %50
  %54 = load i8, ptr %8, align 1
  %55 = and i8 %54, 127
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %172, label %57

57:                                               ; preds = %53
  %58 = load i16, ptr %24, align 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i16, ptr %25, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %194, label %169

66:                                               ; preds = %60, %57
  %67 = phi ptr [ %24, %57 ], [ %25, %60 ]
  %68 = load i8, ptr %6, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %130, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #13
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %130, label %76

76:                                               ; preds = %73
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_mbx_read) #14
  br label %130

78:                                               ; preds = %70
  %79 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1045, ptr noundef %8, i32 noundef 2, i16 noundef zeroext %4) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i16 0, ptr %67, align 2
  br label %91

82:                                               ; preds = %78
  %83 = load i8, ptr %8, align 1
  %84 = zext i8 %83 to i16
  %85 = shl nuw i16 %84, 8
  %86 = load i8, ptr %10, align 1
  %87 = zext i8 %86 to i16
  %88 = or i16 %85, %87
  store i16 %88, ptr %67, align 2
  %89 = zext i8 %86 to i32
  %90 = icmp ult i8 %86, 55
  br i1 %90, label %91, label %108

91:                                               ; preds = %82, %81
  %92 = phi i8 [ 0, %81 ], [ %86, %82 ]
  %93 = getelementptr i16, ptr %67, i32 1
  %94 = add nsw i8 %92, -1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 1
  %97 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1045, ptr noundef %93, i32 noundef %96, i16 noundef zeroext %11) #13
  %98 = zext i8 %94 to i16
  %99 = icmp eq i8 %94, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %100, %91
  %101 = phi ptr [ %105, %100 ], [ %93, %91 ]
  %102 = phi i16 [ %106, %100 ], [ 0, %91 ]
  %103 = load i16, ptr %101, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #13
  store i16 %104, ptr %101, align 2
  %105 = getelementptr i16, ptr %101, i32 1
  %106 = add nuw nsw i16 %102, 1
  %107 = icmp ult i16 %106, %98
  br i1 %107, label %100, label %120

108:                                              ; preds = %82
  %109 = load i32, ptr @debug, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dib9000_mbx_read, i32 noundef %89) #14
  br label %113

113:                                              ; preds = %111, %108
  %114 = add i8 %86, -1
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i8 [ %118, %115 ], [ %114, %113 ]
  %117 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1045, ptr noundef %67, i32 noundef 2, i16 noundef zeroext %11) #13
  %118 = add i8 %116, -1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %115

120:                                              ; preds = %115, %100, %91
  %121 = phi i8 [ 0, %91 ], [ %94, %100 ], [ -1, %115 ]
  store i64 17179869184, ptr %12, align 8
  %122 = load i8, ptr %13, align 4
  %123 = lshr i8 %122, 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %12, align 8
  store ptr %14, ptr %15, align 8
  store i8 4, ptr %14, align 8
  store i8 20, ptr %16, align 1
  br i1 %27, label %126, label %125

125:                                              ; preds = %120
  store i8 %29, ptr %14, align 8
  br label %126

126:                                              ; preds = %125, %120
  store i16 64, ptr %22, align 2
  %127 = load ptr, ptr %0, align 8
  %128 = tail call i32 @i2c_transfer(ptr noundef %127, ptr noundef %12, i32 noundef 1) #13
  tail call void @mutex_unlock(ptr noundef %9) #13
  %129 = add i8 %121, 1
  br label %130

130:                                              ; preds = %126, %76, %73, %66
  %131 = phi i8 [ %129, %126 ], [ 0, %66 ], [ 0, %76 ], [ 0, %73 ]
  %132 = load i16, ptr %67, align 2
  %133 = and i16 %132, -256
  %134 = icmp eq i16 %133, 1024
  br i1 %134, label %135, label %172

135:                                              ; preds = %130
  %136 = getelementptr i16, ptr %67, i32 1
  %137 = getelementptr i16, ptr %67, i32 2
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = shl nuw i32 %139, 16
  %141 = load i16, ptr %136, align 2
  %142 = zext i16 %141 to i32
  %143 = or i32 %140, %142
  %144 = getelementptr i16, ptr %67, i32 3
  %145 = zext i8 %131 to i32
  %146 = shl nuw nsw i32 %145, 1
  %147 = add nsw i32 %146, -5
  %148 = getelementptr i8, ptr %144, i32 %147
  store i8 0, ptr %148, align 1
  %149 = load i8, ptr %144, align 1
  %150 = icmp eq i8 %149, 126
  %151 = load i32, ptr @debug, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %150, label %153, label %157

153:                                              ; preds = %135
  br i1 %152, label %168, label %154

154:                                              ; preds = %153
  %155 = getelementptr i8, ptr %144, i32 1
  %156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dib9000_risc_debug_buf, ptr noundef %155) #14
  br label %168

157:                                              ; preds = %135
  br i1 %152, label %168, label %158

158:                                              ; preds = %157
  %159 = load i8, ptr %23, align 8
  %160 = zext i8 %159 to i32
  %161 = freeze i32 %143
  %162 = udiv i32 %161, 10000
  %163 = mul i32 %162, 10000
  %164 = sub i32 %161, %163
  %165 = icmp eq i8 %149, 0
  %166 = select i1 %165, ptr @.str.30, ptr %144
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dib9000_risc_debug_buf, i32 noundef %160, i32 noundef %162, i32 noundef %164, ptr noundef %166) #14
  br label %168

168:                                              ; preds = %158, %157, %154, %153
  store i16 0, ptr %67, align 2
  br label %172

169:                                              ; preds = %63
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dib9000_mbx_fetch_to_cache) #14
  %171 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1229, ptr noundef %8, i32 noundef 2, i16 noundef zeroext %4) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %196

172:                                              ; preds = %168, %130, %53, %50
  %173 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1229, ptr noundef %8, i32 noundef 2, i16 noundef zeroext %4) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  %174 = add nsw i16 %31, -1
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %188, label %30

176:                                              ; preds = %35
  %177 = trunc i16 %36 to i8
  br label %180

178:                                              ; preds = %30
  %179 = trunc i16 %32 to i8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i8 [ %177, %176 ], [ %179, %178 ]
  %182 = phi ptr [ %25, %176 ], [ %24, %178 ]
  %183 = add i8 %181, -1
  store i8 %183, ptr %3, align 1
  %184 = getelementptr i16, ptr %182, i32 1
  %185 = zext i8 %183 to i32
  %186 = shl nuw nsw i32 %185, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %2, ptr align 2 %184, i32 %186, i1 false)
  store i16 0, ptr %182, align 2
  %187 = icmp eq i16 %31, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %180, %172
  %189 = load i32, ptr @debug, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = zext i16 %1 to i32
  %193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dib9000_mbx_get_message_attr, i32 noundef %192) #14
  br label %196

194:                                              ; preds = %63
  %195 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext 1229, ptr noundef %8, i32 noundef 2, i16 noundef zeroext %4) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %196

196:                                              ; preds = %194, %191, %188, %180, %169, %48, %45, %39
  %197 = phi i32 [ -1, %191 ], [ -1, %188 ], [ -1, %48 ], [ -1, %45 ], [ 1, %180 ], [ -1, %169 ], [ -1, %194 ], [ -1, %39 ]
  ret i32 %197
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_write16_attr(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #3 {
  %6 = alloca [10 x i16], align 2
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = icmp ne i8 %9, 0
  %11 = icmp ult i16 %1, 1024
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %58

13:                                               ; preds = %5
  %14 = or i16 %4, 18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  %15 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %15, i8 0, i32 18, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  %16 = icmp ugt i32 %3, 18
  br i1 %16, label %56, label %17

17:                                               ; preds = %13
  store i16 %1, ptr %6, align 2
  %18 = icmp ugt i32 %3, 1
  br i1 %18, label %19, label %37

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %35, %19 ], [ 1, %17 ]
  %21 = phi i32 [ %34, %19 ], [ 0, %17 ]
  %22 = getelementptr i8, ptr %2, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i16
  %25 = shl nuw i16 %24, 8
  %26 = getelementptr i8, ptr %2, i32 %20
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = or i16 %25, %28
  %30 = lshr i32 %21, 1
  %31 = add nuw nsw i32 %30, 1
  %32 = getelementptr [10 x i16], ptr %6, i32 0, i32 %31
  store i16 %29, ptr %32, align 2
  %33 = add nuw nsw i32 %21, 2
  %34 = and i32 %33, 255
  %35 = add nuw nsw i32 %34, 1
  %36 = icmp ult i32 %35, %3
  br i1 %36, label %19, label %37

37:                                               ; preds = %19, %17
  %38 = and i32 %3, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = add i32 %3, -1
  %42 = getelementptr i8, ptr %2, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  %45 = shl nuw i16 %44, 8
  %46 = lshr i32 %3, 1
  %47 = add nuw i32 %46, 1
  %48 = getelementptr [10 x i16], ptr %6, i32 0, i32 %47
  store i16 %45, ptr %48, align 2
  br label %49

49:                                               ; preds = %40, %37
  %50 = add i32 %3, 3
  %51 = lshr i32 %50, 1
  %52 = trunc i32 %51 to i8
  %53 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %0, i8 noundef zeroext 5, ptr noundef nonnull %6, i8 noundef zeroext %52, i16 noundef zeroext %14) #13
  %54 = call fastcc i32 @dib9000_mbx_get_message_attr(ptr noundef %0, i16 noundef zeroext 8, ptr noundef nonnull %6, ptr noundef nonnull %7, i16 noundef zeroext %14) #13
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %57, label %56

56:                                               ; preds = %49, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %97

57:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %97

58:                                               ; preds = %5
  %59 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  store i64 0, ptr %59, align 8
  %60 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %61 = load i8, ptr %60, align 4
  %62 = lshr i8 %61, 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %59, align 8
  %64 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %65 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  %67 = lshr i16 %1, 8
  %68 = trunc i16 %67 to i8
  store i8 %68, ptr %64, align 8
  %69 = trunc i16 %1 to i8
  %70 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %69, ptr %70, align 1
  %71 = and i16 %4, 17
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %58
  %74 = trunc i16 %4 to i8
  %75 = shl i8 %74, 5
  %76 = and i8 %75, 32
  %77 = and i8 %74, 16
  %78 = or i8 %77, %68
  %79 = or i8 %78, %76
  store i8 %79, ptr %64, align 8
  br label %80

80:                                               ; preds = %73, %58
  %81 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 2
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ %3, %80 ], [ %92, %82 ]
  %84 = phi ptr [ %2, %80 ], [ %91, %82 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %83, i32 126)
  %86 = trunc i32 %85 to i16
  %87 = add nuw nsw i16 %86, 2
  store i16 %87, ptr %66, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %81, ptr align 1 %84, i32 %85, i1 false)
  %88 = load ptr, ptr %0, align 8
  %89 = tail call i32 @i2c_transfer(ptr noundef %88, ptr noundef %59, i32 noundef 1) #13
  %90 = icmp eq i32 %89, 1
  %91 = getelementptr i8, ptr %84, i32 %85
  %92 = sub i32 %83, %85
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %82, label %95

95:                                               ; preds = %82
  %96 = select i1 %90, i32 0, i32 -121
  br label %97

97:                                               ; preds = %95, %57, %56
  %98 = phi i32 [ 0, %57 ], [ -22, %56 ], [ %96, %95 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_tuner_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef returned %2) #3 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %216

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.dib9000_state, ptr %12, i32 0, i32 19
  %16 = getelementptr %struct.dib9000_state, ptr %12, i32 0, i32 19, i32 1
  %17 = getelementptr inbounds i8, ptr %10, i32 1
  %18 = getelementptr inbounds i8, ptr %9, i32 1
  %19 = getelementptr inbounds i8, ptr %8, i32 1
  %20 = getelementptr inbounds i8, ptr %7, i32 1
  %21 = getelementptr inbounds i8, ptr %6, i32 1
  %22 = getelementptr inbounds i8, ptr %5, i32 1
  %23 = getelementptr inbounds i8, ptr %4, i32 1
  br label %24

24:                                               ; preds = %212, %14
  %25 = phi i32 [ 0, %14 ], [ %214, %212 ]
  %26 = phi i16 [ 0, %14 ], [ %213, %212 ]
  %27 = getelementptr %struct.i2c_msg, ptr %1, i32 %25
  %28 = getelementptr %struct.i2c_msg, ptr %1, i32 %25, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 789, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %130, label %153

35:                                               ; preds = %24
  %36 = getelementptr %struct.i2c_msg, ptr %1, i32 %25, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = tail call i16 @llvm.umin.i16(i16 %37, i16 16)
  %39 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 790, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i8, ptr %15, align 1
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 8
  %45 = load i8, ptr %16, align 1
  %46 = zext i8 %45 to i16
  %47 = or i16 %44, %46
  %48 = icmp ne i16 %47, 0
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.dib9000_tuner_xfer) #14
  br label %54

54:                                               ; preds = %52, %41, %35
  %55 = load i16, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  %56 = lshr i16 %55, 8
  %57 = trunc i16 %56 to i8
  store i8 %57, ptr %10, align 2
  %58 = trunc i16 %55 to i8
  store i8 %58, ptr %17, align 1
  %59 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 784, ptr noundef nonnull %10, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %60 = zext i16 %38 to i32
  %61 = lshr i32 %60, 1
  %62 = trunc i32 %61 to i16
  %63 = add nsw i16 %62, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  store i8 %65, ptr %9, align 2
  %66 = trunc i16 %63 to i8
  store i8 %66, ptr %18, align 1
  %67 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 787, ptr noundef nonnull %9, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 0, ptr %8, align 2
  store i8 1, ptr %19, align 1
  %68 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 786, ptr noundef nonnull %8, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  br label %69

69:                                               ; preds = %80, %54
  %70 = phi i16 [ 1000, %54 ], [ %86, %80 ]
  %71 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 790, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i8, ptr %15, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = load i8, ptr %16, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  br label %80

80:                                               ; preds = %73, %69
  %81 = phi i32 [ %79, %73 ], [ 0, %69 ]
  %82 = and i32 %81, 65535
  %83 = icmp ne i32 %61, %82
  %84 = icmp ne i16 %70, 0
  %85 = select i1 %83, i1 %84, i1 false
  %86 = add nsw i16 %70, -1
  br i1 %85, label %69, label %87

87:                                               ; preds = %80
  %88 = icmp eq i16 %70, 0
  %89 = load i32, ptr @debug, align 4
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.dib9000_tuner_xfer) #14
  br label %94

94:                                               ; preds = %92, %87
  %95 = icmp eq i16 %38, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %94
  %97 = getelementptr %struct.i2c_msg, ptr %1, i32 %25, i32 3
  br label %98

98:                                               ; preds = %105, %96
  %99 = phi i32 [ 0, %96 ], [ %114, %105 ]
  %100 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 785, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i8, ptr %15, align 1
  %104 = load i8, ptr %16, align 1
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i8 [ %104, %102 ], [ 0, %98 ]
  %107 = phi i8 [ %103, %102 ], [ 0, %98 ]
  %108 = load ptr, ptr %97, align 4
  %109 = getelementptr i8, ptr %108, i32 %99
  store i8 %107, ptr %109, align 1
  %110 = load ptr, ptr %97, align 4
  %111 = add nuw nsw i32 %99, 1
  %112 = getelementptr i8, ptr %110, i32 %111
  store i8 %106, ptr %112, align 1
  %113 = add nuw nsw i32 %99, 2
  %114 = and i32 %113, 65535
  %115 = icmp ult i32 %114, %60
  br i1 %115, label %98, label %116

116:                                              ; preds = %105, %94
  %117 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 790, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %212

119:                                              ; preds = %116
  %120 = load i8, ptr %15, align 1
  %121 = zext i8 %120 to i16
  %122 = shl nuw i16 %121, 8
  %123 = load i8, ptr %16, align 1
  %124 = zext i8 %123 to i16
  %125 = or i16 %122, %124
  %126 = icmp ne i16 %125, 0
  %127 = load i32, ptr @debug, align 4
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %209, label %212

130:                                              ; preds = %141, %32
  %131 = phi i16 [ %142, %141 ], [ 1000, %32 ]
  %132 = load i8, ptr %15, align 1
  %133 = zext i8 %132 to i16
  %134 = shl nuw i16 %133, 8
  %135 = load i8, ptr %16, align 1
  %136 = zext i8 %135 to i16
  %137 = or i16 %134, %136
  %138 = icmp ne i16 %137, 0
  %139 = icmp ne i16 %131, 0
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %145

141:                                              ; preds = %130
  %142 = add nsw i16 %131, -1
  %143 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 789, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %130, label %145

145:                                              ; preds = %141, %130
  %146 = phi i16 [ %131, %130 ], [ %142, %141 ]
  %147 = icmp eq i16 %146, 0
  %148 = load i32, ptr @debug, align 4
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.dib9000_tuner_xfer) #14
  br label %153

153:                                              ; preds = %151, %145, %32
  %154 = getelementptr %struct.i2c_msg, ptr %1, i32 %25, i32 2
  %155 = load i16, ptr %154, align 4
  %156 = tail call i16 @llvm.umin.i16(i16 %155, i16 16)
  %157 = zext i16 %156 to i32
  %158 = icmp eq i16 %156, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %153
  %160 = getelementptr %struct.i2c_msg, ptr %1, i32 %25, i32 3
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i32 [ 0, %159 ], [ %171, %161 ]
  %163 = load ptr, ptr %160, align 4
  %164 = getelementptr i8, ptr %163, i32 %162
  %165 = load i8, ptr %164, align 1
  %166 = add nuw nsw i32 %162, 1
  %167 = getelementptr i8, ptr %163, i32 %166
  %168 = load i8, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 %165, ptr %7, align 2
  store i8 %168, ptr %20, align 1
  %169 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 785, ptr noundef nonnull %7, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %170 = add nuw nsw i32 %162, 2
  %171 = and i32 %170, 65535
  %172 = icmp ult i32 %171, %157
  br i1 %172, label %161, label %173

173:                                              ; preds = %161, %153
  %174 = load i16, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  %175 = lshr i16 %174, 8
  %176 = trunc i16 %175 to i8
  store i8 %176, ptr %6, align 2
  %177 = trunc i16 %174 to i8
  store i8 %177, ptr %21, align 1
  %178 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 784, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %179 = lshr i16 %156, 1
  %180 = add nsw i16 %179, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %181 = lshr i16 %180, 8
  %182 = trunc i16 %181 to i8
  store i8 %182, ptr %5, align 2
  %183 = trunc i16 %180 to i8
  store i8 %183, ptr %22, align 1
  %184 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 787, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 0, ptr %4, align 2
  store i8 0, ptr %23, align 1
  %185 = call fastcc i32 @dib9000_write16_attr(ptr noundef %12, i16 noundef zeroext 786, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %186 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 791, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %199, %173
  %189 = phi i16 [ %200, %199 ], [ 1000, %173 ]
  %190 = load i8, ptr %15, align 1
  %191 = zext i8 %190 to i16
  %192 = shl nuw i16 %191, 8
  %193 = load i8, ptr %16, align 1
  %194 = zext i8 %193 to i16
  %195 = or i16 %192, %194
  %196 = icmp ne i16 %195, 0
  %197 = icmp ne i16 %189, 0
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %199, label %203

199:                                              ; preds = %188
  %200 = add nsw i16 %189, -1
  %201 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %12, i16 noundef zeroext 791, ptr noundef %15, i32 noundef 2, i16 noundef zeroext 0) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %188, label %203

203:                                              ; preds = %199, %188
  %204 = phi i16 [ %189, %188 ], [ %200, %199 ]
  %205 = icmp eq i16 %204, 0
  %206 = load i32, ptr @debug, align 4
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %209, label %212

209:                                              ; preds = %203, %119
  %210 = phi ptr [ @.str.52, %119 ], [ @.str.54, %203 ]
  %211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %210, ptr noundef nonnull @__func__.dib9000_tuner_xfer) #14
  br label %212

212:                                              ; preds = %209, %203, %173, %119, %116
  %213 = add i16 %26, 1
  %214 = zext i16 %213 to i32
  %215 = icmp slt i32 %214, %2
  br i1 %215, label %24, label %216

216:                                              ; preds = %212, %3
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dib9000_i2c_func(ptr nocapture noundef readnone %0) #10 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_fw_component_bus_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca [13 x i8], align 1
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 16
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 13, i32 0, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %4) #13
  %10 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %4, i8 0, i64 13, i1 false)
  store i8 2, ptr %10, align 1
  %11 = load i16, ptr %1, align 4
  %12 = trunc i16 %11 to i8
  %13 = shl i8 %12, 1
  %14 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = trunc i16 %8 to i8
  %16 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 3
  store i8 %15, ptr %16, align 1
  %17 = lshr i16 %8, 8
  %18 = trunc i16 %17 to i8
  %19 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 4
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 8
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %22 = load i16, ptr %21, align 4
  %23 = trunc i16 %22 to i8
  %24 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 9
  store i8 %23, ptr %24, align 1
  %25 = lshr i16 %22, 8
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 10
  store i8 %26, ptr %27, align 1
  %28 = icmp sgt i32 %2, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 2
  %36 = load i16, ptr %35, align 4
  %37 = trunc i16 %36 to i8
  %38 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 11
  store i8 %37, ptr %38, align 1
  %39 = lshr i16 %36, 8
  %40 = trunc i16 %39 to i8
  br label %41

41:                                               ; preds = %34, %29, %3
  %42 = phi i8 [ %40, %34 ], [ 0, %29 ], [ 0, %3 ]
  %43 = getelementptr inbounds [13 x i8], ptr %4, i32 0, i32 12
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 13, i32 0, i32 5
  %45 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #13
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, ptr @debug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %123, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_fw_component_bus_xfer) #14
  br label %123

52:                                               ; preds = %41
  call fastcc void @dib9000_risc_mem_write(ptr noundef %6, i8 noundef zeroext 16, ptr noundef nonnull %4)
  %53 = load i16, ptr %9, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, ptr %21, align 4
  %56 = zext i16 %55 to i32
  %57 = lshr i16 %53, 8
  %58 = trunc i16 %57 to i8
  %59 = trunc i16 %53 to i8
  %60 = add nuw nsw i32 %56, %54
  %61 = lshr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = trunc i32 %60 to i8
  %64 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 17
  store i64 68719476736, ptr %64, align 8
  %65 = getelementptr inbounds %struct.i2c_device, ptr %6, i32 0, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %64, align 8
  %69 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 18
  %70 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 17, i32 0, i32 3
  store ptr %69, ptr %70, align 8
  store i8 4, ptr %69, align 8
  %71 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 1
  store i8 32, ptr %71, align 1
  %72 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 2
  store i8 0, ptr %72, align 2
  %73 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 3
  store i8 1, ptr %73, align 1
  %74 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 4
  store i16 0, ptr %74, align 2
  %75 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 6
  store i8 %58, ptr %75, align 2
  %76 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 7
  store i8 %59, ptr %76, align 1
  %77 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 8
  store i16 0, ptr %77, align 2
  %78 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 10
  store i8 %62, ptr %78, align 2
  %79 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 11
  store i8 %63, ptr %79, align 1
  %80 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 12
  store i16 0, ptr %80, align 2
  %81 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 14
  store i8 %58, ptr %81, align 2
  %82 = getelementptr %struct.dib9000_state, ptr %6, i32 0, i32 18, i32 15
  store i8 %59, ptr %82, align 1
  %83 = load ptr, ptr %6, align 8
  %84 = tail call i32 @i2c_transfer(ptr noundef %83, ptr noundef %64, i32 noundef 1) #13
  %85 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 13, i32 0, i32 1
  store i8 -1, ptr %85, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = load i16, ptr %21, align 4
  %89 = zext i16 %88 to i32
  store i64 0, ptr %64, align 8
  %90 = load i8, ptr %65, align 4
  %91 = lshr i8 %90, 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %64, align 8
  store ptr %69, ptr %70, align 8
  %93 = getelementptr inbounds %struct.dib9000_state, ptr %6, i32 0, i32 17, i32 0, i32 2
  store i8 39, ptr %71, align 1
  store i8 52, ptr %69, align 8
  br label %94

94:                                               ; preds = %94, %52
  %95 = phi i32 [ %89, %52 ], [ %104, %94 ]
  %96 = phi ptr [ %87, %52 ], [ %103, %94 ]
  %97 = tail call i32 @llvm.umin.i32(i32 %95, i32 126) #13
  %98 = trunc i32 %97 to i16
  %99 = add nuw nsw i16 %98, 2
  store i16 %99, ptr %93, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %72, ptr align 1 %96, i32 %97, i1 false) #13
  %100 = load ptr, ptr %6, align 8
  %101 = tail call i32 @i2c_transfer(ptr noundef %100, ptr noundef %64, i32 noundef 1) #13
  %102 = icmp eq i32 %101, 1
  %103 = getelementptr i8, ptr %96, i32 %97
  %104 = sub i32 %95, %97
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %102, i1 %105, i1 false
  br i1 %106, label %94, label %107

107:                                              ; preds = %94
  %108 = tail call fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %6, i8 noundef zeroext 3)
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  tail call void @mutex_unlock(ptr noundef %44) #13
  br label %123

111:                                              ; preds = %107
  br i1 %28, label %112, label %122

112:                                              ; preds = %111
  %113 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %114 = load i16, ptr %113, align 2
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 2
  %121 = load i16, ptr %120, align 4
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %6, i8 noundef zeroext 17, ptr noundef %119, i16 noundef zeroext %121)
  br label %122

122:                                              ; preds = %117, %112, %111
  tail call void @mutex_unlock(ptr noundef %44) #13
  br label %123

123:                                              ; preds = %122, %110, %50, %47
  %124 = phi i32 [ 0, %110 ], [ %2, %122 ], [ 0, %50 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %4) #13
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib9000_risc_mem_write(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13
  %5 = zext i8 %1 to i32
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 4
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_risc_mem_write) #14
  br label %68

18:                                               ; preds = %9
  %19 = and i32 %5, 127
  %20 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %4, i32 0, i32 %19
  %21 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 1
  %22 = load i8, ptr %21, align 8
  %23 = icmp eq i8 %22, %1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %4, i32 0, i32 %19, i32 1
  %26 = load i16, ptr %25, align 2
  br label %34

27:                                               ; preds = %18
  %28 = and i32 %5, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %4, i32 0, i32 %19, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = icmp ult i16 %32, 67
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %24
  %35 = phi i16 [ %26, %24 ], [ %32, %30 ]
  %36 = load i16, ptr %20, align 2
  %37 = zext i16 %36 to i32
  %38 = zext i16 %35 to i32
  %39 = and i8 %1, -128
  tail call fastcc void @dib9000_risc_mem_setup_cmd(ptr noundef %0, i32 noundef %37, i32 noundef %38, i8 noundef zeroext %39) #13
  store i8 %1, ptr %21, align 8
  br label %40

40:                                               ; preds = %34, %30, %27
  %41 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %4, i32 0, i32 %5, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  store i64 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = lshr i8 %46, 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %44, align 8
  %49 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %50 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  %52 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 39, ptr %52, align 1
  store i8 52, ptr %49, align 8
  %53 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 2
  br label %54

54:                                               ; preds = %54, %40
  %55 = phi i32 [ %43, %40 ], [ %64, %54 ]
  %56 = phi ptr [ %2, %40 ], [ %63, %54 ]
  %57 = tail call i32 @llvm.umin.i32(i32 %55, i32 126) #13
  %58 = trunc i32 %57 to i16
  %59 = add nuw nsw i16 %58, 2
  store i16 %59, ptr %51, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %53, ptr align 1 %56, i32 %57, i1 false) #13
  %60 = load ptr, ptr %0, align 8
  %61 = tail call i32 @i2c_transfer(ptr noundef %60, ptr noundef %44, i32 noundef 1) #13
  %62 = icmp eq i32 %61, 1
  %63 = getelementptr i8, ptr %56, i32 %57
  %64 = sub i32 %55, %57
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %62, i1 %65, i1 false
  br i1 %66, label %54, label %67

67:                                               ; preds = %54
  tail call void @mutex_unlock(ptr noundef %10) #13
  br label %68

68:                                               ; preds = %67, %16, %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib9000_risc_mem_setup_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %6, i8 0, i32 12, i1 false)
  %7 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 1, ptr %7, align 1
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 %9, ptr %10, align 1
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds i8, ptr %6, i32 5
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %6, i32 12
  store i8 %9, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %6, i32 13
  store i8 %11, ptr %14, align 1
  %15 = add i32 %2, %1
  %16 = lshr i32 %15, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds i8, ptr %6, i32 8
  store i8 %17, ptr %18, align 1
  %19 = trunc i32 %15 to i8
  %20 = getelementptr inbounds i8, ptr %6, i32 9
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  store i64 68719476736, ptr %21, align 8
  %22 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = lshr i8 %23, 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %21, align 8
  %26 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %27 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %26, ptr %27, align 8
  store i8 4, ptr %26, align 8
  %28 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 32, ptr %28, align 1
  %29 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %29, ptr noundef nonnull align 1 dereferenceable(14) %6, i32 14, i1 false) #13
  %30 = load ptr, ptr %0, align 8
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %21, i32 noundef 1) #13
  %32 = icmp eq i8 %3, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5)
  store i8 -128, ptr %5, align 2
  %34 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 1, ptr %34, align 1
  store i64 17179869184, ptr %21, align 8
  %35 = load i8, ptr %22, align 4
  %36 = lshr i8 %35, 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %21, align 8
  store ptr %26, ptr %27, align 8
  store i8 4, ptr %26, align 8
  store i8 32, ptr %28, align 1
  %38 = load i16, ptr %5, align 2
  store i16 %38, ptr %29, align 2
  %39 = load ptr, ptr %0, align 8
  %40 = tail call i32 @i2c_transfer(ptr noundef %39, ptr noundef %21, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5)
  br label %41

41:                                               ; preds = %33, %4
  %42 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i8 -1, ptr %42, align 8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  call fastcc void @dib9000_risc_mem_write(ptr noundef %0, i8 noundef zeroext 2, ptr noundef nonnull %3)
  %8 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 19
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %12 = load i8, ptr %8, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %11
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %15 = load i8, ptr %8, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %18 = load i8, ptr %8, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %17
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %21 = load i8, ptr %8, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %24 = load i8, ptr %8, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %27 = load i8, ptr %8, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %30 = load i8, ptr %8, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %33 = load i8, ptr %8, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %36 = load i8, ptr %8, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 1)
  %39 = load i8, ptr %8, align 1
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 -5, i32 0
  br label %42

42:                                               ; preds = %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %7, %2
  %43 = phi i32 [ 0, %2 ], [ 0, %35 ], [ 0, %32 ], [ 0, %29 ], [ 0, %26 ], [ 0, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %14 ], [ 0, %11 ], [ 0, %7 ], [ %41, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib9000_risc_mem_read(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 4
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %100, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_risc_mem_read) #14
  br label %100

17:                                               ; preds = %8
  %18 = or i8 %1, -128
  %19 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13
  %20 = and i8 %1, 127
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13, i32 0, i32 1
  %23 = load i8, ptr %22, align 8
  %24 = icmp ne i8 %23, %18
  %25 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %19, i32 0, i32 %21, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp ult i16 %26, 67
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %17
  %30 = getelementptr [18 x %struct.dib9000_fe_memory_map], ptr %19, i32 0, i32 %21
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = zext i16 %26 to i32
  %34 = lshr i16 %31, 8
  %35 = trunc i16 %34 to i8
  %36 = trunc i16 %31 to i8
  %37 = add nuw nsw i32 %32, %33
  %38 = lshr i32 %37, 8
  %39 = trunc i32 %38 to i8
  %40 = trunc i32 %37 to i8
  %41 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  store i64 68719476736, ptr %41, align 8
  %42 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = lshr i8 %43, 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %41, align 8
  %46 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %47 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %46, ptr %47, align 8
  store i8 4, ptr %46, align 8
  %48 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 32, ptr %48, align 1
  %49 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %49, align 2
  %50 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 3
  store i8 1, ptr %50, align 1
  %51 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 4
  store i16 0, ptr %51, align 2
  %52 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 6
  store i8 %35, ptr %52, align 2
  %53 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 7
  store i8 %36, ptr %53, align 1
  %54 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 8
  store i16 0, ptr %54, align 2
  %55 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 10
  store i8 %39, ptr %55, align 2
  %56 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 11
  store i8 %40, ptr %56, align 1
  %57 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 12
  store i16 0, ptr %57, align 2
  %58 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 14
  store i8 %35, ptr %58, align 2
  %59 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 15
  store i8 %36, ptr %59, align 1
  %60 = load ptr, ptr %0, align 8
  %61 = tail call i32 @i2c_transfer(ptr noundef %60, ptr noundef %41, i32 noundef 1) #13
  store i64 17179869184, ptr %41, align 8
  %62 = load i8, ptr %42, align 4
  %63 = lshr i8 %62, 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %41, align 8
  store ptr %46, ptr %47, align 8
  store i8 4, ptr %46, align 8
  store i8 32, ptr %48, align 1
  store i16 384, ptr %49, align 2
  %65 = load ptr, ptr %0, align 8
  %66 = tail call i32 @i2c_transfer(ptr noundef %65, ptr noundef %41, i32 noundef 1) #13
  store i8 %18, ptr %22, align 8
  br label %67

67:                                               ; preds = %29, %17
  %68 = zext i16 %3 to i32
  %69 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %69, i8 0, i32 24, i1 false) #13
  %70 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = lshr i8 %71, 1
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %69, align 8
  %74 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 18
  %75 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i16 2, ptr %76, align 4
  %77 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1
  store i16 %73, ptr %77, align 4
  %78 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1, i32 1
  store i16 1, ptr %78, align 2
  %79 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1, i32 3
  %80 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 17, i32 1, i32 2
  %81 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 18, i32 1
  store i8 39, ptr %81, align 1
  store i8 52, ptr %74, align 8
  br label %82

82:                                               ; preds = %95, %67
  %83 = phi i32 [ %68, %67 ], [ %97, %95 ]
  %84 = phi ptr [ %2, %67 ], [ %96, %95 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %83, i32 126) #13
  %86 = trunc i32 %85 to i16
  store i16 %86, ptr %80, align 4
  store ptr %84, ptr %79, align 4
  %87 = load ptr, ptr %0, align 8
  %88 = tail call i32 @i2c_transfer(ptr noundef %87, ptr noundef %69, i32 noundef 2) #13
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = load i32, ptr @debug, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib9000_read16_attr, i32 noundef 1063) #14
  br label %99

95:                                               ; preds = %82
  %96 = getelementptr i8, ptr %84, i32 %85
  %97 = sub i32 %83, %85
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %82

99:                                               ; preds = %95, %93, %90
  tail call void @mutex_unlock(ptr noundef %9) #13
  br label %100

100:                                              ; preds = %99, %15, %12, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_reset_i2c_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib9000_set_power_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = add i16 %8, -16387
  %10 = icmp ult i16 %9, 3
  %11 = zext i1 %10 to i16
  %12 = or i16 %11, 906
  %13 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 19
  %14 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %0, i16 noundef zeroext %12, ptr noundef %13, i32 noundef 2, i16 noundef zeroext 0) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i16
  %19 = shl nuw i16 %18, 8
  %20 = getelementptr %struct.dib9000_state, ptr %0, i32 0, i32 19, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, 3
  %23 = zext i8 %22 to i16
  %24 = or i16 %19, %23
  br label %25

25:                                               ; preds = %16, %2
  %26 = phi i16 [ %24, %16 ], [ 3, %2 ]
  switch i32 %1, label %35 [
    i32 0, label %27
    i32 5, label %28
    i32 2, label %29
    i32 3, label %31
    i32 4, label %33
  ]

27:                                               ; preds = %25
  br label %35

28:                                               ; preds = %25
  br label %35

29:                                               ; preds = %25
  %30 = and i16 %26, -2
  br label %35

31:                                               ; preds = %25
  %32 = and i16 %26, -2
  br label %35

33:                                               ; preds = %25
  %34 = and i16 %26, -2
  br label %35

35:                                               ; preds = %33, %31, %29, %28, %27, %25
  %36 = phi i8 [ -1, %25 ], [ 0, %33 ], [ 0, %31 ], [ -1, %29 ], [ -1, %28 ], [ 0, %27 ]
  %37 = phi i8 [ 63, %25 ], [ 0, %33 ], [ 0, %31 ], [ 51, %29 ], [ 63, %28 ], [ 0, %27 ]
  %38 = phi i16 [ -1, %25 ], [ -32768, %33 ], [ -32737, %31 ], [ -1, %29 ], [ -1, %28 ], [ 0, %27 ]
  %39 = phi i8 [ -1, %25 ], [ 11, %33 ], [ 0, %31 ], [ 11, %29 ], [ 27, %28 ], [ 0, %27 ]
  %40 = phi i8 [ -1, %25 ], [ 1, %33 ], [ 0, %31 ], [ -1, %29 ], [ -1, %28 ], [ 0, %27 ]
  %41 = phi i16 [ %26, %25 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %26, %28 ], [ 0, %27 ]
  %42 = getelementptr inbounds %struct.dib9000_state, ptr %0, i32 0, i32 13
  %43 = load i8, ptr %42, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  %46 = or i16 %38, 214
  %47 = select i1 %45, i16 %46, i16 %38
  %48 = load i16, ptr %7, align 8
  %49 = icmp ne i16 %48, 16384
  %50 = zext i1 %49 to i16
  %51 = shl i16 %41, %50
  %52 = select i1 %10, i16 904, i16 903
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %37, ptr %6, align 2
  %53 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %36, ptr %53, align 1
  %54 = call fastcc i32 @dib9000_write16_attr(ptr noundef %0, i16 noundef zeroext %52, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %55 = or i16 %11, 904
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %56 = lshr i16 %47, 8
  %57 = trunc i16 %56 to i8
  store i8 %57, ptr %5, align 2
  %58 = getelementptr inbounds i8, ptr %5, i32 1
  %59 = trunc i16 %47 to i8
  store i8 %59, ptr %58, align 1
  %60 = call fastcc i32 @dib9000_write16_attr(ptr noundef %0, i16 noundef zeroext %55, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %61 = select i1 %10, i16 906, i16 905
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 %40, ptr %4, align 2
  %62 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %39, ptr %62, align 1
  %63 = call fastcc i32 @dib9000_write16_attr(ptr noundef %0, i16 noundef zeroext %61, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %64 = lshr i16 %51, 8
  %65 = trunc i16 %64 to i8
  store i8 %65, ptr %3, align 2
  %66 = getelementptr inbounds i8, ptr %3, i32 1
  %67 = trunc i16 %51 to i8
  store i8 %67, ptr %66, align 1
  %68 = call fastcc i32 @dib9000_write16_attr(ptr noundef %0, i16 noundef zeroext %12, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib9000_release(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  tail call void @dvb_frontend_detach(ptr noundef nonnull %5) #13
  %8 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  tail call void @dvb_frontend_detach(ptr noundef nonnull %9) #13
  %12 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %13) #13
  %16 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  tail call void @dvb_frontend_detach(ptr noundef nonnull %17) #13
  %20 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @dvb_frontend_detach(ptr noundef nonnull %21) #13
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7, %1
  %25 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 1
  tail call void @dibx000_exit_i2c_master(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %26) #13
  %27 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #13
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dib9000_wakeup(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_sleep(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 20
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %52

11:                                               ; preds = %1
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_sleep) #14
  br label %61

16:                                               ; preds = %52
  %17 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 1, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef nonnull %18) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef nonnull %27) #13
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef nonnull %36) #13
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 15, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 1, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef nonnull %45) #13
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %59, label %57

52:                                               ; preds = %7
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef nonnull %9) #13
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %59, label %16

57:                                               ; preds = %47, %43, %34, %25, %16, %7
  %58 = tail call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %3, i8 noundef zeroext 16, ptr noundef null, i8 noundef zeroext 0, i16 noundef zeroext 0)
  br label %59

59:                                               ; preds = %57, %52, %47, %38, %29, %20
  %60 = phi i32 [ %58, %57 ], [ %55, %52 ], [ %23, %20 ], [ %32, %29 ], [ %41, %38 ], [ %50, %47 ]
  tail call void @mutex_unlock(ptr noundef %4) #13
  br label %61

61:                                               ; preds = %59, %14, %11
  %62 = phi i32 [ %60, %59 ], [ -4, %14 ], [ -4, %11 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_set_frontend(ptr nocapture noundef %0) #3 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %679, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.dib9000_set_frontend) #14
  br label %679

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 8, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %679, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dib9000_set_frontend) #14
  br label %679

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 23
  store i8 -1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 20
  %30 = tail call i32 @mutex_lock_interruptible(ptr noundef %29) #13
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %679, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_set_frontend) #14
  br label %679

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 3, ptr %39, align 4
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 8, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 8, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 8, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %40, i32 0, i32 8, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 9
  %56 = select i1 %55, i8 1, i8 2
  br label %57

57:                                               ; preds = %52, %48, %44, %37
  %58 = phi i8 [ 1, %48 ], [ 1, %44 ], [ 1, %37 ], [ %56, %52 ]
  %59 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 8
  store i8 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 8
  %61 = icmp eq ptr %40, null
  br i1 %61, label %111, label %62

62:                                               ; preds = %57
  %63 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 0
  br label %64

64:                                               ; preds = %106, %62
  %65 = phi ptr [ %63, %62 ], [ %109, %106 ]
  %66 = phi i32 [ 0, %62 ], [ %104, %106 ]
  %67 = phi ptr [ %40, %62 ], [ %108, %106 ]
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 1, ptr %5, align 2
  %70 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %69, i8 noundef zeroext 22, ptr noundef nonnull %5, i8 noundef zeroext 1, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %71 = load ptr, ptr %65, align 4
  %72 = getelementptr inbounds %struct.dvb_frontend, ptr %71, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(456) %72, ptr noundef align 4 dereferenceable(456) %38, i32 456, i1 false)
  %73 = load ptr, ptr %65, align 4
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %73, i32 0, i32 8, i32 15
  store i32 3, ptr %74, align 4
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  %78 = load i32, ptr @debug, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %64
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dib9000_fw_set_output_mode, ptr noundef %75, i32 noundef 0) #14
  br label %82

82:                                               ; preds = %80, %64
  %83 = getelementptr inbounds %struct.dib9000_state, ptr %77, i32 0, i32 17
  store i64 17179869184, ptr %83, align 8
  %84 = getelementptr inbounds %struct.i2c_device, ptr %77, i32 0, i32 1
  %85 = load i8, ptr %84, align 4
  %86 = lshr i8 %85, 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %83, align 8
  %88 = getelementptr inbounds %struct.dib9000_state, ptr %77, i32 0, i32 18
  %89 = getelementptr inbounds %struct.dib9000_state, ptr %77, i32 0, i32 17, i32 0, i32 3
  store ptr %88, ptr %89, align 8
  store i8 7, ptr %88, align 8
  %90 = getelementptr %struct.dib9000_state, ptr %77, i32 0, i32 18, i32 1
  store i8 3, ptr %90, align 1
  %91 = getelementptr %struct.dib9000_state, ptr %77, i32 0, i32 18, i32 2
  store i16 0, ptr %91, align 2
  %92 = load ptr, ptr %77, align 8
  %93 = tail call i32 @i2c_transfer(ptr noundef %92, ptr noundef %83, i32 noundef 1) #13
  store i16 0, ptr %4, align 2
  %94 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %77, i8 noundef zeroext 23, ptr noundef nonnull %4, i8 noundef zeroext 1, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %95 = load ptr, ptr %65, align 4
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dib9000_state, ptr %97, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %98, ptr noundef align 4 dereferenceable(36) %60, i32 36, i1 false) #13
  %99 = load ptr, ptr %65, align 4
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dib9000_state, ptr %101, i32 0, i32 6
  store i32 30, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dib9000_state, ptr %101, i32 0, i32 7
  store i32 -3, ptr %103, align 8
  %104 = add nuw nsw i32 %66, 1
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %111, label %106

106:                                              ; preds = %82
  %107 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 %104
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 %104
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %64

111:                                              ; preds = %106, %82, %57
  %112 = load ptr, ptr %8, align 4
  %113 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 1
  %114 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %115 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %116 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %117 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  %118 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %119 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %120 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %121 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  br label %122

122:                                              ; preds = %258, %111
  %123 = phi ptr [ %112, %111 ], [ %181, %258 ]
  %124 = phi i8 [ 0, %111 ], [ %261, %258 ]
  %125 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef %123)
  %126 = load ptr, ptr %113, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %176, label %128

128:                                              ; preds = %122
  %129 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %126)
  %130 = icmp eq i32 %125, -1
  %131 = icmp ne i32 %129, -1
  %132 = icmp sgt i32 %129, %125
  %133 = select i1 %131, i1 %132, i1 false
  %134 = select i1 %130, i1 true, i1 %133
  %135 = select i1 %134, i32 %129, i32 %125
  %136 = load ptr, ptr %114, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %176, label %138

138:                                              ; preds = %128
  %139 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %136)
  %140 = icmp eq i32 %135, -1
  %141 = icmp ne i32 %139, -1
  %142 = icmp sgt i32 %139, %135
  %143 = select i1 %141, i1 %142, i1 false
  %144 = select i1 %140, i1 true, i1 %143
  %145 = select i1 %144, i32 %139, i32 %135
  %146 = load ptr, ptr %115, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %176, label %148

148:                                              ; preds = %138
  %149 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %146)
  %150 = icmp eq i32 %145, -1
  %151 = icmp ne i32 %149, -1
  %152 = icmp sgt i32 %149, %145
  %153 = select i1 %151, i1 %152, i1 false
  %154 = select i1 %150, i1 true, i1 %153
  %155 = select i1 %154, i32 %149, i32 %145
  %156 = load ptr, ptr %116, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %176, label %158

158:                                              ; preds = %148
  %159 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %156)
  %160 = icmp eq i32 %155, -1
  %161 = icmp ne i32 %159, -1
  %162 = icmp sgt i32 %159, %155
  %163 = select i1 %161, i1 %162, i1 false
  %164 = select i1 %160, i1 true, i1 %163
  %165 = select i1 %164, i32 %159, i32 %155
  %166 = load ptr, ptr %117, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %158
  %169 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %166)
  %170 = icmp eq i32 %165, -1
  %171 = icmp ne i32 %169, -1
  %172 = icmp sgt i32 %169, %165
  %173 = select i1 %171, i1 %172, i1 false
  %174 = select i1 %170, i1 true, i1 %173
  %175 = select i1 %174, i32 %169, i32 %165
  br label %176

176:                                              ; preds = %168, %158, %148, %138, %128, %122
  %177 = phi i32 [ %125, %122 ], [ %135, %128 ], [ %145, %138 ], [ %155, %148 ], [ %165, %158 ], [ %175, %168 ]
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %272, label %179

179:                                              ; preds = %176
  %180 = sdiv i32 %177, 10
  tail call void @msleep(i32 noundef %180) #13
  %181 = load ptr, ptr %8, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %258, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.dvb_frontend, ptr %181, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.dib9000_state, ptr %185, i32 0, i32 7
  %187 = load i32, ptr %186, align 8
  %188 = add i32 %187, -1
  %189 = icmp ult i32 %188, -4
  br i1 %189, label %258, label %190

190:                                              ; preds = %183
  %191 = icmp eq i32 %187, -3
  %192 = zext i1 %191 to i8
  %193 = load ptr, ptr %113, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %258, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.dvb_frontend, ptr %193, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.dib9000_state, ptr %197, i32 0, i32 7
  %199 = load i32, ptr %198, align 8
  %200 = add i32 %199, -1
  %201 = icmp ult i32 %200, -4
  br i1 %201, label %258, label %202

202:                                              ; preds = %195
  %203 = icmp eq i32 %199, -3
  %204 = zext i1 %203 to i8
  %205 = add nuw nsw i8 %192, %204
  %206 = load ptr, ptr %118, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %258, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.dvb_frontend, ptr %206, i32 0, i32 3
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.dib9000_state, ptr %210, i32 0, i32 7
  %212 = load i32, ptr %211, align 8
  %213 = add i32 %212, -1
  %214 = icmp ult i32 %213, -4
  br i1 %214, label %258, label %215

215:                                              ; preds = %208
  %216 = icmp eq i32 %212, -3
  %217 = zext i1 %216 to i8
  %218 = add nuw nsw i8 %205, %217
  %219 = load ptr, ptr %119, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %258, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.dvb_frontend, ptr %219, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.dib9000_state, ptr %223, i32 0, i32 7
  %225 = load i32, ptr %224, align 8
  %226 = add i32 %225, -1
  %227 = icmp ult i32 %226, -4
  br i1 %227, label %258, label %228

228:                                              ; preds = %221
  %229 = icmp eq i32 %225, -3
  %230 = zext i1 %229 to i8
  %231 = add nuw nsw i8 %218, %230
  %232 = load ptr, ptr %120, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %258, label %234

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.dvb_frontend, ptr %232, i32 0, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.dib9000_state, ptr %236, i32 0, i32 7
  %238 = load i32, ptr %237, align 8
  %239 = add i32 %238, -1
  %240 = icmp ult i32 %239, -4
  br i1 %240, label %258, label %241

241:                                              ; preds = %234
  %242 = icmp eq i32 %238, -3
  %243 = zext i1 %242 to i8
  %244 = add nuw nsw i8 %231, %243
  %245 = load ptr, ptr %121, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %258, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.dvb_frontend, ptr %245, i32 0, i32 3
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.dib9000_state, ptr %249, i32 0, i32 7
  %251 = load i32, ptr %250, align 8
  %252 = add i32 %251, -1
  %253 = icmp ult i32 %252, -4
  br i1 %253, label %258, label %254

254:                                              ; preds = %247
  %255 = icmp eq i32 %251, -3
  %256 = zext i1 %255 to i8
  %257 = add nuw nsw i8 %244, %256
  br label %258

258:                                              ; preds = %254, %247, %241, %234, %228, %221, %215, %208, %202, %195, %190, %183, %179
  %259 = phi i8 [ 0, %183 ], [ 0, %179 ], [ %192, %190 ], [ %192, %195 ], [ %205, %202 ], [ %205, %208 ], [ %218, %215 ], [ %218, %221 ], [ %231, %228 ], [ %231, %234 ], [ %244, %241 ], [ %244, %247 ], [ %257, %254 ]
  %260 = phi i1 [ false, %183 ], [ true, %179 ], [ true, %190 ], [ false, %195 ], [ true, %202 ], [ false, %208 ], [ true, %215 ], [ false, %221 ], [ true, %228 ], [ false, %234 ], [ true, %241 ], [ false, %247 ], [ true, %254 ]
  %261 = phi i8 [ 0, %183 ], [ 0, %179 ], [ 0, %190 ], [ 1, %195 ], [ 0, %202 ], [ 2, %208 ], [ 0, %215 ], [ 3, %221 ], [ 0, %228 ], [ 4, %234 ], [ 0, %241 ], [ 5, %247 ], [ 0, %254 ]
  %262 = icmp eq i8 %259, 0
  %263 = select i1 %260, i1 %262, i1 false
  %264 = xor i1 %263, %260
  br i1 %264, label %122, label %265

265:                                              ; preds = %258
  br i1 %263, label %266, label %272

266:                                              ; preds = %265
  %267 = load i32, ptr @debug, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dib9000_set_frontend) #14
  br label %271

271:                                              ; preds = %269, %266
  tail call void @mutex_unlock(ptr noundef %29) #13
  store i8 -1, ptr %28, align 2
  br label %679

272:                                              ; preds = %265, %176
  %273 = phi i8 [ %261, %265 ], [ %124, %176 ]
  %274 = load i32, ptr @debug, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = zext i8 %273 to i32
  %278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dib9000_set_frontend, i32 noundef %277) #14
  br label %279

279:                                              ; preds = %276, %272
  %280 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 21
  store i8 1, ptr %280, align 4
  %281 = load ptr, ptr %8, align 4
  %282 = getelementptr inbounds %struct.dvb_frontend, ptr %281, i32 0, i32 8
  %283 = tail call i32 @dib9000_get_frontend(ptr noundef %281, ptr noundef %282)
  store i8 0, ptr %280, align 4
  %284 = load ptr, ptr %8, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %400, label %286

286:                                              ; preds = %279
  %287 = icmp eq i8 %273, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.dvb_frontend, ptr %284, i32 0, i32 3
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.dib9000_state, ptr %290, i32 0, i32 8
  store i8 2, ptr %291, align 4
  %292 = getelementptr inbounds i8, ptr %291, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(35) %292, i8 0, i32 35, i1 false)
  %293 = load ptr, ptr %8, align 4
  %294 = getelementptr inbounds %struct.dvb_frontend, ptr %293, i32 0, i32 3
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.dib9000_state, ptr %295, i32 0, i32 6
  store i32 30, ptr %296, align 4
  %297 = getelementptr inbounds %struct.dib9000_state, ptr %295, i32 0, i32 7
  store i32 -3, ptr %297, align 8
  %298 = load ptr, ptr %113, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %400, label %303

300:                                              ; preds = %286
  %301 = load ptr, ptr %113, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %400, label %305

303:                                              ; preds = %288
  %304 = icmp eq i8 %273, 1
  br i1 %304, label %319, label %305

305:                                              ; preds = %303, %300
  %306 = phi ptr [ %298, %303 ], [ %301, %300 ]
  %307 = getelementptr inbounds %struct.dvb_frontend, ptr %306, i32 0, i32 3
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.dib9000_state, ptr %308, i32 0, i32 8
  store i8 2, ptr %309, align 4
  %310 = getelementptr inbounds i8, ptr %309, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(35) %310, i8 0, i32 35, i1 false)
  %311 = load ptr, ptr %113, align 4
  %312 = getelementptr inbounds %struct.dvb_frontend, ptr %311, i32 0, i32 3
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.dib9000_state, ptr %313, i32 0, i32 6
  store i32 30, ptr %314, align 4
  %315 = getelementptr inbounds %struct.dib9000_state, ptr %313, i32 0, i32 7
  store i32 -3, ptr %315, align 8
  %316 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %400, label %323

319:                                              ; preds = %303
  %320 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %321 = load ptr, ptr %320, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %400, label %325

323:                                              ; preds = %305
  %324 = icmp eq i8 %273, 2
  br i1 %324, label %340, label %325

325:                                              ; preds = %323, %319
  %326 = phi ptr [ %316, %323 ], [ %320, %319 ]
  %327 = phi ptr [ %317, %323 ], [ %321, %319 ]
  %328 = getelementptr inbounds %struct.dvb_frontend, ptr %327, i32 0, i32 3
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr inbounds %struct.dib9000_state, ptr %329, i32 0, i32 8
  store i8 2, ptr %330, align 4
  %331 = getelementptr inbounds i8, ptr %330, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(35) %331, i8 0, i32 35, i1 false)
  %332 = load ptr, ptr %326, align 4
  %333 = getelementptr inbounds %struct.dvb_frontend, ptr %332, i32 0, i32 3
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr inbounds %struct.dib9000_state, ptr %334, i32 0, i32 6
  store i32 30, ptr %335, align 4
  %336 = getelementptr inbounds %struct.dib9000_state, ptr %334, i32 0, i32 7
  store i32 -3, ptr %336, align 8
  %337 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %400, label %344

340:                                              ; preds = %323
  %341 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %400, label %346

344:                                              ; preds = %325
  %345 = icmp eq i8 %273, 3
  br i1 %345, label %361, label %346

346:                                              ; preds = %344, %340
  %347 = phi ptr [ %337, %344 ], [ %341, %340 ]
  %348 = phi ptr [ %338, %344 ], [ %342, %340 ]
  %349 = getelementptr inbounds %struct.dvb_frontend, ptr %348, i32 0, i32 3
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.dib9000_state, ptr %350, i32 0, i32 8
  store i8 2, ptr %351, align 4
  %352 = getelementptr inbounds i8, ptr %351, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(35) %352, i8 0, i32 35, i1 false)
  %353 = load ptr, ptr %347, align 4
  %354 = getelementptr inbounds %struct.dvb_frontend, ptr %353, i32 0, i32 3
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.dib9000_state, ptr %355, i32 0, i32 6
  store i32 30, ptr %356, align 4
  %357 = getelementptr inbounds %struct.dib9000_state, ptr %355, i32 0, i32 7
  store i32 -3, ptr %357, align 8
  %358 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %400, label %365

361:                                              ; preds = %344
  %362 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %363 = load ptr, ptr %362, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %400, label %367

365:                                              ; preds = %346
  %366 = icmp eq i8 %273, 4
  br i1 %366, label %384, label %367

367:                                              ; preds = %365, %361
  %368 = phi ptr [ %358, %365 ], [ %362, %361 ]
  %369 = phi ptr [ %359, %365 ], [ %363, %361 ]
  %370 = getelementptr inbounds %struct.dvb_frontend, ptr %369, i32 0, i32 3
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.dib9000_state, ptr %371, i32 0, i32 8
  store i8 2, ptr %372, align 4
  %373 = getelementptr inbounds i8, ptr %372, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(35) %373, i8 0, i32 35, i1 false)
  %374 = load ptr, ptr %368, align 4
  %375 = getelementptr inbounds %struct.dvb_frontend, ptr %374, i32 0, i32 3
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.dib9000_state, ptr %376, i32 0, i32 6
  store i32 30, ptr %377, align 4
  %378 = getelementptr inbounds %struct.dib9000_state, ptr %376, i32 0, i32 7
  store i32 -3, ptr %378, align 8
  %379 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, null
  %382 = icmp eq i8 %273, 5
  %383 = or i1 %381, %382
  br i1 %383, label %400, label %388

384:                                              ; preds = %365
  %385 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  %386 = load ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %400, label %388

388:                                              ; preds = %384, %367
  %389 = phi ptr [ %385, %384 ], [ %379, %367 ]
  %390 = phi ptr [ %386, %384 ], [ %380, %367 ]
  %391 = getelementptr inbounds %struct.dvb_frontend, ptr %390, i32 0, i32 3
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.dib9000_state, ptr %392, i32 0, i32 8
  store i8 2, ptr %393, align 4
  %394 = getelementptr inbounds i8, ptr %393, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(35) %394, i8 0, i32 35, i1 false)
  %395 = load ptr, ptr %389, align 4
  %396 = getelementptr inbounds %struct.dvb_frontend, ptr %395, i32 0, i32 3
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.dib9000_state, ptr %397, i32 0, i32 6
  store i32 30, ptr %398, align 4
  %399 = getelementptr inbounds %struct.dib9000_state, ptr %397, i32 0, i32 7
  store i32 -3, ptr %399, align 8
  br label %400

400:                                              ; preds = %388, %384, %367, %361, %346, %340, %325, %319, %305, %300, %288, %279
  %401 = load ptr, ptr %8, align 4
  %402 = icmp eq i8 %273, 0
  %403 = icmp eq i8 %273, 1
  %404 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %405 = icmp eq i8 %273, 2
  %406 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %407 = icmp eq i8 %273, 3
  %408 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %409 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %410 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %411 = icmp eq i8 %273, 4
  %412 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  %413 = icmp eq i8 %273, 5
  %414 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  %415 = icmp eq i8 %273, 0
  %416 = icmp eq i8 %273, 1
  %417 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %418 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 2
  %419 = icmp eq i8 %273, 2
  %420 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %421 = icmp eq i8 %273, 3
  %422 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %423 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 3
  %424 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 4
  %425 = icmp eq i8 %273, 4
  %426 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  %427 = icmp eq i8 %273, 5
  %428 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 5
  br label %429

429:                                              ; preds = %610, %400
  %430 = phi ptr [ %520, %610 ], [ %401, %400 ]
  %431 = icmp eq ptr %430, null
  br i1 %431, label %515, label %432

432:                                              ; preds = %429
  br i1 %402, label %437, label %433

433:                                              ; preds = %432
  %434 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %430)
  %435 = load ptr, ptr %113, align 4
  %436 = icmp eq ptr %435, null
  br i1 %436, label %512, label %442

437:                                              ; preds = %432
  %438 = load ptr, ptr %113, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %515, label %440

440:                                              ; preds = %437
  %441 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %438)
  br label %451

442:                                              ; preds = %433
  br i1 %403, label %451, label %443

443:                                              ; preds = %442
  %444 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %435)
  %445 = icmp eq i32 %434, -1
  br i1 %445, label %451, label %446

446:                                              ; preds = %443
  %447 = icmp ne i32 %444, -1
  %448 = icmp sgt i32 %444, %434
  %449 = select i1 %447, i1 %448, i1 false
  %450 = select i1 %449, i32 %444, i32 %434
  br label %451

451:                                              ; preds = %446, %443, %442, %440
  %452 = phi i32 [ %434, %442 ], [ %444, %443 ], [ %450, %446 ], [ %441, %440 ]
  %453 = load ptr, ptr %404, align 4
  %454 = icmp eq ptr %453, null
  br i1 %454, label %512, label %455

455:                                              ; preds = %451
  br i1 %405, label %466, label %456

456:                                              ; preds = %455
  %457 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %453)
  %458 = icmp eq i32 %452, -1
  %459 = icmp ne i32 %457, -1
  %460 = icmp sgt i32 %457, %452
  %461 = select i1 %459, i1 %460, i1 false
  %462 = select i1 %458, i1 true, i1 %461
  %463 = select i1 %462, i32 %457, i32 %452
  %464 = load ptr, ptr %406, align 4
  %465 = icmp eq ptr %464, null
  br i1 %465, label %512, label %469

466:                                              ; preds = %455
  %467 = load ptr, ptr %409, align 4
  %468 = icmp eq ptr %467, null
  br i1 %468, label %512, label %470

469:                                              ; preds = %456
  br i1 %407, label %482, label %470

470:                                              ; preds = %469, %466
  %471 = phi i32 [ %463, %469 ], [ %452, %466 ]
  %472 = phi ptr [ %464, %469 ], [ %467, %466 ]
  %473 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %472)
  %474 = icmp eq i32 %471, -1
  %475 = icmp ne i32 %473, -1
  %476 = icmp sgt i32 %473, %471
  %477 = select i1 %475, i1 %476, i1 false
  %478 = select i1 %474, i1 true, i1 %477
  %479 = select i1 %478, i32 %473, i32 %471
  %480 = load ptr, ptr %410, align 4
  %481 = icmp eq ptr %480, null
  br i1 %481, label %512, label %485

482:                                              ; preds = %469
  %483 = load ptr, ptr %408, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %512, label %486

485:                                              ; preds = %470
  br i1 %411, label %499, label %486

486:                                              ; preds = %485, %482
  %487 = phi i32 [ %479, %485 ], [ %463, %482 ]
  %488 = phi ptr [ %480, %485 ], [ %483, %482 ]
  %489 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %488)
  %490 = icmp eq i32 %487, -1
  %491 = icmp ne i32 %489, -1
  %492 = icmp sgt i32 %489, %487
  %493 = select i1 %491, i1 %492, i1 false
  %494 = select i1 %490, i1 true, i1 %493
  %495 = select i1 %494, i32 %489, i32 %487
  %496 = load ptr, ptr %412, align 4
  %497 = icmp eq ptr %496, null
  %498 = or i1 %497, %413
  br i1 %498, label %512, label %502

499:                                              ; preds = %485
  %500 = load ptr, ptr %414, align 4
  %501 = icmp eq ptr %500, null
  br i1 %501, label %512, label %502

502:                                              ; preds = %499, %486
  %503 = phi i32 [ %479, %499 ], [ %495, %486 ]
  %504 = phi ptr [ %500, %499 ], [ %496, %486 ]
  %505 = tail call fastcc i32 @dib9000_fw_tune(ptr noundef nonnull %504)
  %506 = icmp eq i32 %503, -1
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  %508 = icmp ne i32 %505, -1
  %509 = icmp sgt i32 %505, %503
  %510 = select i1 %508, i1 %509, i1 false
  %511 = select i1 %510, i32 %505, i32 %503
  br label %517

512:                                              ; preds = %502, %499, %486, %482, %470, %466, %456, %451, %433
  %513 = phi i32 [ %434, %433 ], [ %452, %451 ], [ %463, %456 ], [ %479, %470 ], [ %495, %486 ], [ %452, %466 ], [ %463, %482 ], [ %479, %499 ], [ %505, %502 ]
  %514 = icmp eq i32 %513, -1
  br i1 %514, label %515, label %517

515:                                              ; preds = %512, %437, %429
  %516 = load ptr, ptr %8, align 4
  br label %613

517:                                              ; preds = %512, %507
  %518 = phi i32 [ %513, %512 ], [ %511, %507 ]
  %519 = sdiv i32 %518, 10
  tail call void @msleep(i32 noundef %519) #13
  %520 = load ptr, ptr %8, align 4
  %521 = icmp eq ptr %520, null
  br i1 %521, label %613, label %522

522:                                              ; preds = %517
  br i1 %415, label %532, label %523

523:                                              ; preds = %522
  %524 = getelementptr inbounds %struct.dvb_frontend, ptr %520, i32 0, i32 3
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr inbounds %struct.dib9000_state, ptr %525, i32 0, i32 7
  %527 = load i32, ptr %526, align 8
  %528 = icmp eq i32 %527, -3
  %529 = zext i1 %528 to i8
  %530 = load ptr, ptr %113, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %610, label %535

532:                                              ; preds = %522
  %533 = load ptr, ptr %113, align 4
  %534 = icmp eq ptr %533, null
  br i1 %534, label %613, label %536

535:                                              ; preds = %523
  br i1 %416, label %548, label %536

536:                                              ; preds = %535, %532
  %537 = phi i8 [ %529, %535 ], [ 0, %532 ]
  %538 = phi ptr [ %530, %535 ], [ %533, %532 ]
  %539 = getelementptr inbounds %struct.dvb_frontend, ptr %538, i32 0, i32 3
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr inbounds %struct.dib9000_state, ptr %540, i32 0, i32 7
  %542 = load i32, ptr %541, align 8
  %543 = icmp eq i32 %542, -3
  %544 = zext i1 %543 to i8
  %545 = add nuw nsw i8 %537, %544
  %546 = load ptr, ptr %418, align 4
  %547 = icmp eq ptr %546, null
  br i1 %547, label %610, label %551

548:                                              ; preds = %535
  %549 = load ptr, ptr %417, align 4
  %550 = icmp eq ptr %549, null
  br i1 %550, label %610, label %552

551:                                              ; preds = %536
  br i1 %419, label %564, label %552

552:                                              ; preds = %551, %548
  %553 = phi i8 [ %545, %551 ], [ %529, %548 ]
  %554 = phi ptr [ %546, %551 ], [ %549, %548 ]
  %555 = getelementptr inbounds %struct.dvb_frontend, ptr %554, i32 0, i32 3
  %556 = load ptr, ptr %555, align 4
  %557 = getelementptr inbounds %struct.dib9000_state, ptr %556, i32 0, i32 7
  %558 = load i32, ptr %557, align 8
  %559 = icmp eq i32 %558, -3
  %560 = zext i1 %559 to i8
  %561 = add nuw nsw i8 %553, %560
  %562 = load ptr, ptr %420, align 4
  %563 = icmp eq ptr %562, null
  br i1 %563, label %610, label %567

564:                                              ; preds = %551
  %565 = load ptr, ptr %423, align 4
  %566 = icmp eq ptr %565, null
  br i1 %566, label %610, label %568

567:                                              ; preds = %552
  br i1 %421, label %580, label %568

568:                                              ; preds = %567, %564
  %569 = phi i8 [ %561, %567 ], [ %545, %564 ]
  %570 = phi ptr [ %562, %567 ], [ %565, %564 ]
  %571 = getelementptr inbounds %struct.dvb_frontend, ptr %570, i32 0, i32 3
  %572 = load ptr, ptr %571, align 4
  %573 = getelementptr inbounds %struct.dib9000_state, ptr %572, i32 0, i32 7
  %574 = load i32, ptr %573, align 8
  %575 = icmp eq i32 %574, -3
  %576 = zext i1 %575 to i8
  %577 = add nuw nsw i8 %569, %576
  %578 = load ptr, ptr %424, align 4
  %579 = icmp eq ptr %578, null
  br i1 %579, label %610, label %583

580:                                              ; preds = %567
  %581 = load ptr, ptr %422, align 4
  %582 = icmp eq ptr %581, null
  br i1 %582, label %610, label %584

583:                                              ; preds = %568
  br i1 %425, label %597, label %584

584:                                              ; preds = %583, %580
  %585 = phi i8 [ %577, %583 ], [ %561, %580 ]
  %586 = phi ptr [ %578, %583 ], [ %581, %580 ]
  %587 = getelementptr inbounds %struct.dvb_frontend, ptr %586, i32 0, i32 3
  %588 = load ptr, ptr %587, align 4
  %589 = getelementptr inbounds %struct.dib9000_state, ptr %588, i32 0, i32 7
  %590 = load i32, ptr %589, align 8
  %591 = icmp eq i32 %590, -3
  %592 = zext i1 %591 to i8
  %593 = add nuw nsw i8 %585, %592
  %594 = load ptr, ptr %426, align 4
  %595 = icmp eq ptr %594, null
  %596 = or i1 %595, %427
  br i1 %596, label %610, label %600

597:                                              ; preds = %583
  %598 = load ptr, ptr %428, align 4
  %599 = icmp eq ptr %598, null
  br i1 %599, label %610, label %600

600:                                              ; preds = %597, %584
  %601 = phi i8 [ %577, %597 ], [ %593, %584 ]
  %602 = phi ptr [ %598, %597 ], [ %594, %584 ]
  %603 = getelementptr inbounds %struct.dvb_frontend, ptr %602, i32 0, i32 3
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr inbounds %struct.dib9000_state, ptr %604, i32 0, i32 7
  %606 = load i32, ptr %605, align 8
  %607 = icmp eq i32 %606, -3
  %608 = zext i1 %607 to i8
  %609 = add nuw nsw i8 %601, %608
  br label %610

610:                                              ; preds = %600, %597, %584, %580, %568, %564, %552, %548, %536, %523
  %611 = phi i8 [ %529, %523 ], [ %545, %536 ], [ %561, %552 ], [ %577, %568 ], [ %593, %584 ], [ %529, %548 ], [ %545, %564 ], [ %561, %580 ], [ %577, %597 ], [ %609, %600 ]
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %613, label %429

613:                                              ; preds = %610, %532, %517, %515
  %614 = phi ptr [ %516, %515 ], [ %520, %532 ], [ null, %517 ], [ %520, %610 ]
  %615 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 14, i32 0, i32 0, i32 13
  %616 = load i8, ptr %615, align 8
  %617 = zext i8 %616 to i32
  tail call fastcc void @dib9000_fw_set_output_mode(ptr noundef %614, i32 noundef %617)
  br label %618

618:                                              ; preds = %630, %613
  %619 = phi i32 [ 1, %613 ], [ %643, %630 ]
  %620 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 %619
  %621 = load ptr, ptr %620, align 4
  %622 = icmp eq ptr %621, null
  br i1 %622, label %645, label %623

623:                                              ; preds = %618
  %624 = getelementptr inbounds %struct.dvb_frontend, ptr %621, i32 0, i32 3
  %625 = load ptr, ptr %624, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %626 = load i32, ptr @debug, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %630, label %628

628:                                              ; preds = %623
  %629 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dib9000_fw_set_output_mode, ptr noundef nonnull %621, i32 noundef 4) #14
  br label %630

630:                                              ; preds = %628, %623
  %631 = getelementptr inbounds %struct.dib9000_state, ptr %625, i32 0, i32 17
  store i64 17179869184, ptr %631, align 8
  %632 = getelementptr inbounds %struct.i2c_device, ptr %625, i32 0, i32 1
  %633 = load i8, ptr %632, align 4
  %634 = lshr i8 %633, 1
  %635 = zext i8 %634 to i16
  store i16 %635, ptr %631, align 8
  %636 = getelementptr inbounds %struct.dib9000_state, ptr %625, i32 0, i32 18
  %637 = getelementptr inbounds %struct.dib9000_state, ptr %625, i32 0, i32 17, i32 0, i32 3
  store ptr %636, ptr %637, align 8
  store i8 7, ptr %636, align 8
  %638 = getelementptr %struct.dib9000_state, ptr %625, i32 0, i32 18, i32 1
  store i8 3, ptr %638, align 1
  %639 = getelementptr %struct.dib9000_state, ptr %625, i32 0, i32 18, i32 2
  store i16 5, ptr %639, align 2
  %640 = load ptr, ptr %625, align 8
  %641 = tail call i32 @i2c_transfer(ptr noundef %640, ptr noundef %631, i32 noundef 1) #13
  store i16 128, ptr %3, align 2
  %642 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %625, i8 noundef zeroext 23, ptr noundef nonnull %3, i8 noundef zeroext 1, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %643 = add nuw nsw i32 %619, 1
  %644 = icmp eq i32 %643, 6
  br i1 %644, label %645, label %618

645:                                              ; preds = %630, %618
  %646 = phi i32 [ 6, %630 ], [ %619, %618 ]
  %647 = add nsw i32 %646, -1
  %648 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 15, i32 %647
  %649 = load ptr, ptr %648, align 4
  %650 = getelementptr inbounds %struct.dvb_frontend, ptr %649, i32 0, i32 3
  %651 = load ptr, ptr %650, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2
  %652 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %651, i8 noundef zeroext 22, ptr noundef nonnull %2, i8 noundef zeroext 1, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  tail call void @mutex_unlock(ptr noundef %29) #13
  %653 = load i8, ptr %28, align 2
  %654 = icmp sgt i8 %653, -1
  br i1 %654, label %655, label %678

655:                                              ; preds = %645
  store i8 -2, ptr %28, align 2
  br label %656

656:                                              ; preds = %675, %655
  %657 = phi i8 [ 0, %655 ], [ %676, %675 ]
  %658 = zext i8 %657 to i32
  %659 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %658
  %660 = load i8, ptr %659, align 2
  switch i8 %660, label %675 [
    i8 0, label %661
    i8 1, label %666
  ]

661:                                              ; preds = %656
  %662 = load ptr, ptr %8, align 4
  %663 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %658, i32 3
  %664 = load i8, ptr %663, align 2
  %665 = tail call i32 @dib9000_fw_pid_filter_ctrl(ptr noundef %662, i8 noundef zeroext %664)
  br label %675

666:                                              ; preds = %656
  %667 = load ptr, ptr %8, align 4
  %668 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %658, i32 1
  %669 = load i8, ptr %668, align 1
  %670 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %658, i32 2
  %671 = load i16, ptr %670, align 2
  %672 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 22, i32 %658, i32 3
  %673 = load i8, ptr %672, align 2
  %674 = tail call i32 @dib9000_fw_pid_filter(ptr noundef %667, i8 noundef zeroext %669, i16 noundef zeroext %671, i8 noundef zeroext %673)
  br label %675

675:                                              ; preds = %666, %661, %656
  %676 = add i8 %657, 1
  %677 = icmp ugt i8 %676, %653
  br i1 %677, label %678, label %656

678:                                              ; preds = %675, %645
  store i8 -2, ptr %28, align 2
  br label %679

679:                                              ; preds = %678, %271, %35, %32, %25, %22, %16, %13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib9000_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #11 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_get_frontend(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 21
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 20
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %368, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_get_frontend) #14
  br label %368

18:                                               ; preds = %9, %2
  %19 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %135, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %20, i32 0, i32 1, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef nonnull %20, ptr noundef nonnull %3) #13
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %91, label %29

29:                                               ; preds = %128, %117, %106, %95, %22
  %30 = phi i32 [ 1, %22 ], [ 2, %95 ], [ 3, %106 ], [ 4, %117 ], [ 5, %128 ]
  %31 = phi ptr [ %19, %22 ], [ %92, %95 ], [ %103, %106 ], [ %114, %117 ], [ %125, %128 ]
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.dib9000_get_frontend, i32 noundef %30) #14
  br label %36

36:                                               ; preds = %34, %29
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %37, i32 0, i32 1, i32 14
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 %39(ptr noundef %37, ptr noundef %1) #13
  br label %41

41:                                               ; preds = %88, %36
  %42 = phi i32 [ 0, %36 ], [ %89, %88 ]
  %43 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %362, label %46

46:                                               ; preds = %41
  %47 = icmp eq i32 %42, %30
  br i1 %47, label %88, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %31, align 4
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 8, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 8, i32 1
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %31, align 4
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %53, i32 0, i32 8, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %43, align 4
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %56, i32 0, i32 8, i32 4
  store i32 %55, ptr %57, align 4
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %58, i32 0, i32 8, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %43, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %61, i32 0, i32 8, i32 6
  store i32 %60, ptr %62, align 4
  %63 = load ptr, ptr %31, align 4
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %63, i32 0, i32 8, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %43, align 4
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %66, i32 0, i32 8, i32 8
  store i32 %65, ptr %67, align 4
  %68 = load ptr, ptr %31, align 4
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %68, i32 0, i32 8, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %43, align 4
  %72 = getelementptr inbounds %struct.dvb_frontend, ptr %71, i32 0, i32 8, i32 9
  store i32 %70, ptr %72, align 4
  %73 = load ptr, ptr %31, align 4
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %73, i32 0, i32 8, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %43, align 4
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %76, i32 0, i32 8, i32 11
  store i32 %75, ptr %77, align 4
  %78 = load ptr, ptr %31, align 4
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %78, i32 0, i32 8, i32 12
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %43, align 4
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %81, i32 0, i32 8, i32 12
  store i32 %80, ptr %82, align 4
  %83 = load ptr, ptr %31, align 4
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %83, i32 0, i32 8, i32 14
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %43, align 4
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %86, i32 0, i32 8, i32 14
  store i32 %85, ptr %87, align 4
  br label %88

88:                                               ; preds = %48, %46
  %89 = add nuw nsw i32 %42, 1
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %362, label %41

91:                                               ; preds = %22
  %92 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %135, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %93, i32 0, i32 1, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 %97(ptr noundef nonnull %93, ptr noundef nonnull %3) #13
  %99 = load i32, ptr %3, align 4
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %29

102:                                              ; preds = %95
  %103 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %135, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %104, i32 0, i32 1, i32 15
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef nonnull %104, ptr noundef nonnull %3) #13
  %110 = load i32, ptr %3, align 4
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %29

113:                                              ; preds = %106
  %114 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %115, i32 0, i32 1, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 %119(ptr noundef nonnull %115, ptr noundef nonnull %3) #13
  %121 = load i32, ptr %3, align 4
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %29

124:                                              ; preds = %117
  %125 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %126, i32 0, i32 1, i32 15
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 %130(ptr noundef nonnull %126, ptr noundef nonnull %3) #13
  %132 = load i32, ptr %3, align 4
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %29

135:                                              ; preds = %128, %124, %113, %102, %91, %18
  %136 = load ptr, ptr %4, align 4
  %137 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 13, i32 0, i32 5
  %138 = call i32 @mutex_lock_interruptible(ptr noundef %137) #13
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, ptr @debug, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %362, label %143

143:                                              ; preds = %140
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_fw_get_channel) #14
  br label %362

145:                                              ; preds = %135
  %146 = call fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %136, i8 noundef zeroext 1) #13
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  call void @mutex_unlock(ptr noundef %137) #13
  br label %362

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19
  call fastcc void @dib9000_risc_mem_read(ptr noundef %136, i8 noundef zeroext 10, ptr noundef %150, i16 noundef zeroext 10) #13
  %151 = load i8, ptr %150, align 1
  %152 = and i8 %151, 7
  %153 = icmp eq i8 %152, 0
  %154 = select i1 %153, i32 0, i32 2
  %155 = icmp eq i8 %152, 1
  %156 = select i1 %155, i32 1, i32 %154
  %157 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 15
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.dvb_frontend, ptr %158, i32 0, i32 8, i32 4
  store i32 %156, ptr %159, align 4
  %160 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = icmp ult i8 %161, 3
  br i1 %162, label %163, label %167

163:                                              ; preds = %149
  %164 = sext i8 %161 to i32
  %165 = getelementptr inbounds [3 x i32], ptr @switch.table.dib9000_get_frontend.64, i32 0, i32 %164
  %166 = load i32, ptr %165, align 4
  br label %167

167:                                              ; preds = %163, %149
  %168 = phi i32 [ %166, %163 ], [ 2, %149 ]
  %169 = load ptr, ptr %157, align 4
  %170 = getelementptr inbounds %struct.dvb_frontend, ptr %169, i32 0, i32 8, i32 6
  store i32 %168, ptr %170, align 4
  %171 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19, i32 2
  %172 = load i8, ptr %171, align 1
  %173 = call i8 @llvm.umin.i8(i8 %172, i8 4)
  %174 = zext i8 %173 to i32
  %175 = load ptr, ptr %157, align 4
  %176 = getelementptr inbounds %struct.dvb_frontend, ptr %175, i32 0, i32 8, i32 8
  store i32 %174, ptr %176, align 4
  %177 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19, i32 3
  %178 = load i8, ptr %177, align 1
  %179 = icmp ult i8 %178, 3
  br i1 %179, label %180, label %184

180:                                              ; preds = %167
  %181 = sext i8 %178 to i32
  %182 = getelementptr inbounds [3 x i32], ptr @switch.table.dib9000_get_frontend.64, i32 0, i32 %181
  %183 = load i32, ptr %182, align 4
  br label %184

184:                                              ; preds = %180, %167
  %185 = phi i32 [ %183, %180 ], [ 6, %167 ]
  %186 = load ptr, ptr %157, align 4
  %187 = getelementptr inbounds %struct.dvb_frontend, ptr %186, i32 0, i32 8, i32 1
  store i32 %185, ptr %187, align 4
  %188 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19, i32 4
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 1
  %191 = select i1 %190, i32 1, i32 4
  %192 = icmp eq i8 %189, 0
  %193 = select i1 %192, i32 0, i32 %191
  %194 = load ptr, ptr %157, align 4
  %195 = getelementptr inbounds %struct.dvb_frontend, ptr %194, i32 0, i32 8, i32 9
  store i32 %193, ptr %195, align 4
  %196 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19, i32 6
  %197 = load i8, ptr %196, align 1
  %198 = sext i8 %197 to i32
  %199 = add nsw i32 %198, -1
  %200 = icmp ult i32 %199, 7
  br i1 %200, label %201, label %204

201:                                              ; preds = %184
  %202 = getelementptr inbounds [7 x i32], ptr @switch.table.dib9000_get_frontend.63, i32 0, i32 %199
  %203 = load i32, ptr %202, align 4
  br label %204

204:                                              ; preds = %201, %184
  %205 = phi i32 [ %203, %201 ], [ 9, %184 ]
  %206 = load ptr, ptr %157, align 4
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %206, i32 0, i32 8, i32 11
  store i32 %205, ptr %207, align 4
  %208 = getelementptr inbounds %struct.dib9000_state, ptr %136, i32 0, i32 19, i32 7
  %209 = load i8, ptr %208, align 1
  %210 = sext i8 %209 to i32
  %211 = add nsw i32 %210, -1
  %212 = icmp ult i32 %211, 7
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = getelementptr inbounds [7 x i32], ptr @switch.table.dib9000_get_frontend.63, i32 0, i32 %211
  %215 = load i32, ptr %214, align 4
  br label %216

216:                                              ; preds = %213, %204
  %217 = phi i32 [ %215, %213 ], [ 9, %204 ]
  %218 = load ptr, ptr %157, align 4
  %219 = getelementptr inbounds %struct.dvb_frontend, ptr %218, i32 0, i32 8, i32 12
  store i32 %217, ptr %219, align 4
  call void @mutex_unlock(ptr noundef %137) #13
  %220 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  %222 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  %223 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  %226 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  %227 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 14
  %228 = load ptr, ptr %19, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %362, label %230

230:                                              ; preds = %216
  %231 = load i32, ptr %220, align 4
  %232 = getelementptr inbounds %struct.dvb_frontend, ptr %228, i32 0, i32 8, i32 4
  store i32 %231, ptr %232, align 4
  %233 = load i32, ptr %221, align 4
  %234 = load ptr, ptr %19, align 4
  %235 = getelementptr inbounds %struct.dvb_frontend, ptr %234, i32 0, i32 8, i32 6
  store i32 %233, ptr %235, align 4
  %236 = load i32, ptr %222, align 4
  %237 = load ptr, ptr %19, align 4
  %238 = getelementptr inbounds %struct.dvb_frontend, ptr %237, i32 0, i32 8, i32 8
  store i32 %236, ptr %238, align 4
  %239 = load i32, ptr %223, align 4
  %240 = load ptr, ptr %19, align 4
  %241 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 8, i32 1
  store i32 %239, ptr %241, align 4
  %242 = load i32, ptr %224, align 4
  %243 = load ptr, ptr %19, align 4
  %244 = getelementptr inbounds %struct.dvb_frontend, ptr %243, i32 0, i32 8, i32 9
  store i32 %242, ptr %244, align 4
  %245 = load i32, ptr %225, align 4
  %246 = load ptr, ptr %19, align 4
  %247 = getelementptr inbounds %struct.dvb_frontend, ptr %246, i32 0, i32 8, i32 11
  store i32 %245, ptr %247, align 4
  %248 = load i32, ptr %226, align 4
  %249 = load ptr, ptr %19, align 4
  %250 = getelementptr inbounds %struct.dvb_frontend, ptr %249, i32 0, i32 8, i32 12
  store i32 %248, ptr %250, align 4
  %251 = load i32, ptr %227, align 4
  %252 = load ptr, ptr %19, align 4
  %253 = getelementptr inbounds %struct.dvb_frontend, ptr %252, i32 0, i32 8, i32 14
  store i32 %251, ptr %253, align 4
  %254 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %362, label %257

257:                                              ; preds = %230
  %258 = load i32, ptr %220, align 4
  %259 = getelementptr inbounds %struct.dvb_frontend, ptr %255, i32 0, i32 8, i32 4
  store i32 %258, ptr %259, align 4
  %260 = load i32, ptr %221, align 4
  %261 = load ptr, ptr %254, align 4
  %262 = getelementptr inbounds %struct.dvb_frontend, ptr %261, i32 0, i32 8, i32 6
  store i32 %260, ptr %262, align 4
  %263 = load i32, ptr %222, align 4
  %264 = load ptr, ptr %254, align 4
  %265 = getelementptr inbounds %struct.dvb_frontend, ptr %264, i32 0, i32 8, i32 8
  store i32 %263, ptr %265, align 4
  %266 = load i32, ptr %223, align 4
  %267 = load ptr, ptr %254, align 4
  %268 = getelementptr inbounds %struct.dvb_frontend, ptr %267, i32 0, i32 8, i32 1
  store i32 %266, ptr %268, align 4
  %269 = load i32, ptr %224, align 4
  %270 = load ptr, ptr %254, align 4
  %271 = getelementptr inbounds %struct.dvb_frontend, ptr %270, i32 0, i32 8, i32 9
  store i32 %269, ptr %271, align 4
  %272 = load i32, ptr %225, align 4
  %273 = load ptr, ptr %254, align 4
  %274 = getelementptr inbounds %struct.dvb_frontend, ptr %273, i32 0, i32 8, i32 11
  store i32 %272, ptr %274, align 4
  %275 = load i32, ptr %226, align 4
  %276 = load ptr, ptr %254, align 4
  %277 = getelementptr inbounds %struct.dvb_frontend, ptr %276, i32 0, i32 8, i32 12
  store i32 %275, ptr %277, align 4
  %278 = load i32, ptr %227, align 4
  %279 = load ptr, ptr %254, align 4
  %280 = getelementptr inbounds %struct.dvb_frontend, ptr %279, i32 0, i32 8, i32 14
  store i32 %278, ptr %280, align 4
  %281 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 3
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %362, label %284

284:                                              ; preds = %257
  %285 = load i32, ptr %220, align 4
  %286 = getelementptr inbounds %struct.dvb_frontend, ptr %282, i32 0, i32 8, i32 4
  store i32 %285, ptr %286, align 4
  %287 = load i32, ptr %221, align 4
  %288 = load ptr, ptr %281, align 4
  %289 = getelementptr inbounds %struct.dvb_frontend, ptr %288, i32 0, i32 8, i32 6
  store i32 %287, ptr %289, align 4
  %290 = load i32, ptr %222, align 4
  %291 = load ptr, ptr %281, align 4
  %292 = getelementptr inbounds %struct.dvb_frontend, ptr %291, i32 0, i32 8, i32 8
  store i32 %290, ptr %292, align 4
  %293 = load i32, ptr %223, align 4
  %294 = load ptr, ptr %281, align 4
  %295 = getelementptr inbounds %struct.dvb_frontend, ptr %294, i32 0, i32 8, i32 1
  store i32 %293, ptr %295, align 4
  %296 = load i32, ptr %224, align 4
  %297 = load ptr, ptr %281, align 4
  %298 = getelementptr inbounds %struct.dvb_frontend, ptr %297, i32 0, i32 8, i32 9
  store i32 %296, ptr %298, align 4
  %299 = load i32, ptr %225, align 4
  %300 = load ptr, ptr %281, align 4
  %301 = getelementptr inbounds %struct.dvb_frontend, ptr %300, i32 0, i32 8, i32 11
  store i32 %299, ptr %301, align 4
  %302 = load i32, ptr %226, align 4
  %303 = load ptr, ptr %281, align 4
  %304 = getelementptr inbounds %struct.dvb_frontend, ptr %303, i32 0, i32 8, i32 12
  store i32 %302, ptr %304, align 4
  %305 = load i32, ptr %227, align 4
  %306 = load ptr, ptr %281, align 4
  %307 = getelementptr inbounds %struct.dvb_frontend, ptr %306, i32 0, i32 8, i32 14
  store i32 %305, ptr %307, align 4
  %308 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 4
  %309 = load ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %362, label %311

311:                                              ; preds = %284
  %312 = load i32, ptr %220, align 4
  %313 = getelementptr inbounds %struct.dvb_frontend, ptr %309, i32 0, i32 8, i32 4
  store i32 %312, ptr %313, align 4
  %314 = load i32, ptr %221, align 4
  %315 = load ptr, ptr %308, align 4
  %316 = getelementptr inbounds %struct.dvb_frontend, ptr %315, i32 0, i32 8, i32 6
  store i32 %314, ptr %316, align 4
  %317 = load i32, ptr %222, align 4
  %318 = load ptr, ptr %308, align 4
  %319 = getelementptr inbounds %struct.dvb_frontend, ptr %318, i32 0, i32 8, i32 8
  store i32 %317, ptr %319, align 4
  %320 = load i32, ptr %223, align 4
  %321 = load ptr, ptr %308, align 4
  %322 = getelementptr inbounds %struct.dvb_frontend, ptr %321, i32 0, i32 8, i32 1
  store i32 %320, ptr %322, align 4
  %323 = load i32, ptr %224, align 4
  %324 = load ptr, ptr %308, align 4
  %325 = getelementptr inbounds %struct.dvb_frontend, ptr %324, i32 0, i32 8, i32 9
  store i32 %323, ptr %325, align 4
  %326 = load i32, ptr %225, align 4
  %327 = load ptr, ptr %308, align 4
  %328 = getelementptr inbounds %struct.dvb_frontend, ptr %327, i32 0, i32 8, i32 11
  store i32 %326, ptr %328, align 4
  %329 = load i32, ptr %226, align 4
  %330 = load ptr, ptr %308, align 4
  %331 = getelementptr inbounds %struct.dvb_frontend, ptr %330, i32 0, i32 8, i32 12
  store i32 %329, ptr %331, align 4
  %332 = load i32, ptr %227, align 4
  %333 = load ptr, ptr %308, align 4
  %334 = getelementptr inbounds %struct.dvb_frontend, ptr %333, i32 0, i32 8, i32 14
  store i32 %332, ptr %334, align 4
  %335 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 5
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %362, label %338

338:                                              ; preds = %311
  %339 = load i32, ptr %220, align 4
  %340 = getelementptr inbounds %struct.dvb_frontend, ptr %336, i32 0, i32 8, i32 4
  store i32 %339, ptr %340, align 4
  %341 = load i32, ptr %221, align 4
  %342 = load ptr, ptr %335, align 4
  %343 = getelementptr inbounds %struct.dvb_frontend, ptr %342, i32 0, i32 8, i32 6
  store i32 %341, ptr %343, align 4
  %344 = load i32, ptr %222, align 4
  %345 = load ptr, ptr %335, align 4
  %346 = getelementptr inbounds %struct.dvb_frontend, ptr %345, i32 0, i32 8, i32 8
  store i32 %344, ptr %346, align 4
  %347 = load i32, ptr %223, align 4
  %348 = load ptr, ptr %335, align 4
  %349 = getelementptr inbounds %struct.dvb_frontend, ptr %348, i32 0, i32 8, i32 1
  store i32 %347, ptr %349, align 4
  %350 = load i32, ptr %224, align 4
  %351 = load ptr, ptr %335, align 4
  %352 = getelementptr inbounds %struct.dvb_frontend, ptr %351, i32 0, i32 8, i32 9
  store i32 %350, ptr %352, align 4
  %353 = load i32, ptr %225, align 4
  %354 = load ptr, ptr %335, align 4
  %355 = getelementptr inbounds %struct.dvb_frontend, ptr %354, i32 0, i32 8, i32 11
  store i32 %353, ptr %355, align 4
  %356 = load i32, ptr %226, align 4
  %357 = load ptr, ptr %335, align 4
  %358 = getelementptr inbounds %struct.dvb_frontend, ptr %357, i32 0, i32 8, i32 12
  store i32 %356, ptr %358, align 4
  %359 = load i32, ptr %227, align 4
  %360 = load ptr, ptr %335, align 4
  %361 = getelementptr inbounds %struct.dvb_frontend, ptr %360, i32 0, i32 8, i32 14
  store i32 %359, ptr %361, align 4
  br label %362

362:                                              ; preds = %338, %311, %284, %257, %230, %216, %148, %143, %140, %88, %41
  %363 = phi i32 [ -5, %148 ], [ -4, %143 ], [ -4, %140 ], [ 0, %338 ], [ 0, %311 ], [ 0, %284 ], [ 0, %257 ], [ 0, %230 ], [ 0, %216 ], [ 0, %88 ], [ 0, %41 ]
  %364 = load i8, ptr %6, align 4
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %367) #13
  br label %368

368:                                              ; preds = %366, %362, %16, %13
  %369 = phi i32 [ -4, %16 ], [ -4, %13 ], [ %363, %366 ], [ %363, %362 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %369
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 20
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %113, label %17

12:                                               ; preds = %2
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %162, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_status) #14
  br label %162

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dib9000_state, ptr %19, i32 0, i32 19
  %21 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %19, i16 noundef zeroext 535, ptr noundef %20, i32 noundef 2, i16 noundef zeroext 0) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i8, ptr %20, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr %struct.dib9000_state, ptr %19, i32 0, i32 19, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi i32 [ %30, %23 ], [ 0, %17 ]
  %33 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %113, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dib9000_state, ptr %38, i32 0, i32 19
  %40 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %38, i16 noundef zeroext 535, ptr noundef %39, i32 noundef 2, i16 noundef zeroext 0) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i8, ptr %39, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = getelementptr %struct.dib9000_state, ptr %38, i32 0, i32 19, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %45, %48
  br label %50

50:                                               ; preds = %42, %36
  %51 = phi i32 [ %49, %42 ], [ 0, %36 ]
  %52 = or i32 %51, %32
  %53 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %113, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %54, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dib9000_state, ptr %58, i32 0, i32 19
  %60 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %58, i16 noundef zeroext 535, ptr noundef %59, i32 noundef 2, i16 noundef zeroext 0) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i8, ptr %59, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = getelementptr %struct.dib9000_state, ptr %58, i32 0, i32 19, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %65, %68
  br label %70

70:                                               ; preds = %62, %56
  %71 = phi i32 [ %69, %62 ], [ 0, %56 ]
  %72 = or i32 %71, %52
  %73 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %113, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %74, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.dib9000_state, ptr %78, i32 0, i32 19
  %80 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %78, i16 noundef zeroext 535, ptr noundef %79, i32 noundef 2, i16 noundef zeroext 0) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i8, ptr %79, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = getelementptr %struct.dib9000_state, ptr %78, i32 0, i32 19, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %85, %88
  br label %90

90:                                               ; preds = %82, %76
  %91 = phi i32 [ %89, %82 ], [ 0, %76 ]
  %92 = or i32 %91, %72
  %93 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.dvb_frontend, ptr %94, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dib9000_state, ptr %98, i32 0, i32 19
  %100 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %98, i16 noundef zeroext 535, ptr noundef %99, i32 noundef 2, i16 noundef zeroext 0) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load i8, ptr %99, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = getelementptr %struct.dib9000_state, ptr %98, i32 0, i32 19, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %105, %108
  br label %110

110:                                              ; preds = %102, %96
  %111 = phi i32 [ %109, %102 ], [ 0, %96 ]
  %112 = or i32 %111, %92
  br label %113

113:                                              ; preds = %110, %90, %70, %50, %31, %8
  %114 = phi i32 [ 0, %8 ], [ %32, %31 ], [ %52, %50 ], [ %72, %70 ], [ %92, %90 ], [ %112, %110 ]
  %115 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 19
  %116 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %4, i16 noundef zeroext 535, ptr noundef %115, i32 noundef 2, i16 noundef zeroext 0) #13
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i8, ptr %115, align 1
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 8
  %122 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 19, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %121, %124
  br label %126

126:                                              ; preds = %118, %113
  %127 = phi i32 [ %125, %118 ], [ 0, %113 ]
  %128 = and i32 %127, 32768
  %129 = icmp ne i32 %128, 0
  %130 = and i32 %114, 32768
  %131 = icmp ne i32 %130, 0
  %132 = select i1 %129, i1 true, i1 %131
  %133 = zext i1 %132 to i32
  %134 = and i32 %127, 12288
  %135 = icmp eq i32 %134, 0
  %136 = and i32 %114, 12288
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %135, i1 %137, i1 false
  %139 = or i32 %133, 2
  %140 = select i1 %138, i32 %133, i32 %139
  %141 = and i32 %127, 256
  %142 = icmp eq i32 %141, 0
  %143 = and i32 %114, 256
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %142, i1 %144, i1 false
  %146 = or i32 %140, 4
  %147 = select i1 %145, i32 %140, i32 %146
  %148 = and i32 %127, 56
  %149 = icmp eq i32 %148, 56
  %150 = and i32 %114, 56
  %151 = icmp eq i32 %150, 56
  %152 = select i1 %149, i1 true, i1 %151
  %153 = or i32 %147, 8
  %154 = select i1 %152, i32 %153, i32 %147
  %155 = and i32 %127, 8
  %156 = icmp eq i32 %155, 0
  %157 = and i32 %114, 8
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %156, i1 %158, i1 false
  %160 = or i32 %154, 16
  %161 = select i1 %159, i32 %154, i32 %160
  store i32 %161, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %5) #13
  br label %162

162:                                              ; preds = %126, %15, %12
  %163 = phi i32 [ 0, %126 ], [ -4, %15 ], [ -4, %12 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 20
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_ber) #14
  br label %38

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 13, i32 0, i32 5
  %15 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #13
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_ber) #14
  br label %36

22:                                               ; preds = %13
  %23 = tail call fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %4, i8 noundef zeroext 1)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef %14) #13
  br label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 19
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %4, i8 noundef zeroext 6, ptr noundef %27, i16 noundef zeroext 32)
  tail call void @mutex_unlock(ptr noundef %14) #13
  %28 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 19, i32 20
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = shl nuw i32 %30, 16
  %32 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 19, i32 22
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %31, %34
  store i32 %35, ptr %1, align 4
  br label %36

36:                                               ; preds = %26, %25, %20, %17
  %37 = phi i32 [ -5, %25 ], [ 0, %26 ], [ -4, %20 ], [ -4, %17 ]
  tail call void @mutex_unlock(ptr noundef %5) #13
  br label %38

38:                                               ; preds = %36, %11, %8
  %39 = phi i32 [ %37, %36 ], [ -4, %11 ], [ -4, %8 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 20
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %90, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_signal_strength) #14
  br label %90

15:                                               ; preds = %2
  store i16 0, ptr %1, align 2
  %16 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef nonnull %17, ptr noundef nonnull %3) #13
  %23 = load i16, ptr %3, align 2
  %24 = load i16, ptr %1, align 2
  %25 = call i16 @llvm.uadd.sat.i16(i16 %24, i16 %23)
  store i16 %25, ptr %1, align 2
  %26 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef nonnull %27, ptr noundef nonnull %3) #13
  %33 = load i16, ptr %3, align 2
  %34 = load i16, ptr %1, align 2
  %35 = call i16 @llvm.uadd.sat.i16(i16 %34, i16 %33)
  store i16 %35, ptr %1, align 2
  %36 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %37, i32 0, i32 1, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef nonnull %37, ptr noundef nonnull %3) #13
  %43 = load i16, ptr %3, align 2
  %44 = load i16, ptr %1, align 2
  %45 = call i16 @llvm.uadd.sat.i16(i16 %44, i16 %43)
  store i16 %45, ptr %1, align 2
  %46 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %47, i32 0, i32 1, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef nonnull %47, ptr noundef nonnull %3) #13
  %53 = load i16, ptr %3, align 2
  %54 = load i16, ptr %1, align 2
  %55 = call i16 @llvm.uadd.sat.i16(i16 %54, i16 %53)
  store i16 %55, ptr %1, align 2
  %56 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 15, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %57, i32 0, i32 1, i32 17
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef nonnull %57, ptr noundef nonnull %3) #13
  %63 = load i16, ptr %3, align 2
  %64 = load i16, ptr %1, align 2
  %65 = call i16 @llvm.uadd.sat.i16(i16 %64, i16 %63)
  store i16 %65, ptr %1, align 2
  br label %66

66:                                               ; preds = %59, %49, %39, %29, %19, %15
  %67 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 13, i32 0, i32 5
  %68 = call i32 @mutex_lock_interruptible(ptr noundef %67) #13
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_signal_strength) #14
  br label %88

75:                                               ; preds = %66
  %76 = call fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %5, i8 noundef zeroext 1)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @mutex_unlock(ptr noundef %67) #13
  br label %88

79:                                               ; preds = %75
  call fastcc void @dib9000_risc_mem_read(ptr noundef %5, i8 noundef zeroext 6, ptr noundef %6, i16 noundef zeroext 32)
  call void @mutex_unlock(ptr noundef %67) #13
  %80 = getelementptr %struct.dib9000_state, ptr %5, i32 0, i32 19, i32 8
  %81 = load i16, ptr %80, align 2
  %82 = xor i16 %81, -1
  store i16 %82, ptr %3, align 2
  %83 = load i16, ptr %1, align 2
  %84 = icmp ult i16 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i16 -1, ptr %1, align 2
  br label %88

86:                                               ; preds = %79
  %87 = add i16 %83, %82
  store i16 %87, ptr %1, align 2
  br label %88

88:                                               ; preds = %86, %85, %78, %73, %70
  %89 = phi i32 [ -5, %78 ], [ 0, %85 ], [ 0, %86 ], [ -4, %73 ], [ -4, %70 ]
  call void @mutex_unlock(ptr noundef %7) #13
  br label %90

90:                                               ; preds = %88, %13, %10
  %91 = phi i32 [ %89, %88 ], [ -4, %13 ], [ -4, %10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 20
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_snr) #14
  br label %56

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @dib9000_get_snr(ptr noundef %0)
  %15 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @dib9000_get_snr(ptr noundef nonnull %16)
  %20 = add i32 %19, %14
  %21 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @dib9000_get_snr(ptr noundef nonnull %22)
  %26 = add i32 %25, %20
  %27 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @dib9000_get_snr(ptr noundef nonnull %28)
  %32 = add i32 %31, %26
  %33 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = tail call fastcc i32 @dib9000_get_snr(ptr noundef nonnull %34)
  %38 = add i32 %37, %32
  %39 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 15, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = tail call fastcc i32 @dib9000_get_snr(ptr noundef nonnull %40)
  %44 = add i32 %43, %38
  br label %45

45:                                               ; preds = %42, %36, %30, %24, %18, %13
  %46 = phi i32 [ %14, %13 ], [ %20, %18 ], [ %26, %24 ], [ %32, %30 ], [ %38, %36 ], [ %44, %42 ]
  %47 = icmp ult i32 %46, 65536
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = lshr i32 %46, 16
  %50 = tail call i32 @intlog10(i32 noundef %49) #13
  %51 = mul i32 %50, 10
  %52 = udiv i32 %51, 1677721
  %53 = trunc i32 %52 to i16
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i16 [ %53, %48 ], [ 0, %45 ]
  store i16 %55, ptr %1, align 2
  tail call void @mutex_unlock(ptr noundef %5) #13
  br label %56

56:                                               ; preds = %54, %11, %8
  %57 = phi i32 [ 0, %54 ], [ -4, %11 ], [ -4, %8 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib9000_read_unc_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 19
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 20
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_unc_blocks) #14
  br label %33

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dib9000_state, ptr %4, i32 0, i32 13, i32 0, i32 5
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_read_unc_blocks) #14
  br label %31

23:                                               ; preds = %14
  %24 = tail call fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %4, i8 noundef zeroext 1)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef %15) #13
  br label %31

27:                                               ; preds = %23
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %4, i8 noundef zeroext 6, ptr noundef %5, i16 noundef zeroext 32)
  tail call void @mutex_unlock(ptr noundef %15) #13
  %28 = getelementptr %struct.dib9000_state, ptr %4, i32 0, i32 19, i32 24
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %27, %26, %21, %18
  %32 = phi i32 [ -5, %26 ], [ 0, %27 ], [ -4, %21 ], [ -4, %18 ]
  tail call void @mutex_unlock(ptr noundef %6) #13
  br label %33

33:                                               ; preds = %31, %12, %9
  %34 = phi i32 [ %32, %31 ], [ -4, %12 ], [ -4, %9 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib9000_fw_set_output_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dib9000_fw_set_output_mode, ptr noundef %0, i32 noundef %1) #14
  br label %12

12:                                               ; preds = %10, %2
  switch i32 %1, label %19 [
    i32 1, label %13
    i32 2, label %14
    i32 7, label %15
    i32 4, label %16
    i32 5, label %17
    i32 0, label %18
  ]

13:                                               ; preds = %12
  store i16 1024, ptr %5, align 2
  br label %25

14:                                               ; preds = %12
  store i16 1088, ptr %5, align 2
  br label %25

15:                                               ; preds = %12
  store i16 1152, ptr %5, align 2
  br label %25

16:                                               ; preds = %12
  store i16 1280, ptr %5, align 2
  br label %25

17:                                               ; preds = %12
  store i16 1344, ptr %5, align 2
  br label %25

18:                                               ; preds = %12
  store i16 0, ptr %5, align 2
  br label %25

19:                                               ; preds = %12
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 15
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.dib9000_fw_set_output_mode, ptr noundef %23) #14
  br label %69

25:                                               ; preds = %18, %17, %16, %15, %14, %13
  %26 = phi i8 [ 0, %18 ], [ 64, %17 ], [ 0, %16 ], [ -128, %15 ], [ 64, %14 ], [ 0, %13 ]
  %27 = phi i8 [ 0, %18 ], [ 5, %17 ], [ 5, %16 ], [ 4, %15 ], [ 4, %14 ], [ 4, %13 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  store i8 %27, ptr %4, align 2
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %26, ptr %28, align 1
  %29 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 17
  store i64 17179869184, ptr %29, align 8
  %30 = getelementptr inbounds %struct.i2c_device, ptr %7, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = lshr i8 %31, 1
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %29, align 8
  %34 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 18
  %35 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 17, i32 0, i32 3
  store ptr %34, ptr %35, align 8
  store i8 7, ptr %34, align 8
  %36 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 18, i32 1
  store i8 3, ptr %36, align 1
  %37 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 18, i32 2
  %38 = load i16, ptr %4, align 2
  store i16 %38, ptr %37, align 2
  %39 = load ptr, ptr %7, align 8
  %40 = tail call i32 @i2c_transfer(ptr noundef %39, ptr noundef %29, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  switch i32 %1, label %58 [
    i32 1, label %41
    i32 2, label %41
    i32 7, label %41
    i32 5, label %41
  ]

41:                                               ; preds = %25, %25, %25, %25
  %42 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 19
  %43 = tail call fastcc i32 @dib9000_read16_attr(ptr noundef %7, i16 noundef zeroext 295, ptr noundef %42, i32 noundef 2, i16 noundef zeroext 0) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr %struct.dib9000_state, ptr %7, i32 0, i32 19, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 16
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i8 [ %48, %45 ], [ 0, %41 ]
  %51 = getelementptr inbounds %struct.dib9000_state, ptr %7, i32 0, i32 14, i32 0, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i8 2, i8 34
  %55 = or i8 %54, %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %56 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %55, ptr %56, align 1
  %57 = call fastcc i32 @dib9000_write16_attr(ptr noundef %7, i16 noundef zeroext 295, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %58

58:                                               ; preds = %49, %25
  %59 = trunc i32 %1 to i16
  %60 = add i16 %59, -1
  %61 = icmp ult i16 %60, 7
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = sext i16 %60 to i32
  %64 = getelementptr inbounds [7 x i16], ptr @switch.table.dib9000_fw_set_output_mode, i32 0, i32 %63
  %65 = load i16, ptr %64, align 2
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i16 [ 0, %58 ], [ %65, %62 ]
  store i16 %67, ptr %5, align 2
  %68 = call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %7, i8 noundef zeroext 23, ptr noundef nonnull %5, i8 noundef zeroext 1, i16 noundef zeroext 0)
  br label %69

69:                                               ; preds = %66, %22, %19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_fw_tune(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca %struct.dibDVBTChannel, align 1
  %3 = alloca [9 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 1
  %9 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %126 [
    i32 30, label %11
    i32 31, label %113
  ]

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #13
  %12 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = udiv i32 %15, 1000
  %17 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 9
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  %21 = add nuw nsw i32 %16, 101
  %22 = select i1 %20, i32 %16, i32 %21
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %3, align 1
  %24 = lshr i32 %22, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = lshr i32 %22, 16
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 2
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 8, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = udiv i32 %32, 1000
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 4
  store i8 %34, ptr %35, align 1
  %36 = lshr i32 %33, 8
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 5
  store i8 %37, ptr %38, align 1
  %39 = lshr i32 %33, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 6
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 7
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds [9 x i8], ptr %3, i32 0, i32 8
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 8, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 3
  %47 = select i1 %46, i8 -127, i8 -128
  store i8 %47, ptr %43, align 1
  call fastcc void @dib9000_risc_mem_write(ptr noundef %5, i8 noundef zeroext 7, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #13
  tail call fastcc void @dib9000_risc_mem_write(ptr noundef %5, i8 noundef zeroext 9, ptr noundef nonnull @fe_info)
  tail call fastcc void @dib9000_risc_mem_write(ptr noundef %5, i8 noundef zeroext 1, ptr noundef nonnull @fe_info)
  br i1 %8, label %110, label %48

48:                                               ; preds = %11
  %49 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1, !annotation !8
  %50 = getelementptr inbounds %struct.dib9000_state, ptr %49, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 4
  %53 = load i32, ptr %52, align 4
  switch i32 %53, label %55 [
    i32 1, label %54
    i32 0, label %56
  ]

54:                                               ; preds = %48
  store i8 1, ptr %2, align 1
  br label %56

55:                                               ; preds = %48
  store i8 -1, ptr %2, align 1
  br label %56

56:                                               ; preds = %55, %54, %48
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, 4
  %60 = shl i32 %58, 3
  %61 = lshr i32 33620224, %60
  %62 = trunc i32 %61 to i8
  %63 = select i1 %59, i8 %62, i8 1
  %64 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 1
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, 4
  %68 = trunc i32 %66 to i8
  %69 = select i1 %67, i8 %68, i8 -1
  %70 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 2
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 4
  %74 = shl i32 %72, 3
  %75 = lshr i32 50266368, %74
  %76 = trunc i32 %75 to i8
  %77 = select i1 %73, i8 %76, i8 -1
  %78 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 3
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = icmp ult i32 %80, 4
  %82 = shl i32 %80, 3
  %83 = lshr i32 16843008, %82
  %84 = trunc i32 %83 to i8
  %85 = select i1 %81, i8 %84, i8 -1
  %86 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 4
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 5
  store i8 1, ptr %87, align 1
  %88 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, -1
  %91 = icmp ult i32 %90, 7
  br i1 %91, label %92, label %95

92:                                               ; preds = %56
  %93 = getelementptr inbounds [7 x i8], ptr @switch.table.dib9000_fw_tune.65, i32 0, i32 %90
  %94 = load i8, ptr %93, align 1
  br label %95

95:                                               ; preds = %92, %56
  %96 = phi i8 [ %94, %92 ], [ -1, %56 ]
  %97 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 6
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 8, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, -1
  %101 = icmp ult i32 %100, 7
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = getelementptr inbounds [7 x i8], ptr @switch.table.dib9000_fw_tune.65, i32 0, i32 %100
  %104 = load i8, ptr %103, align 1
  br label %105

105:                                              ; preds = %102, %95
  %106 = phi i8 [ %104, %102 ], [ -1, %95 ]
  %107 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 7
  store i8 %106, ptr %107, align 1
  %108 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 8
  store i8 1, ptr %108, align 1
  %109 = getelementptr inbounds %struct.dibDVBTChannel, ptr %2, i32 0, i32 9
  store i8 1, ptr %109, align 1
  call fastcc void @dib9000_risc_mem_write(ptr noundef %49, i8 noundef zeroext 8, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #13
  br label %110

110:                                              ; preds = %105, %11
  %111 = phi i8 [ 15, %105 ], [ 14, %11 ]
  %112 = tail call fastcc i32 @dib9000_mbx_send_attr(ptr noundef %5, i8 noundef zeroext %111, ptr noundef null, i8 noundef zeroext 0, i16 noundef zeroext 0)
  store i32 31, ptr %9, align 4
  br label %126

113:                                              ; preds = %1
  %114 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 19
  %115 = select i1 %8, i8 3, i8 12
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %5, i8 noundef zeroext %115, ptr noundef %114, i16 noundef zeroext 1)
  %116 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 19
  %117 = load i8, ptr %116, align 1
  %118 = sext i8 %117 to i32
  switch i32 %118, label %124 [
    i32 0, label %126
    i32 -2, label %119
  ]

119:                                              ; preds = %113
  br i1 %8, label %120, label %122

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 7
  store i32 -6, ptr %121, align 8
  br label %126

122:                                              ; preds = %119
  store i32 53, ptr %9, align 4
  %123 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 7
  store i32 -7, ptr %123, align 8
  br label %126

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.dib9000_state, ptr %5, i32 0, i32 7
  store i32 0, ptr %125, align 8
  store i32 53, ptr %9, align 4
  br label %126

126:                                              ; preds = %124, %122, %120, %113, %110, %1
  %127 = phi i32 [ 10, %124 ], [ 10, %120 ], [ 10, %122 ], [ 10, %113 ], [ 10, %110 ], [ -1, %1 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib9000_get_snr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 19
  %5 = getelementptr inbounds %struct.dib9000_state, ptr %3, i32 0, i32 13, i32 0, i32 5
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib9000_get_snr) #14
  br label %54

13:                                               ; preds = %1
  %14 = tail call fastcc i32 @dib9000_fw_memmbx_sync(ptr noundef %3, i8 noundef zeroext 1)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %5) #13
  br label %54

17:                                               ; preds = %13
  tail call fastcc void @dib9000_risc_mem_read(ptr noundef %3, i8 noundef zeroext 6, ptr noundef %4, i16 noundef zeroext 32)
  tail call void @mutex_unlock(ptr noundef %5) #13
  %18 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 19, i32 14
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 255
  %23 = shl nuw nsw i32 %20, 2
  %24 = and i32 %23, 60
  %25 = getelementptr %struct.dib9000_state, ptr %3, i32 0, i32 19, i32 16
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = lshr i32 %27, 14
  %29 = or i32 %24, %28
  %30 = and i32 %20, 8
  %31 = icmp eq i32 %30, 0
  %32 = or i32 %29, -64
  %33 = select i1 %31, i32 %29, i32 %32
  %34 = add nsw i32 %33, 16
  %35 = shl i32 %22, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %17
  %38 = and i32 %27, 32
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %27, 63
  %41 = select i1 %39, i32 0, i32 -64
  %42 = lshr i32 %27, 6
  %43 = and i32 %42, 255
  %44 = add nuw nsw i32 %40, 16
  %45 = add nsw i32 %44, %41
  %46 = shl i32 %43, %45
  %47 = udiv i32 %46, %35
  %48 = shl i32 %47, 16
  %49 = shl i32 %46, 16
  %50 = mul i32 %48, %35
  %51 = sub i32 %49, %50
  %52 = udiv i32 %51, %35
  %53 = add i32 %48, %52
  br label %54

54:                                               ; preds = %37, %17, %16, %11, %8
  %55 = phi i32 [ 0, %16 ], [ %53, %37 ], [ 0, %11 ], [ 0, %8 ], [ -1, %17 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.uadd.sat.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
