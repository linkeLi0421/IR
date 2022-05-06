; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib7000m.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib7000m.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_get_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_get_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_get_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_pid_filter_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_pid_filter_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_pid_filter_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_pid_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_pid_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_pid_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000m_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000m_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000m_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type {}
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib7000m_state = type { %struct.dvb_frontend, %struct.dib7000m_config, i8, ptr, %struct.dibx000_i2c_master, i8, i16, i8, i32, ptr, i32, i32, i32, i8, i16, i16, i8, [2 x %struct.i2c_msg], [4 x i8], [2 x i8], %struct.mutex }
%struct.dib7000m_config = type { i8, i8, i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, ptr, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dibx000_bandwidth_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.73 }
%struct.anon.73 = type { i16, i16, i16, i16 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib7000m_get_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_get_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_get_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_get_i2c_master to i32), ptr @__kstrtab_dib7000m_get_i2c_master, ptr @__kstrtabns_dib7000m_get_i2c_master }, section "___ksymtab+dib7000m_get_i2c_master", align 4
@.str = private unnamed_addr constant [39 x i8] c"\017dib7000m: %s: PID filter enabled %d\0A\00", align 1
@__func__.dib7000m_pid_filter_ctrl = private unnamed_addr constant [25 x i8] c"dib7000m_pid_filter_ctrl\00", align 1
@__kstrtab_dib7000m_pid_filter_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_pid_filter_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_pid_filter_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_pid_filter_ctrl to i32), ptr @__kstrtab_dib7000m_pid_filter_ctrl, ptr @__kstrtabns_dib7000m_pid_filter_ctrl }, section "___ksymtab+dib7000m_pid_filter_ctrl", align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"\017dib7000m: %s: PID filter: index %x, PID %d, OnOff %d\0A\00", align 1
@__func__.dib7000m_pid_filter = private unnamed_addr constant [20 x i8] c"dib7000m_pid_filter\00", align 1
@__kstrtab_dib7000m_pid_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_pid_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_pid_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_pid_filter to i32), ptr @__kstrtab_dib7000m_pid_filter, ptr @__kstrtabns_dib7000m_pid_filter }, section "___ksymtab+dib7000m_pid_filter", align 4
@dib7000m_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 7000MA/MB/PA/PB/MC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib7000m_release, ptr null, ptr @dib7000m_wakeup, ptr @dib7000m_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib7000m_set_frontend, ptr @dib7000m_fe_get_tune_settings, ptr @dib7000m_get_frontend, ptr @dib7000m_read_status, ptr @dib7000m_read_ber, ptr @dib7000m_read_signal_strength, ptr @dib7000m_read_snr, ptr @dib7000m_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@dib7000m_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"&st->i2c_buffer_lock\00", align 1
@__kstrtab_dib7000m_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000m_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000m_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000m_attach to i32), ptr @__kstrtab_dib7000m_attach, ptr @__kstrtabns_dib7000m_attach }, section "___ksymtab+dib7000m_attach", align 4
@__UNIQUE_ID_author251 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [71 x i8] c"description=Driver for the DiBcom 7000MA/MB/PA/PB/MC COFDM demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\017dib7000m: %s: could not acquire lock\0A\00", align 1
@__func__.dib7000m_read_word = private unnamed_addr constant [19 x i8] c"dib7000m_read_word\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\017dib7000m: %s: i2c read error on %d\0A\00", align 1
@__func__.dib7000m_write_word = private unnamed_addr constant [20 x i8] c"dib7000m_write_word\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"\017dib7000m: %s: wrong Vendor ID (0x%x)\0A\00", align 1
@__func__.dib7000m_identify = private unnamed_addr constant [18 x i8] c"dib7000m_identify\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\017dib7000m: %s: wrong Device ID (0x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"\017dib7000m: %s: this driver does not work with DiB7000PC\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\017dib7000m: %s: found DiB7000MA/PA/MB/PB\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\017dib7000m: %s: found DiB7000HC\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\017dib7000m: %s: found DiB7000MC\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\017dib7000m: %s: found DiB9000\0A\00", align 1
@__func__.dib7000m_demod_reset = private unnamed_addr constant [21 x i8] c"dib7000m_demod_reset\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\017dib7000m: %s: OUTPUT_MODE could not be reset.\0A\00", align 1
@dib7000m_defaults_common = internal global [68 x i16] [i16 3, i16 2, i16 4, i16 4096, i16 2068, i16 12, i16 6, i16 27, i16 30528, i16 91, i16 -29312, i16 457, i16 -15488, i16 0, i16 128, i16 0, i16 144, i16 1, i16 -11072, i16 1, i16 26, i16 26240, i16 1, i16 170, i16 1040, i16 8, i16 173, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 182, i16 8192, i16 2, i16 195, i16 3277, i16 0, i16 1, i16 205, i16 8207, i16 5, i16 214, i16 573, i16 164, i16 164, i16 32752, i16 15564, i16 1, i16 226, i16 0, i16 1, i16 255, i16 2048, i16 1, i16 263, i16 1, i16 1, i16 281, i16 16, i16 1, i16 294, i16 98, i16 0], align 2
@dib7000m_defaults = internal global [20 x i16] [i16 11, i16 76, i16 7250, i16 7238, i16 7264, i16 7309, i16 7338, i16 7382, i16 7427, i16 7456, i16 7500, i16 7544, i16 7574, i16 1, i16 912, i16 11402, i16 1, i16 1817, i16 1, i16 0], align 2
@.str.14 = private unnamed_addr constant [56 x i8] c"\017dib7000m: %s: setting output mode for demod %p to %d\0A\00", align 1
@__func__.dib7000m_set_output_mode = private unnamed_addr constant [25 x i8] c"dib7000m_set_output_mode\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"\017dib7000m: %s: Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"\017dib7000m: %s: using default timf\0A\00", align 1
@__func__.dib7000m_set_bandwidth = private unnamed_addr constant [23 x i8] c"dib7000m_set_bandwidth\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\017dib7000m: %s: using updated timf\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\017dib7000m: %s: could not start Slow ADC\0A\00", align 1
@__func__.dib7000m_wakeup = private unnamed_addr constant [16 x i8] c"dib7000m_wakeup\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"\017dib7000m: %s: autosearch returns: %d\0A\00", align 1
@__func__.dib7000m_set_frontend = private unnamed_addr constant [22 x i8] c"dib7000m_set_frontend\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"\017dib7000m: %s: SPLIT %p: %u\0A\00", align 1
@__func__.dib7000m_agc_startup = private unnamed_addr constant [21 x i8] c"dib7000m_agc_startup\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"\017dib7000m: %s: no valid AGC configuration found for band 0x%02x\0A\00", align 1
@__func__.dib7000m_set_agc_config = private unnamed_addr constant [24 x i8] c"dib7000m_set_agc_config\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"\017dib7000m: %s: WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", align 1
@__const.dib7000m_set_agc_config.b = private unnamed_addr constant [9 x i16] [i16 676, i16 696, i16 717, i16 737, i16 758, i16 778, i16 799, i16 819, i16 840], align 2
@.str.23 = private unnamed_addr constant [38 x i8] c"\017dib7000m: %s: AGC split_offset: %d\0A\00", align 1
@__func__.dib7000m_agc_soft_split = private unnamed_addr constant [24 x i8] c"dib7000m_agc_soft_split\00", align 1
@.str.24 = private unnamed_addr constant [80 x i8] c"\017dib7000m: %s: diversity combination deactivated - forced by COFDM parameters\0A\00", align 1
@__func__.dib7000m_set_diversity_in = private unnamed_addr constant [26 x i8] c"dib7000m_set_diversity_in\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\017dib7000m: %s: autosearch failed\0A\00", align 1
@__func__.dib7000m_autosearch_irq = private unnamed_addr constant [24 x i8] c"dib7000m_autosearch_irq\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"\017dib7000m: %s: autosearch succeeded\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"\017dib7000m: %s: updated timf_frequency: %d (default: %d)\0A\00", align 1
@__func__.dib7000m_update_timf = private unnamed_addr constant [21 x i8] c"dib7000m_update_timf\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_dib7000m_attach, ptr @__ksymtab_dib7000m_get_i2c_master, ptr @__ksymtab_dib7000m_pid_filter, ptr @__ksymtab_dib7000m_pid_filter_ctrl, ptr @__param_debug], section "llvm.metadata"
@switch.table.dib7000m_set_power_mode = private unnamed_addr constant [6 x i8] c"\00\FF\FF\00\00\FF", align 1
@switch.table.dib7000m_set_power_mode.28 = private unnamed_addr constant [6 x i8] c"\00\FF3\00\00\FF", align 1
@switch.table.dib7000m_set_power_mode.29 = private unnamed_addr constant [6 x i16] [i16 0, i16 -1, i16 -1, i16 -32737, i16 -32768, i16 -1], align 2
@switch.table.dib7000m_set_power_mode.30 = private unnamed_addr constant [6 x i8] c"\00\FF\0B\00\0B\1B", align 1
@switch.table.dib7000m_set_power_mode.31 = private unnamed_addr constant [6 x i8] c"\00\FF\FF\00\01\FF", align 1
@switch.table.dib7000m_set_power_mode.32 = private unnamed_addr constant [6 x i16] [i16 0, i16 16383, i16 16382, i16 0, i16 0, i16 16383], align 2
@switch.table.dib7000m_get_frontend.33 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], align 4
@switch.table.dib7000m_set_channel = private unnamed_addr constant [6 x i8] c"\04\06\02\0A\02\0E", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib7000m_get_i2c_master(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 4
  %7 = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %6, i32 noundef %1, i32 noundef %2) #8
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib7000m_pid_filter_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 8
  %7 = zext i8 %6 to i16
  %8 = add nuw nsw i16 %7, 294
  %9 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext %8)
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = zext i8 %1 to i32
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000m_pid_filter_ctrl, i32 noundef %13) #9
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8, ptr %5, align 8
  %17 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 20
  %18 = tail call i32 @mutex_lock_interruptible(ptr noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %56

25:                                               ; preds = %15
  %26 = zext i8 %16 to i16
  %27 = add nuw nsw i16 %26, 294
  %28 = zext i8 %1 to i16
  %29 = shl nuw nsw i16 %28, 4
  %30 = and i16 %29, 16
  %31 = and i16 %9, 239
  %32 = or i16 %31, %30
  %33 = lshr i16 %27, 8
  %34 = trunc i16 %33 to i8
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 18
  store i8 %34, ptr %35, align 4
  %36 = trunc i16 %27 to i8
  %37 = getelementptr %struct.dib7000m_state, ptr %4, i32 0, i32 18, i32 1
  store i8 %36, ptr %37, align 1
  %38 = lshr i16 %9, 8
  %39 = trunc i16 %38 to i8
  %40 = getelementptr %struct.dib7000m_state, ptr %4, i32 0, i32 18, i32 2
  store i8 %39, ptr %40, align 2
  %41 = trunc i16 %32 to i8
  %42 = getelementptr %struct.dib7000m_state, ptr %4, i32 0, i32 18, i32 3
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 17
  %44 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 2
  %46 = load i8, ptr %45, align 8
  %47 = lshr i8 %46, 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %43, align 4
  %49 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 17, i32 0, i32 3
  store ptr %35, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @i2c_transfer(ptr noundef %52, ptr noundef %43, i32 noundef 1) #8
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %17) #8
  br label %56

56:                                               ; preds = %25, %23, %20
  %57 = phi i32 [ %55, %25 ], [ -22, %23 ], [ -22, %20 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib7000m_read_word(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #8
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_read_word) #9
  br label %50

11:                                               ; preds = %2
  %12 = lshr i16 %1, 8
  %13 = trunc i16 %12 to i8
  %14 = or i8 %13, -128
  %15 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 %14, ptr %15, align 4
  %16 = trunc i16 %1 to i8
  %17 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %19 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 8
  %22 = lshr i8 %21, 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %18, align 4
  %24 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %15, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i16 2, ptr %26, align 4
  %27 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 1
  store i16 %23, ptr %27, align 4
  %28 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 19
  %30 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 1, i32 3
  store ptr %29, ptr %30, align 4
  %31 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 1, i32 2
  store i16 2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %18, i32 noundef 2) #8
  %35 = icmp ne i32 %34, 2
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %11
  %40 = zext i16 %1 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dib7000m_read_word, i32 noundef %40) #9
  br label %42

42:                                               ; preds = %39, %11
  %43 = load i8, ptr %29, align 8
  %44 = zext i8 %43 to i16
  %45 = shl nuw i16 %44, 8
  %46 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 19, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i16
  %49 = or i16 %45, %48
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %50

50:                                               ; preds = %42, %9, %6
  %51 = phi i16 [ %49, %42 ], [ 0, %9 ], [ 0, %6 ]
  ret i16 %51
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib7000m_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = zext i8 %1 to i32
  %11 = zext i16 %2 to i32
  %12 = zext i8 %3 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib7000m_pid_filter, i32 noundef %10, i32 noundef %11, i32 noundef %12) #9
  br label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 5
  %16 = load i8, ptr %15, align 8
  %17 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 20
  %18 = tail call i32 @mutex_lock_interruptible(ptr noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %56

25:                                               ; preds = %14
  %26 = icmp eq i8 %3, 0
  %27 = or i16 %2, 8192
  %28 = select i1 %26, i16 0, i16 %27
  %29 = zext i8 %16 to i16
  %30 = zext i8 %1 to i16
  %31 = add nuw nsw i16 %30, 300
  %32 = add nuw nsw i16 %31, %29
  %33 = lshr i16 %32, 8
  %34 = trunc i16 %33 to i8
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 18
  store i8 %34, ptr %35, align 4
  %36 = trunc i16 %32 to i8
  %37 = getelementptr %struct.dib7000m_state, ptr %6, i32 0, i32 18, i32 1
  store i8 %36, ptr %37, align 1
  %38 = lshr i16 %28, 8
  %39 = trunc i16 %38 to i8
  %40 = getelementptr %struct.dib7000m_state, ptr %6, i32 0, i32 18, i32 2
  store i8 %39, ptr %40, align 2
  %41 = trunc i16 %28 to i8
  %42 = getelementptr %struct.dib7000m_state, ptr %6, i32 0, i32 18, i32 3
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 17
  %44 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 2
  %46 = load i8, ptr %45, align 8
  %47 = lshr i8 %46, 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %43, align 4
  %49 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 17, i32 0, i32 3
  store ptr %35, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dib7000m_state, ptr %6, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @i2c_transfer(ptr noundef %52, ptr noundef %43, i32 noundef 1) #8
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %17) #8
  br label %56

56:                                               ; preds = %25, %23, %20
  %57 = phi i32 [ %55, %25 ], [ -22, %23 ], [ -22, %20 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib7000m_attach(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4256) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %1098, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %8, ptr noundef align 4 dereferenceable(40) %2, i32 40, i1 false)
  %9 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 3
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 2
  store i8 %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 3
  store ptr %5, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %12, ptr noundef nonnull align 4 dereferenceable(544) @dib7000m_ops, i32 544, i1 false)
  %13 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @dib7000m_attach.__key) #8
  %14 = getelementptr inbounds %struct.dib7000m_config, ptr %2, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %15, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 11
  store i32 %17, ptr %18, align 4
  %19 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %5, i16 noundef zeroext 896) #8
  %20 = zext i16 %19 to i32
  %21 = icmp eq i16 %19, 435
  br i1 %21, label %27, label %22

22:                                               ; preds = %7
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %1097, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dib7000m_identify, i32 noundef %20) #9
  br label %1097

27:                                               ; preds = %7
  %28 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %5, i16 noundef zeroext 897) #8
  %29 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 15
  store i16 %28, ptr %29, align 8
  %30 = and i16 %28, -4
  %31 = icmp eq i16 %30, 16384
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %1097, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib7000m_identify, i32 noundef 435) #9
  br label %1097

37:                                               ; preds = %27
  %38 = icmp eq i16 %28, 16384
  br i1 %38, label %39, label %49

39:                                               ; preds = %37
  %40 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %5, i16 noundef zeroext 769) #8
  %41 = icmp eq i16 %40, 16384
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %1097, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dib7000m_identify) #9
  br label %1097

47:                                               ; preds = %39
  %48 = load i16, ptr %29, align 8
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi i16 [ %48, %47 ], [ %28, %37 ]
  switch i16 %50, label %69 [
    i16 16384, label %51
    i16 16385, label %54
    i16 16386, label %58
    i16 16387, label %62
  ]

51:                                               ; preds = %49
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %69, label %66

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 5
  store i8 1, ptr %55, align 8
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %66

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 5
  store i8 1, ptr %59, align 8
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %66

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 5
  store i8 1, ptr %63, align 8
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %58, %54, %51
  %67 = phi ptr [ @.str.8, %51 ], [ @.str.9, %54 ], [ @.str.10, %58 ], [ @.str.11, %62 ]
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %67, ptr noundef nonnull @__func__.dib7000m_identify) #9
  br label %69

69:                                               ; preds = %66, %62, %58, %54, %51, %49
  %70 = load i16, ptr %29, align 8
  %71 = icmp eq i16 %70, 16384
  %72 = select i1 %71, i16 2, i16 12
  %73 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 4
  %74 = load ptr, ptr %9, align 4
  %75 = load i8, ptr %10, align 8
  %76 = tail call i32 @dibx000_init_i2c_master(ptr noundef %73, i16 noundef zeroext %72, ptr noundef %74, i8 noundef zeroext %75) #8
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef nonnull %5, i32 noundef 0) #8
  %77 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef nonnull %5, i32 noundef 4) #8
  %78 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %99

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %86, align 4
  %87 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -126, ptr %87, align 1
  %88 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 -1, ptr %88, align 2
  %89 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 -1, ptr %89, align 1
  %90 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %91 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %91, align 8
  %92 = load i8, ptr %10, align 8
  %93 = lshr i8 %92, 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %90, align 4
  %95 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %86, ptr %96, align 4
  %97 = load ptr, ptr %9, align 4
  %98 = tail call i32 @i2c_transfer(ptr noundef %97, ptr noundef %90, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %99

99:                                               ; preds = %85, %83, %80
  %100 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, ptr @debug, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %121

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %108, align 4
  %109 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -125, ptr %109, align 1
  %110 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 -1, ptr %110, align 2
  %111 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 -1, ptr %111, align 1
  %112 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %113 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %113, align 8
  %114 = load i8, ptr %10, align 8
  %115 = lshr i8 %114, 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %112, align 4
  %117 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %108, ptr %118, align 4
  %119 = load ptr, ptr %9, align 4
  %120 = tail call i32 @i2c_transfer(ptr noundef %119, ptr noundef %112, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %121

121:                                              ; preds = %107, %105, %102
  %122 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, ptr @debug, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %124
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %143

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %130, align 4
  %131 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -124, ptr %131, align 1
  %132 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 -1, ptr %132, align 2
  %133 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 15, ptr %133, align 1
  %134 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %135 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %135, align 8
  %136 = load i8, ptr %10, align 8
  %137 = lshr i8 %136, 1
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %134, align 4
  %139 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %139, align 2
  %140 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %130, ptr %140, align 4
  %141 = load ptr, ptr %9, align 4
  %142 = tail call i32 @i2c_transfer(ptr noundef %141, ptr noundef %134, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %143

143:                                              ; preds = %129, %127, %124
  %144 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, ptr @debug, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %146
  %150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %165

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %152, align 4
  %153 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -123, ptr %153, align 1
  %154 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 -1, ptr %154, align 2
  %155 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 -4, ptr %155, align 1
  %156 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %157 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %157, align 8
  %158 = load i8, ptr %10, align 8
  %159 = lshr i8 %158, 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %156, align 4
  %161 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %161, align 2
  %162 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %152, ptr %162, align 4
  %163 = load ptr, ptr %9, align 4
  %164 = tail call i32 @i2c_transfer(ptr noundef %163, ptr noundef %156, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %165

165:                                              ; preds = %151, %149, %146
  %166 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load i32, ptr @debug, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %187, label %171

171:                                              ; preds = %168
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %187

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %174, align 4
  %175 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -126, ptr %175, align 1
  %176 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %176, align 2
  %177 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %177, align 1
  %178 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %179 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %179, align 8
  %180 = load i8, ptr %10, align 8
  %181 = lshr i8 %180, 1
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %178, align 4
  %183 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %183, align 2
  %184 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %174, ptr %184, align 4
  %185 = load ptr, ptr %9, align 4
  %186 = tail call i32 @i2c_transfer(ptr noundef %185, ptr noundef %178, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %187

187:                                              ; preds = %173, %171, %168
  %188 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, ptr @debug, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %209, label %193

193:                                              ; preds = %190
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %209

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %196, align 4
  %197 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -125, ptr %197, align 1
  %198 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %198, align 2
  %199 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %199, align 1
  %200 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %201 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %201, align 8
  %202 = load i8, ptr %10, align 8
  %203 = lshr i8 %202, 1
  %204 = zext i8 %203 to i16
  store i16 %204, ptr %200, align 4
  %205 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %205, align 2
  %206 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %196, ptr %206, align 4
  %207 = load ptr, ptr %9, align 4
  %208 = tail call i32 @i2c_transfer(ptr noundef %207, ptr noundef %200, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %209

209:                                              ; preds = %195, %193, %190
  %210 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32, ptr @debug, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %231

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %218, align 4
  %219 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -124, ptr %219, align 1
  %220 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %220, align 2
  %221 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %221, align 1
  %222 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %223 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %223, align 8
  %224 = load i8, ptr %10, align 8
  %225 = lshr i8 %224, 1
  %226 = zext i8 %225 to i16
  store i16 %226, ptr %222, align 4
  %227 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %227, align 2
  %228 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %218, ptr %228, align 4
  %229 = load ptr, ptr %9, align 4
  %230 = tail call i32 @i2c_transfer(ptr noundef %229, ptr noundef %222, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %231

231:                                              ; preds = %217, %215, %212
  %232 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load i32, ptr @debug, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %253, label %237

237:                                              ; preds = %234
  %238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %253

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %240, align 4
  %241 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -123, ptr %241, align 1
  %242 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %242, align 2
  %243 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %243, align 1
  %244 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %245 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %245, align 8
  %246 = load i8, ptr %10, align 8
  %247 = lshr i8 %246, 1
  %248 = zext i8 %247 to i16
  store i16 %248, ptr %244, align 4
  %249 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %249, align 2
  %250 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %240, ptr %250, align 4
  %251 = load ptr, ptr %9, align 4
  %252 = tail call i32 @i2c_transfer(ptr noundef %251, ptr noundef %244, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %253

253:                                              ; preds = %239, %237, %234
  %254 = load i16, ptr %29, align 8
  %255 = icmp eq i16 %254, 16384
  %256 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 8
  %257 = load ptr, ptr %256, align 4
  br i1 %255, label %258, label %408

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 6
  %260 = load i8, ptr %259, align 4
  %261 = zext i8 %260 to i16
  %262 = shl i16 %261, 15
  %263 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 11
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i16
  %266 = shl nuw nsw i16 %265, 7
  %267 = or i16 %266, %262
  %268 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 10
  %269 = load i8, ptr %268, align 4
  %270 = zext i8 %269 to i16
  %271 = shl nuw nsw i16 %270, 6
  %272 = or i16 %267, %271
  %273 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 9
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i16
  %276 = shl nuw nsw i16 %275, 5
  %277 = or i16 %272, %276
  %278 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 8
  %279 = load i8, ptr %278, align 2
  %280 = zext i8 %279 to i16
  %281 = shl nuw nsw i16 %280, 2
  %282 = or i16 %277, %281
  %283 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 7
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i16
  %286 = shl nuw nsw i16 %285, 1
  %287 = or i16 %282, %286
  %288 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 3
  %289 = load i8, ptr %288, align 1
  %290 = lshr i8 %289, 3
  %291 = and i8 %290, 24
  %292 = zext i8 %291 to i32
  %293 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 4
  %294 = load i8, ptr %293, align 2
  %295 = zext i8 %294 to i32
  %296 = shl nuw nsw i32 %295, 1
  %297 = or i32 %296, %292
  %298 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 5
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = or i32 %297, %300
  %302 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 13
  %303 = load i8, ptr %302, align 8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %305, label %322

305:                                              ; preds = %258
  %306 = trunc i32 %301 to i16
  %307 = or i16 %306, 32
  %308 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 14
  %309 = load i8, ptr %308, align 1
  %310 = icmp eq i8 %309, 0
  %311 = trunc i16 %287 to i8
  %312 = lshr i16 %287, 8
  %313 = trunc i16 %312 to i8
  br i1 %310, label %318, label %314

314:                                              ; preds = %305
  %315 = or i8 %313, 32
  %316 = trunc i16 %307 to i8
  %317 = lshr i8 %294, 7
  br label %338

318:                                              ; preds = %305
  %319 = or i8 %313, 16
  %320 = trunc i16 %307 to i8
  %321 = lshr i8 %294, 7
  br label %338

322:                                              ; preds = %258
  %323 = zext i8 %289 to i16
  %324 = shl i16 %323, 9
  %325 = and i16 %324, 32256
  %326 = or i16 %325, %287
  %327 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 2
  %328 = load i8, ptr %327, align 4
  %329 = zext i8 %328 to i32
  %330 = shl nuw nsw i32 %329, 5
  %331 = or i32 %330, %301
  %332 = trunc i16 %287 to i8
  %333 = lshr i16 %326, 8
  %334 = trunc i16 %333 to i8
  %335 = trunc i32 %331 to i8
  %336 = lshr i32 %331, 8
  %337 = trunc i32 %336 to i8
  br label %338

338:                                              ; preds = %322, %318, %314
  %339 = phi i8 [ %332, %322 ], [ %311, %314 ], [ %311, %318 ]
  %340 = phi i8 [ %334, %322 ], [ %315, %314 ], [ %319, %318 ]
  %341 = phi i8 [ %335, %322 ], [ %316, %314 ], [ %320, %318 ]
  %342 = phi i8 [ %337, %322 ], [ %317, %314 ], [ %321, %318 ]
  %343 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %338
  %346 = load i32, ptr @debug, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %364, label %348

348:                                              ; preds = %345
  %349 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %364

350:                                              ; preds = %338
  %351 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %351, align 4
  %352 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -114, ptr %352, align 1
  %353 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %342, ptr %353, align 2
  %354 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %341, ptr %354, align 1
  %355 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %356 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %356, align 8
  %357 = load i8, ptr %10, align 8
  %358 = lshr i8 %357, 1
  %359 = zext i8 %358 to i16
  store i16 %359, ptr %355, align 4
  %360 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %360, align 2
  %361 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %351, ptr %361, align 4
  %362 = load ptr, ptr %9, align 4
  %363 = tail call i32 @i2c_transfer(ptr noundef %362, ptr noundef %355, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %364

364:                                              ; preds = %350, %348, %345
  %365 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load i32, ptr @debug, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %386, label %370

370:                                              ; preds = %367
  %371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %386

372:                                              ; preds = %364
  %373 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %373, align 4
  %374 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -117, ptr %374, align 1
  %375 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %340, ptr %375, align 2
  %376 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %339, ptr %376, align 1
  %377 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %378 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %378, align 8
  %379 = load i8, ptr %10, align 8
  %380 = lshr i8 %379, 1
  %381 = zext i8 %380 to i16
  store i16 %381, ptr %377, align 4
  %382 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %382, align 2
  %383 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %373, ptr %383, align 4
  %384 = load ptr, ptr %9, align 4
  %385 = tail call i32 @i2c_transfer(ptr noundef %384, ptr noundef %377, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %386

386:                                              ; preds = %372, %370, %367
  %387 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %386
  %390 = load i32, ptr @debug, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %549, label %392

392:                                              ; preds = %389
  %393 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %549

394:                                              ; preds = %386
  %395 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %395, align 4
  %396 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -116, ptr %396, align 1
  %397 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %397, align 2
  %398 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 6, ptr %398, align 1
  %399 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %400 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %400, align 8
  %401 = load i8, ptr %10, align 8
  %402 = lshr i8 %401, 1
  %403 = zext i8 %402 to i16
  store i16 %403, ptr %399, align 4
  %404 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %404, align 2
  %405 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %395, ptr %405, align 4
  %406 = load ptr, ptr %9, align 4
  %407 = tail call i32 @i2c_transfer(ptr noundef %406, ptr noundef %399, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %549

408:                                              ; preds = %253
  %409 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 2
  %410 = load i8, ptr %409, align 4
  %411 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 3
  %412 = load i8, ptr %411, align 1
  %413 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %408
  %416 = load i32, ptr @debug, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %434, label %418

418:                                              ; preds = %415
  %419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %434

420:                                              ; preds = %408
  %421 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %421, align 4
  %422 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -117, ptr %422, align 1
  %423 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %410, ptr %423, align 2
  %424 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %412, ptr %424, align 1
  %425 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %426 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %426, align 8
  %427 = load i8, ptr %10, align 8
  %428 = lshr i8 %427, 1
  %429 = zext i8 %428 to i16
  store i16 %429, ptr %425, align 4
  %430 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %430, align 2
  %431 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %421, ptr %431, align 4
  %432 = load ptr, ptr %9, align 4
  %433 = tail call i32 @i2c_transfer(ptr noundef %432, ptr noundef %425, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %434

434:                                              ; preds = %420, %418, %415
  %435 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 9
  %436 = load i8, ptr %435, align 1
  %437 = zext i8 %436 to i16
  %438 = shl i16 %437, 10
  %439 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 8
  %440 = load i8, ptr %439, align 2
  %441 = zext i8 %440 to i16
  %442 = shl nuw nsw i16 %441, 5
  %443 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 7
  %444 = load i8, ptr %443, align 1
  %445 = zext i8 %444 to i16
  %446 = shl nuw nsw i16 %445, 4
  %447 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 4
  %448 = load i8, ptr %447, align 2
  %449 = zext i8 %448 to i16
  %450 = shl nuw nsw i16 %449, 1
  %451 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 5
  %452 = load i8, ptr %451, align 1
  %453 = zext i8 %452 to i16
  %454 = or i16 %438, %442
  %455 = or i16 %454, %446
  %456 = or i16 %455, %450
  %457 = or i16 %456, %453
  %458 = or i16 %457, 12296
  %459 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %434
  %462 = load i32, ptr @debug, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %483, label %464

464:                                              ; preds = %461
  %465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %483

466:                                              ; preds = %434
  %467 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %467, align 4
  %468 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -116, ptr %468, align 1
  %469 = lshr i16 %458, 8
  %470 = trunc i16 %469 to i8
  %471 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %470, ptr %471, align 2
  %472 = trunc i16 %458 to i8
  %473 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %472, ptr %473, align 1
  %474 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %475 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %475, align 8
  %476 = load i8, ptr %10, align 8
  %477 = lshr i8 %476, 1
  %478 = zext i8 %477 to i16
  store i16 %478, ptr %474, align 4
  %479 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %479, align 2
  %480 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %467, ptr %480, align 4
  %481 = load ptr, ptr %9, align 4
  %482 = tail call i32 @i2c_transfer(ptr noundef %481, ptr noundef %474, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %483

483:                                              ; preds = %466, %464, %461
  %484 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 6
  %485 = load i8, ptr %484, align 4
  %486 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %487 = icmp slt i32 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %483
  %489 = load i32, ptr @debug, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %514, label %491

491:                                              ; preds = %488
  %492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %514

493:                                              ; preds = %483
  %494 = zext i8 %485 to i16
  %495 = shl nuw nsw i16 %494, 3
  %496 = and i16 %458, -9
  %497 = or i16 %495, %496
  %498 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %498, align 4
  %499 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -116, ptr %499, align 1
  %500 = lshr i16 %497, 8
  %501 = trunc i16 %500 to i8
  %502 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %501, ptr %502, align 2
  %503 = trunc i16 %497 to i8
  %504 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %503, ptr %504, align 1
  %505 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %506 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %506, align 8
  %507 = load i8, ptr %10, align 8
  %508 = lshr i8 %507, 1
  %509 = zext i8 %508 to i16
  store i16 %509, ptr %505, align 4
  %510 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %510, align 2
  %511 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %498, ptr %511, align 4
  %512 = load ptr, ptr %9, align 4
  %513 = tail call i32 @i2c_transfer(ptr noundef %512, ptr noundef %505, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %514

514:                                              ; preds = %493, %491, %488
  %515 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 11
  %516 = load i8, ptr %515, align 1
  %517 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 10
  %518 = load i8, ptr %517, align 4
  %519 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %520 = icmp slt i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %514
  %522 = load i32, ptr @debug, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %549, label %524

524:                                              ; preds = %521
  %525 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %549

526:                                              ; preds = %514
  %527 = zext i8 %516 to i16
  %528 = shl nuw i16 %527, 8
  %529 = zext i8 %518 to i16
  %530 = shl nuw nsw i16 %529, 7
  %531 = or i16 %530, %528
  %532 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %532, align 4
  %533 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -114, ptr %533, align 1
  %534 = lshr i16 %531, 8
  %535 = trunc i16 %534 to i8
  %536 = or i8 %535, 24
  %537 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %536, ptr %537, align 2
  %538 = trunc i16 %530 to i8
  %539 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %538, ptr %539, align 1
  %540 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %541 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %541, align 8
  %542 = load i8, ptr %10, align 8
  %543 = lshr i8 %542, 1
  %544 = zext i8 %543 to i16
  store i16 %544, ptr %540, align 4
  %545 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %545, align 2
  %546 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %532, ptr %546, align 4
  %547 = load ptr, ptr %9, align 4
  %548 = tail call i32 @i2c_transfer(ptr noundef %547, ptr noundef %540, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %549

549:                                              ; preds = %526, %524, %521, %394, %392, %389
  %550 = load i32, ptr %257, align 4
  %551 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %549
  %554 = load i32, ptr @debug, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %577, label %556

556:                                              ; preds = %553
  %557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %577

558:                                              ; preds = %549
  %559 = mul i32 %550, 1000
  %560 = lshr i32 %559, 16
  %561 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 0, ptr %561, align 4
  %562 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 18, ptr %562, align 1
  %563 = lshr i32 %559, 24
  %564 = trunc i32 %563 to i8
  %565 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %564, ptr %565, align 2
  %566 = trunc i32 %560 to i8
  %567 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %566, ptr %567, align 1
  %568 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %569 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %569, align 8
  %570 = load i8, ptr %10, align 8
  %571 = lshr i8 %570, 1
  %572 = zext i8 %571 to i16
  store i16 %572, ptr %568, align 4
  %573 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %573, align 2
  %574 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %561, ptr %574, align 4
  %575 = load ptr, ptr %9, align 4
  %576 = tail call i32 @i2c_transfer(ptr noundef %575, ptr noundef %568, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %577

577:                                              ; preds = %558, %556, %553
  %578 = load i32, ptr %257, align 4
  %579 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %580 = icmp slt i32 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %577
  %582 = load i32, ptr @debug, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %605, label %584

584:                                              ; preds = %581
  %585 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %605

586:                                              ; preds = %577
  %587 = trunc i32 %578 to i16
  %588 = mul i16 %587, 1000
  %589 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 0, ptr %589, align 4
  %590 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 19, ptr %590, align 1
  %591 = lshr i16 %588, 8
  %592 = trunc i16 %591 to i8
  %593 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %592, ptr %593, align 2
  %594 = trunc i16 %588 to i8
  %595 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %594, ptr %595, align 1
  %596 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %597 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %597, align 8
  %598 = load i8, ptr %10, align 8
  %599 = lshr i8 %598, 1
  %600 = zext i8 %599 to i16
  store i16 %600, ptr %596, align 4
  %601 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %601, align 2
  %602 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %589, ptr %602, align 4
  %603 = load ptr, ptr %9, align 4
  %604 = tail call i32 @i2c_transfer(ptr noundef %603, ptr noundef %596, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %605

605:                                              ; preds = %586, %584, %581
  %606 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 13
  %607 = load i32, ptr %606, align 4
  %608 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %609 = icmp slt i32 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %605
  %611 = load i32, ptr @debug, align 4
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %633, label %613

613:                                              ; preds = %610
  %614 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %633

615:                                              ; preds = %605
  %616 = lshr i32 %607, 16
  %617 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 0, ptr %617, align 4
  %618 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 21, ptr %618, align 1
  %619 = lshr i32 %607, 24
  %620 = trunc i32 %619 to i8
  %621 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %620, ptr %621, align 2
  %622 = trunc i32 %616 to i8
  %623 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %622, ptr %623, align 1
  %624 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %625 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %625, align 8
  %626 = load i8, ptr %10, align 8
  %627 = lshr i8 %626, 1
  %628 = zext i8 %627 to i16
  store i16 %628, ptr %624, align 4
  %629 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %629, align 2
  %630 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %617, ptr %630, align 4
  %631 = load ptr, ptr %9, align 4
  %632 = tail call i32 @i2c_transfer(ptr noundef %631, ptr noundef %624, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %633

633:                                              ; preds = %615, %613, %610
  %634 = load i32, ptr %606, align 4
  %635 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %636 = icmp slt i32 %635, 0
  br i1 %636, label %637, label %642

637:                                              ; preds = %633
  %638 = load i32, ptr @debug, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %659, label %640

640:                                              ; preds = %637
  %641 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %659

642:                                              ; preds = %633
  %643 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 0, ptr %643, align 4
  %644 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 22, ptr %644, align 1
  %645 = lshr i32 %634, 8
  %646 = trunc i32 %645 to i8
  %647 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %646, ptr %647, align 2
  %648 = trunc i32 %634 to i8
  %649 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %648, ptr %649, align 1
  %650 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %651 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %651, align 8
  %652 = load i8, ptr %10, align 8
  %653 = lshr i8 %652, 1
  %654 = zext i8 %653 to i16
  store i16 %654, ptr %650, align 4
  %655 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %655, align 2
  %656 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %643, ptr %656, align 4
  %657 = load ptr, ptr %9, align 4
  %658 = tail call i32 @i2c_transfer(ptr noundef %657, ptr noundef %650, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %659

659:                                              ; preds = %642, %640, %637
  %660 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %257, i32 0, i32 12
  %661 = load i16, ptr %660, align 2
  %662 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %663 = icmp slt i32 %662, 0
  br i1 %663, label %664, label %669

664:                                              ; preds = %659
  %665 = load i32, ptr @debug, align 4
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %686, label %667

667:                                              ; preds = %664
  %668 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %686

669:                                              ; preds = %659
  %670 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %670, align 4
  %671 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -96, ptr %671, align 1
  %672 = lshr i16 %661, 8
  %673 = trunc i16 %672 to i8
  %674 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %673, ptr %674, align 2
  %675 = trunc i16 %661 to i8
  %676 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %675, ptr %676, align 1
  %677 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %678 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %678, align 8
  %679 = load i8, ptr %10, align 8
  %680 = lshr i8 %679, 1
  %681 = zext i8 %680 to i16
  store i16 %681, ptr %677, align 4
  %682 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %682, align 2
  %683 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %670, ptr %683, align 4
  %684 = load ptr, ptr %9, align 4
  %685 = tail call i32 @i2c_transfer(ptr noundef %684, ptr noundef %677, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %686

686:                                              ; preds = %669, %667, %664
  %687 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 9
  %688 = load i16, ptr %687, align 8
  %689 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %690 = icmp slt i32 %689, 0
  br i1 %690, label %691, label %696

691:                                              ; preds = %686
  %692 = load i32, ptr @debug, align 4
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %713, label %694

694:                                              ; preds = %691
  %695 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %713

696:                                              ; preds = %686
  %697 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %697, align 4
  %698 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 5, ptr %698, align 1
  %699 = lshr i16 %688, 8
  %700 = trunc i16 %699 to i8
  %701 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %700, ptr %701, align 2
  %702 = trunc i16 %688 to i8
  %703 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %702, ptr %703, align 1
  %704 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %705 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %705, align 8
  %706 = load i8, ptr %10, align 8
  %707 = lshr i8 %706, 1
  %708 = zext i8 %707 to i16
  store i16 %708, ptr %704, align 4
  %709 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %709, align 2
  %710 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %697, ptr %710, align 4
  %711 = load ptr, ptr %9, align 4
  %712 = tail call i32 @i2c_transfer(ptr noundef %711, ptr noundef %704, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %713

713:                                              ; preds = %696, %694, %691
  %714 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 10
  %715 = load i16, ptr %714, align 2
  %716 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %717 = icmp slt i32 %716, 0
  br i1 %717, label %718, label %723

718:                                              ; preds = %713
  %719 = load i32, ptr @debug, align 4
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %740, label %721

721:                                              ; preds = %718
  %722 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %740

723:                                              ; preds = %713
  %724 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %724, align 4
  %725 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 6, ptr %725, align 1
  %726 = lshr i16 %715, 8
  %727 = trunc i16 %726 to i8
  %728 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %727, ptr %728, align 2
  %729 = trunc i16 %715 to i8
  %730 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %729, ptr %730, align 1
  %731 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %732 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %732, align 8
  %733 = load i8, ptr %10, align 8
  %734 = lshr i8 %733, 1
  %735 = zext i8 %734 to i16
  store i16 %735, ptr %731, align 4
  %736 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %736, align 2
  %737 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %724, ptr %737, align 4
  %738 = load ptr, ptr %9, align 4
  %739 = tail call i32 @i2c_transfer(ptr noundef %738, ptr noundef %731, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %740

740:                                              ; preds = %723, %721, %718
  %741 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 11
  %742 = load i16, ptr %741, align 4
  %743 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %744 = icmp slt i32 %743, 0
  br i1 %744, label %745, label %750

745:                                              ; preds = %740
  %746 = load i32, ptr @debug, align 4
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %767, label %748

748:                                              ; preds = %745
  %749 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %767

750:                                              ; preds = %740
  %751 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %751, align 4
  %752 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 7, ptr %752, align 1
  %753 = lshr i16 %742, 8
  %754 = trunc i16 %753 to i8
  %755 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %754, ptr %755, align 2
  %756 = trunc i16 %742 to i8
  %757 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %756, ptr %757, align 1
  %758 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %759 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %759, align 8
  %760 = load i8, ptr %10, align 8
  %761 = lshr i8 %760, 1
  %762 = zext i8 %761 to i16
  store i16 %762, ptr %758, align 4
  %763 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %763, align 2
  %764 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %751, ptr %764, align 4
  %765 = load ptr, ptr %9, align 4
  %766 = tail call i32 @i2c_transfer(ptr noundef %765, ptr noundef %758, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %767

767:                                              ; preds = %750, %748, %745
  %768 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 12
  %769 = load i16, ptr %768, align 2
  %770 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %771 = icmp slt i32 %770, 0
  br i1 %771, label %772, label %777

772:                                              ; preds = %767
  %773 = load i32, ptr @debug, align 4
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %794, label %775

775:                                              ; preds = %772
  %776 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %794

777:                                              ; preds = %767
  %778 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %778, align 4
  %779 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 12, ptr %779, align 1
  %780 = lshr i16 %769, 8
  %781 = trunc i16 %780 to i8
  %782 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %781, ptr %782, align 2
  %783 = trunc i16 %769 to i8
  %784 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %783, ptr %784, align 1
  %785 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %786 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %786, align 8
  %787 = load i8, ptr %10, align 8
  %788 = lshr i8 %787, 1
  %789 = zext i8 %788 to i16
  store i16 %789, ptr %785, align 4
  %790 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %790, align 2
  %791 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %778, ptr %791, align 4
  %792 = load ptr, ptr %9, align 4
  %793 = tail call i32 @i2c_transfer(ptr noundef %792, ptr noundef %785, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %794

794:                                              ; preds = %777, %775, %772
  %795 = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef nonnull %5, i32 noundef 0) #8
  %796 = icmp ne i32 %795, 0
  %797 = load i32, ptr @debug, align 4
  %798 = icmp ne i32 %797, 0
  %799 = select i1 %796, i1 %798, i1 false
  br i1 %799, label %800, label %802

800:                                              ; preds = %794
  %801 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dib7000m_demod_reset) #9
  br label %802

802:                                              ; preds = %800, %794
  %803 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef nonnull %5, i16 noundef zeroext 1794) #8
  %804 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %805 = icmp slt i32 %804, 0
  br i1 %805, label %806, label %811

806:                                              ; preds = %802
  %807 = load i32, ptr @debug, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %829, label %809

809:                                              ; preds = %806
  %810 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %829

811:                                              ; preds = %802
  %812 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 7, ptr %812, align 4
  %813 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 2, ptr %813, align 1
  %814 = lshr i16 %803, 8
  %815 = trunc i16 %814 to i8
  %816 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 %815, ptr %816, align 2
  %817 = trunc i16 %803 to i8
  %818 = and i8 %817, -3
  %819 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 %818, ptr %819, align 1
  %820 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %821 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %821, align 8
  %822 = load i8, ptr %10, align 8
  %823 = lshr i8 %822, 1
  %824 = zext i8 %823 to i16
  store i16 %824, ptr %820, align 4
  %825 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %825, align 2
  %826 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %812, ptr %826, align 4
  %827 = load ptr, ptr %9, align 4
  %828 = tail call i32 @i2c_transfer(ptr noundef %827, ptr noundef %820, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %829

829:                                              ; preds = %811, %809, %806
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef nonnull %5, i32 noundef 8000) #8
  %830 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef nonnull %5, i32 noundef 0) #8
  %831 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %832 = icmp slt i32 %831, 0
  br i1 %832, label %833, label %838

833:                                              ; preds = %829
  %834 = load i32, ptr @debug, align 4
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %852, label %836

836:                                              ; preds = %833
  %837 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %852

838:                                              ; preds = %829
  %839 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %839, align 4
  %840 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -95, ptr %840, align 1
  %841 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %841, align 2
  %842 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %842, align 1
  %843 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %844 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %844, align 8
  %845 = load i8, ptr %10, align 8
  %846 = lshr i8 %845, 1
  %847 = zext i8 %846 to i16
  store i16 %847, ptr %843, align 4
  %848 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %848, align 2
  %849 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %839, ptr %849, align 4
  %850 = load ptr, ptr %9, align 4
  %851 = tail call i32 @i2c_transfer(ptr noundef %850, ptr noundef %843, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %852

852:                                              ; preds = %838, %836, %833
  %853 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %854 = icmp slt i32 %853, 0
  br i1 %854, label %855, label %860

855:                                              ; preds = %852
  %856 = load i32, ptr @debug, align 4
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %874, label %858

858:                                              ; preds = %855
  %859 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %874

860:                                              ; preds = %852
  %861 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %861, align 4
  %862 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -94, ptr %862, align 1
  %863 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 3, ptr %863, align 2
  %864 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 8, ptr %864, align 1
  %865 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %866 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %866, align 8
  %867 = load i8, ptr %10, align 8
  %868 = lshr i8 %867, 1
  %869 = zext i8 %868 to i16
  store i16 %869, ptr %865, align 4
  %870 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %870, align 2
  %871 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %861, ptr %871, align 4
  %872 = load ptr, ptr %9, align 4
  %873 = tail call i32 @i2c_transfer(ptr noundef %872, ptr noundef %865, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %874

874:                                              ; preds = %860, %858, %855
  %875 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %876 = icmp slt i32 %875, 0
  br i1 %876, label %877, label %882

877:                                              ; preds = %874
  %878 = load i32, ptr @debug, align 4
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %896, label %880

880:                                              ; preds = %877
  %881 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %896

882:                                              ; preds = %874
  %883 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %883, align 4
  %884 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -95, ptr %884, align 1
  %885 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %885, align 2
  %886 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 1, ptr %886, align 1
  %887 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %888 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %888, align 8
  %889 = load i8, ptr %10, align 8
  %890 = lshr i8 %889, 1
  %891 = zext i8 %890 to i16
  store i16 %891, ptr %887, align 4
  %892 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %892, align 2
  %893 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %883, ptr %893, align 4
  %894 = load ptr, ptr %9, align 4
  %895 = tail call i32 @i2c_transfer(ptr noundef %894, ptr noundef %887, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %896

896:                                              ; preds = %882, %880, %877
  %897 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %898 = icmp slt i32 %897, 0
  br i1 %898, label %899, label %904

899:                                              ; preds = %896
  %900 = load i32, ptr @debug, align 4
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %918, label %902

902:                                              ; preds = %899
  %903 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %918

904:                                              ; preds = %896
  %905 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %905, align 4
  %906 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -95, ptr %906, align 1
  %907 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %907, align 2
  %908 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %908, align 1
  %909 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %910 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %910, align 8
  %911 = load i8, ptr %10, align 8
  %912 = lshr i8 %911, 1
  %913 = zext i8 %912 to i16
  store i16 %913, ptr %909, align 4
  %914 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %914, align 2
  %915 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %905, ptr %915, align 4
  %916 = load ptr, ptr %9, align 4
  %917 = tail call i32 @i2c_transfer(ptr noundef %916, ptr noundef %909, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %918

918:                                              ; preds = %904, %902, %899
  tail call void @msleep(i32 noundef 1) #8
  %919 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef nonnull %5, i32 noundef 1) #8
  %920 = load i8, ptr %8, align 8
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %944, label %922

922:                                              ; preds = %918
  %923 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %924 = icmp slt i32 %923, 0
  br i1 %924, label %925, label %930

925:                                              ; preds = %922
  %926 = load i32, ptr @debug, align 4
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %944, label %928

928:                                              ; preds = %925
  %929 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %944

930:                                              ; preds = %922
  %931 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 7, ptr %931, align 4
  %932 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 4, ptr %932, align 1
  %933 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %933, align 2
  %934 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 0, ptr %934, align 1
  %935 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %936 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %936, align 8
  %937 = load i8, ptr %10, align 8
  %938 = lshr i8 %937, 1
  %939 = zext i8 %938 to i16
  store i16 %939, ptr %935, align 4
  %940 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %940, align 2
  %941 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %931, ptr %941, align 4
  %942 = load ptr, ptr %9, align 4
  %943 = tail call i32 @i2c_transfer(ptr noundef %942, ptr noundef %935, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %944

944:                                              ; preds = %930, %928, %925, %918
  %945 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 4
  %946 = load i8, ptr %945, align 4
  %947 = icmp eq i8 %946, 0
  %948 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 5
  %949 = load i8, ptr %948, align 8
  %950 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %951 = icmp slt i32 %950, 0
  br i1 %947, label %977, label %952

952:                                              ; preds = %944
  br i1 %951, label %953, label %958

953:                                              ; preds = %952
  %954 = load i32, ptr @debug, align 4
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %1002, label %956

956:                                              ; preds = %953
  %957 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1002

958:                                              ; preds = %952
  %959 = zext i8 %949 to i16
  %960 = add nuw nsw i16 %959, 261
  %961 = lshr i16 %960, 8
  %962 = trunc i16 %961 to i8
  %963 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 %962, ptr %963, align 4
  %964 = trunc i16 %960 to i8
  %965 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 %964, ptr %965, align 1
  %966 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %966, align 2
  %967 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 2, ptr %967, align 1
  %968 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %969 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %969, align 8
  %970 = load i8, ptr %10, align 8
  %971 = lshr i8 %970, 1
  %972 = zext i8 %971 to i16
  store i16 %972, ptr %968, align 4
  %973 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %973, align 2
  %974 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %963, ptr %974, align 4
  %975 = load ptr, ptr %9, align 4
  %976 = tail call i32 @i2c_transfer(ptr noundef %975, ptr noundef %968, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %1002

977:                                              ; preds = %944
  br i1 %951, label %978, label %983

978:                                              ; preds = %977
  %979 = load i32, ptr @debug, align 4
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1002, label %981

981:                                              ; preds = %978
  %982 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1002

983:                                              ; preds = %977
  %984 = zext i8 %949 to i16
  %985 = add nuw nsw i16 %984, 224
  %986 = lshr i16 %985, 8
  %987 = trunc i16 %986 to i8
  %988 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 %987, ptr %988, align 4
  %989 = trunc i16 %985 to i8
  %990 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 %989, ptr %990, align 1
  %991 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %991, align 2
  %992 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 1, ptr %992, align 1
  %993 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %994 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %994, align 8
  %995 = load i8, ptr %10, align 8
  %996 = lshr i8 %995, 1
  %997 = zext i8 %996 to i16
  store i16 %997, ptr %993, align 4
  %998 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %998, align 2
  %999 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %988, ptr %999, align 4
  %1000 = load ptr, ptr %9, align 4
  %1001 = tail call i32 @i2c_transfer(ptr noundef %1000, ptr noundef %993, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %1002

1002:                                             ; preds = %983, %981, %978, %958, %956, %953
  %1003 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 1, i32 3
  %1004 = load i8, ptr %1003, align 1
  %1005 = icmp eq i8 %1004, 0
  %1006 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %1007 = icmp slt i32 %1006, 0
  br i1 %1005, label %1028, label %1008

1008:                                             ; preds = %1002
  br i1 %1007, label %1009, label %1014

1009:                                             ; preds = %1008
  %1010 = load i32, ptr @debug, align 4
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1048, label %1012

1012:                                             ; preds = %1009
  %1013 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1048

1014:                                             ; preds = %1008
  %1015 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 0, ptr %1015, align 4
  %1016 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 36, ptr %1016, align 1
  %1017 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 7, ptr %1017, align 2
  %1018 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 85, ptr %1018, align 1
  %1019 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %1020 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1020, align 8
  %1021 = load i8, ptr %10, align 8
  %1022 = lshr i8 %1021, 1
  %1023 = zext i8 %1022 to i16
  store i16 %1023, ptr %1019, align 4
  %1024 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1024, align 2
  %1025 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %1015, ptr %1025, align 4
  %1026 = load ptr, ptr %9, align 4
  %1027 = tail call i32 @i2c_transfer(ptr noundef %1026, ptr noundef %1019, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %1048

1028:                                             ; preds = %1002
  br i1 %1007, label %1029, label %1034

1029:                                             ; preds = %1028
  %1030 = load i32, ptr @debug, align 4
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1048, label %1032

1032:                                             ; preds = %1029
  %1033 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1048

1034:                                             ; preds = %1028
  %1035 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 0, ptr %1035, align 4
  %1036 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 36, ptr %1036, align 1
  %1037 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 31, ptr %1037, align 2
  %1038 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 85, ptr %1038, align 1
  %1039 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %1040 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1040, align 8
  %1041 = load i8, ptr %10, align 8
  %1042 = lshr i8 %1041, 1
  %1043 = zext i8 %1042 to i16
  store i16 %1043, ptr %1039, align 4
  %1044 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1044, align 2
  %1045 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %1035, ptr %1045, align 4
  %1046 = load ptr, ptr %9, align 4
  %1047 = tail call i32 @i2c_transfer(ptr noundef %1046, ptr noundef %1039, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %1048

1048:                                             ; preds = %1034, %1032, %1029, %1014, %1012, %1009
  %1049 = load i16, ptr %29, align 8
  %1050 = icmp eq i16 %1049, 16384
  %1051 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %1052 = icmp slt i32 %1051, 0
  br i1 %1050, label %1053, label %1073

1053:                                             ; preds = %1048
  br i1 %1052, label %1054, label %1059

1054:                                             ; preds = %1053
  %1055 = load i32, ptr @debug, align 4
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1093, label %1057

1057:                                             ; preds = %1054
  %1058 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1093

1059:                                             ; preds = %1053
  %1060 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %1060, align 4
  %1061 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -115, ptr %1061, align 1
  %1062 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 12, ptr %1062, align 2
  %1063 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 64, ptr %1063, align 1
  %1064 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %1065 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1065, align 8
  %1066 = load i8, ptr %10, align 8
  %1067 = lshr i8 %1066, 1
  %1068 = zext i8 %1067 to i16
  store i16 %1068, ptr %1064, align 4
  %1069 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1069, align 2
  %1070 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %1060, ptr %1070, align 4
  %1071 = load ptr, ptr %9, align 4
  %1072 = tail call i32 @i2c_transfer(ptr noundef %1071, ptr noundef %1064, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %1093

1073:                                             ; preds = %1048
  br i1 %1052, label %1074, label %1079

1074:                                             ; preds = %1073
  %1075 = load i32, ptr @debug, align 4
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1093, label %1077

1077:                                             ; preds = %1074
  %1078 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1093

1079:                                             ; preds = %1073
  %1080 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 18
  store i8 3, ptr %1080, align 4
  %1081 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 1
  store i8 -115, ptr %1081, align 1
  %1082 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 2
  store i8 0, ptr %1082, align 2
  %1083 = getelementptr %struct.dib7000m_state, ptr %5, i32 0, i32 18, i32 3
  store i8 49, ptr %1083, align 1
  %1084 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17
  %1085 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1085, align 8
  %1086 = load i8, ptr %10, align 8
  %1087 = lshr i8 %1086, 1
  %1088 = zext i8 %1087 to i16
  store i16 %1088, ptr %1084, align 4
  %1089 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1089, align 2
  %1090 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 17, i32 0, i32 3
  store ptr %1080, ptr %1090, align 4
  %1091 = load ptr, ptr %9, align 4
  %1092 = tail call i32 @i2c_transfer(ptr noundef %1091, ptr noundef %1084, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %1093

1093:                                             ; preds = %1079, %1077, %1074, %1059, %1057, %1054
  tail call fastcc void @dib7000m_write_tab(ptr noundef nonnull %5, ptr noundef nonnull @dib7000m_defaults_common) #8
  tail call fastcc void @dib7000m_write_tab(ptr noundef nonnull %5, ptr noundef nonnull @dib7000m_defaults) #8
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef nonnull %5, i32 noundef 5) #8
  %1094 = load ptr, ptr %256, align 4
  %1095 = load i32, ptr %1094, align 4
  %1096 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 12
  store i32 %1095, ptr %1096, align 8
  br label %1098

1097:                                             ; preds = %45, %42, %35, %32, %25, %22
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %1098

1098:                                             ; preds = %1097, %1093, %3
  %1099 = phi ptr [ null, %1097 ], [ %5, %1093 ], [ null, %3 ]
  ret ptr %1099
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000m_set_power_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ult i32 %1, 6
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = getelementptr inbounds [6 x i8], ptr @switch.table.dib7000m_set_power_mode, i32 0, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds [6 x i8], ptr @switch.table.dib7000m_set_power_mode.28, i32 0, i32 %1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds [6 x i16], ptr @switch.table.dib7000m_set_power_mode.29, i32 0, i32 %1
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds [6 x i8], ptr @switch.table.dib7000m_set_power_mode.30, i32 0, i32 %1
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds [6 x i8], ptr @switch.table.dib7000m_set_power_mode.31, i32 0, i32 %1
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds [6 x i16], ptr @switch.table.dib7000m_set_power_mode.32, i32 0, i32 %1
  %16 = load i16, ptr %15, align 2
  br label %17

17:                                               ; preds = %4, %2
  %18 = phi i8 [ -1, %2 ], [ %6, %4 ]
  %19 = phi i8 [ -1, %2 ], [ %8, %4 ]
  %20 = phi i16 [ -1, %2 ], [ %10, %4 ]
  %21 = phi i8 [ -1, %2 ], [ %12, %4 ]
  %22 = phi i8 [ -1, %2 ], [ %14, %4 ]
  %23 = phi i16 [ 16383, %2 ], [ %16, %4 ]
  %24 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 1, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  %27 = or i16 %20, 214
  %28 = select i1 %26, i16 %27, i16 %20
  %29 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 15
  %30 = load i16, ptr %29, align 8
  %31 = icmp ne i16 %30, 16384
  %32 = zext i1 %31 to i16
  %33 = shl nuw nsw i16 %23, %32
  %34 = icmp eq i16 %30, 16387
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %37 = tail call i32 @mutex_lock_interruptible(ptr noundef %36) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %61

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %45, align 4
  %46 = select i1 %34, i8 -120, i8 -121
  %47 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %46, ptr %47, align 1
  %48 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %19, ptr %48, align 2
  %49 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %18, ptr %49, align 1
  %50 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %51 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %53 = load i8, ptr %52, align 8
  %54 = lshr i8 %53, 1
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %50, align 4
  %56 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %45, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @i2c_transfer(ptr noundef %59, ptr noundef %50, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %36) #8
  br label %61

61:                                               ; preds = %44, %42, %39
  %62 = tail call i32 @mutex_lock_interruptible(ptr noundef %36) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %64
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %89

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %70, align 4
  %71 = or i8 %35, -120
  %72 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %71, ptr %72, align 1
  %73 = lshr i16 %28, 8
  %74 = trunc i16 %73 to i8
  %75 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %74, ptr %75, align 2
  %76 = trunc i16 %28 to i8
  %77 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %79 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %81 = load i8, ptr %80, align 8
  %82 = lshr i8 %81, 1
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %78, align 4
  %84 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %70, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @i2c_transfer(ptr noundef %87, ptr noundef %78, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %36) #8
  br label %89

89:                                               ; preds = %69, %67, %64
  %90 = tail call i32 @mutex_lock_interruptible(ptr noundef %36) #8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, ptr @debug, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %114

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %98, align 4
  %99 = select i1 %34, i8 -118, i8 -119
  %100 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %99, ptr %100, align 1
  %101 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %22, ptr %101, align 2
  %102 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %21, ptr %102, align 1
  %103 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %104 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %104, align 4
  %105 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %106 = load i8, ptr %105, align 8
  %107 = lshr i8 %106, 1
  %108 = zext i8 %107 to i16
  store i16 %108, ptr %103, align 4
  %109 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %109, align 2
  %110 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %98, ptr %110, align 4
  %111 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @i2c_transfer(ptr noundef %112, ptr noundef %103, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %36) #8
  br label %114

114:                                              ; preds = %97, %95, %92
  %115 = tail call i32 @mutex_lock_interruptible(ptr noundef %36) #8
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, ptr @debug, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %142

122:                                              ; preds = %114
  %123 = or i8 %35, -118
  %124 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %124, align 4
  %125 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %123, ptr %125, align 1
  %126 = lshr i16 %33, 8
  %127 = trunc i16 %126 to i8
  %128 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %127, ptr %128, align 2
  %129 = trunc i16 %33 to i8
  %130 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %129, ptr %130, align 1
  %131 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %132 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %134 = load i8, ptr %133, align 8
  %135 = lshr i8 %134, 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %131, align 4
  %137 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %137, align 2
  %138 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %124, ptr %138, align 4
  %139 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 @i2c_transfer(ptr noundef %140, ptr noundef %131, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %36) #8
  br label %142

142:                                              ; preds = %122, %120, %117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib7000m_set_adc_state(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %0, i16 noundef zeroext 913)
  %4 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %0, i16 noundef zeroext 914)
  %5 = trunc i16 %3 to i8
  %6 = lshr i16 %3, 8
  %7 = trunc i16 %6 to i8
  %8 = trunc i16 %4 to i8
  %9 = lshr i16 %4, 8
  %10 = trunc i16 %9 to i8
  switch i32 %1, label %158 [
    i32 0, label %11
    i32 1, label %44
    i32 2, label %46
    i32 3, label %153
    i32 4, label %156
  ]

11:                                               ; preds = %2
  %12 = or i16 %4, 3
  %13 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %40

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %22, align 4
  %23 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -110, ptr %23, align 1
  %24 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %10, ptr %24, align 2
  %25 = trunc i16 %12 to i8
  %26 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %28 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %30 = load i8, ptr %29, align 8
  %31 = lshr i8 %30, 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %27, align 4
  %33 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %22, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @i2c_transfer(ptr noundef %36, ptr noundef %27, i32 noundef 1) #8
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %40

40:                                               ; preds = %21, %19, %16
  %41 = phi i32 [ %39, %21 ], [ -22, %19 ], [ -22, %16 ]
  %42 = trunc i16 %12 to i8
  %43 = and i8 %42, -3
  br label %158

44:                                               ; preds = %2
  %45 = or i8 %8, 3
  br label %158

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 15
  %48 = load i16, ptr %47, align 8
  %49 = icmp eq i16 %48, 16384
  br i1 %49, label %50, label %150

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %52 = tail call i32 @mutex_lock_interruptible(ptr noundef %51) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %75

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %60, align 4
  %61 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -111, ptr %61, align 1
  %62 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %62, align 2
  %63 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 0, ptr %63, align 1
  %64 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %65 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %65, align 4
  %66 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %67 = load i8, ptr %66, align 8
  %68 = lshr i8 %67, 1
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %64, align 4
  %70 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %60, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @i2c_transfer(ptr noundef %73, ptr noundef %64, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %51) #8
  br label %75

75:                                               ; preds = %59, %57, %54
  %76 = and i16 %4, 3
  %77 = tail call i32 @mutex_lock_interruptible(ptr noundef %51) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, ptr @debug, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %79
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %101

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %85, align 4
  %86 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -110, ptr %86, align 1
  %87 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %87, align 2
  %88 = trunc i16 %76 to i8
  %89 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %88, ptr %89, align 1
  %90 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %91 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %91, align 4
  %92 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %93 = load i8, ptr %92, align 8
  %94 = lshr i8 %93, 1
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %90, align 4
  %96 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %85, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @i2c_transfer(ptr noundef %99, ptr noundef %90, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %51) #8
  br label %101

101:                                              ; preds = %84, %82, %79
  %102 = tail call i32 @mutex_lock_interruptible(ptr noundef %51) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, ptr @debug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %125

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %110, align 4
  %111 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -111, ptr %111, align 1
  %112 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 -128, ptr %112, align 2
  %113 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %115 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %115, align 4
  %116 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %117 = load i8, ptr %116, align 8
  %118 = lshr i8 %117, 1
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %114, align 4
  %120 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %120, align 2
  %121 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %110, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @i2c_transfer(ptr noundef %123, ptr noundef %114, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %51) #8
  br label %125

125:                                              ; preds = %109, %107, %104
  %126 = tail call i32 @mutex_lock_interruptible(ptr noundef %51) #8
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, ptr @debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %150, label %131

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %150

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %134, align 4
  %135 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -110, ptr %135, align 1
  %136 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %136, align 2
  %137 = trunc i16 %76 to i8
  %138 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %137, ptr %138, align 1
  %139 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %140 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %140, align 4
  %141 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %142 = load i8, ptr %141, align 8
  %143 = lshr i8 %142, 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %139, align 4
  %145 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %134, ptr %146, align 4
  %147 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = tail call i32 @i2c_transfer(ptr noundef %148, ptr noundef %139, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %51) #8
  br label %150

150:                                              ; preds = %133, %131, %128, %46
  %151 = and i8 %7, 15
  %152 = and i8 %8, 3
  br label %158

153:                                              ; preds = %2
  %154 = or i8 %7, 112
  %155 = or i8 %8, 60
  br label %158

156:                                              ; preds = %2
  %157 = and i8 %7, 127
  br label %158

158:                                              ; preds = %156, %153, %150, %44, %40, %2
  %159 = phi i32 [ 0, %2 ], [ 0, %156 ], [ 0, %153 ], [ 0, %150 ], [ 0, %44 ], [ %41, %40 ]
  %160 = phi i8 [ %7, %2 ], [ %157, %156 ], [ %154, %153 ], [ %151, %150 ], [ %7, %44 ], [ %7, %40 ]
  %161 = phi i8 [ %8, %2 ], [ %8, %156 ], [ %155, %153 ], [ %152, %150 ], [ %45, %44 ], [ %43, %40 ]
  %162 = phi i8 [ %10, %2 ], [ %10, %156 ], [ %10, %153 ], [ 0, %150 ], [ %10, %44 ], [ %10, %40 ]
  %163 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %164 = tail call i32 @mutex_lock_interruptible(ptr noundef %163) #8
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load i32, ptr @debug, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %166
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %189

171:                                              ; preds = %158
  %172 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %172, align 4
  %173 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -111, ptr %173, align 1
  %174 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %160, ptr %174, align 2
  %175 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %5, ptr %175, align 1
  %176 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %177 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %177, align 4
  %178 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %179 = load i8, ptr %178, align 8
  %180 = lshr i8 %179, 1
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %176, align 4
  %182 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %182, align 2
  %183 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %172, ptr %183, align 4
  %184 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = tail call i32 @i2c_transfer(ptr noundef %185, ptr noundef %176, i32 noundef 1) #8
  %187 = icmp eq i32 %186, 1
  %188 = select i1 %187, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %163) #8
  br label %189

189:                                              ; preds = %171, %169, %166
  %190 = phi i32 [ %188, %171 ], [ -22, %169 ], [ -22, %166 ]
  %191 = tail call i32 @mutex_lock_interruptible(ptr noundef %163) #8
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32, ptr @debug, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  %197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %216

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %199, align 4
  %200 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -110, ptr %200, align 1
  %201 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %162, ptr %201, align 2
  %202 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %161, ptr %202, align 1
  %203 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %204 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %204, align 4
  %205 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %206 = load i8, ptr %205, align 8
  %207 = lshr i8 %206, 1
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %203, align 4
  %209 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %209, align 2
  %210 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %199, ptr %210, align 4
  %211 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %212 = load ptr, ptr %211, align 4
  %213 = tail call i32 @i2c_transfer(ptr noundef %212, ptr noundef %203, i32 noundef 1) #8
  %214 = icmp eq i32 %213, 1
  %215 = select i1 %214, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %163) #8
  br label %216

216:                                              ; preds = %198, %196, %193
  %217 = phi i32 [ %215, %198 ], [ -22, %196 ], [ -22, %193 ]
  %218 = or i32 %190, %159
  %219 = or i32 %218, %217
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib7000m_set_output_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 8
  %5 = zext i8 %4 to i16
  %6 = add nuw nsw i16 %5, 294
  %7 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %0, i16 noundef zeroext %6)
  %8 = and i16 %7, 16
  %9 = or i16 %8, 2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dib7000m_set_output_mode, ptr noundef %0, i32 noundef %1) #9
  br label %14

14:                                               ; preds = %12, %2
  switch i32 %1, label %25 [
    i32 1, label %30
    i32 2, label %15
    i32 0, label %24
    i32 4, label %16
    i32 5, label %22
  ]

15:                                               ; preds = %14
  br label %30

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 1, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i8 12, i8 0
  %21 = select i1 %19, i8 0, i8 5
  br label %30

22:                                               ; preds = %14
  %23 = or i16 %8, 6
  br label %30

24:                                               ; preds = %14
  br label %30

25:                                               ; preds = %14
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dib7000m_set_output_mode, ptr noundef %0) #9
  br label %30

30:                                               ; preds = %28, %25, %24, %22, %16, %15, %14
  %31 = phi i8 [ 7, %28 ], [ 7, %25 ], [ 7, %24 ], [ 2, %22 ], [ 7, %15 ], [ 7, %14 ], [ 7, %16 ]
  %32 = phi i16 [ %9, %28 ], [ %9, %25 ], [ %9, %24 ], [ %23, %22 ], [ %9, %15 ], [ %9, %14 ], [ %9, %16 ]
  %33 = phi i8 [ 0, %28 ], [ 0, %25 ], [ 0, %24 ], [ 0, %22 ], [ 0, %15 ], [ 0, %14 ], [ %20, %16 ]
  %34 = phi i8 [ 0, %28 ], [ 0, %25 ], [ 0, %24 ], [ 64, %22 ], [ 64, %15 ], [ 0, %14 ], [ 0, %16 ]
  %35 = phi i8 [ 0, %28 ], [ 0, %25 ], [ 0, %24 ], [ 5, %22 ], [ 4, %15 ], [ 4, %14 ], [ %21, %16 ]
  %36 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 1, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = load i8, ptr %3, align 8
  %39 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %40 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %76

47:                                               ; preds = %30
  %48 = zext i8 %38 to i16
  %49 = add nuw nsw i16 %48, 294
  %50 = icmp eq i8 %37, 0
  %51 = or i16 %32, 32
  %52 = select i1 %50, i16 %32, i16 %51
  %53 = lshr i16 %49, 8
  %54 = trunc i16 %53 to i8
  %55 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 %54, ptr %55, align 4
  %56 = trunc i16 %49 to i8
  %57 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %56, ptr %57, align 1
  %58 = lshr i16 %52, 8
  %59 = trunc i16 %58 to i8
  %60 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %59, ptr %60, align 2
  %61 = trunc i16 %52 to i8
  %62 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %64 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %66 = load i8, ptr %65, align 8
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %63, align 4
  %69 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %55, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @i2c_transfer(ptr noundef %72, ptr noundef %63, i32 noundef 1) #8
  %74 = icmp eq i32 %73, 1
  %75 = select i1 %74, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %39) #8
  br label %76

76:                                               ; preds = %47, %45, %42
  %77 = phi i32 [ %75, %47 ], [ -22, %45 ], [ -22, %42 ]
  %78 = load i8, ptr %3, align 8
  %79 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %109, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %109

86:                                               ; preds = %76
  %87 = zext i8 %78 to i16
  %88 = add nuw nsw i16 %87, 295
  %89 = lshr i16 %88, 8
  %90 = trunc i16 %89 to i8
  %91 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 %90, ptr %91, align 4
  %92 = trunc i16 %88 to i8
  %93 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %92, ptr %93, align 1
  %94 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %31, ptr %94, align 2
  %95 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 0, ptr %95, align 1
  %96 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %97 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %99 = load i8, ptr %98, align 8
  %100 = lshr i8 %99, 1
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %96, align 4
  %102 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %102, align 2
  %103 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %91, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 @i2c_transfer(ptr noundef %105, ptr noundef %96, i32 noundef 1) #8
  %107 = icmp eq i32 %106, 1
  %108 = select i1 %107, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %39) #8
  br label %109

109:                                              ; preds = %86, %84, %81
  %110 = phi i32 [ %108, %86 ], [ -22, %84 ], [ -22, %81 ]
  %111 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #8
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %113
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %136

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 7, ptr %119, align 4
  %120 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 3, ptr %120, align 1
  %121 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %35, ptr %121, align 2
  %122 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %34, ptr %122, align 1
  %123 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %124 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %126 = load i8, ptr %125, align 8
  %127 = lshr i8 %126, 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %123, align 4
  %129 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %129, align 2
  %130 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %119, ptr %130, align 4
  %131 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = tail call i32 @i2c_transfer(ptr noundef %132, ptr noundef %123, i32 noundef 1) #8
  %134 = icmp eq i32 %133, 1
  %135 = select i1 %134, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %39) #8
  br label %136

136:                                              ; preds = %118, %116, %113
  %137 = phi i32 [ %135, %118 ], [ -22, %116 ], [ -22, %113 ]
  %138 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i32, ptr @debug, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %140
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %163

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 7, ptr %146, align 4
  %147 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 13, ptr %147, align 1
  %148 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %33, ptr %148, align 2
  %149 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 5, ptr %149, align 1
  %150 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %151 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %151, align 4
  %152 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %153 = load i8, ptr %152, align 8
  %154 = lshr i8 %153, 1
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %150, align 4
  %156 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %156, align 2
  %157 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %146, ptr %157, align 4
  %158 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 @i2c_transfer(ptr noundef %159, ptr noundef %150, i32 noundef 1) #8
  %161 = icmp eq i32 %160, 1
  %162 = select i1 %161, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %39) #8
  br label %163

163:                                              ; preds = %145, %143, %140
  %164 = phi i32 [ %162, %145 ], [ -22, %143 ], [ -22, %140 ]
  %165 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 15
  %166 = load i16, ptr %165, align 8
  %167 = icmp eq i16 %166, 16387
  br i1 %167, label %168, label %200

168:                                              ; preds = %163
  %169 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %0, i16 noundef zeroext 909)
  %170 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #8
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32, ptr @debug, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %200, label %175

175:                                              ; preds = %172
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %200

177:                                              ; preds = %168
  %178 = icmp eq i32 %1, 4
  %179 = and i16 %169, 253
  %180 = select i1 %178, i16 2, i16 0
  %181 = or i16 %179, %180
  %182 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %182, align 4
  %183 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -115, ptr %183, align 1
  %184 = lshr i16 %169, 8
  %185 = trunc i16 %184 to i8
  %186 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %185, ptr %186, align 2
  %187 = trunc i16 %181 to i8
  %188 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %187, ptr %188, align 1
  %189 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %190 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %190, align 4
  %191 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %192 = load i8, ptr %191, align 8
  %193 = lshr i8 %192, 1
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %189, align 4
  %195 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %182, ptr %196, align 4
  %197 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = tail call i32 @i2c_transfer(ptr noundef %198, ptr noundef %189, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %39) #8
  br label %200

200:                                              ; preds = %177, %175, %172, %163
  %201 = or i32 %110, %77
  %202 = or i32 %201, %137
  %203 = or i32 %202, %164
  ret i32 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000m_set_bandwidth(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 8000, i32 %1
  %5 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 8
  store i32 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %16

11:                                               ; preds = %2
  br i1 %10, label %14, label %12

12:                                               ; preds = %11
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dib7000m_set_bandwidth) #9
  br label %14

14:                                               ; preds = %12, %11
  %15 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 11
  br label %19

16:                                               ; preds = %2
  br i1 %10, label %19, label %17

17:                                               ; preds = %16
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dib7000m_set_bandwidth) #9
  br label %19

19:                                               ; preds = %17, %16, %14
  %20 = phi ptr [ %15, %14 ], [ %6, %17 ], [ %6, %16 ]
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %4, 50
  %23 = mul i32 %21, %22
  %24 = udiv i32 %23, 160
  %25 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %26 = tail call i32 @mutex_lock_interruptible(ptr noundef %25) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %53

33:                                               ; preds = %19
  %34 = lshr i32 %24, 16
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %35, align 4
  %36 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 23, ptr %36, align 1
  %37 = lshr i32 %24, 24
  %38 = trunc i32 %37 to i8
  %39 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %38, ptr %39, align 2
  %40 = trunc i32 %34 to i8
  %41 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %43 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %45 = load i8, ptr %44, align 8
  %46 = lshr i8 %45, 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %42, align 4
  %48 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %35, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @i2c_transfer(ptr noundef %51, ptr noundef %42, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %25) #8
  br label %53

53:                                               ; preds = %33, %31, %28
  %54 = tail call i32 @mutex_lock_interruptible(ptr noundef %25) #8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, ptr @debug, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %80

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %62, align 4
  %63 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 24, ptr %63, align 1
  %64 = lshr i32 %24, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %65, ptr %66, align 2
  %67 = trunc i32 %24 to i8
  %68 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %70 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %72 = load i8, ptr %71, align 8
  %73 = lshr i8 %72, 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %69, align 4
  %75 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %62, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 @i2c_transfer(ptr noundef %78, ptr noundef %69, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %25) #8
  br label %80

80:                                               ; preds = %61, %59, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000m_write_tab(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i16, ptr %1, align 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %64, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %8 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  %9 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  %10 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  %11 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  %12 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %13 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  %14 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  %17 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  br label %21

18:                                               ; preds = %60
  %19 = load i16, ptr %39, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18, %5
  %22 = phi i16 [ %3, %5 ], [ %19, %18 ]
  %23 = phi ptr [ %1, %5 ], [ %39, %18 ]
  %24 = getelementptr i16, ptr %23, i32 1
  %25 = getelementptr i16, ptr %23, i32 2
  %26 = load i16, ptr %24, align 2
  %27 = load i8, ptr %6, align 8
  %28 = icmp ne i8 %27, 0
  %29 = icmp ugt i16 %26, 111
  %30 = select i1 %28, i1 %29, i1 false
  %31 = icmp ult i16 %26, 332
  %32 = select i1 %30, i1 %31, i1 false
  %33 = zext i1 %32 to i16
  %34 = add i16 %26, %33
  br label %35

35:                                               ; preds = %60, %21
  %36 = phi i16 [ %22, %21 ], [ %62, %60 ]
  %37 = phi i16 [ %34, %21 ], [ %61, %60 ]
  %38 = phi ptr [ %25, %21 ], [ %39, %60 ]
  %39 = getelementptr i16, ptr %38, i32 1
  %40 = load i16, ptr %38, align 2
  %41 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %60

48:                                               ; preds = %35
  %49 = lshr i16 %37, 8
  %50 = trunc i16 %49 to i8
  store i8 %50, ptr %8, align 4
  %51 = trunc i16 %37 to i8
  store i8 %51, ptr %9, align 1
  %52 = lshr i16 %40, 8
  %53 = trunc i16 %52 to i8
  store i8 %53, ptr %10, align 2
  %54 = trunc i16 %40 to i8
  store i8 %54, ptr %11, align 1
  store i32 4, ptr %13, align 4
  %55 = load i8, ptr %14, align 8
  %56 = lshr i8 %55, 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %12, align 4
  store i16 0, ptr %15, align 2
  store ptr %8, ptr %16, align 4
  %58 = load ptr, ptr %17, align 4
  %59 = tail call i32 @i2c_transfer(ptr noundef %58, ptr noundef %12, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  br label %60

60:                                               ; preds = %48, %46, %43
  %61 = add i16 %37, 1
  %62 = add i16 %36, -1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %18, label %35

64:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib7000m_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib7000m_state, ptr %3, i32 0, i32 4
  tail call void @dibx000_exit_i2c_master(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef %3, i32 noundef 0)
  %4 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %3, i32 noundef 0)
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @debug, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dib7000m_wakeup) #9
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef %3, i32 noundef 0)
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef %3, i32 noundef 5)
  %5 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %3, i32 noundef 1)
  %6 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %3, i32 noundef 3)
  %7 = or i32 %6, %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_set_frontend(ptr noundef %0) #0 {
  %2 = alloca %struct.dtv_frontend_properties, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef %5, i32 noundef 0)
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %8, 1000
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef %5, i32 noundef %9)
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 %11(ptr noundef %0) #8
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.dib7000m_state, ptr %5, i32 0, i32 16
  store i8 0, ptr %16, align 2
  br label %17

17:                                               ; preds = %1029, %15
  %18 = load ptr, ptr %4, align 4
  %19 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 72) #8
  %20 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 16
  %21 = load i8, ptr %20, align 2
  switch i8 %21, label %1031 [
    i8 0, label %22
    i8 1, label %707
    i8 2, label %774
    i8 3, label %830
    i8 4, label %928
    i8 5, label %943
  ]

22:                                               ; preds = %17
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef %18, i32 noundef 2) #8
  %23 = tail call fastcc i32 @dib7000m_set_adc_state(ptr noundef %18, i32 noundef 2) #8
  %24 = load i32, ptr %3, align 4
  %25 = icmp ult i32 %24, 170001000
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = icmp ult i32 %24, 250001000
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = icmp ult i32 %24, 863001000
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = icmp ult i32 %24, 2000001000
  %32 = select i1 %31, i8 1, i8 8
  br label %33

33:                                               ; preds = %30, %28, %26, %22
  %34 = phi i8 [ 32, %22 ], [ 4, %26 ], [ %32, %30 ], [ 2, %28 ]
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 7
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, %34
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %704

42:                                               ; preds = %38, %33
  store i8 %34, ptr %35, align 4
  %43 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 1, i32 6
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = icmp eq i8 %44, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 1, i32 7
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %56, %47
  %51 = phi i32 [ 0, %47 ], [ %57, %56 ]
  %52 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51
  %53 = load i8, ptr %52, align 2
  %54 = and i8 %53, %34
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %45
  br i1 %58, label %61, label %50

59:                                               ; preds = %50
  %60 = icmp eq ptr %52, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %59, %56, %42
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %1031, label %64

64:                                               ; preds = %61
  %65 = zext i8 %34 to i32
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dib7000m_set_agc_config, i32 noundef %65) #9
  br label %1031

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 9
  store ptr %52, ptr %68, align 4
  %69 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 20
  %72 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, ptr @debug, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %98

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %80, align 4
  %81 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 72, ptr %81, align 1
  %82 = lshr i16 %70, 8
  %83 = trunc i16 %82 to i8
  %84 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %83, ptr %84, align 2
  %85 = trunc i16 %70 to i8
  %86 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %85, ptr %86, align 1
  %87 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %88 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %90 = load i8, ptr %89, align 8
  %91 = lshr i8 %90, 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %87, align 4
  %93 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %80, ptr %94, align 4
  %95 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @i2c_transfer(ptr noundef %96, ptr noundef %87, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %98

98:                                               ; preds = %79, %77, %74
  %99 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 2
  %100 = load i16, ptr %99, align 2
  %101 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %127

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %109, align 4
  %110 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 73, ptr %110, align 1
  %111 = lshr i16 %100, 8
  %112 = trunc i16 %111 to i8
  %113 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %112, ptr %113, align 2
  %114 = trunc i16 %100 to i8
  %115 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %114, ptr %115, align 1
  %116 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %117 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %117, align 4
  %118 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %119 = load i8, ptr %118, align 8
  %120 = lshr i8 %119, 1
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %116, align 4
  %122 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %109, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @i2c_transfer(ptr noundef %125, ptr noundef %116, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %127

127:                                              ; preds = %108, %106, %103
  %128 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 3
  %129 = load i16, ptr %128, align 2
  %130 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, ptr @debug, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %132
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %156

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %138, align 4
  %139 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 74, ptr %139, align 1
  %140 = lshr i16 %129, 8
  %141 = trunc i16 %140 to i8
  %142 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %141, ptr %142, align 2
  %143 = trunc i16 %129 to i8
  %144 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %143, ptr %144, align 1
  %145 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %146 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %146, align 4
  %147 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %148 = load i8, ptr %147, align 8
  %149 = lshr i8 %148, 1
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %145, align 4
  %151 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %151, align 2
  %152 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %138, ptr %152, align 4
  %153 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = tail call i32 @i2c_transfer(ptr noundef %154, ptr noundef %145, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %156

156:                                              ; preds = %137, %135, %132
  %157 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 4
  %158 = load i8, ptr %157, align 2
  %159 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 5
  %160 = load i16, ptr %159, align 2
  %161 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i32, ptr @debug, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %190, label %166

166:                                              ; preds = %163
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %190

168:                                              ; preds = %156
  %169 = zext i8 %158 to i16
  %170 = shl i16 %169, 12
  %171 = or i16 %170, %160
  %172 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %172, align 4
  %173 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 97, ptr %173, align 1
  %174 = lshr i16 %171, 8
  %175 = trunc i16 %174 to i8
  %176 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %175, ptr %176, align 2
  %177 = trunc i16 %160 to i8
  %178 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %177, ptr %178, align 1
  %179 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %180 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %180, align 4
  %181 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %182 = load i8, ptr %181, align 8
  %183 = lshr i8 %182, 1
  %184 = zext i8 %183 to i16
  store i16 %184, ptr %179, align 4
  %185 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %185, align 2
  %186 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %172, ptr %186, align 4
  %187 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %188 = load ptr, ptr %187, align 4
  %189 = tail call i32 @i2c_transfer(ptr noundef %188, ptr noundef %179, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %190

190:                                              ; preds = %168, %166, %163
  %191 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 23
  %192 = load i8, ptr %191, align 1
  %193 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 24
  %194 = load i8, ptr %193, align 2
  %195 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load i32, ptr @debug, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %221, label %200

200:                                              ; preds = %197
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %221

202:                                              ; preds = %190
  %203 = shl i8 %192, 5
  %204 = or i8 %203, %194
  %205 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %205, align 4
  %206 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 98, ptr %206, align 1
  %207 = lshr i8 %192, 3
  %208 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %207, ptr %208, align 2
  %209 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %204, ptr %209, align 1
  %210 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %211 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %211, align 4
  %212 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %213 = load i8, ptr %212, align 8
  %214 = lshr i8 %213, 1
  %215 = zext i8 %214 to i16
  store i16 %215, ptr %210, align 4
  %216 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %216, align 2
  %217 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %205, ptr %217, align 4
  %218 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = tail call i32 @i2c_transfer(ptr noundef %219, ptr noundef %210, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %221

221:                                              ; preds = %202, %200, %197
  %222 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 25
  %223 = load i8, ptr %222, align 1
  %224 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 26
  %225 = load i8, ptr %224, align 2
  %226 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  %229 = load i32, ptr @debug, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %273, label %231

231:                                              ; preds = %228
  %232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %252

233:                                              ; preds = %221
  %234 = shl i8 %223, 6
  %235 = or i8 %234, %225
  %236 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %236, align 4
  %237 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 99, ptr %237, align 1
  %238 = lshr i8 %223, 2
  %239 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %238, ptr %239, align 2
  %240 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %235, ptr %240, align 1
  %241 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %242 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %242, align 4
  %243 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %244 = load i8, ptr %243, align 8
  %245 = lshr i8 %244, 1
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %241, align 4
  %247 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %247, align 2
  %248 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %236, ptr %248, align 4
  %249 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %250 = load ptr, ptr %249, align 4
  %251 = tail call i32 @i2c_transfer(ptr noundef %250, ptr noundef %241, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %252

252:                                              ; preds = %233, %231
  %253 = load i32, ptr @debug, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %273, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 6
  %257 = load i16, ptr %256, align 2
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 7
  %261 = load i16, ptr %260, align 2
  br label %262

262:                                              ; preds = %259, %255
  %263 = phi i16 [ %261, %259 ], [ %257, %255 ]
  %264 = zext i16 %263 to i32
  %265 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 8
  %266 = load i8, ptr %265, align 2
  %267 = zext i8 %266 to i32
  %268 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 27
  %269 = load i8, ptr %268, align 1
  %270 = icmp eq i8 %269, 0
  %271 = zext i1 %270 to i32
  %272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dib7000m_set_agc_config, i32 noundef %264, i32 noundef %267, i32 noundef %271, i32 noundef %267) #9
  br label %273

273:                                              ; preds = %262, %252, %228
  %274 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 6
  %275 = load i16, ptr %274, align 2
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %304, label %277

277:                                              ; preds = %273
  %278 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32, ptr @debug, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %333, label %283

283:                                              ; preds = %280
  %284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %333

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %286, align 4
  %287 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 102, ptr %287, align 1
  %288 = lshr i16 %275, 8
  %289 = trunc i16 %288 to i8
  %290 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %289, ptr %290, align 2
  %291 = trunc i16 %275 to i8
  %292 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %291, ptr %292, align 1
  %293 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %294 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %294, align 4
  %295 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %296 = load i8, ptr %295, align 8
  %297 = lshr i8 %296, 1
  %298 = zext i8 %297 to i16
  store i16 %298, ptr %293, align 4
  %299 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %299, align 2
  %300 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %286, ptr %300, align 4
  %301 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %302 = load ptr, ptr %301, align 4
  %303 = tail call i32 @i2c_transfer(ptr noundef %302, ptr noundef %293, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %333

304:                                              ; preds = %273
  %305 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 7
  %306 = load i16, ptr %305, align 2
  %307 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load i32, ptr @debug, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %333, label %312

312:                                              ; preds = %309
  %313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %333

314:                                              ; preds = %304
  %315 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %315, align 4
  %316 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 102, ptr %316, align 1
  %317 = lshr i16 %306, 8
  %318 = trunc i16 %317 to i8
  %319 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %318, ptr %319, align 2
  %320 = trunc i16 %306 to i8
  %321 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %320, ptr %321, align 1
  %322 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %323 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %323, align 4
  %324 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %325 = load i8, ptr %324, align 8
  %326 = lshr i8 %325, 1
  %327 = zext i8 %326 to i16
  store i16 %327, ptr %322, align 4
  %328 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %315, ptr %329, align 4
  %330 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %331 = load ptr, ptr %330, align 4
  %332 = tail call i32 @i2c_transfer(ptr noundef %331, ptr noundef %322, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %333

333:                                              ; preds = %314, %312, %309, %285, %283, %280
  %334 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 9
  %335 = load i8, ptr %334, align 1
  %336 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 27
  %337 = load i8, ptr %336, align 1
  %338 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %333
  %341 = load i32, ptr @debug, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %368, label %343

343:                                              ; preds = %340
  %344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %368

345:                                              ; preds = %333
  %346 = zext i8 %335 to i16
  %347 = shl i16 %346, 9
  %348 = zext i8 %337 to i16
  %349 = shl nuw i16 %348, 8
  %350 = or i16 %349, %347
  %351 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %351, align 4
  %352 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 103, ptr %352, align 1
  %353 = lshr exact i16 %350, 8
  %354 = trunc i16 %353 to i8
  %355 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %354, ptr %355, align 2
  %356 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 0, ptr %356, align 1
  %357 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %358 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %358, align 4
  %359 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %360 = load i8, ptr %359, align 8
  %361 = lshr i8 %360, 1
  %362 = zext i8 %361 to i16
  store i16 %362, ptr %357, align 4
  %363 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %363, align 2
  %364 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %351, ptr %364, align 4
  %365 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %366 = load ptr, ptr %365, align 4
  %367 = tail call i32 @i2c_transfer(ptr noundef %366, ptr noundef %357, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %368

368:                                              ; preds = %345, %343, %340
  %369 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 10
  %370 = load i16, ptr %369, align 2
  %371 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %368
  %374 = load i32, ptr @debug, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %397, label %376

376:                                              ; preds = %373
  %377 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %397

378:                                              ; preds = %368
  %379 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %379, align 4
  %380 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 104, ptr %380, align 1
  %381 = lshr i16 %370, 8
  %382 = trunc i16 %381 to i8
  %383 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %382, ptr %383, align 2
  %384 = trunc i16 %370 to i8
  %385 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %384, ptr %385, align 1
  %386 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %387 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %387, align 4
  %388 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %389 = load i8, ptr %388, align 8
  %390 = lshr i8 %389, 1
  %391 = zext i8 %390 to i16
  store i16 %391, ptr %386, align 4
  %392 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %392, align 2
  %393 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %379, ptr %393, align 4
  %394 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %395 = load ptr, ptr %394, align 4
  %396 = tail call i32 @i2c_transfer(ptr noundef %395, ptr noundef %386, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %397

397:                                              ; preds = %378, %376, %373
  %398 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 11
  %399 = load i16, ptr %398, align 2
  %400 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %397
  %403 = load i32, ptr @debug, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %426, label %405

405:                                              ; preds = %402
  %406 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %426

407:                                              ; preds = %397
  %408 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %408, align 4
  %409 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 105, ptr %409, align 1
  %410 = lshr i16 %399, 8
  %411 = trunc i16 %410 to i8
  %412 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %411, ptr %412, align 2
  %413 = trunc i16 %399 to i8
  %414 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %413, ptr %414, align 1
  %415 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %416 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %416, align 4
  %417 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %418 = load i8, ptr %417, align 8
  %419 = lshr i8 %418, 1
  %420 = zext i8 %419 to i16
  store i16 %420, ptr %415, align 4
  %421 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %421, align 2
  %422 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %408, ptr %422, align 4
  %423 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %424 = load ptr, ptr %423, align 4
  %425 = tail call i32 @i2c_transfer(ptr noundef %424, ptr noundef %415, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %426

426:                                              ; preds = %407, %405, %402
  %427 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 12
  %428 = load i16, ptr %427, align 2
  %429 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %426
  %432 = load i32, ptr @debug, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %455, label %434

434:                                              ; preds = %431
  %435 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %455

436:                                              ; preds = %426
  %437 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %437, align 4
  %438 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 106, ptr %438, align 1
  %439 = lshr i16 %428, 8
  %440 = trunc i16 %439 to i8
  %441 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %440, ptr %441, align 2
  %442 = trunc i16 %428 to i8
  %443 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %442, ptr %443, align 1
  %444 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %445 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %445, align 4
  %446 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %447 = load i8, ptr %446, align 8
  %448 = lshr i8 %447, 1
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %444, align 4
  %450 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %450, align 2
  %451 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %437, ptr %451, align 4
  %452 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %453 = load ptr, ptr %452, align 4
  %454 = tail call i32 @i2c_transfer(ptr noundef %453, ptr noundef %444, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %455

455:                                              ; preds = %436, %434, %431
  %456 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 13
  %457 = load i16, ptr %456, align 2
  %458 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %465

460:                                              ; preds = %455
  %461 = load i32, ptr @debug, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %484, label %463

463:                                              ; preds = %460
  %464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %484

465:                                              ; preds = %455
  %466 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %466, align 4
  %467 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 107, ptr %467, align 1
  %468 = lshr i16 %457, 8
  %469 = trunc i16 %468 to i8
  %470 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %469, ptr %470, align 2
  %471 = trunc i16 %457 to i8
  %472 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %471, ptr %472, align 1
  %473 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %474 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %474, align 4
  %475 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %476 = load i8, ptr %475, align 8
  %477 = lshr i8 %476, 1
  %478 = zext i8 %477 to i16
  store i16 %478, ptr %473, align 4
  %479 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %479, align 2
  %480 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %466, ptr %480, align 4
  %481 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %482 = load ptr, ptr %481, align 4
  %483 = tail call i32 @i2c_transfer(ptr noundef %482, ptr noundef %473, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %484

484:                                              ; preds = %465, %463, %460
  %485 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 14
  %486 = load i8, ptr %485, align 2
  %487 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 15
  %488 = load i8, ptr %487, align 1
  %489 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %490 = icmp slt i32 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %484
  %492 = load i32, ptr @debug, align 4
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %512, label %494

494:                                              ; preds = %491
  %495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %512

496:                                              ; preds = %484
  %497 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %497, align 4
  %498 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 108, ptr %498, align 1
  %499 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %486, ptr %499, align 2
  %500 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %488, ptr %500, align 1
  %501 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %502 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %502, align 4
  %503 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %504 = load i8, ptr %503, align 8
  %505 = lshr i8 %504, 1
  %506 = zext i8 %505 to i16
  store i16 %506, ptr %501, align 4
  %507 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %507, align 2
  %508 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %497, ptr %508, align 4
  %509 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %510 = load ptr, ptr %509, align 4
  %511 = tail call i32 @i2c_transfer(ptr noundef %510, ptr noundef %501, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %512

512:                                              ; preds = %496, %494, %491
  %513 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 17
  %514 = load i8, ptr %513, align 1
  %515 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 18
  %516 = load i8, ptr %515, align 2
  %517 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %524

519:                                              ; preds = %512
  %520 = load i32, ptr @debug, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %540, label %522

522:                                              ; preds = %519
  %523 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %540

524:                                              ; preds = %512
  %525 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %525, align 4
  %526 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 109, ptr %526, align 1
  %527 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %514, ptr %527, align 2
  %528 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %516, ptr %528, align 1
  %529 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %530 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %530, align 4
  %531 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %532 = load i8, ptr %531, align 8
  %533 = lshr i8 %532, 1
  %534 = zext i8 %533 to i16
  store i16 %534, ptr %529, align 4
  %535 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %535, align 2
  %536 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %525, ptr %536, align 4
  %537 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %538 = load ptr, ptr %537, align 4
  %539 = tail call i32 @i2c_transfer(ptr noundef %538, ptr noundef %529, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %540

540:                                              ; preds = %524, %522, %519
  %541 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 19
  %542 = load i8, ptr %541, align 1
  %543 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 20
  %544 = load i8, ptr %543, align 2
  %545 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %546 = icmp slt i32 %545, 0
  br i1 %546, label %547, label %552

547:                                              ; preds = %540
  %548 = load i32, ptr @debug, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %568, label %550

550:                                              ; preds = %547
  %551 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %568

552:                                              ; preds = %540
  %553 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %553, align 4
  %554 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 110, ptr %554, align 1
  %555 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %542, ptr %555, align 2
  %556 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %544, ptr %556, align 1
  %557 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %558 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %558, align 4
  %559 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %560 = load i8, ptr %559, align 8
  %561 = lshr i8 %560, 1
  %562 = zext i8 %561 to i16
  store i16 %562, ptr %557, align 4
  %563 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %563, align 2
  %564 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %553, ptr %564, align 4
  %565 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %566 = load ptr, ptr %565, align 4
  %567 = tail call i32 @i2c_transfer(ptr noundef %566, ptr noundef %557, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %568

568:                                              ; preds = %552, %550, %547
  %569 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 21
  %570 = load i8, ptr %569, align 1
  %571 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 22
  %572 = load i8, ptr %571, align 2
  %573 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %574 = icmp slt i32 %573, 0
  br i1 %574, label %575, label %580

575:                                              ; preds = %568
  %576 = load i32, ptr @debug, align 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %596, label %578

578:                                              ; preds = %575
  %579 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %596

580:                                              ; preds = %568
  %581 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %581, align 4
  %582 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 111, ptr %582, align 1
  %583 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %570, ptr %583, align 2
  %584 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %572, ptr %584, align 1
  %585 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %586 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %586, align 4
  %587 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %588 = load i8, ptr %587, align 8
  %589 = lshr i8 %588, 1
  %590 = zext i8 %589 to i16
  store i16 %590, ptr %585, align 4
  %591 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %591, align 2
  %592 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %581, ptr %592, align 4
  %593 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %594 = load ptr, ptr %593, align 4
  %595 = tail call i32 @i2c_transfer(ptr noundef %594, ptr noundef %585, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %596

596:                                              ; preds = %580, %578, %575
  %597 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 15
  %598 = load i16, ptr %597, align 8
  %599 = icmp ugt i16 %598, 16384
  br i1 %599, label %611, label %600

600:                                              ; preds = %596
  %601 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  %602 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  %603 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  %604 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  %605 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %606 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  %607 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %608 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  %609 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  %610 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  br label %676

611:                                              ; preds = %596
  %612 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 16
  %613 = load i8, ptr %612, align 2
  %614 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %615 = icmp slt i32 %614, 0
  br i1 %615, label %616, label %621

616:                                              ; preds = %611
  %617 = load i32, ptr @debug, align 4
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %637, label %619

619:                                              ; preds = %616
  %620 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %637

621:                                              ; preds = %611
  %622 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %622, align 4
  %623 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 71, ptr %623, align 1
  %624 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 0, ptr %624, align 2
  %625 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %613, ptr %625, align 1
  %626 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %627 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %627, align 4
  %628 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %629 = load i8, ptr %628, align 8
  %630 = lshr i8 %629, 1
  %631 = zext i8 %630 to i16
  store i16 %631, ptr %626, align 4
  %632 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %632, align 2
  %633 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %622, ptr %633, align 4
  %634 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %635 = load ptr, ptr %634, align 4
  %636 = tail call i32 @i2c_transfer(ptr noundef %635, ptr noundef %626, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %637

637:                                              ; preds = %621, %619, %616
  %638 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 929) #8
  %639 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 6
  %640 = load i8, ptr %639, align 2
  %641 = getelementptr %struct.dibx000_agc_config, ptr %49, i32 %51, i32 8
  %642 = load i8, ptr %641, align 2
  %643 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %645, label %650

645:                                              ; preds = %637
  %646 = load i32, ptr @debug, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %704, label %648

648:                                              ; preds = %645
  %649 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %704

650:                                              ; preds = %637
  %651 = zext i8 %640 to i16
  %652 = shl nuw nsw i16 %651, 4
  %653 = and i16 %638, -29
  %654 = or i16 %652, %653
  %655 = zext i8 %642 to i16
  %656 = shl nuw nsw i16 %655, 2
  %657 = or i16 %654, %656
  %658 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 3, ptr %658, align 4
  %659 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 -95, ptr %659, align 1
  %660 = lshr i16 %657, 8
  %661 = trunc i16 %660 to i8
  %662 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %661, ptr %662, align 2
  %663 = trunc i16 %657 to i8
  %664 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %663, ptr %664, align 1
  %665 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %666 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %666, align 4
  %667 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %668 = load i8, ptr %667, align 8
  %669 = lshr i8 %668, 1
  %670 = zext i8 %669 to i16
  store i16 %670, ptr %665, align 4
  %671 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %671, align 2
  %672 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %658, ptr %672, align 4
  %673 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %674 = load ptr, ptr %673, align 4
  %675 = tail call i32 @i2c_transfer(ptr noundef %674, ptr noundef %665, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %704

676:                                              ; preds = %701, %600
  %677 = phi i32 [ 0, %600 ], [ %702, %701 ]
  %678 = getelementptr [9 x i16], ptr @__const.dib7000m_set_agc_config.b, i32 0, i32 %677
  %679 = load i16, ptr %678, align 2
  %680 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #8
  %681 = icmp slt i32 %680, 0
  br i1 %681, label %682, label %687

682:                                              ; preds = %676
  %683 = load i32, ptr @debug, align 4
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %701, label %685

685:                                              ; preds = %682
  %686 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %701

687:                                              ; preds = %676
  %688 = trunc i32 %677 to i16
  %689 = add i16 %688, 88
  %690 = lshr i16 %689, 8
  %691 = trunc i16 %690 to i8
  store i8 %691, ptr %601, align 4
  %692 = trunc i16 %689 to i8
  store i8 %692, ptr %602, align 1
  %693 = lshr i16 %679, 8
  %694 = trunc i16 %693 to i8
  store i8 %694, ptr %603, align 2
  %695 = trunc i16 %679 to i8
  store i8 %695, ptr %604, align 1
  store i32 4, ptr %606, align 4
  %696 = load i8, ptr %607, align 8
  %697 = lshr i8 %696, 1
  %698 = zext i8 %697 to i16
  store i16 %698, ptr %605, align 4
  store i16 0, ptr %608, align 2
  store ptr %601, ptr %609, align 4
  %699 = load ptr, ptr %610, align 4
  %700 = tail call i32 @i2c_transfer(ptr noundef %699, ptr noundef %605, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %71) #8
  br label %701

701:                                              ; preds = %687, %685, %682
  %702 = add nuw nsw i32 %677, 1
  %703 = icmp eq i32 %702, 9
  br i1 %703, label %704, label %676

704:                                              ; preds = %701, %650, %648, %645, %38
  %705 = load i8, ptr %20, align 1
  %706 = add i8 %705, 1
  store i8 %706, ptr %20, align 1
  br label %1029

707:                                              ; preds = %17
  %708 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 1, i32 15
  %709 = load ptr, ptr %708, align 4
  %710 = icmp eq ptr %709, null
  br i1 %710, label %713, label %711

711:                                              ; preds = %707
  %712 = tail call i32 %709(ptr noundef %18, i8 noundef zeroext 1) #8
  br label %713

713:                                              ; preds = %711, %707
  %714 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 20
  %715 = tail call i32 @mutex_lock_interruptible(ptr noundef %714) #8
  %716 = icmp slt i32 %715, 0
  br i1 %716, label %717, label %722

717:                                              ; preds = %713
  %718 = load i32, ptr @debug, align 4
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %738, label %720

720:                                              ; preds = %717
  %721 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %738

722:                                              ; preds = %713
  %723 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %723, align 4
  %724 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 75, ptr %724, align 1
  %725 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 -128, ptr %725, align 2
  %726 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 0, ptr %726, align 1
  %727 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %728 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %728, align 4
  %729 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %730 = load i8, ptr %729, align 8
  %731 = lshr i8 %730, 1
  %732 = zext i8 %731 to i16
  store i16 %732, ptr %727, align 4
  %733 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %733, align 2
  %734 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %723, ptr %734, align 4
  %735 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %736 = load ptr, ptr %735, align 4
  %737 = tail call i32 @i2c_transfer(ptr noundef %736, ptr noundef %727, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %714) #8
  br label %738

738:                                              ; preds = %722, %720, %717
  %739 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 9
  %740 = load ptr, ptr %739, align 4
  %741 = getelementptr inbounds %struct.dibx000_agc_config, ptr %740, i32 0, i32 27
  %742 = load i8, ptr %741, align 1
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %744, label %771

744:                                              ; preds = %738
  %745 = tail call i32 @mutex_lock_interruptible(ptr noundef %714) #8
  %746 = icmp slt i32 %745, 0
  br i1 %746, label %747, label %752

747:                                              ; preds = %744
  %748 = load i32, ptr @debug, align 4
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %768, label %750

750:                                              ; preds = %747
  %751 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %768

752:                                              ; preds = %744
  %753 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %753, align 4
  %754 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 103, ptr %754, align 1
  %755 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 1, ptr %755, align 2
  %756 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 0, ptr %756, align 1
  %757 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %758 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %758, align 4
  %759 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %760 = load i8, ptr %759, align 8
  %761 = lshr i8 %760, 1
  %762 = zext i8 %761 to i16
  store i16 %762, ptr %757, align 4
  %763 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %763, align 2
  %764 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %753, ptr %764, align 4
  %765 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %766 = load ptr, ptr %765, align 4
  %767 = tail call i32 @i2c_transfer(ptr noundef %766, ptr noundef %757, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %714) #8
  br label %768

768:                                              ; preds = %752, %750, %747
  %769 = load i8, ptr %20, align 1
  %770 = add i8 %769, 1
  br label %771

771:                                              ; preds = %768, %738
  %772 = phi i8 [ %770, %768 ], [ 4, %738 ]
  %773 = phi i32 [ 5, %768 ], [ 7, %738 ]
  store i8 %772, ptr %20, align 1
  tail call fastcc void @dib7000m_restart_agc(ptr noundef %18) #8
  br label %1029

774:                                              ; preds = %17
  %775 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 20
  %776 = tail call i32 @mutex_lock_interruptible(ptr noundef %775) #8
  %777 = icmp slt i32 %776, 0
  br i1 %777, label %778, label %783

778:                                              ; preds = %774
  %779 = load i32, ptr @debug, align 4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %803, label %781

781:                                              ; preds = %778
  %782 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %803

783:                                              ; preds = %774
  %784 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %784, align 4
  %785 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 72, ptr %785, align 1
  %786 = lshr i16 %19, 8
  %787 = trunc i16 %786 to i8
  %788 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %787, ptr %788, align 2
  %789 = trunc i16 %19 to i8
  %790 = or i8 %789, 16
  %791 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %790, ptr %791, align 1
  %792 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %793 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %793, align 4
  %794 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %795 = load i8, ptr %794, align 8
  %796 = lshr i8 %795, 1
  %797 = zext i8 %796 to i16
  store i16 %797, ptr %792, align 4
  %798 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %798, align 2
  %799 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %784, ptr %799, align 4
  %800 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %801 = load ptr, ptr %800, align 4
  %802 = tail call i32 @i2c_transfer(ptr noundef %801, ptr noundef %792, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %775) #8
  br label %803

803:                                              ; preds = %783, %781, %778
  %804 = tail call i32 @mutex_lock_interruptible(ptr noundef %775) #8
  %805 = icmp slt i32 %804, 0
  br i1 %805, label %806, label %811

806:                                              ; preds = %803
  %807 = load i32, ptr @debug, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %827, label %809

809:                                              ; preds = %806
  %810 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %827

811:                                              ; preds = %803
  %812 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %812, align 4
  %813 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 103, ptr %813, align 1
  %814 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 4, ptr %814, align 2
  %815 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 0, ptr %815, align 1
  %816 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %817 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %817, align 4
  %818 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %819 = load i8, ptr %818, align 8
  %820 = lshr i8 %819, 1
  %821 = zext i8 %820 to i16
  store i16 %821, ptr %816, align 4
  %822 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %822, align 2
  %823 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %812, ptr %823, align 4
  %824 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %825 = load ptr, ptr %824, align 4
  %826 = tail call i32 @i2c_transfer(ptr noundef %825, ptr noundef %816, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %775) #8
  br label %827

827:                                              ; preds = %811, %809, %806
  %828 = load i8, ptr %20, align 1
  %829 = add i8 %828, 1
  store i8 %829, ptr %20, align 1
  br label %1029

830:                                              ; preds = %17
  %831 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 392) #8
  %832 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 390) #8
  %833 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 20
  %834 = tail call i32 @mutex_lock_interruptible(ptr noundef %833) #8
  %835 = icmp slt i32 %834, 0
  br i1 %835, label %836, label %841

836:                                              ; preds = %830
  %837 = load i32, ptr @debug, align 4
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %860, label %839

839:                                              ; preds = %836
  %840 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %860

841:                                              ; preds = %830
  %842 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %842, align 4
  %843 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 75, ptr %843, align 1
  %844 = lshr i16 %832, 8
  %845 = trunc i16 %844 to i8
  %846 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %845, ptr %846, align 2
  %847 = trunc i16 %832 to i8
  %848 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %847, ptr %848, align 1
  %849 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %850 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %850, align 4
  %851 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %852 = load i8, ptr %851, align 8
  %853 = lshr i8 %852, 1
  %854 = zext i8 %853 to i16
  store i16 %854, ptr %849, align 4
  %855 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %855, align 2
  %856 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %842, ptr %856, align 4
  %857 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %858 = load ptr, ptr %857, align 4
  %859 = tail call i32 @i2c_transfer(ptr noundef %858, ptr noundef %849, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %833) #8
  br label %860

860:                                              ; preds = %841, %839, %836
  %861 = tail call i32 @mutex_lock_interruptible(ptr noundef %833) #8
  %862 = icmp slt i32 %861, 0
  br i1 %862, label %863, label %868

863:                                              ; preds = %860
  %864 = load i32, ptr @debug, align 4
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %888, label %866

866:                                              ; preds = %863
  %867 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %888

868:                                              ; preds = %860
  %869 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %869, align 4
  %870 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 72, ptr %870, align 1
  %871 = lshr i16 %19, 8
  %872 = trunc i16 %871 to i8
  %873 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %872, ptr %873, align 2
  %874 = trunc i16 %19 to i8
  %875 = and i8 %874, -17
  %876 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %875, ptr %876, align 1
  %877 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %878 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %878, align 4
  %879 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %880 = load i8, ptr %879, align 8
  %881 = lshr i8 %880, 1
  %882 = zext i8 %881 to i16
  store i16 %882, ptr %877, align 4
  %883 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %883, align 2
  %884 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %869, ptr %884, align 4
  %885 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %886 = load ptr, ptr %885, align 4
  %887 = tail call i32 @i2c_transfer(ptr noundef %886, ptr noundef %877, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %833) #8
  br label %888

888:                                              ; preds = %868, %866, %863
  %889 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 9
  %890 = load ptr, ptr %889, align 4
  %891 = getelementptr inbounds %struct.dibx000_agc_config, ptr %890, i32 0, i32 9
  %892 = load i8, ptr %891, align 1
  %893 = and i16 %831, 255
  %894 = tail call i32 @mutex_lock_interruptible(ptr noundef %833) #8
  %895 = icmp slt i32 %894, 0
  br i1 %895, label %896, label %901

896:                                              ; preds = %888
  %897 = load i32, ptr @debug, align 4
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %919, label %899

899:                                              ; preds = %896
  %900 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %919

901:                                              ; preds = %888
  %902 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %902, align 4
  %903 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 103, ptr %903, align 1
  %904 = shl i8 %892, 1
  %905 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %904, ptr %905, align 2
  %906 = trunc i16 %831 to i8
  %907 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %906, ptr %907, align 1
  %908 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %909 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %909, align 4
  %910 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %911 = load i8, ptr %910, align 8
  %912 = lshr i8 %911, 1
  %913 = zext i8 %912 to i16
  store i16 %913, ptr %908, align 4
  %914 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %914, align 2
  %915 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %902, ptr %915, align 4
  %916 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %917 = load ptr, ptr %916, align 4
  %918 = tail call i32 @i2c_transfer(ptr noundef %917, ptr noundef %908, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %833) #8
  br label %919

919:                                              ; preds = %901, %899, %896
  tail call fastcc void @dib7000m_restart_agc(ptr noundef %18) #8
  %920 = load i32, ptr @debug, align 4
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %925, label %922

922:                                              ; preds = %919
  %923 = zext i16 %893 to i32
  %924 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dib7000m_agc_startup, ptr noundef %0, i32 noundef %923) #9
  br label %925

925:                                              ; preds = %922, %919
  %926 = load i8, ptr %20, align 1
  %927 = add i8 %926, 1
  store i8 %927, ptr %20, align 1
  br label %1029

928:                                              ; preds = %17
  %929 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 1, i32 5
  %930 = load ptr, ptr %929, align 8
  %931 = icmp eq ptr %930, null
  br i1 %931, label %941, label %932

932:                                              ; preds = %928
  %933 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 390) #8
  %934 = load ptr, ptr %929, align 8
  %935 = tail call i32 %934(ptr noundef %18, i16 noundef zeroext %933) #8
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %940

937:                                              ; preds = %932
  %938 = load i8, ptr %20, align 1
  %939 = add i8 %938, 1
  br label %941

940:                                              ; preds = %932
  tail call fastcc void @dib7000m_restart_agc(ptr noundef %18) #8
  br label %1029

941:                                              ; preds = %937, %928
  %942 = phi i8 [ %939, %937 ], [ 5, %928 ]
  store i8 %942, ptr %20, align 1
  br label %1029

943:                                              ; preds = %17
  %944 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 9
  %945 = load ptr, ptr %944, align 4
  %946 = icmp eq ptr %945, null
  br i1 %946, label %1020, label %947

947:                                              ; preds = %943
  %948 = getelementptr inbounds %struct.dibx000_agc_config, ptr %945, i32 0, i32 27
  %949 = load i8, ptr %948, align 1
  %950 = icmp eq i8 %949, 0
  br i1 %950, label %1020, label %951

951:                                              ; preds = %947
  %952 = getelementptr inbounds %struct.dibx000_agc_config, ptr %945, i32 0, i32 28, i32 1
  %953 = load i16, ptr %952, align 2
  %954 = icmp eq i16 %953, 0
  br i1 %954, label %1020, label %955

955:                                              ; preds = %951
  %956 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 390) #8
  %957 = zext i16 %956 to i32
  %958 = load ptr, ptr %944, align 4
  %959 = getelementptr inbounds %struct.dibx000_agc_config, ptr %958, i32 0, i32 28, i32 2
  %960 = load i16, ptr %959, align 2
  %961 = zext i16 %960 to i32
  %962 = icmp ugt i16 %956, %960
  br i1 %962, label %963, label %966

963:                                              ; preds = %955
  %964 = getelementptr inbounds %struct.dibx000_agc_config, ptr %958, i32 0, i32 28
  %965 = load i16, ptr %964, align 2
  br label %983

966:                                              ; preds = %955
  %967 = getelementptr inbounds %struct.dibx000_agc_config, ptr %958, i32 0, i32 28, i32 3
  %968 = load i16, ptr %967, align 2
  %969 = icmp ult i16 %956, %968
  br i1 %969, label %970, label %973

970:                                              ; preds = %966
  %971 = getelementptr inbounds %struct.dibx000_agc_config, ptr %958, i32 0, i32 28, i32 1
  %972 = load i16, ptr %971, align 2
  br label %983

973:                                              ; preds = %966
  %974 = zext i16 %968 to i32
  %975 = getelementptr inbounds %struct.dibx000_agc_config, ptr %958, i32 0, i32 28, i32 1
  %976 = load i16, ptr %975, align 2
  %977 = zext i16 %976 to i32
  %978 = sub nsw i32 %957, %961
  %979 = mul i32 %978, %977
  %980 = sub nsw i32 %974, %961
  %981 = sdiv i32 %979, %980
  %982 = trunc i32 %981 to i16
  br label %983

983:                                              ; preds = %973, %970, %963
  %984 = phi i16 [ %965, %963 ], [ %972, %970 ], [ %982, %973 ]
  %985 = load i32, ptr @debug, align 4
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %990, label %987

987:                                              ; preds = %983
  %988 = zext i16 %984 to i32
  %989 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib7000m_agc_soft_split, i32 noundef %988) #9
  br label %990

990:                                              ; preds = %987, %983
  %991 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %18, i16 noundef zeroext 103) #8
  %992 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 20
  %993 = tail call i32 @mutex_lock_interruptible(ptr noundef %992) #8
  %994 = icmp slt i32 %993, 0
  br i1 %994, label %995, label %1000

995:                                              ; preds = %990
  %996 = load i32, ptr @debug, align 4
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1020, label %998

998:                                              ; preds = %995
  %999 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1020

1000:                                             ; preds = %990
  %1001 = or i16 %991, %984
  %1002 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 18
  store i8 0, ptr %1002, align 4
  %1003 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 1
  store i8 103, ptr %1003, align 1
  %1004 = lshr i16 %1001, 8
  %1005 = trunc i16 %1004 to i8
  %1006 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 2
  store i8 %1005, ptr %1006, align 2
  %1007 = trunc i16 %984 to i8
  %1008 = getelementptr %struct.dib7000m_state, ptr %18, i32 0, i32 18, i32 3
  store i8 %1007, ptr %1008, align 1
  %1009 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17
  %1010 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1010, align 4
  %1011 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 2
  %1012 = load i8, ptr %1011, align 8
  %1013 = lshr i8 %1012, 1
  %1014 = zext i8 %1013 to i16
  store i16 %1014, ptr %1009, align 4
  %1015 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1015, align 2
  %1016 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 17, i32 0, i32 3
  store ptr %1002, ptr %1016, align 4
  %1017 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 3
  %1018 = load ptr, ptr %1017, align 4
  %1019 = tail call i32 @i2c_transfer(ptr noundef %1018, ptr noundef %1009, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %992) #8
  br label %1020

1020:                                             ; preds = %1000, %998, %995, %951, %947, %943
  %1021 = getelementptr inbounds %struct.dib7000m_state, ptr %18, i32 0, i32 1, i32 15
  %1022 = load ptr, ptr %1021, align 4
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1026, label %1024

1024:                                             ; preds = %1020
  %1025 = tail call i32 %1022(ptr noundef %18, i8 noundef zeroext 0) #8
  br label %1026

1026:                                             ; preds = %1024, %1020
  %1027 = load i8, ptr %20, align 1
  %1028 = add i8 %1027, 1
  store i8 %1028, ptr %20, align 1
  br label %1031

1029:                                             ; preds = %941, %940, %925, %827, %771, %704
  %1030 = phi i32 [ 5, %940 ], [ 7, %704 ], [ %773, %771 ], [ 14, %827 ], [ 5, %925 ], [ 7, %941 ]
  tail call void @msleep(i32 noundef %1030) #8
  br label %17

1031:                                             ; preds = %1026, %64, %61, %17
  %1032 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %1033 = load i32, ptr %1032, align 4
  %1034 = icmp eq i32 %1033, 2
  br i1 %1034, label %1047, label %1035

1035:                                             ; preds = %1031
  %1036 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %1037 = load i32, ptr %1036, align 4
  %1038 = icmp eq i32 %1037, 4
  br i1 %1038, label %1047, label %1039

1039:                                             ; preds = %1035
  %1040 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %1041 = load i32, ptr %1040, align 4
  %1042 = icmp eq i32 %1041, 6
  br i1 %1042, label %1047, label %1043

1043:                                             ; preds = %1039
  %1044 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %1045 = load i32, ptr %1044, align 4
  %1046 = icmp eq i32 %1045, 9
  br i1 %1046, label %1047, label %1372

1047:                                             ; preds = %1043, %1039, %1035, %1031
  %1048 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %2, ptr noundef align 4 dereferenceable(456) %3, i32 456, i1 false) #8
  %1049 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 1
  store i32 3, ptr %1049, align 4
  %1050 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 8
  store i32 0, ptr %1050, align 4
  %1051 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 6
  store i32 1, ptr %1051, align 4
  %1052 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 11
  store i32 2, ptr %1052, align 4
  %1053 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 12
  store i32 3, ptr %1053, align 4
  %1054 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 9
  store i32 0, ptr %1054, align 4
  call fastcc void @dib7000m_set_channel(ptr noundef %1048, ptr noundef nonnull %2, i8 noundef zeroext 7) #8
  %1055 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 7
  %1056 = load i32, ptr %1055, align 4
  %1057 = icmp ugt i32 %1056, 4999999
  %1058 = select i1 %1057, i32 1, i32 6
  %1059 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 12
  %1060 = load i32, ptr %1059, align 8
  %1061 = mul i32 %1060, 30
  %1062 = mul i32 %1061, %1058
  %1063 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 20
  %1064 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1065 = icmp slt i32 %1064, 0
  br i1 %1065, label %1066, label %1071

1066:                                             ; preds = %1047
  %1067 = load i32, ptr @debug, align 4
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1091, label %1069

1069:                                             ; preds = %1066
  %1070 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1091

1071:                                             ; preds = %1047
  %1072 = lshr i32 %1062, 16
  %1073 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1073, align 4
  %1074 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 6, ptr %1074, align 1
  %1075 = lshr i32 %1062, 24
  %1076 = trunc i32 %1075 to i8
  %1077 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1076, ptr %1077, align 2
  %1078 = trunc i32 %1072 to i8
  %1079 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1078, ptr %1079, align 1
  %1080 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1081 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1081, align 4
  %1082 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1083 = load i8, ptr %1082, align 8
  %1084 = lshr i8 %1083, 1
  %1085 = zext i8 %1084 to i16
  store i16 %1085, ptr %1080, align 4
  %1086 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1086, align 2
  %1087 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1073, ptr %1087, align 4
  %1088 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1089 = load ptr, ptr %1088, align 4
  %1090 = tail call i32 @i2c_transfer(ptr noundef %1089, ptr noundef %1080, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1091

1091:                                             ; preds = %1071, %1069, %1066
  %1092 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1093 = icmp slt i32 %1092, 0
  br i1 %1093, label %1094, label %1099

1094:                                             ; preds = %1091
  %1095 = load i32, ptr @debug, align 4
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1118, label %1097

1097:                                             ; preds = %1094
  %1098 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1118

1099:                                             ; preds = %1091
  %1100 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1100, align 4
  %1101 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 7, ptr %1101, align 1
  %1102 = lshr i32 %1062, 8
  %1103 = trunc i32 %1102 to i8
  %1104 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1103, ptr %1104, align 2
  %1105 = trunc i32 %1062 to i8
  %1106 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1105, ptr %1106, align 1
  %1107 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1108 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1108, align 4
  %1109 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1110 = load i8, ptr %1109, align 8
  %1111 = lshr i8 %1110, 1
  %1112 = zext i8 %1111 to i16
  store i16 %1112, ptr %1107, align 4
  %1113 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1113, align 2
  %1114 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1100, ptr %1114, align 4
  %1115 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1116 = load ptr, ptr %1115, align 4
  %1117 = tail call i32 @i2c_transfer(ptr noundef %1116, ptr noundef %1107, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1118

1118:                                             ; preds = %1099, %1097, %1094
  %1119 = load i32, ptr %1059, align 8
  %1120 = mul nuw nsw i32 %1058, 100
  %1121 = mul i32 %1120, %1119
  %1122 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1123 = icmp slt i32 %1122, 0
  br i1 %1123, label %1124, label %1129

1124:                                             ; preds = %1118
  %1125 = load i32, ptr @debug, align 4
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1149, label %1127

1127:                                             ; preds = %1124
  %1128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1149

1129:                                             ; preds = %1118
  %1130 = lshr i32 %1121, 16
  %1131 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1131, align 4
  %1132 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 8, ptr %1132, align 1
  %1133 = lshr i32 %1121, 24
  %1134 = trunc i32 %1133 to i8
  %1135 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1134, ptr %1135, align 2
  %1136 = trunc i32 %1130 to i8
  %1137 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1136, ptr %1137, align 1
  %1138 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1139 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1139, align 4
  %1140 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1141 = load i8, ptr %1140, align 8
  %1142 = lshr i8 %1141, 1
  %1143 = zext i8 %1142 to i16
  store i16 %1143, ptr %1138, align 4
  %1144 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1144, align 2
  %1145 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1131, ptr %1145, align 4
  %1146 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1147 = load ptr, ptr %1146, align 4
  %1148 = tail call i32 @i2c_transfer(ptr noundef %1147, ptr noundef %1138, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1149

1149:                                             ; preds = %1129, %1127, %1124
  %1150 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1151 = icmp slt i32 %1150, 0
  br i1 %1151, label %1152, label %1157

1152:                                             ; preds = %1149
  %1153 = load i32, ptr @debug, align 4
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1176, label %1155

1155:                                             ; preds = %1152
  %1156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1176

1157:                                             ; preds = %1149
  %1158 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1158, align 4
  %1159 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 9, ptr %1159, align 1
  %1160 = lshr i32 %1121, 8
  %1161 = trunc i32 %1160 to i8
  %1162 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1161, ptr %1162, align 2
  %1163 = trunc i32 %1121 to i8
  %1164 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1163, ptr %1164, align 1
  %1165 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1166 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1166, align 4
  %1167 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1168 = load i8, ptr %1167, align 8
  %1169 = lshr i8 %1168, 1
  %1170 = zext i8 %1169 to i16
  store i16 %1170, ptr %1165, align 4
  %1171 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1171, align 2
  %1172 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1158, ptr %1172, align 4
  %1173 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1174 = load ptr, ptr %1173, align 4
  %1175 = tail call i32 @i2c_transfer(ptr noundef %1174, ptr noundef %1165, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1176

1176:                                             ; preds = %1157, %1155, %1152
  %1177 = load i32, ptr %1059, align 8
  %1178 = mul nuw nsw i32 %1058, 500
  %1179 = mul i32 %1178, %1177
  %1180 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1181 = icmp slt i32 %1180, 0
  br i1 %1181, label %1182, label %1187

1182:                                             ; preds = %1176
  %1183 = load i32, ptr @debug, align 4
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1207, label %1185

1185:                                             ; preds = %1182
  %1186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1207

1187:                                             ; preds = %1176
  %1188 = lshr i32 %1179, 16
  %1189 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1189, align 4
  %1190 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 10, ptr %1190, align 1
  %1191 = lshr i32 %1179, 24
  %1192 = trunc i32 %1191 to i8
  %1193 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1192, ptr %1193, align 2
  %1194 = trunc i32 %1188 to i8
  %1195 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1194, ptr %1195, align 1
  %1196 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1197 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1197, align 4
  %1198 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1199 = load i8, ptr %1198, align 8
  %1200 = lshr i8 %1199, 1
  %1201 = zext i8 %1200 to i16
  store i16 %1201, ptr %1196, align 4
  %1202 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1202, align 2
  %1203 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1189, ptr %1203, align 4
  %1204 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1205 = load ptr, ptr %1204, align 4
  %1206 = tail call i32 @i2c_transfer(ptr noundef %1205, ptr noundef %1196, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1207

1207:                                             ; preds = %1187, %1185, %1182
  %1208 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1209 = icmp slt i32 %1208, 0
  br i1 %1209, label %1210, label %1215

1210:                                             ; preds = %1207
  %1211 = load i32, ptr @debug, align 4
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1234, label %1213

1213:                                             ; preds = %1210
  %1214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1234

1215:                                             ; preds = %1207
  %1216 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1216, align 4
  %1217 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 11, ptr %1217, align 1
  %1218 = lshr i32 %1179, 8
  %1219 = trunc i32 %1218 to i8
  %1220 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1219, ptr %1220, align 2
  %1221 = trunc i32 %1179 to i8
  %1222 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1221, ptr %1222, align 1
  %1223 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1224 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1224, align 4
  %1225 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1226 = load i8, ptr %1225, align 8
  %1227 = lshr i8 %1226, 1
  %1228 = zext i8 %1227 to i16
  store i16 %1228, ptr %1223, align 4
  %1229 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1229, align 2
  %1230 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1216, ptr %1230, align 4
  %1231 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1232 = load ptr, ptr %1231, align 4
  %1233 = tail call i32 @i2c_transfer(ptr noundef %1232, ptr noundef %1223, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1234

1234:                                             ; preds = %1215, %1213, %1210
  %1235 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1048, i16 noundef zeroext 0) #8
  %1236 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1237 = icmp slt i32 %1236, 0
  br i1 %1237, label %1238, label %1243

1238:                                             ; preds = %1234
  %1239 = load i32, ptr @debug, align 4
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1263, label %1241

1241:                                             ; preds = %1238
  %1242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1263

1243:                                             ; preds = %1234
  %1244 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1244, align 4
  %1245 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 0, ptr %1245, align 1
  %1246 = lshr i16 %1235, 8
  %1247 = trunc i16 %1246 to i8
  %1248 = or i8 %1247, 2
  %1249 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1248, ptr %1249, align 2
  %1250 = trunc i16 %1235 to i8
  %1251 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1250, ptr %1251, align 1
  %1252 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1253 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1253, align 4
  %1254 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1255 = load i8, ptr %1254, align 8
  %1256 = lshr i8 %1255, 1
  %1257 = zext i8 %1256 to i16
  store i16 %1257, ptr %1252, align 4
  %1258 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1258, align 2
  %1259 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1244, ptr %1259, align 4
  %1260 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1261 = load ptr, ptr %1260, align 4
  %1262 = tail call i32 @i2c_transfer(ptr noundef %1261, ptr noundef %1252, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1263

1263:                                             ; preds = %1243, %1241, %1238
  %1264 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 15
  %1265 = load i16, ptr %1264, align 8
  %1266 = icmp eq i16 %1265, 16384
  br i1 %1266, label %1267, label %1291

1267:                                             ; preds = %1263
  %1268 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1269 = icmp slt i32 %1268, 0
  br i1 %1269, label %1270, label %1275

1270:                                             ; preds = %1267
  %1271 = load i32, ptr @debug, align 4
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1293, label %1273

1273:                                             ; preds = %1270
  %1274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1293

1275:                                             ; preds = %1267
  %1276 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 7, ptr %1276, align 4
  %1277 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 1, ptr %1277, align 1
  %1278 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 0, ptr %1278, align 2
  %1279 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 0, ptr %1279, align 1
  %1280 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1281 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1281, align 4
  %1282 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1283 = load i8, ptr %1282, align 8
  %1284 = lshr i8 %1283, 1
  %1285 = zext i8 %1284 to i16
  store i16 %1285, ptr %1280, align 4
  %1286 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1286, align 2
  %1287 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1276, ptr %1287, align 4
  %1288 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1289 = load ptr, ptr %1288, align 4
  %1290 = tail call i32 @i2c_transfer(ptr noundef %1289, ptr noundef %1280, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1293

1291:                                             ; preds = %1263
  %1292 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1048, i16 noundef zeroext 537) #8
  br label %1293

1293:                                             ; preds = %1291, %1275, %1273, %1270
  %1294 = tail call i32 @mutex_lock_interruptible(ptr noundef %1063) #8
  %1295 = icmp slt i32 %1294, 0
  br i1 %1295, label %1296, label %1301

1296:                                             ; preds = %1293
  %1297 = load i32, ptr @debug, align 4
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1320, label %1299

1299:                                             ; preds = %1296
  %1300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1320

1301:                                             ; preds = %1293
  %1302 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 18
  store i8 0, ptr %1302, align 4
  %1303 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 1
  store i8 0, ptr %1303, align 1
  %1304 = lshr i16 %1235, 8
  %1305 = trunc i16 %1304 to i8
  %1306 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 2
  store i8 %1305, ptr %1306, align 2
  %1307 = trunc i16 %1235 to i8
  %1308 = getelementptr %struct.dib7000m_state, ptr %1048, i32 0, i32 18, i32 3
  store i8 %1307, ptr %1308, align 1
  %1309 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17
  %1310 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1310, align 4
  %1311 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 2
  %1312 = load i8, ptr %1311, align 8
  %1313 = lshr i8 %1312, 1
  %1314 = zext i8 %1313 to i16
  store i16 %1314, ptr %1309, align 4
  %1315 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1315, align 2
  %1316 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 17, i32 0, i32 3
  store ptr %1302, ptr %1316, align 4
  %1317 = getelementptr inbounds %struct.dib7000m_state, ptr %1048, i32 0, i32 3
  %1318 = load ptr, ptr %1317, align 4
  %1319 = tail call i32 @i2c_transfer(ptr noundef %1318, ptr noundef %1309, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1063) #8
  br label %1320

1320:                                             ; preds = %1301, %1299, %1296
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %2) #8
  br label %1321

1321:                                             ; preds = %1359, %1320
  %1322 = phi i32 [ 800, %1320 ], [ %1360, %1359 ]
  tail call void @msleep(i32 noundef 1) #8
  %1323 = load ptr, ptr %4, align 4
  %1324 = getelementptr inbounds %struct.dib7000m_state, ptr %1323, i32 0, i32 15
  %1325 = load i16, ptr %1324, align 8
  %1326 = icmp eq i16 %1325, 16384
  br i1 %1326, label %1327, label %1341

1327:                                             ; preds = %1321
  %1328 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1323, i16 noundef zeroext 1793) #8
  %1329 = zext i16 %1328 to i32
  %1330 = and i32 %1329, 1
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1335, label %1332

1332:                                             ; preds = %1327
  %1333 = load i32, ptr @debug, align 4
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1642, label %1355

1335:                                             ; preds = %1327
  %1336 = and i32 %1329, 2
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1359, label %1338

1338:                                             ; preds = %1335
  %1339 = load i32, ptr @debug, align 4
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1370, label %1355

1341:                                             ; preds = %1321
  %1342 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1323, i16 noundef zeroext 537) #8
  %1343 = zext i16 %1342 to i32
  %1344 = and i32 %1343, 1
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1349, label %1346

1346:                                             ; preds = %1341
  %1347 = load i32, ptr @debug, align 4
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1642, label %1355

1349:                                             ; preds = %1341
  %1350 = and i32 %1343, 2
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1359, label %1352

1352:                                             ; preds = %1349
  %1353 = load i32, ptr @debug, align 4
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1370, label %1355

1355:                                             ; preds = %1352, %1346, %1338, %1332
  %1356 = phi ptr [ @.str.25, %1332 ], [ @.str.26, %1338 ], [ @.str.25, %1346 ], [ @.str.26, %1352 ]
  %1357 = phi i32 [ 1, %1332 ], [ 2, %1338 ], [ 1, %1346 ], [ 2, %1352 ]
  %1358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %1356, ptr noundef nonnull @__func__.dib7000m_autosearch_irq) #9
  br label %1362

1359:                                             ; preds = %1349, %1335
  %1360 = add nsw i32 %1322, -1
  %1361 = icmp eq i32 %1322, 0
  br i1 %1361, label %1362, label %1321

1362:                                             ; preds = %1359, %1355
  %1363 = phi i32 [ %1357, %1355 ], [ 0, %1359 ]
  %1364 = load i32, ptr @debug, align 4
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1368, label %1366

1366:                                             ; preds = %1362
  %1367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dib7000m_set_frontend, i32 noundef %1363) #9
  br label %1368

1368:                                             ; preds = %1366, %1362
  %1369 = icmp ult i32 %1363, 2
  br i1 %1369, label %1642, label %1370

1370:                                             ; preds = %1368, %1352, %1338
  %1371 = tail call i32 @dib7000m_get_frontend(ptr noundef %0, ptr noundef %3)
  br label %1372

1372:                                             ; preds = %1370, %1043
  %1373 = load ptr, ptr %4, align 4
  tail call fastcc void @dib7000m_set_channel(ptr noundef %1373, ptr noundef %3, i8 noundef zeroext 0) #8
  %1374 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 20
  %1375 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1376 = icmp slt i32 %1375, 0
  br i1 %1376, label %1377, label %1382

1377:                                             ; preds = %1372
  %1378 = load i32, ptr @debug, align 4
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1400, label %1380

1380:                                             ; preds = %1377
  %1381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1400

1382:                                             ; preds = %1372
  %1383 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 3, ptr %1383, align 4
  %1384 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 -126, ptr %1384, align 1
  %1385 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 64, ptr %1385, align 2
  %1386 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 0, ptr %1386, align 1
  %1387 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1388 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1388, align 4
  %1389 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1390 = load i8, ptr %1389, align 8
  %1391 = lshr i8 %1390, 1
  %1392 = zext i8 %1391 to i16
  store i16 %1392, ptr %1387, align 4
  %1393 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1393, align 2
  %1394 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1383, ptr %1394, align 4
  %1395 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1396 = load ptr, ptr %1395, align 4
  %1397 = tail call i32 @i2c_transfer(ptr noundef %1396, ptr noundef %1387, i32 noundef 1) #8
  %1398 = icmp eq i32 %1397, 1
  %1399 = select i1 %1398, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1400

1400:                                             ; preds = %1382, %1380, %1377
  %1401 = phi i32 [ %1399, %1382 ], [ -22, %1380 ], [ -22, %1377 ]
  %1402 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1403 = icmp slt i32 %1402, 0
  br i1 %1403, label %1404, label %1409

1404:                                             ; preds = %1400
  %1405 = load i32, ptr @debug, align 4
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1427, label %1407

1407:                                             ; preds = %1404
  %1408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1427

1409:                                             ; preds = %1400
  %1410 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 3, ptr %1410, align 4
  %1411 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 -126, ptr %1411, align 1
  %1412 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 0, ptr %1412, align 2
  %1413 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 0, ptr %1413, align 1
  %1414 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1415 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1415, align 4
  %1416 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1417 = load i8, ptr %1416, align 8
  %1418 = lshr i8 %1417, 1
  %1419 = zext i8 %1418 to i16
  store i16 %1419, ptr %1414, align 4
  %1420 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1420, align 2
  %1421 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1410, ptr %1421, align 4
  %1422 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1423 = load ptr, ptr %1422, align 4
  %1424 = tail call i32 @i2c_transfer(ptr noundef %1423, ptr noundef %1414, i32 noundef 1) #8
  %1425 = icmp eq i32 %1424, 1
  %1426 = select i1 %1425, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1427

1427:                                             ; preds = %1409, %1407, %1404
  %1428 = phi i32 [ %1426, %1409 ], [ -22, %1407 ], [ -22, %1404 ]
  tail call void @msleep(i32 noundef 45) #8
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef %1373, i32 noundef 4) #8
  %1429 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1430 = icmp slt i32 %1429, 0
  br i1 %1430, label %1431, label %1436

1431:                                             ; preds = %1427
  %1432 = load i32, ptr @debug, align 4
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1454, label %1434

1434:                                             ; preds = %1431
  %1435 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1454

1436:                                             ; preds = %1427
  %1437 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 0, ptr %1437, align 4
  %1438 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 29, ptr %1438, align 1
  %1439 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 16, ptr %1439, align 2
  %1440 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 115, ptr %1440, align 1
  %1441 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1442 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1442, align 4
  %1443 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1444 = load i8, ptr %1443, align 8
  %1445 = lshr i8 %1444, 1
  %1446 = zext i8 %1445 to i16
  store i16 %1446, ptr %1441, align 4
  %1447 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1447, align 2
  %1448 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1437, ptr %1448, align 4
  %1449 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1450 = load ptr, ptr %1449, align 4
  %1451 = tail call i32 @i2c_transfer(ptr noundef %1450, ptr noundef %1441, i32 noundef 1) #8
  %1452 = icmp eq i32 %1451, 1
  %1453 = select i1 %1452, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1454

1454:                                             ; preds = %1436, %1434, %1431
  %1455 = phi i32 [ %1453, %1436 ], [ -22, %1434 ], [ -22, %1431 ]
  %1456 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 10
  %1457 = load i32, ptr %1456, align 8
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1459, label %1460

1459:                                             ; preds = %1454
  tail call void @msleep(i32 noundef 200) #8
  br label %1460

1460:                                             ; preds = %1459, %1454
  %1461 = load i32, ptr %1032, align 4
  %1462 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1463 = icmp slt i32 %1462, 0
  br i1 %1463, label %1464, label %1469

1464:                                             ; preds = %1460
  %1465 = load i32, ptr @debug, align 4
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1491, label %1467

1467:                                             ; preds = %1464
  %1468 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1491

1469:                                             ; preds = %1460
  %1470 = icmp eq i32 %1461, 0
  %1471 = icmp eq i32 %1461, 3
  %1472 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 0, ptr %1472, align 4
  %1473 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 26, ptr %1473, align 1
  %1474 = select i1 %1471, i8 -122, i8 -106
  %1475 = select i1 %1470, i8 118, i8 %1474
  %1476 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 %1475, ptr %1476, align 2
  %1477 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 -128, ptr %1477, align 1
  %1478 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1479 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1479, align 4
  %1480 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1481 = load i8, ptr %1480, align 8
  %1482 = lshr i8 %1481, 1
  %1483 = zext i8 %1482 to i16
  store i16 %1483, ptr %1478, align 4
  %1484 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1484, align 2
  %1485 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1472, ptr %1485, align 4
  %1486 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1487 = load ptr, ptr %1486, align 4
  %1488 = tail call i32 @i2c_transfer(ptr noundef %1487, ptr noundef %1478, i32 noundef 1) #8
  %1489 = icmp eq i32 %1488, 1
  %1490 = select i1 %1489, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1491

1491:                                             ; preds = %1469, %1467, %1464
  %1492 = phi i32 [ %1490, %1469 ], [ -22, %1467 ], [ -22, %1464 ]
  %1493 = load i32, ptr %1032, align 4
  %1494 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1495 = icmp slt i32 %1494, 0
  br i1 %1495, label %1496, label %1501

1496:                                             ; preds = %1491
  %1497 = load i32, ptr @debug, align 4
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1523, label %1499

1499:                                             ; preds = %1496
  %1500 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1523

1501:                                             ; preds = %1491
  %1502 = icmp eq i32 %1493, 0
  %1503 = icmp eq i32 %1493, 3
  %1504 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 0, ptr %1504, align 4
  %1505 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 32, ptr %1505, align 1
  %1506 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 0, ptr %1506, align 2
  %1507 = select i1 %1503, i8 7, i8 8
  %1508 = select i1 %1502, i8 6, i8 %1507
  %1509 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 %1508, ptr %1509, align 1
  %1510 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1511 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1511, align 4
  %1512 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1513 = load i8, ptr %1512, align 8
  %1514 = lshr i8 %1513, 1
  %1515 = zext i8 %1514 to i16
  store i16 %1515, ptr %1510, align 4
  %1516 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1516, align 2
  %1517 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1504, ptr %1517, align 4
  %1518 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1519 = load ptr, ptr %1518, align 4
  %1520 = tail call i32 @i2c_transfer(ptr noundef %1519, ptr noundef %1510, i32 noundef 1) #8
  %1521 = icmp eq i32 %1520, 1
  %1522 = select i1 %1521, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1523

1523:                                             ; preds = %1501, %1499, %1496
  %1524 = phi i32 [ %1522, %1501 ], [ -22, %1499 ], [ -22, %1496 ]
  %1525 = load i32, ptr %1032, align 4
  %1526 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1527 = icmp slt i32 %1526, 0
  br i1 %1527, label %1528, label %1533

1528:                                             ; preds = %1523
  %1529 = load i32, ptr @debug, align 4
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1555, label %1531

1531:                                             ; preds = %1528
  %1532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1555

1533:                                             ; preds = %1523
  %1534 = icmp eq i32 %1525, 0
  %1535 = icmp eq i32 %1525, 3
  %1536 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 0, ptr %1536, align 4
  %1537 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 33, ptr %1537, align 1
  %1538 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 0, ptr %1538, align 2
  %1539 = select i1 %1535, i8 7, i8 8
  %1540 = select i1 %1534, i8 6, i8 %1539
  %1541 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 %1540, ptr %1541, align 1
  %1542 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1543 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1543, align 4
  %1544 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1545 = load i8, ptr %1544, align 8
  %1546 = lshr i8 %1545, 1
  %1547 = zext i8 %1546 to i16
  store i16 %1547, ptr %1542, align 4
  %1548 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1548, align 2
  %1549 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1536, ptr %1549, align 4
  %1550 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1551 = load ptr, ptr %1550, align 4
  %1552 = tail call i32 @i2c_transfer(ptr noundef %1551, ptr noundef %1542, i32 noundef 1) #8
  %1553 = icmp eq i32 %1552, 1
  %1554 = select i1 %1553, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1555

1555:                                             ; preds = %1533, %1531, %1528
  %1556 = phi i32 [ %1554, %1533 ], [ -22, %1531 ], [ -22, %1528 ]
  %1557 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1373, i16 noundef zeroext 535) #8
  %1558 = and i16 %1557, 64
  %1559 = icmp eq i16 %1558, 0
  br i1 %1559, label %1633, label %1560

1560:                                             ; preds = %1555
  %1561 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1373, i16 noundef zeroext 436) #8
  %1562 = zext i16 %1561 to i32
  %1563 = shl nuw i32 %1562, 16
  %1564 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %1373, i16 noundef zeroext 437) #8
  %1565 = zext i16 %1564 to i32
  %1566 = or i32 %1563, %1565
  %1567 = mul i32 %1566, 160
  %1568 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 8
  %1569 = load i32, ptr %1568, align 8
  %1570 = udiv i32 %1569, 50
  %1571 = udiv i32 %1567, %1570
  store i32 %1571, ptr %1456, align 8
  %1572 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1573 = icmp slt i32 %1572, 0
  br i1 %1573, label %1574, label %1579

1574:                                             ; preds = %1560
  %1575 = load i32, ptr @debug, align 4
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1598, label %1577

1577:                                             ; preds = %1574
  %1578 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1598

1579:                                             ; preds = %1560
  %1580 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 0, ptr %1580, align 4
  %1581 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 23, ptr %1581, align 1
  %1582 = lshr i16 %1561, 8
  %1583 = trunc i16 %1582 to i8
  %1584 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 %1583, ptr %1584, align 2
  %1585 = trunc i16 %1561 to i8
  %1586 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 %1585, ptr %1586, align 1
  %1587 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1588 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1588, align 4
  %1589 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1590 = load i8, ptr %1589, align 8
  %1591 = lshr i8 %1590, 1
  %1592 = zext i8 %1591 to i16
  store i16 %1592, ptr %1587, align 4
  %1593 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1593, align 2
  %1594 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1580, ptr %1594, align 4
  %1595 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1596 = load ptr, ptr %1595, align 4
  %1597 = tail call i32 @i2c_transfer(ptr noundef %1596, ptr noundef %1587, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1598

1598:                                             ; preds = %1579, %1577, %1574
  %1599 = tail call i32 @mutex_lock_interruptible(ptr noundef %1374) #8
  %1600 = icmp slt i32 %1599, 0
  br i1 %1600, label %1601, label %1606

1601:                                             ; preds = %1598
  %1602 = load i32, ptr @debug, align 4
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1633, label %1604

1604:                                             ; preds = %1601
  %1605 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %1625

1606:                                             ; preds = %1598
  %1607 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 18
  store i8 0, ptr %1607, align 4
  %1608 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 1
  store i8 24, ptr %1608, align 1
  %1609 = lshr i16 %1564, 8
  %1610 = trunc i16 %1609 to i8
  %1611 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 2
  store i8 %1610, ptr %1611, align 2
  %1612 = trunc i16 %1564 to i8
  %1613 = getelementptr %struct.dib7000m_state, ptr %1373, i32 0, i32 18, i32 3
  store i8 %1612, ptr %1613, align 1
  %1614 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17
  %1615 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %1615, align 4
  %1616 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 2
  %1617 = load i8, ptr %1616, align 8
  %1618 = lshr i8 %1617, 1
  %1619 = zext i8 %1618 to i16
  store i16 %1619, ptr %1614, align 4
  %1620 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %1620, align 2
  %1621 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 17, i32 0, i32 3
  store ptr %1607, ptr %1621, align 4
  %1622 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 3
  %1623 = load ptr, ptr %1622, align 4
  %1624 = tail call i32 @i2c_transfer(ptr noundef %1623, ptr noundef %1614, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %1374) #8
  br label %1625

1625:                                             ; preds = %1606, %1604
  %1626 = load i32, ptr @debug, align 4
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1633, label %1628

1628:                                             ; preds = %1625
  %1629 = load i32, ptr %1456, align 8
  %1630 = getelementptr inbounds %struct.dib7000m_state, ptr %1373, i32 0, i32 11
  %1631 = load i32, ptr %1630, align 4
  %1632 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dib7000m_update_timf, i32 noundef %1629, i32 noundef %1631) #9
  br label %1633

1633:                                             ; preds = %1628, %1625, %1601, %1555
  %1634 = or i32 %1428, %1401
  %1635 = or i32 %1634, %1455
  %1636 = or i32 %1635, %1492
  %1637 = or i32 %1636, %1524
  %1638 = or i32 %1637, %1556
  %1639 = load i32, ptr %7, align 4
  %1640 = udiv i32 %1639, 1000
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef %1373, i32 noundef %1640) #8
  %1641 = tail call fastcc i32 @dib7000m_set_output_mode(ptr noundef %5, i32 noundef 5)
  br label %1642

1642:                                             ; preds = %1633, %1368, %1346, %1332
  %1643 = phi i32 [ %1638, %1633 ], [ 0, %1368 ], [ 0, %1332 ], [ 0, %1346 ]
  ret i32 %1643
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib7000m_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext 480)
  %6 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dib7000m_state, ptr %4, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = mul i32 %8, 1000
  %10 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %9, ptr %10, align 4
  %11 = zext i16 %5 to i32
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 3
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = and i32 %11, 3
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %18, ptr %19, align 4
  %20 = and i32 %11, 49152
  %21 = icmp eq i32 %20, 16384
  %22 = select i1 %21, i32 1, i32 3
  %23 = icmp ult i16 %5, 16384
  %24 = select i1 %23, i32 0, i32 %22
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %26, align 4
  %27 = lshr i32 %11, 5
  %28 = and i32 %27, 7
  %29 = add nsw i32 %28, -1
  %30 = icmp ult i32 %29, 5
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = getelementptr inbounds [5 x i32], ptr @switch.table.dib7000m_get_frontend.33, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi i32 [ %33, %31 ], [ 7, %17 ]
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = lshr i32 %11, 2
  %38 = and i32 %37, 7
  %39 = add nsw i32 %38, -1
  %40 = icmp ult i32 %39, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = getelementptr inbounds [5 x i32], ptr @switch.table.dib7000m_get_frontend.33, i32 0, i32 %39
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %43, %41 ], [ 7, %34 ]
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %45, ptr %46, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext 535)
  %6 = zext i16 %5 to i32
  %7 = lshr i32 %6, 15
  %8 = and i32 %6, 12288
  %9 = icmp eq i32 %8, 0
  %10 = or i32 %7, 2
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = lshr i32 %6, 6
  %13 = and i32 %12, 4
  %14 = or i32 %13, %11
  %15 = lshr i32 %6, 1
  %16 = and i32 %15, 8
  %17 = or i32 %16, %14
  %18 = shl nuw nsw i32 %6, 1
  %19 = and i32 %18, 16
  %20 = or i32 %19, %17
  store i32 %20, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext 526)
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext 527)
  %9 = zext i16 %8 to i32
  %10 = or i32 %7, %9
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext 390)
  %6 = xor i16 %5, -1
  store i16 %6, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib7000m_read_snr(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i16 0, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000m_read_unc_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000m_read_word(ptr noundef %4, i16 noundef zeroext 534)
  %6 = zext i16 %5 to i32
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000m_restart_agc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %11, align 4
  %12 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -126, ptr %12, align 1
  %13 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 12, ptr %13, align 2
  %14 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %16 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 8
  %19 = lshr i8 %18, 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %15, align 4
  %21 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %11, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @i2c_transfer(ptr noundef %24, ptr noundef %15, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %2) #8
  br label %26

26:                                               ; preds = %10, %8, %5
  %27 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %50

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 3, ptr %35, align 4
  %36 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 -126, ptr %36, align 1
  %37 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %37, align 2
  %38 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %40 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %42 = load i8, ptr %41, align 8
  %43 = lshr i8 %42, 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %39, align 4
  %45 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %35, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @i2c_transfer(ptr noundef %48, ptr noundef %39, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %2) #8
  br label %50

50:                                               ; preds = %34, %32, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000m_set_channel(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %6, 1000
  tail call fastcc void @dib7000m_set_bandwidth(ptr noundef %0, i32 noundef %7)
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = select i1 %10, i16 256, i16 128
  %12 = icmp eq i32 %9, 0
  %13 = select i1 %12, i16 0, i16 %11
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = trunc i16 %13 to i8
  %17 = lshr i16 %13, 8
  %18 = trunc i16 %17 to i8
  switch i32 %15, label %23 [
    i32 0, label %25
    i32 1, label %19
    i32 3, label %21
  ]

19:                                               ; preds = %3
  %20 = or i8 %16, 32
  br label %25

21:                                               ; preds = %3
  %22 = or i8 %16, 96
  br label %25

23:                                               ; preds = %3
  %24 = or i8 %16, 64
  br label %25

25:                                               ; preds = %23, %21, %19, %3
  %26 = phi i8 [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %16, %3 ]
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %31 [
    i32 0, label %33
    i32 1, label %29
  ]

29:                                               ; preds = %25
  %30 = or i8 %26, 8
  br label %33

31:                                               ; preds = %25
  %32 = or i8 %26, 16
  br label %33

33:                                               ; preds = %31, %29, %25
  %34 = phi i8 [ %32, %31 ], [ %30, %29 ], [ %26, %25 ]
  %35 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 20
  %36 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %60

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %44, align 4
  %45 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 0, ptr %45, align 1
  %46 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %18, ptr %46, align 2
  %47 = or i8 %34, 1
  %48 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %50 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %52 = load i8, ptr %51, align 8
  %53 = lshr i8 %52, 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %49, align 4
  %55 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %55, align 2
  %56 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %44, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @i2c_transfer(ptr noundef %58, ptr noundef %49, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %60

60:                                               ; preds = %43, %41, %38
  %61 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %86

68:                                               ; preds = %60
  %69 = shl i8 %2, 4
  %70 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %70, align 4
  %71 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 5, ptr %71, align 1
  %72 = lshr i8 %2, 4
  %73 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 %72, ptr %73, align 2
  %74 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %69, ptr %74, align 1
  %75 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %76 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %78 = load i8, ptr %77, align 8
  %79 = lshr i8 %78, 1
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %75, align 4
  %81 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %70, ptr %82, align 4
  %83 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @i2c_transfer(ptr noundef %84, ptr noundef %75, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %86

86:                                               ; preds = %68, %66, %63
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 1
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, -2
  %93 = icmp ult i32 %92, 6
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = getelementptr inbounds [6 x i8], ptr @switch.table.dib7000m_set_channel, i32 0, i32 %92
  %96 = load i8, ptr %95, align 1
  br label %97

97:                                               ; preds = %94, %86
  %98 = phi i8 [ %96, %94 ], [ 2, %86 ]
  %99 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 5
  %100 = load i8, ptr %99, align 8
  %101 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %131, label %106

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %131

108:                                              ; preds = %97
  %109 = select i1 %89, i8 81, i8 65
  %110 = or i8 %109, %98
  %111 = zext i8 %100 to i16
  %112 = add nuw nsw i16 %111, 267
  %113 = lshr i16 %112, 8
  %114 = trunc i16 %113 to i8
  %115 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 %114, ptr %115, align 4
  %116 = trunc i16 %112 to i8
  %117 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 %116, ptr %117, align 1
  %118 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %118, align 2
  %119 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 %110, ptr %119, align 1
  %120 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %121 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %123 = load i8, ptr %122, align 8
  %124 = lshr i8 %123, 1
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %120, align 4
  %126 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %126, align 2
  %127 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %115, ptr %127, align 4
  %128 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 @i2c_transfer(ptr noundef %129, ptr noundef %120, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %131

131:                                              ; preds = %108, %106, %103
  %132 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, ptr @debug, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %134
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %155

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %140, align 4
  %141 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 26, ptr %141, align 1
  %142 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 102, ptr %142, align 2
  %143 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 -128, ptr %143, align 1
  %144 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %145 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %145, align 4
  %146 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %147 = load i8, ptr %146, align 8
  %148 = lshr i8 %147, 1
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %144, align 4
  %150 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %150, align 2
  %151 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %140, ptr %151, align 4
  %152 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 @i2c_transfer(ptr noundef %153, ptr noundef %144, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %155

155:                                              ; preds = %139, %137, %134
  %156 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, ptr @debug, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %179, label %161

161:                                              ; preds = %158
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %179

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %164, align 4
  %165 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 29, ptr %165, align 1
  %166 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 18, ptr %166, align 2
  %167 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 115, ptr %167, align 1
  %168 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %169 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %169, align 4
  %170 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %171 = load i8, ptr %170, align 8
  %172 = lshr i8 %171, 1
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %168, align 4
  %174 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %164, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %177 = load ptr, ptr %176, align 4
  %178 = tail call i32 @i2c_transfer(ptr noundef %177, ptr noundef %168, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %179

179:                                              ; preds = %163, %161, %158
  %180 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i32, ptr @debug, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %182
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %203

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %188, align 4
  %189 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 32, ptr %189, align 1
  %190 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %190, align 2
  %191 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 3, ptr %191, align 1
  %192 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %193 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %193, align 4
  %194 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %195 = load i8, ptr %194, align 8
  %196 = lshr i8 %195, 1
  %197 = zext i8 %196 to i16
  store i16 %197, ptr %192, align 4
  %198 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %198, align 2
  %199 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %188, ptr %199, align 4
  %200 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = tail call i32 @i2c_transfer(ptr noundef %201, ptr noundef %192, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %203

203:                                              ; preds = %187, %185, %182
  %204 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i32, ptr @debug, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %227, label %209

209:                                              ; preds = %206
  %210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %227

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %212, align 4
  %213 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  store i8 33, ptr %213, align 1
  %214 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  store i8 0, ptr %214, align 2
  %215 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  store i8 5, ptr %215, align 1
  %216 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %217 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %217, align 4
  %218 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %219 = load i8, ptr %218, align 8
  %220 = lshr i8 %219, 1
  %221 = zext i8 %220 to i16
  store i16 %221, ptr %216, align 4
  %222 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %222, align 2
  %223 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  store ptr %212, ptr %223, align 4
  %224 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = tail call i32 @i2c_transfer(ptr noundef %225, ptr noundef %216, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %227

227:                                              ; preds = %211, %209, %206
  %228 = load i32, ptr %8, align 4
  %229 = icmp eq i32 %228, 3
  %230 = select i1 %229, i16 128, i16 64
  %231 = icmp eq i32 %228, 1
  %232 = select i1 %231, i16 256, i16 %230
  %233 = load i32, ptr %14, align 4
  switch i32 %233, label %240 [
    i32 1, label %234
    i32 2, label %236
    i32 3, label %238
  ]

234:                                              ; preds = %227
  %235 = shl nuw nsw i16 %232, 1
  br label %240

236:                                              ; preds = %227
  %237 = shl nuw nsw i16 %232, 2
  br label %240

238:                                              ; preds = %227
  %239 = shl nuw nsw i16 %232, 3
  br label %240

240:                                              ; preds = %238, %236, %234, %227
  %241 = phi i16 [ %239, %238 ], [ %237, %236 ], [ %235, %234 ], [ %232, %227 ]
  %242 = zext i16 %241 to i32
  %243 = mul nuw nsw i32 %242, 3
  %244 = lshr i32 %243, 1
  %245 = trunc i32 %244 to i16
  %246 = add nuw nsw i16 %245, 32
  %247 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 14
  store i16 %246, ptr %247, align 2
  %248 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 13
  %249 = load i8, ptr %248, align 4
  %250 = and i8 %249, -2
  store i8 %250, ptr %248, align 4
  %251 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 13
  %254 = load i8, ptr %253, align 4
  %255 = and i8 %254, 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %240
  %258 = load i32, ptr @debug, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dib7000m_set_diversity_in) #9
  %262 = load i8, ptr %253, align 4
  br label %263

263:                                              ; preds = %260, %257
  %264 = phi i8 [ %262, %260 ], [ %254, %257 ]
  %265 = and i8 %264, -3
  store i8 %265, ptr %253, align 4
  br label %372

266:                                              ; preds = %240
  %267 = lshr i8 %249, 1
  %268 = and i8 %267, 1
  %269 = shl nuw nsw i8 %268, 1
  %270 = and i8 %254, -3
  %271 = or i8 %270, %269
  store i8 %271, ptr %253, align 4
  %272 = icmp eq i8 %268, 0
  br i1 %272, label %372, label %273

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 5
  %275 = load i8, ptr %274, align 8
  %276 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 20
  %277 = tail call i32 @mutex_lock_interruptible(ptr noundef %276) #8
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load i32, ptr @debug, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %305, label %282

282:                                              ; preds = %279
  %283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %305

284:                                              ; preds = %273
  %285 = zext i8 %275 to i16
  %286 = add nuw nsw i16 %285, 263
  %287 = lshr i16 %286, 8
  %288 = trunc i16 %287 to i8
  %289 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 18
  store i8 %288, ptr %289, align 4
  %290 = trunc i16 %286 to i8
  %291 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 1
  store i8 %290, ptr %291, align 1
  %292 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 2
  store i8 0, ptr %292, align 2
  %293 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 3
  store i8 6, ptr %293, align 1
  %294 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17
  %295 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %295, align 4
  %296 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 2
  %297 = load i8, ptr %296, align 8
  %298 = lshr i8 %297, 1
  %299 = zext i8 %298 to i16
  store i16 %299, ptr %294, align 4
  %300 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %300, align 2
  %301 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 3
  store ptr %289, ptr %301, align 4
  %302 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 3
  %303 = load ptr, ptr %302, align 4
  %304 = tail call i32 @i2c_transfer(ptr noundef %303, ptr noundef %294, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %276) #8
  br label %305

305:                                              ; preds = %284, %282, %279
  %306 = load i8, ptr %274, align 8
  %307 = tail call i32 @mutex_lock_interruptible(ptr noundef %276) #8
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load i32, ptr @debug, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %335, label %312

312:                                              ; preds = %309
  %313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %335

314:                                              ; preds = %305
  %315 = zext i8 %306 to i16
  %316 = add nuw nsw i16 %315, 264
  %317 = lshr i16 %316, 8
  %318 = trunc i16 %317 to i8
  %319 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 18
  store i8 %318, ptr %319, align 4
  %320 = trunc i16 %316 to i8
  %321 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 1
  store i8 %320, ptr %321, align 1
  %322 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 2
  store i8 0, ptr %322, align 2
  %323 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 3
  store i8 6, ptr %323, align 1
  %324 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17
  %325 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %325, align 4
  %326 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 2
  %327 = load i8, ptr %326, align 8
  %328 = lshr i8 %327, 1
  %329 = zext i8 %328 to i16
  store i16 %329, ptr %324, align 4
  %330 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %330, align 2
  %331 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 3
  store ptr %319, ptr %331, align 4
  %332 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 3
  %333 = load ptr, ptr %332, align 4
  %334 = tail call i32 @i2c_transfer(ptr noundef %333, ptr noundef %324, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %276) #8
  br label %335

335:                                              ; preds = %314, %312, %309
  %336 = load i8, ptr %274, align 8
  %337 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 14
  %338 = load i16, ptr %337, align 2
  %339 = tail call i32 @mutex_lock_interruptible(ptr noundef %276) #8
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %335
  %342 = load i32, ptr @debug, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %464, label %344

344:                                              ; preds = %341
  %345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %464

346:                                              ; preds = %335
  %347 = shl i16 %338, 4
  %348 = zext i8 %336 to i16
  %349 = add nuw nsw i16 %348, 266
  %350 = lshr i16 %349, 8
  %351 = trunc i16 %350 to i8
  %352 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 18
  store i8 %351, ptr %352, align 4
  %353 = trunc i16 %349 to i8
  %354 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 1
  store i8 %353, ptr %354, align 1
  %355 = lshr i16 %347, 8
  %356 = trunc i16 %355 to i8
  %357 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 2
  store i8 %356, ptr %357, align 2
  %358 = trunc i16 %347 to i8
  %359 = or i8 %358, 6
  %360 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 3
  store i8 %359, ptr %360, align 1
  %361 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17
  %362 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %362, align 4
  %363 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 2
  %364 = load i8, ptr %363, align 8
  %365 = lshr i8 %364, 1
  %366 = zext i8 %365 to i16
  store i16 %366, ptr %361, align 4
  %367 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %367, align 2
  %368 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 3
  store ptr %352, ptr %368, align 4
  %369 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 3
  %370 = load ptr, ptr %369, align 4
  %371 = tail call i32 @i2c_transfer(ptr noundef %370, ptr noundef %361, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %276) #8
  br label %464

372:                                              ; preds = %266, %263
  %373 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 5
  %374 = load i8, ptr %373, align 8
  %375 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 20
  %376 = tail call i32 @mutex_lock_interruptible(ptr noundef %375) #8
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %372
  %379 = load i32, ptr @debug, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %404, label %381

381:                                              ; preds = %378
  %382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %404

383:                                              ; preds = %372
  %384 = zext i8 %374 to i16
  %385 = add nuw nsw i16 %384, 263
  %386 = lshr i16 %385, 8
  %387 = trunc i16 %386 to i8
  %388 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 18
  store i8 %387, ptr %388, align 4
  %389 = trunc i16 %385 to i8
  %390 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 1
  store i8 %389, ptr %390, align 1
  %391 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 2
  store i8 0, ptr %391, align 2
  %392 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 3
  store i8 1, ptr %392, align 1
  %393 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17
  %394 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %394, align 4
  %395 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 2
  %396 = load i8, ptr %395, align 8
  %397 = lshr i8 %396, 1
  %398 = zext i8 %397 to i16
  store i16 %398, ptr %393, align 4
  %399 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %399, align 2
  %400 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 3
  store ptr %388, ptr %400, align 4
  %401 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 3
  %402 = load ptr, ptr %401, align 4
  %403 = tail call i32 @i2c_transfer(ptr noundef %402, ptr noundef %393, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %375) #8
  br label %404

404:                                              ; preds = %383, %381, %378
  %405 = load i8, ptr %373, align 8
  %406 = tail call i32 @mutex_lock_interruptible(ptr noundef %375) #8
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %404
  %409 = load i32, ptr @debug, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %434, label %411

411:                                              ; preds = %408
  %412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %434

413:                                              ; preds = %404
  %414 = zext i8 %405 to i16
  %415 = add nuw nsw i16 %414, 264
  %416 = lshr i16 %415, 8
  %417 = trunc i16 %416 to i8
  %418 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 18
  store i8 %417, ptr %418, align 4
  %419 = trunc i16 %415 to i8
  %420 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 1
  store i8 %419, ptr %420, align 1
  %421 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 2
  store i8 0, ptr %421, align 2
  %422 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 3
  store i8 0, ptr %422, align 1
  %423 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17
  %424 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %424, align 4
  %425 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 2
  %426 = load i8, ptr %425, align 8
  %427 = lshr i8 %426, 1
  %428 = zext i8 %427 to i16
  store i16 %428, ptr %423, align 4
  %429 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %429, align 2
  %430 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 3
  store ptr %418, ptr %430, align 4
  %431 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 3
  %432 = load ptr, ptr %431, align 4
  %433 = tail call i32 @i2c_transfer(ptr noundef %432, ptr noundef %423, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %375) #8
  br label %434

434:                                              ; preds = %413, %411, %408
  %435 = load i8, ptr %373, align 8
  %436 = tail call i32 @mutex_lock_interruptible(ptr noundef %375) #8
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %434
  %439 = load i32, ptr @debug, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %464, label %441

441:                                              ; preds = %438
  %442 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %464

443:                                              ; preds = %434
  %444 = zext i8 %435 to i16
  %445 = add nuw nsw i16 %444, 266
  %446 = lshr i16 %445, 8
  %447 = trunc i16 %446 to i8
  %448 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 18
  store i8 %447, ptr %448, align 4
  %449 = trunc i16 %445 to i8
  %450 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 1
  store i8 %449, ptr %450, align 1
  %451 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 2
  store i8 0, ptr %451, align 2
  %452 = getelementptr %struct.dib7000m_state, ptr %252, i32 0, i32 18, i32 3
  store i8 0, ptr %452, align 1
  %453 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17
  %454 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 2
  store i32 4, ptr %454, align 4
  %455 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 2
  %456 = load i8, ptr %455, align 8
  %457 = lshr i8 %456, 1
  %458 = zext i8 %457 to i16
  store i16 %458, ptr %453, align 4
  %459 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 1
  store i16 0, ptr %459, align 2
  %460 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 17, i32 0, i32 3
  store ptr %448, ptr %460, align 4
  %461 = getelementptr inbounds %struct.dib7000m_state, ptr %252, i32 0, i32 3
  %462 = load ptr, ptr %461, align 4
  %463 = tail call i32 @i2c_transfer(ptr noundef %462, ptr noundef %453, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %375) #8
  br label %464

464:                                              ; preds = %443, %441, %438, %346, %344, %341
  %465 = load i32, ptr %27, align 4
  switch i32 %465, label %468 [
    i32 3, label %466
    i32 1, label %467
  ]

466:                                              ; preds = %464
  store i16 328, ptr %4, align 8
  br label %469

467:                                              ; preds = %464
  store i16 573, ptr %4, align 8
  br label %469

468:                                              ; preds = %464
  store i16 2458, ptr %4, align 8
  br label %469

469:                                              ; preds = %468, %467, %466
  %470 = phi i16 [ -82, %468 ], [ -33, %467 ], [ -16, %466 ]
  %471 = phi i16 [ 819, %468 ], [ 164, %467 ], [ 164, %466 ]
  %472 = phi i16 [ -8, %468 ], [ -16, %467 ], [ -8, %466 ]
  %473 = phi i8 [ -102, %468 ], [ 61, %467 ], [ 72, %466 ]
  %474 = phi i8 [ 9, %468 ], [ 2, %467 ], [ 1, %466 ]
  %475 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 1
  store i16 %470, ptr %475, align 2
  %476 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 2
  store i16 %471, ptr %476, align 4
  %477 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 3
  store i16 %472, ptr %477, align 2
  %478 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 18
  %479 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 1
  %480 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 2
  %481 = getelementptr %struct.dib7000m_state, ptr %0, i32 0, i32 18, i32 3
  %482 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17
  %483 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 2
  %484 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 2
  %485 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 1
  %486 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 17, i32 0, i32 3
  %487 = getelementptr inbounds %struct.dib7000m_state, ptr %0, i32 0, i32 3
  br label %488

488:                                              ; preds = %516, %469
  %489 = phi i8 [ %473, %469 ], [ %519, %516 ]
  %490 = phi i8 [ %474, %469 ], [ %521, %516 ]
  %491 = phi i32 [ 0, %469 ], [ %514, %516 ]
  %492 = load i8, ptr %99, align 8
  %493 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #8
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %500

495:                                              ; preds = %488
  %496 = load i32, ptr @debug, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %513, label %498

498:                                              ; preds = %495
  %499 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000m_write_word) #9
  br label %513

500:                                              ; preds = %488
  %501 = zext i8 %492 to i16
  %502 = trunc i32 %491 to i16
  %503 = add i16 %502, 214
  %504 = add nuw nsw i16 %503, %501
  %505 = lshr i16 %504, 8
  %506 = trunc i16 %505 to i8
  store i8 %506, ptr %478, align 4
  %507 = trunc i16 %504 to i8
  store i8 %507, ptr %479, align 1
  store i8 %490, ptr %480, align 2
  store i8 %489, ptr %481, align 1
  store i32 4, ptr %483, align 4
  %508 = load i8, ptr %484, align 8
  %509 = lshr i8 %508, 1
  %510 = zext i8 %509 to i16
  store i16 %510, ptr %482, align 4
  store i16 0, ptr %485, align 2
  store ptr %478, ptr %486, align 4
  %511 = load ptr, ptr %487, align 4
  %512 = tail call i32 @i2c_transfer(ptr noundef %511, ptr noundef %482, i32 noundef 1) #8
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %513

513:                                              ; preds = %500, %498, %495
  %514 = add nuw nsw i32 %491, 1
  %515 = icmp eq i32 %514, 4
  br i1 %515, label %522, label %516

516:                                              ; preds = %513
  %517 = getelementptr [4 x i16], ptr %4, i32 0, i32 %514
  %518 = load i16, ptr %517, align 2
  %519 = trunc i16 %518 to i8
  %520 = lshr i16 %518, 8
  %521 = trunc i16 %520 to i8
  br label %488

522:                                              ; preds = %513
  tail call fastcc void @dib7000m_set_power_mode(ptr noundef %0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
