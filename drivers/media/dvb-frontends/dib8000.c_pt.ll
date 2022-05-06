; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib8000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib8000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib8000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib8000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib8000_attach:\09\09\09\09\09"
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
%struct.linear_segments = type { i32, i32 }
%struct.per_layer_regs = type { i16, i16, i16 }
%struct.dib8000_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib8000_config = type { i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.dib8000_state = type { %struct.dib8000_config, %struct.i2c_device, %struct.dibx000_i2c_master, i16, i8, i32, ptr, i32, i32, i8, i16, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, [6 x ptr], [2 x %struct.i2c_msg], [4 x i8], [2 x i8], %struct.mutex, i8, i16, %struct.i2c_adapter, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i8, i8, i32, i8, i16, i64, i32, i32, [3 x i32] }
%struct.i2c_device = type { ptr, i8, ptr, ptr, ptr }
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
%struct.dibx000_bandwidth_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.73 }
%struct.anon.73 = type { i16, i16, i16, i16 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib8000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib8000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib8000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib8000_attach to i32), ptr @__kstrtab_dib8000_attach, ptr @__kstrtabns_dib8000_attach }, section "___ksymtab+dib8000_attach", align 4
@__UNIQUE_ID_author251 = internal constant [98 x i8] c"author=Olivier Grenie <Olivier.Grenie@parrot.com, Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [58 x i8] c"description=Driver for the DiBcom 8000 ISDB-T demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [39 x i8] c"\017dib8000: %s: could not acquire lock\0A\00", align 1
@__func__.dib8000_read_word = private unnamed_addr constant [18 x i8] c"dib8000_read_word\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\017dib8000: %s: i2c read error on %d\0A\00", align 1
@__func__.__dib8000_read_word = private unnamed_addr constant [20 x i8] c"__dib8000_read_word\00", align 1
@__func__.dib8000_write_word = private unnamed_addr constant [19 x i8] c"dib8000_write_word\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\017dib8000: %s: no valid AGC configuration found for band 0x%02x\0A\00", align 1
@__func__.dib8000_set_agc_config = private unnamed_addr constant [23 x i8] c"dib8000_set_agc_config\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"\017dib8000: %s: WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\017dib8000: %s: gpio dir: %x: gpio val: %x\0A\00", align 1
@__func__.dib8000_cfg_gpio = private unnamed_addr constant [17 x i8] c"dib8000_cfg_gpio\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\017dib8000: %s: pid filter enabled %d\0A\00", align 1
@__func__.dib8000_pid_filter_ctrl = private unnamed_addr constant [24 x i8] c"dib8000_pid_filter_ctrl\00", align 1
@lut_1000ln_mant = internal unnamed_addr constant [11 x i32] [i32 908, i32 7003, i32 7090, i32 7170, i32 7244, i32 7313, i32 7377, i32 7438, i32 7495, i32 7549, i32 7600], align 4
@__func__.dib8000_read32 = private unnamed_addr constant [15 x i8] c"dib8000_read32\00", align 1
@.str.6 = private unnamed_addr constant [88 x i8] c"\017dib8000: %s: Updating pll (prediv: old =  %d new = %d ; loopdiv : old = %d new = %d)\0A\00", align 1
@__func__.dib8000_update_pll = private unnamed_addr constant [19 x i8] c"dib8000_update_pll\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\017dib8000: %s: Old Internal = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"\017dib8000: %s: Xtal = %d , New Fmem = %d New Fdemod = %d, New Fsampling = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\017dib8000: %s: New Internal = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\017dib8000: %s: Waiting for PLL to lock\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"\017dib8000: %s: PLL Updated with prediv = %d and loopdiv = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"\017dib8000: %s: PLL: Bandwidth Change %d MHz -> %d MHz (prediv: %d->%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"\017dib8000: %s: PLL: New Setting for %d MHz Bandwidth (prediv: %d, ratio: %d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"\017dib8000: %s: PLL: Update ratio (prediv: %d, ratio: %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\017dib8000: %s: clk_cfg1: 0x%04x\0A\00", align 1
@__func__.dib8000_reset_pll = private unnamed_addr constant [18 x i8] c"dib8000_reset_pll\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"\017dib8000: %s: ifreq: %d %x, inversion: %d\0A\00", align 1
@__func__.dib8000_reset_pll_common = private unnamed_addr constant [25 x i8] c"dib8000_reset_pll_common\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\017dib8000: %s: sleep dib8096p: %d\0A\00", align 1
@__func__.dib8096p_tuner_sleep = private unnamed_addr constant [21 x i8] c"dib8096p_tuner_sleep\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\017dib8000: %s: set slave fe %p to index %i\0A\00", align 1
@__func__.dib8000_set_slave_frontend = private unnamed_addr constant [27 x i8] c"dib8000_set_slave_frontend\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"\017dib8000: %s: too many slave frontend\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\017dib8000: %s: Index %x, PID %d, OnOff %d\0A\00", align 1
@__func__.dib8000_pid_filter = private unnamed_addr constant [19 x i8] c"dib8000_pid_filter\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: Updated timing frequency: %d (default: %d)\0A\00", align 1
@__func__.dib8000_update_timf = private unnamed_addr constant [20 x i8] c"dib8000_update_timf\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"\017dib8000: %s: using default timf\0A\00", align 1
@__func__.dib8000_set_bandwidth = private unnamed_addr constant [22 x i8] c"dib8000_set_bandwidth\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\017dib8000: %s: using updated timf\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"\017dib8000: %s: dib8000_init\0A\00", align 1
@__func__.dib8000_init = private unnamed_addr constant [13 x i8] c"dib8000_init\00", align 1
@dib8000_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"&state->i2c_buffer_lock\00", align 1
@dib8000_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 8000 ISDB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr @dib8000_release, ptr null, ptr @dib8000_wakeup, ptr @dib8000_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib8000_set_frontend, ptr @dib8000_fe_get_tune_settings, ptr @dib8000_get_frontend, ptr @dib8000_read_status, ptr @dib8000_read_ber, ptr @dib8000_read_signal_strength, ptr @dib8000_read_snr, ptr @dib8000_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c"DiB8096P tuner interface\00", align 1
@dib8096p_tuner_xfer_algo = internal constant %struct.i2c_algorithm { ptr @dib8096p_tuner_xfer, ptr null, ptr null, ptr null, ptr @dib8096p_i2c_func, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"\017dib8000: %s: could not start Slow ADC\0A\00", align 1
@__func__.dib8000_wakeup = private unnamed_addr constant [15 x i8] c"dib8000_wakeup\00", align 1
@.str.28 = private unnamed_addr constant [80 x i8] c"\017dib8000: %s: powermode : 774 : %x ; 775 : %x; 776 : %x ; 900 : %x; 1280 : %x\0A\00", align 1
@__func__.dib8000_set_power_mode = private unnamed_addr constant [23 x i8] c"dib8000_set_power_mode\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: -I-\09Setting output mode for demod %p to %d\0A\00", align 1
@__func__.dib8000_set_output_mode = private unnamed_addr constant [24 x i8] c"dib8000_set_output_mode\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"\017dib8000: %s: Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"\017dib8000: %s: acquisition mode activated\0A\00", align 1
@__func__.dib8000_set_acquisition_mode = private unnamed_addr constant [29 x i8] c"dib8000_set_acquisition_mode\00", align 1
@.str.32 = private unnamed_addr constant [57 x i8] c"\017dib8000: %s: dib8000: must at least specify frequency\0A\00", align 1
@__func__.dib8000_set_frontend = private unnamed_addr constant [21 x i8] c"dib8000_set_frontend\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"\017dib8000: %s: dib8000: no bandwidth specified, set to default\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.34 = private unnamed_addr constant [45 x i8] c"\017dib8000: %s: autosearch succeeded on fe%i\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"\017dib8000: %s: Restarting frontend %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"\017dib8000: %s: tuning done with status %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: strange callback time something went wrong\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"\017dib8000: %s: set diversity input to %i\0A\00", align 1
@__func__.dib8000_set_diversity_in = private unnamed_addr constant [25 x i8] c"dib8000_set_diversity_in\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: %s mode OFF : by default Enable Mpeg INPUT\0A\00", align 1
@__func__.dib8096p_set_diversity_in = private unnamed_addr constant [26 x i8] c"dib8096p_set_diversity_in\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"\017dib8000: %s: %s ON : Enable diversity INPUT\0A\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"\017dib8000: %s: Configure DibStream Rx synchroMode = %d\0A\00", align 1
@__func__.dib8096p_cfg_DibRx = private unnamed_addr constant [19 x i8] c"dib8096p_cfg_DibRx\00", align 1
@.str.42 = private unnamed_addr constant [70 x i8] c"\017dib8000: %s: dib8096P setting output mode TS_SERIAL using Mpeg Mux\0A\00", align 1
@__func__.dib8096p_set_output_mode = private unnamed_addr constant [25 x i8] c"dib8096p_set_output_mode\00", align 1
@.str.44 = private unnamed_addr constant [78 x i8] c"\017dib8000: %s: dib8096P setting output mode TS_PARALLEL_GATED using Mpeg Mux\0A\00", align 1
@.str.46 = private unnamed_addr constant [81 x i8] c"\017dib8000: %s: dib8096P setting output mode TS_PARALLEL_CONT using Smooth block\0A\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c"\017dib8000: %s: dib8096P setting output mode TS_FIFO using Smooth block\0A\00", align 1
@.str.48 = private unnamed_addr constant [60 x i8] c"\017dib8000: %s: dib8096P setting output mode MODE_DIVERSITY\0A\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"\017dib8000: %s: dib8096P setting output mode MODE_ANALOG_ADC\0A\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"\017dib8000: %s: output_mpeg2_in_188_bytes = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"\017dib8000: %s: Enable Mpeg mux\0A\00", align 1
@__func__.dib8096p_configMpegMux = private unnamed_addr constant [23 x i8] c"dib8096p_configMpegMux\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"\017dib8000: %s: AGC split_offset: %d\0A\00", align 1
@__func__.dib8000_agc_soft_split = private unnamed_addr constant [23 x i8] c"dib8000_agc_soft_split\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"\017dib8000: %s: Tuning channel on %s search mode\0A\00", align 1
@__func__.dib8000_tune = private unnamed_addr constant [13 x i8] c"dib8000_tune\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"\017dib8000: %s: layer%i: time interleaver = %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [110 x i8] c"\017dib8000: %s: Deeper interleaver mode = %d on layer %d : timeout mult factor = %d => will use timeout = %ld\0A\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"\017dib8000: %s: ISDB-T layer locks: Layer A %s, Layer B %s, Layer C %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"NOT LOCKED\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"not enabled\00", align 1
@.str.62 = private unnamed_addr constant [90 x i8] c"\017dib8000: %s: Not all ISDB-T layers locked in %d ms: Layer A %s, Layer B %s, Layer C %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"\017dib8000: %s: init sdram\0A\00", align 1
@__func__.dib8090p_init_sdram = private unnamed_addr constant [20 x i8] c"dib8090p_init_sdram\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"\017dib8000: %s: transmission mode auto\0A\00", align 1
@__func__.is_manual_mode = private unnamed_addr constant [15 x i8] c"is_manual_mode\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"\017dib8000: %s: guard interval auto\0A\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"\017dib8000: %s: no layer modulation specified\0A\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: layer %c has either modulation or FEC auto\0A\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"\017dib8000: %s: number of segments is invalid\0A\00", align 1
@.str.69 = private unnamed_addr constant [99 x i8] c"\017dib8000: %s: %dkhz tuner offset (frequency = %dHz & current_rf = %dHz) total_dds_offset_hz = %d\0A\00", align 1
@__func__.dib8000_set_frequency_offset = private unnamed_addr constant [29 x i8] c"dib8000_set_frequency_offset\00", align 1
@.str.70 = private unnamed_addr constant [58 x i8] c"\017dib8000: %s: setting a DDS frequency offset of %c%dkHz\0A\00", align 1
@__func__.dib8000_set_dds = private unnamed_addr constant [16 x i8] c"dib8000_set_dds\00", align 1
@LUT_isdbt_symbol_duration = internal unnamed_addr constant [4 x i16] [i16 26, i16 101, i16 63, i16 0], align 2
@.str.71 = private unnamed_addr constant [47 x i8] c"\017dib8000: %s: Using list for autosearch : %d\0A\00", align 1
@__func__.dib8000_autosearch_start = private unnamed_addr constant [25 x i8] c"dib8000_autosearch_start\00", align 1
@.str.72 = private unnamed_addr constant [73 x i8] c"\017dib8000: %s: dib8000_autosearch_irq: max correlation result available\0A\00", align 1
@__func__.dib8000_autosearch_irq = private unnamed_addr constant [23 x i8] c"dib8000_autosearch_irq\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"\017dib8000: %s: dib8000_autosearch_irq failed\0A\00", align 1
@.str.74 = private unnamed_addr constant [49 x i8] c"\017dib8000: %s: dib8000_autosearch_irq succeeded\0A\00", align 1
@permu_seg = internal unnamed_addr constant [13 x i8] c"\06\05\07\04\08\03\09\02\0A\01\0B\00\0C", align 1
@ana_fe_coeff_3seg = internal constant [24 x i16] [i16 81, i16 80, i16 78, i16 74, i16 68, i16 61, i16 54, i16 45, i16 37, i16 28, i16 19, i16 11, i16 4, i16 1022, i16 1017, i16 1013, i16 1010, i16 1008, i16 1008, i16 1008, i16 1008, i16 1010, i16 1014, i16 1017], align 2
@ana_fe_coeff_1seg = internal constant [24 x i16] [i16 249, i16 226, i16 164, i16 82, i16 5, i16 981, i16 970, i16 988, i16 1018, i16 20, i16 31, i16 26, i16 8, i16 1012, i16 1000, i16 1018, i16 1012, i16 8, i16 15, i16 14, i16 9, i16 3, i16 1017, i16 1003], align 2
@adp_Q64 = internal unnamed_addr constant [4 x i16] [i16 328, i16 -16, i16 164, i16 -8], align 2
@adp_Q16 = internal unnamed_addr constant [4 x i16] [i16 573, i16 -33, i16 164, i16 -16], align 2
@adp_Qdefault = internal unnamed_addr constant [4 x i16] [i16 2458, i16 -82, i16 819, i16 -8], align 2
@adc_target_16dB = internal unnamed_addr constant [11 x i16] [i16 7250, i16 7238, i16 7264, i16 7309, i16 7338, i16 7382, i16 7427, i16 7456, i16 7500, i16 7544, i16 7574], align 2
@coff_thres_1seg = internal unnamed_addr constant [3 x i16] [i16 300, i16 150, i16 80], align 2
@coff_thres_3seg = internal unnamed_addr constant [3 x i16] [i16 350, i16 300, i16 250], align 2
@ana_fe_coeff_13seg = internal constant [24 x i16] [i16 396, i16 305, i16 105, i16 -51, i16 -77, i16 -12, i16 41, i16 31, i16 -11, i16 -30, i16 -11, i16 14, i16 15, i16 -2, i16 -13, i16 -7, i16 5, i16 8, i16 1, i16 -6, i16 -7, i16 -3, i16 0, i16 1], align 2
@coeff_2k_sb_1seg_dqpsk = internal unnamed_addr constant [8 x i16] [i16 24618, i16 23843, i16 19053, i16 24618, i16 29449, i16 25090, i16 16620, i16 29449], align 2
@coeff_2k_sb_1seg = internal unnamed_addr constant [8 x i16] [i16 22155, i16 21857, i16 16617, i16 22155, i16 31, i16 31, i16 31, i16 31], align 2
@coeff_2k_sb_3seg_0dqpsk_1dqpsk = internal unnamed_addr constant [8 x i16] [i16 26640, i16 29189, i16 28818, i16 26640, i16 -29777, i16 29188, i16 25841, i16 -29777], align 2
@coeff_2k_sb_3seg_0dqpsk = internal unnamed_addr constant [8 x i16] [i16 19916, i16 30116, i16 25488, i16 19916, i16 31436, i16 16610, i16 18318, i16 31436], align 2
@coeff_2k_sb_3seg_1dqpsk = internal unnamed_addr constant [8 x i16] [i16 22388, i16 19428, i16 30227, i16 22388, i16 -23027, i16 20483, i16 27730, i16 -23027], align 2
@coeff_2k_sb_3seg = internal unnamed_addr constant [8 x i16] [i16 21260, i16 29603, i16 30000, i16 21260, i16 -19510, i16 22305, i16 26766, i16 -19510], align 2
@coeff_4k_sb_1seg_dqpsk = internal unnamed_addr constant [8 x i16] [i16 -30546, i16 21988, i16 26192, i16 -30546, i16 -29491, i16 24003, i16 21295, i16 -29491], align 2
@coeff_4k_sb_1seg = internal unnamed_addr constant [8 x i16] [i16 20429, i16 21858, i16 20429, i16 20429, i16 -20950, i16 16544, i16 22349, i16 -20950], align 2
@coeff_4k_sb_3seg_0dqpsk_1dqpsk = internal unnamed_addr constant [8 x i16] [i16 -22604, i16 29126, i16 28470, i16 -22604, i16 -30637, i16 31781, i16 16756, i16 -30637], align 2
@coeff_4k_sb_3seg_0dqpsk = internal unnamed_addr constant [8 x i16] [i16 -23117, i16 29125, i16 24884, i16 -23117, i16 -18161, i16 17507, i16 22290, i16 -18161], align 2
@coeff_4k_sb_3seg_1dqpsk = internal unnamed_addr constant [8 x i16] [i16 -30059, i16 19429, i16 29302, i16 -30059, i16 -27117, i16 21860, i16 17396, i16 -27117], align 2
@coeff_4k_sb_3seg = internal unnamed_addr constant [8 x i16] [i16 19602, i16 29124, i16 27668, i16 19602, i16 -27789, i16 21858, i16 27826, i16 -27789], align 2
@coeff_8k_sb_1seg_dqpsk = internal unnamed_addr constant [8 x i16] [i16 -26702, i16 21893, i16 23540, i16 -26702, i16 -19120, i16 24996, i16 23667, i16 -19120], align 2
@coeff_8k_sb_1seg = internal unnamed_addr constant [8 x i16] [i16 21551, i16 21859, i16 25874, i16 21551, i16 18735, i16 16385, i16 24975, i16 18735], align 2
@coeff_8k_sb_3seg_0dqpsk_1dqpsk = internal unnamed_addr constant [8 x i16] [i16 27639, i16 29767, i16 28121, i16 27639, i16 20, i16 16677, i16 31384, i16 20], align 2
@coeff_8k_sb_3seg_0dqpsk = internal unnamed_addr constant [8 x i16] [i16 -29545, i16 29126, i16 24791, i16 -29545, i16 -28043, i16 18084, i16 17717, i16 -28043], align 2
@coeff_8k_sb_3seg_1dqpsk = internal unnamed_addr constant [8 x i16] [i16 -29447, i16 19430, i16 28217, i16 -29447, i16 -29452, i16 22821, i16 32600, i16 -29452], align 2
@coeff_8k_sb_3seg = internal unnamed_addr constant [8 x i16] [i16 16468, i16 29125, i16 27575, i16 16468, i16 22100, i16 21859, i16 21205, i16 22100], align 2
@lut_prbs_2k = internal unnamed_addr constant [13 x i16] [i16 1059, i16 9, i16 1479, i16 1958, i16 984, i16 1319, i16 2047, i16 1947, i16 982, i16 930, i16 1339, i16 756, i16 531], align 2
@lut_prbs_4k = internal unnamed_addr constant [13 x i16] [i16 520, i16 195, i16 1977, i16 1059, i16 1479, i16 984, i16 2047, i16 982, i16 1339, i16 531, i16 41, i16 208, i16 1166], align 2
@lut_prbs_8k = internal unnamed_addr constant [13 x i16] [i16 1856, i16 105, i16 2013, i16 520, i16 1977, i16 1479, i16 2047, i16 1339, i16 41, i16 1166, i16 1220, i16 871, i16 1668], align 2
@.str.75 = private unnamed_addr constant [75 x i8] c"\017dib8000: %s: sub_channel_prbs_group = %d , subchannel =%d prbs = 0x%04x\0A\00", align 1
@__func__.dib8000_get_init_prbs = private unnamed_addr constant [22 x i8] c"dib8000_get_init_prbs\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"\017dib8000: %s: SET MPEG ON DIBSTREAM TX\0A\00", align 1
@__func__.dib8096p_setDibTxMux = private unnamed_addr constant [21 x i8] c"dib8096p_setDibTxMux\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"\017dib8000: %s: SET DIV_OUT ON DIBSTREAM TX\0A\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"\017dib8000: %s: SET ADC_OUT ON DIBSTREAM TX\0A\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"\017dib8000: %s: Configure DibStream Tx\0A\00", align 1
@__func__.dib8096p_cfg_DibTx = private unnamed_addr constant [19 x i8] c"dib8096p_cfg_DibTx\00", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"\017dib8000: %s: SET DEM OUT OLD INTERF ON HOST BUS\0A\00", align 1
@__func__.dib8096p_setHostBusMux = private unnamed_addr constant [23 x i8] c"dib8096p_setHostBusMux\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"\017dib8000: %s: SET DIBSTREAM TX ON HOST BUS\0A\00", align 1
@.str.82 = private unnamed_addr constant [41 x i8] c"\017dib8000: %s: SET MPEG MUX ON HOST BUS\0A\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"\017dib8000: %s: dib8000_get_frontend: TMCC lock\0A\00", align 1
@__func__.dib8000_get_frontend = private unnamed_addr constant [21 x i8] c"dib8000_get_frontend\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"\017dib8000: %s: TMCC lock on the slave%i\0A\00", align 1
@.str.85 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: dib8000_get_frontend: transmission mode 2K\0A\00", align 1
@.str.86 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: dib8000_get_frontend: transmission mode 4K\0A\00", align 1
@.str.87 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: dib8000_get_frontend: transmission mode 8K\0A\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"\017dib8000: %s: dib8000_get_frontend: Guard Interval = 1/32\0A\00", align 1
@.str.89 = private unnamed_addr constant [60 x i8] c"\017dib8000: %s: dib8000_get_frontend: Guard Interval = 1/16\0A\00", align 1
@.str.90 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: dib8000_get_frontend: Guard Interval = 1/8\0A\00", align 1
@.str.91 = private unnamed_addr constant [59 x i8] c"\017dib8000: %s: dib8000_get_frontend: Guard Interval = 1/4\0A\00", align 1
@.str.92 = private unnamed_addr constant [61 x i8] c"\017dib8000: %s: dib8000_get_frontend: partial_reception = %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d segments = %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [63 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d time_intlv = %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [63 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d Code Rate = 1/2\0A\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d Code Rate = 2/3\0A\00", align 1
@.str.97 = private unnamed_addr constant [63 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d Code Rate = 3/4\0A\00", align 1
@.str.98 = private unnamed_addr constant [63 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d Code Rate = 5/6\0A\00", align 1
@.str.99 = private unnamed_addr constant [63 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d Code Rate = 7/8\0A\00", align 1
@.str.100 = private unnamed_addr constant [53 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d DQPSK\0A\00", align 1
@.str.101 = private unnamed_addr constant [52 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d QPSK\0A\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d QAM16\0A\00", align 1
@.str.103 = private unnamed_addr constant [53 x i8] c"\017dib8000: %s: dib8000_get_frontend: Layer %d QAM64\0A\00", align 1
@strength_to_db_table = internal unnamed_addr constant [31 x %struct.linear_segments] [%struct.linear_segments { i32 55953, i32 108500 }, %struct.linear_segments { i32 55394, i32 108000 }, %struct.linear_segments { i32 53834, i32 107000 }, %struct.linear_segments { i32 52863, i32 106000 }, %struct.linear_segments { i32 52239, i32 105000 }, %struct.linear_segments { i32 52012, i32 104000 }, %struct.linear_segments { i32 51803, i32 103000 }, %struct.linear_segments { i32 51566, i32 102000 }, %struct.linear_segments { i32 51356, i32 101000 }, %struct.linear_segments { i32 51112, i32 100000 }, %struct.linear_segments { i32 50869, i32 99000 }, %struct.linear_segments { i32 50600, i32 98000 }, %struct.linear_segments { i32 50363, i32 97000 }, %struct.linear_segments { i32 50117, i32 96000 }, %struct.linear_segments { i32 49889, i32 95000 }, %struct.linear_segments { i32 49680, i32 94000 }, %struct.linear_segments { i32 49493, i32 93000 }, %struct.linear_segments { i32 49302, i32 92000 }, %struct.linear_segments { i32 48929, i32 91000 }, %struct.linear_segments { i32 48416, i32 90000 }, %struct.linear_segments { i32 48035, i32 89000 }, %struct.linear_segments { i32 47593, i32 88000 }, %struct.linear_segments { i32 47282, i32 87000 }, %struct.linear_segments { i32 46953, i32 86000 }, %struct.linear_segments { i32 46698, i32 85000 }, %struct.linear_segments { i32 45617, i32 84000 }, %struct.linear_segments { i32 44773, i32 83000 }, %struct.linear_segments { i32 43845, i32 82000 }, %struct.linear_segments { i32 43020, i32 81000 }, %struct.linear_segments { i32 42010, i32 80000 }, %struct.linear_segments zeroinitializer], align 4
@.str.104 = private unnamed_addr constant [58 x i8] c"\017dib8000: %s: Next all layers stats available in %u us.\0A\00", align 1
@__func__.dib8000_get_stats = private unnamed_addr constant [18 x i8] c"dib8000_get_stats\00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"\017dib8000: %s: Next layer %c  stats will be available in %u us\0A\00", align 1
@per_layer_regs = internal unnamed_addr constant [3 x %struct.per_layer_regs] [%struct.per_layer_regs { i16 554, i16 560, i16 562 }, %struct.per_layer_regs { i16 555, i16 576, i16 578 }, %struct.per_layer_regs { i16 556, i16 581, i16 583 }], align 2
@.str.106 = private unnamed_addr constant [44 x i8] c"\017dib8000: %s: wrong Vendor ID (read=0x%x)\0A\00", align 1
@__func__.dib8000_identify = private unnamed_addr constant [17 x i8] c"dib8000_identify\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"\017dib8000: %s: wrong Device ID (%x)\0A\00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"\017dib8000: %s: found DiB8000A\0A\00", align 1
@.str.109 = private unnamed_addr constant [31 x i8] c"\017dib8000: %s: found DiB8000B\0A\00", align 1
@.str.110 = private unnamed_addr constant [31 x i8] c"\017dib8000: %s: found DiB8000C\0A\00", align 1
@.str.111 = private unnamed_addr constant [31 x i8] c"\017dib8000: %s: found DiB8096P\0A\00", align 1
@__func__.dib8000_i2c_read16 = private unnamed_addr constant [19 x i8] c"dib8000_i2c_read16\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"\017dib8000: %s: Tuner ITF: write busy (overflow)\0A\00", align 1
@__func__.dib8096p_tuner_write_serpar = private unnamed_addr constant [28 x i8] c"dib8096p_tuner_write_serpar\00", align 1
@.str.113 = private unnamed_addr constant [47 x i8] c"\017dib8000: %s: TunerITF: read busy (overflow)\0A\00", align 1
@__func__.dib8096p_tuner_read_serpar = private unnamed_addr constant [27 x i8] c"dib8096p_tuner_read_serpar\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"\017dib8000: %s: TunerITF: read busy (empty)\0A\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c"\017dib8000: %s: error : dib8000 MA not supported\0A\00", align 1
@__func__.dib8000_reset = private unnamed_addr constant [14 x i8] c"dib8000_reset\00", align 1
@.str.116 = private unnamed_addr constant [106 x i8] c"\017dib8000: %s: using standard PAD-drive-settings, please adjust settings in config-struct to be optimal.\0A\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"\017dib8000: %s: OUTPUT_MODE could not be reset.\0A\00", align 1
@dib8000_defaults = internal unnamed_addr constant [89 x i16] [i16 3, i16 7, i16 4, i16 1024, i16 2068, i16 12, i16 11, i16 27, i16 30528, i16 91, i16 -29312, i16 457, i16 -15488, i16 0, i16 128, i16 0, i16 144, i16 1, i16 -11072, i16 11, i16 80, i16 7250, i16 7238, i16 7264, i16 7309, i16 7338, i16 7382, i16 7427, i16 7456, i16 7500, i16 7544, i16 7574, i16 4, i16 108, i16 0, i16 0, i16 0, i16 0, i16 1, i16 175, i16 1040, i16 1, i16 179, i16 8192, i16 6, i16 181, i16 10240, i16 10240, i16 10240, i16 10240, i16 10240, i16 10240, i16 2, i16 193, i16 1638, i16 0, i16 2, i16 205, i16 8207, i16 15, i16 5, i16 215, i16 573, i16 164, i16 164, i16 32752, i16 15564, i16 1, i16 230, i16 0, i16 1, i16 263, i16 2048, i16 1, i16 268, i16 1063, i16 1, i16 270, i16 1, i16 1, i16 285, i16 32, i16 1, i16 299, i16 98, i16 1, i16 338, i16 5217, i16 0], align 2
@.str.119 = private unnamed_addr constant [38 x i8] c"\017dib8000: %s: %s: not enough memory\0A\00", align 1
@__func__.dib8000_i2c_enumeration = private unnamed_addr constant [24 x i8] c"dib8000_i2c_enumeration\00", align 1
@dib8000_i2c_enumeration.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"client.i2c_buffer_lock\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"\017dib8000: %s: #%d: not identified\0A\00", align 1
@.str.122 = private unnamed_addr constant [56 x i8] c"\017dib8000: %s: IC %d initialized (to i2c_address 0x%x)\0A\00", align 1
@__func__.dib8000_i2c_write16 = private unnamed_addr constant [20 x i8] c"dib8000_i2c_write16\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_dib8000_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.dib8000_set_isdbt_common_channel = private unnamed_addr constant [5 x i32] [i32 8, i32 16, i32 24, i32 56, i32 40], align 4
@switch.table.dib8000_get_time_us = private unnamed_addr constant [3 x i32] [i32 16, i32 8, i32 4], align 4
@switch.table.dib8000_get_time_us.123 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], align 4
@switch.table.dib8000_get_time_us.124 = private unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 4, i32 8, i32 6], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @dib8000_attach(ptr noundef writeonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 3
  store ptr @dib8000_pwm_agc_reset, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 7
  store ptr @dib8090p_get_dc_power, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 2
  store ptr @dib8000_set_gpio, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 12
  store ptr @dib8000_get_slave_frontend, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 10
  store ptr @dib8000_set_tune_state, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 15
  store ptr @dib8000_pid_filter_ctrl, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 6
  store ptr @dib8000_get_adc_power, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 1
  store ptr @dib8000_update_pll, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 5
  store ptr @dib8096p_tuner_sleep, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 9
  store ptr @dib8000_get_tune_state, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 4
  store ptr @dib8096p_get_i2c_tuner, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 11
  store ptr @dib8000_set_slave_frontend, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 16
  store ptr @dib8000_pid_filter, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 8
  store ptr @dib8000_ctrl_timf, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 17
  store ptr @dib8000_init, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 14
  store ptr @dib8000_get_i2c_master, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dib8000_ops, ptr %0, i32 0, i32 13
  store ptr @dib8000_i2c_enumeration, ptr %20, align 4
  store ptr @dib8000_set_wbd_ref, ptr %0, align 4
  br label %21

21:                                               ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib8000_pwm_agc_reset(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %3, i32 noundef 2)
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 170001000
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = icmp ult i32 %6, 250001000
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = icmp ult i32 %6, 863001000
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %6, 2000001000
  %14 = select i1 %13, i8 1, i8 8
  br label %15

15:                                               ; preds = %12, %10, %8, %1
  %16 = phi i8 [ 32, %1 ], [ 4, %8 ], [ %14, %12 ], [ 2, %10 ]
  %17 = tail call fastcc i32 @dib8000_set_agc_config(ptr noundef %3, i8 noundef zeroext %16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8090p_get_dc_power(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  switch i8 %1, label %10 [
    i8 1, label %6
    i8 0, label %5
  ]

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i16 [ 404, %5 ], [ 403, %2 ]
  %8 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext %7)
  %9 = zext i16 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  %14 = add nsw i32 %11, -1024
  %15 = select i1 %13, i32 %11, i32 %14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_set_gpio(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1029) #14
  %8 = getelementptr inbounds %struct.dib8000_config, ptr %6, i32 0, i32 7
  %9 = zext i8 %1 to i32
  %10 = shl nuw i32 1, %9
  %11 = trunc i32 %10 to i16
  %12 = xor i16 %11, -1
  %13 = and i16 %7, %12
  %14 = and i8 %2, 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, %9
  %17 = trunc i32 %16 to i16
  %18 = or i16 %13, %17
  store i16 %18, ptr %8, align 4
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 25
  %20 = tail call i32 @mutex_lock_interruptible(ptr noundef %19) #14
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %44

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 4, ptr %28, align 8
  %29 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 5, ptr %29, align 1
  %30 = lshr i16 %18, 8
  %31 = trunc i16 %30 to i8
  %32 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %31, ptr %32, align 2
  %33 = trunc i16 %18 to i8
  %34 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %35, align 8
  %36 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = lshr i8 %38, 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %35, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %28, ptr %41, align 8
  %42 = load ptr, ptr %36, align 4
  %43 = tail call i32 @i2c_transfer(ptr noundef %42, ptr noundef %35, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %19) #14
  br label %44

44:                                               ; preds = %27, %25, %22
  %45 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1030) #14
  %46 = getelementptr inbounds %struct.dib8000_config, ptr %6, i32 0, i32 8
  %47 = and i16 %45, %12
  %48 = and i8 %3, 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, %9
  %51 = trunc i32 %50 to i16
  %52 = or i16 %47, %51
  store i16 %52, ptr %46, align 2
  %53 = tail call i32 @mutex_lock_interruptible(ptr noundef %19) #14
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %55
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %77

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 4, ptr %61, align 8
  %62 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 6, ptr %62, align 1
  %63 = lshr i16 %52, 8
  %64 = trunc i16 %63 to i8
  %65 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %64, ptr %65, align 2
  %66 = trunc i16 %52 to i8
  %67 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %68, align 8
  %69 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %70 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = lshr i8 %71, 1
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %68, align 8
  %74 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %61, ptr %74, align 8
  %75 = load ptr, ptr %69, align 4
  %76 = tail call i32 @i2c_transfer(ptr noundef %75, ptr noundef %68, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %19) #14
  br label %77

77:                                               ; preds = %60, %58
  %78 = load i32, ptr @debug, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i16, ptr %8, align 4
  %82 = zext i16 %81 to i32
  %83 = load i16, ptr %46, align 2
  %84 = zext i16 %83 to i32
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dib8000_cfg_gpio, i32 noundef %82, i32 noundef %84) #15
  br label %86

86:                                               ; preds = %80, %77, %55
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @dib8000_get_slave_frontend(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp sgt i32 %1, 5
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 21, i32 %1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi ptr [ %8, %4 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dib8000_set_tune_state(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 19
  store i32 %1, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_pid_filter_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 299)
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = zext i8 %1 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dib8000_pid_filter_ctrl, i32 noundef %9) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %44

20:                                               ; preds = %11
  %21 = zext i8 %1 to i16
  %22 = shl nuw nsw i16 %21, 4
  %23 = and i16 %22, 16
  %24 = and i16 %5, 239
  %25 = or i16 %24, %23
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %26, align 8
  %27 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 43, ptr %27, align 1
  %28 = lshr i16 %5, 8
  %29 = trunc i16 %28 to i8
  %30 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %29, ptr %30, align 2
  %31 = trunc i16 %25 to i8
  %32 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = lshr i8 %36, 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %33, align 8
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %26, ptr %39, align 8
  %40 = load ptr, ptr %34, align 4
  %41 = tail call i32 @i2c_transfer(ptr noundef %40, ptr noundef %33, i32 noundef 1) #14
  %42 = icmp eq i32 %41, 1
  %43 = select i1 %42, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %44

44:                                               ; preds = %20, %18, %15
  %45 = phi i32 [ %43, %20 ], [ -22, %18 ], [ -22, %15 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_get_adc_power(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib8000_read32(ptr noundef %4, i16 noundef zeroext 384)
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = icmp ult i32 %5, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %11 = phi i32 [ %12, %9 ], [ %5, %7 ]
  %12 = lshr i32 %11, 1
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp ult i32 %11, 4
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %7
  %16 = phi i32 [ 0, %7 ], [ %13, %9 ]
  %17 = mul i32 %5, 1000
  %18 = shl nuw i32 1, %16
  %19 = sdiv i32 %17, %18
  %20 = add i32 %19, -1000
  %21 = udiv i32 %20, 100
  %22 = and i32 %21, 255
  %23 = getelementptr [11 x i32], ptr @lut_1000ln_mant, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %16, 693
  %26 = add i32 %25, 16763356
  %27 = add i32 %26, %24
  %28 = shl i32 %27, 8
  %29 = add i32 %28, -1768448
  %30 = sdiv i32 %29, 1000
  br label %31

31:                                               ; preds = %15, %2
  %32 = phi i32 [ %30, %15 ], [ %5, %2 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_update_pll(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1856)
  %8 = getelementptr inbounds %struct.dib8000_config, ptr %6, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = lshr i16 %7, 6
  %13 = trunc i16 %12 to i8
  %14 = and i8 %13, 63
  %15 = icmp eq ptr %1, null
  br i1 %15, label %362, label %16

16:                                               ; preds = %4
  %17 = and i16 %7, 63
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  %22 = icmp eq i16 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, %14
  br i1 %26, label %362, label %27

27:                                               ; preds = %23, %16
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = zext i8 %20 to i32
  %32 = zext i8 %14 to i32
  %33 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %18, i32 noundef %31, i32 noundef %32, i32 noundef %35) #15
  br label %37

37:                                               ; preds = %30, %27
  %38 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 17
  %39 = load i16, ptr %38, align 2
  %40 = icmp eq i16 %39, -32624
  br i1 %40, label %41, label %234

41:                                               ; preds = %37
  %42 = and i16 %7, -4096
  %43 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1857)
  %44 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 25
  %45 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, ptr @debug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %70

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 7, ptr %53, align 8
  %54 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 65, ptr %54, align 1
  %55 = lshr i16 %43, 8
  %56 = trunc i16 %55 to i8
  %57 = and i8 %56, 127
  %58 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %57, ptr %58, align 2
  %59 = trunc i16 %43 to i8
  %60 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %61, align 8
  %62 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %63 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = lshr i8 %64, 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %61, align 8
  %67 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %53, ptr %67, align 8
  %68 = load ptr, ptr %62, align 4
  %69 = tail call i32 @i2c_transfer(ptr noundef %68, ptr noundef %61, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %70

70:                                               ; preds = %52, %50, %47
  %71 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = load i8, ptr %19, align 4
  %74 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, ptr @debug, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %104

81:                                               ; preds = %70
  %82 = and i8 %72, 63
  %83 = zext i8 %82 to i16
  %84 = shl nuw nsw i16 %83, 6
  %85 = or i16 %84, %42
  %86 = and i8 %73, 63
  %87 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 7, ptr %87, align 8
  %88 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 64, ptr %88, align 1
  %89 = lshr i16 %85, 8
  %90 = trunc i16 %89 to i8
  %91 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %90, ptr %91, align 2
  %92 = trunc i16 %84 to i8
  %93 = or i8 %86, %92
  %94 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %93, ptr %94, align 1
  %95 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %95, align 8
  %96 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %97 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %98 = load i8, ptr %97, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %95, align 8
  %101 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %87, ptr %101, align 8
  %102 = load ptr, ptr %96, align 4
  %103 = tail call i32 @i2c_transfer(ptr noundef %102, ptr noundef %95, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %104

104:                                              ; preds = %81, %79, %76
  %105 = tail call fastcc i32 @dib8000_read32(ptr noundef %6, i16 noundef zeroext 23)
  %106 = udiv i32 %105, 1000
  %107 = load i32, ptr @debug, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %106) #15
  %111 = load i32, ptr @debug, align 4
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %109, %104
  %114 = phi i1 [ %112, %109 ], [ true, %104 ]
  %115 = zext i8 %14 to i32
  %116 = udiv i32 %106, %115
  %117 = shl nuw nsw i32 %116, 1
  %118 = mul nuw nsw i32 %117, %18
  %119 = load i8, ptr %19, align 4
  %120 = zext i8 %119 to i32
  %121 = udiv i32 %118, %120
  %122 = mul i32 %121, 1000
  %123 = load i8, ptr %71, align 1
  %124 = zext i8 %123 to i32
  %125 = mul i32 %122, %124
  br i1 %114, label %135, label %126

126:                                              ; preds = %113
  %127 = udiv i32 %125, 1000
  %128 = udiv i32 %125, 2000
  %129 = udiv i32 %125, 8000
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %118, i32 noundef %127, i32 noundef %128, i32 noundef %129) #15
  %131 = load i32, ptr @debug, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %126
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %125) #15
  br label %135

135:                                              ; preds = %133, %126, %113
  %136 = lshr exact i32 %125, 1
  %137 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32, ptr @debug, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %139
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %162

144:                                              ; preds = %135
  %145 = lshr i32 %125, 17
  %146 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 0, ptr %146, align 8
  %147 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 23, ptr %147, align 1
  %148 = lshr i32 %125, 25
  %149 = trunc i32 %148 to i8
  %150 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %149, ptr %150, align 2
  %151 = trunc i32 %145 to i8
  %152 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %151, ptr %152, align 1
  %153 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %153, align 8
  %154 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %155 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %153, align 8
  %159 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %146, ptr %159, align 8
  %160 = load ptr, ptr %154, align 4
  %161 = tail call i32 @i2c_transfer(ptr noundef %160, ptr noundef %153, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %162

162:                                              ; preds = %144, %142, %139
  %163 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, ptr @debug, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %165
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %187

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 0, ptr %171, align 8
  %172 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 24, ptr %172, align 1
  %173 = lshr i32 %125, 9
  %174 = trunc i32 %173 to i8
  %175 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %174, ptr %175, align 2
  %176 = trunc i32 %136 to i8
  %177 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %176, ptr %177, align 1
  %178 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %178, align 8
  %179 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %180 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %181 = load i8, ptr %180, align 4
  %182 = lshr i8 %181, 1
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %178, align 8
  %184 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %171, ptr %184, align 8
  %185 = load ptr, ptr %179, align 4
  %186 = tail call i32 @i2c_transfer(ptr noundef %185, ptr noundef %178, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %187

187:                                              ; preds = %170, %168, %165
  %188 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, ptr @debug, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %213, label %193

193:                                              ; preds = %190
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %213

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 7, ptr %196, align 8
  %197 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 65, ptr %197, align 1
  %198 = lshr i16 %43, 8
  %199 = trunc i16 %198 to i8
  %200 = or i8 %199, -128
  %201 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %200, ptr %201, align 2
  %202 = trunc i16 %43 to i8
  %203 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %202, ptr %203, align 1
  %204 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %204, align 8
  %205 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %206 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %207 = load i8, ptr %206, align 4
  %208 = lshr i8 %207, 1
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %204, align 8
  %210 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %196, ptr %210, align 8
  %211 = load ptr, ptr %205, align 4
  %212 = tail call i32 @i2c_transfer(ptr noundef %211, ptr noundef %204, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %213

213:                                              ; preds = %195, %193, %190
  %214 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1856)
  %215 = icmp slt i16 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %221, %213
  %217 = load i32, ptr @debug, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dib8000_update_pll) #15
  br label %221

221:                                              ; preds = %219, %216
  %222 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1856)
  %223 = icmp slt i16 %222, 0
  br i1 %223, label %224, label %216

224:                                              ; preds = %221, %213
  %225 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 1856)
  %226 = load i32, ptr @debug, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %362, label %228

228:                                              ; preds = %224
  %229 = zext i16 %225 to i32
  %230 = and i32 %229, 63
  %231 = lshr i32 %229, 6
  %232 = and i32 %231, 63
  %233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %230, i32 noundef %232) #15
  br label %362

234:                                              ; preds = %37
  %235 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 29
  %236 = load i16, ptr %235, align 8
  %237 = zext i16 %236 to i32
  %238 = icmp eq i32 %237, %2
  br i1 %238, label %323, label %239

239:                                              ; preds = %234
  %240 = load i32, ptr @debug, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %252, label %242

242:                                              ; preds = %239
  %243 = udiv i16 %236, 1000
  %244 = zext i16 %243 to i32
  %245 = udiv i32 %2, 1000
  %246 = zext i8 %11 to i32
  %247 = load ptr, ptr %8, align 8
  %248 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %247, i32 0, i32 2
  %249 = load i8, ptr %248, align 4
  %250 = zext i8 %249 to i32
  %251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %244, i32 noundef %245, i32 noundef %246, i32 noundef %250) #15
  br label %252

252:                                              ; preds = %242, %239
  %253 = load ptr, ptr %8, align 8
  %254 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %253, i32 0, i32 2
  %255 = load i8, ptr %254, align 4
  %256 = zext i8 %255 to i32
  %257 = icmp eq i8 %255, %11
  br i1 %257, label %317, label %258

258:                                              ; preds = %252
  %259 = load i32, ptr @debug, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %258
  %262 = udiv i32 %2, 1000
  %263 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %253, i32 0, i32 3
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %262, i32 noundef %256, i32 noundef %265) #15
  br label %267

267:                                              ; preds = %261, %258
  %268 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %6, i16 noundef zeroext 902)
  %269 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 25
  %270 = tail call i32 @mutex_lock_interruptible(ptr noundef %269) #14
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load i32, ptr @debug, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %295, label %275

275:                                              ; preds = %272
  %276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %295

277:                                              ; preds = %267
  %278 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 3, ptr %278, align 8
  %279 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 -122, ptr %279, align 1
  %280 = lshr i16 %268, 8
  %281 = trunc i16 %280 to i8
  %282 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %281, ptr %282, align 2
  %283 = trunc i16 %268 to i8
  %284 = or i8 %283, 8
  %285 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %284, ptr %285, align 1
  %286 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %286, align 8
  %287 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %288 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %289 = load i8, ptr %288, align 4
  %290 = lshr i8 %289, 1
  %291 = zext i8 %290 to i16
  store i16 %291, ptr %286, align 8
  %292 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %278, ptr %292, align 8
  %293 = load ptr, ptr %287, align 4
  %294 = tail call i32 @i2c_transfer(ptr noundef %293, ptr noundef %286, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %269) #14
  br label %295

295:                                              ; preds = %277, %275, %272
  tail call fastcc void @dib8000_reset_pll(ptr noundef %6)
  %296 = tail call i32 @mutex_lock_interruptible(ptr noundef %269) #14
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i32, ptr @debug, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %320, label %301

301:                                              ; preds = %298
  %302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %320

303:                                              ; preds = %295
  %304 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 3, ptr %304, align 8
  %305 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 -126, ptr %305, align 1
  %306 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 0, ptr %306, align 2
  %307 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 4, ptr %307, align 1
  %308 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %308, align 8
  %309 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %310 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %311 = load i8, ptr %310, align 4
  %312 = lshr i8 %311, 1
  %313 = zext i8 %312 to i16
  store i16 %313, ptr %308, align 8
  %314 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %304, ptr %314, align 8
  %315 = load ptr, ptr %309, align 4
  %316 = tail call i32 @i2c_transfer(ptr noundef %315, ptr noundef %308, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %269) #14
  br label %320

317:                                              ; preds = %252
  %318 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %253, i32 0, i32 3
  %319 = load i8, ptr %318, align 1
  br label %320

320:                                              ; preds = %317, %303, %301, %298
  %321 = phi i8 [ %319, %317 ], [ %3, %298 ], [ %3, %301 ], [ %3, %303 ]
  %322 = trunc i32 %2 to i16
  store i16 %322, ptr %235, align 8
  br label %323

323:                                              ; preds = %320, %234
  %324 = phi i8 [ %321, %320 ], [ %3, %234 ]
  %325 = zext i8 %324 to i32
  %326 = icmp eq i8 %324, 0
  br i1 %326, label %362, label %327

327:                                              ; preds = %323
  %328 = load i32, ptr @debug, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %8, align 8
  %332 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %331, i32 0, i32 2
  %333 = load i8, ptr %332, align 4
  %334 = zext i8 %333 to i32
  %335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dib8000_update_pll, i32 noundef %334, i32 noundef %325) #15
  br label %336

336:                                              ; preds = %330, %327
  %337 = load ptr, ptr %8, align 8
  %338 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %337, i32 0, i32 2
  %339 = load i8, ptr %338, align 4
  %340 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 25
  %341 = tail call i32 @mutex_lock_interruptible(ptr noundef %340) #14
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %336
  %344 = load i32, ptr @debug, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %362, label %346

346:                                              ; preds = %343
  %347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %362

348:                                              ; preds = %336
  %349 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 3, ptr %349, align 8
  %350 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 -123, ptr %350, align 1
  %351 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %339, ptr %351, align 2
  %352 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %324, ptr %352, align 1
  %353 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %353, align 8
  %354 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %355 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %356 = load i8, ptr %355, align 4
  %357 = lshr i8 %356, 1
  %358 = zext i8 %357 to i16
  store i16 %358, ptr %353, align 8
  %359 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %349, ptr %359, align 8
  %360 = load ptr, ptr %354, align 4
  %361 = tail call i32 @i2c_transfer(ptr noundef %360, ptr noundef %353, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %340) #14
  br label %362

362:                                              ; preds = %348, %346, %343, %323, %228, %224, %23, %4
  %363 = phi i32 [ -22, %23 ], [ -22, %4 ], [ 0, %323 ], [ 0, %224 ], [ 0, %228 ], [ 0, %343 ], [ 0, %346 ], [ 0, %348 ]
  ret i32 %363
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8096p_tuner_sleep(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dib8096p_tuner_sleep, i32 noundef %1) #15
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1922)
  %11 = icmp ugt i16 %10, 255
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 27
  store i16 %10, ptr %13, align 2
  br label %14

14:                                               ; preds = %12, %9
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = trunc i16 %10 to i8
  br label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 27
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %21, i16 %10, i16 %20
  %23 = trunc i16 %22 to i8
  %24 = lshr i16 %22, 8
  %25 = trunc i16 %24 to i8
  br label %26

26:                                               ; preds = %18, %16
  %27 = phi i8 [ %17, %16 ], [ %23, %18 ]
  %28 = phi i8 [ 0, %16 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %30 = tail call i32 @mutex_lock_interruptible(ptr noundef %29) #14
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %51

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 7, ptr %38, align 8
  %39 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 -126, ptr %39, align 1
  %40 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %28, ptr %40, align 2
  %41 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %27, ptr %41, align 1
  %42 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = lshr i8 %45, 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %42, align 8
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %38, ptr %48, align 8
  %49 = load ptr, ptr %43, align 4
  %50 = tail call i32 @i2c_transfer(ptr noundef %49, ptr noundef %42, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %29) #14
  br label %51

51:                                               ; preds = %37, %35, %32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dib8000_get_tune_state(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @dib8096p_get_i2c_tuner(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 28
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_set_slave_frontend(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 5
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
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dib8000_set_slave_frontend, ptr noundef %1, i32 noundef %28) #15
  br label %34

34:                                               ; preds = %32, %27
  store ptr %1, ptr %29, align 4
  br label %37

35:                                               ; preds = %24
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dib8000_set_slave_frontend) #15
  br label %37

37:                                               ; preds = %35, %34, %24
  %38 = phi i32 [ 0, %34 ], [ -12, %35 ], [ -12, %24 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = zext i8 %1 to i32
  %11 = zext i16 %2 to i32
  %12 = zext i8 %3 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dib8000_pid_filter, i32 noundef %10, i32 noundef %11, i32 noundef %12) #15
  br label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 25
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %50

23:                                               ; preds = %14
  %24 = icmp eq i8 %3, 0
  %25 = or i16 %2, 8192
  %26 = select i1 %24, i16 0, i16 %25
  %27 = zext i8 %1 to i16
  %28 = add nuw nsw i16 %27, 305
  %29 = lshr i16 %28, 8
  %30 = trunc i16 %29 to i8
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 23
  store i8 %30, ptr %31, align 8
  %32 = trunc i16 %28 to i8
  %33 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 1
  store i8 %32, ptr %33, align 1
  %34 = lshr i16 %26, 8
  %35 = trunc i16 %34 to i8
  %36 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 2
  store i8 %35, ptr %36, align 2
  %37 = trunc i16 %26 to i8
  %38 = getelementptr %struct.dib8000_state, ptr %6, i32 0, i32 23, i32 3
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22
  store i64 17179869184, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1
  %41 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 1, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = lshr i8 %42, 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %39, align 8
  %45 = getelementptr inbounds %struct.dib8000_state, ptr %6, i32 0, i32 22, i32 0, i32 3
  store ptr %31, ptr %45, align 8
  %46 = load ptr, ptr %40, align 4
  %47 = tail call i32 @i2c_transfer(ptr noundef %46, ptr noundef %39, i32 noundef 1) #14
  %48 = icmp eq i32 %47, 1
  %49 = select i1 %48, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %15) #14
  br label %50

50:                                               ; preds = %23, %21, %18
  %51 = phi i32 [ %49, %23 ], [ -22, %21 ], [ -22, %18 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_ctrl_timf(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  switch i8 %1, label %9 [
    i8 0, label %6
    i8 2, label %8
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 7
  store i32 %2, ptr %7, align 4
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @dib8000_update_timf(ptr noundef %5)
  br label %9

9:                                                ; preds = %8, %6, %3
  %10 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 21
  %11 = load ptr, ptr %10, align 8
  tail call fastcc void @dib8000_set_bandwidth(ptr noundef %11, i32 noundef 6000)
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dib8000_init(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dib8000_init) #15
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 3992) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %780, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1040) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %779, label %16

16:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(44) %10, ptr noundef align 4 dereferenceable(44) %2, i32 44, i1 false)
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 1, i32 1
  store i8 %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 23
  %20 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 1, i32 2
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 24
  %22 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 1, i32 3
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.25, ptr noundef nonnull @dib8000_init.__key) #14
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 1, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dib8000_config, ptr %2, i32 0, i32 8
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 16
  store i16 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dib8000_config, ptr %2, i32 0, i32 7
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 15
  store i16 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.dib8000_config, ptr %10, i32 0, i32 15
  %32 = load i8, ptr %31, align 1
  switch i8 %32, label %33 [
    i8 7, label %34
    i8 1, label %34
  ]

33:                                               ; preds = %16
  store i8 5, ptr %31, align 1
  br label %34

34:                                               ; preds = %33, %16, %16
  %35 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 21
  store ptr %14, ptr %35, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 3
  store ptr %10, ptr %36, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %37, ptr noundef nonnull align 4 dereferenceable(544) @dib8000_ops, i32 544, i1 false)
  %38 = getelementptr inbounds %struct.dib8000_config, ptr %2, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %39, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 8
  store i32 %41, ptr %42, align 8
  %43 = tail call fastcc zeroext i16 @dib8000_identify(ptr noundef %17)
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  tail call void @kfree(ptr noundef nonnull %14) #14
  br label %779

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 2
  %48 = load ptr, ptr %17, align 4
  %49 = load i8, ptr %18, align 8
  %50 = tail call i32 @dibx000_init_i2c_master(ptr noundef %47, i16 noundef zeroext 13, ptr noundef %48, i8 noundef zeroext %49) #14
  %51 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 28
  %52 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 28, i32 12
  %53 = tail call i32 @strscpy(ptr noundef %52, ptr noundef nonnull @.str.26, i32 noundef 48) #14
  %54 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 28, i32 2
  store ptr @dib8096p_tuner_xfer_algo, ptr %54, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 28, i32 3
  store ptr null, ptr %55, align 4
  %56 = load ptr, ptr %17, align 4
  %57 = getelementptr inbounds %struct.i2c_adapter, ptr %56, i32 0, i32 9, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 28, i32 9, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 28, i32 9, i32 8
  store ptr %10, ptr %60, align 8
  %61 = tail call i32 @i2c_add_adapter(ptr noundef %51) #14
  %62 = load ptr, ptr %36, align 8
  %63 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1
  %64 = tail call fastcc zeroext i16 @dib8000_identify(ptr noundef %63) #14
  %65 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 17
  store i16 %64, ptr %65, align 2
  switch i16 %64, label %66 [
    i16 0, label %753
    i16 -32624, label %88
  ]

66:                                               ; preds = %46
  %67 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 25
  %68 = tail call i32 @mutex_lock_interruptible(ptr noundef %67) #14
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %88

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 5, ptr %76, align 8
  %77 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 7, ptr %77, align 1
  %78 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %78, align 2
  %79 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 3, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %80, align 8
  %81 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %82 = load i8, ptr %81, align 4
  %83 = lshr i8 %82, 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %80, align 8
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %76, ptr %85, align 8
  %86 = load ptr, ptr %63, align 4
  %87 = tail call i32 @i2c_transfer(ptr noundef %86, ptr noundef %80, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %67) #14
  br label %88

88:                                               ; preds = %75, %73, %70, %46
  %89 = load i16, ptr %65, align 2
  %90 = icmp eq i16 %89, -32768
  %91 = load i32, ptr @debug, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @__func__.dib8000_reset) #15
  br label %96

96:                                               ; preds = %94, %88
  %97 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 2
  tail call void @dibx000_reset_i2c_master(ptr noundef %97) #14
  tail call fastcc void @dib8000_set_power_mode(ptr noundef %62, i32 noundef 0) #14
  %98 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %62, i32 noundef 3) #14
  %99 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 25
  %100 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, ptr @debug, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %102
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %120

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %108, align 8
  %109 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 2, ptr %109, align 1
  %110 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 -1, ptr %110, align 2
  %111 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 -1, ptr %111, align 1
  %112 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %112, align 8
  %113 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = lshr i8 %114, 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %112, align 8
  %117 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %108, ptr %117, align 8
  %118 = load ptr, ptr %63, align 4
  %119 = tail call i32 @i2c_transfer(ptr noundef %118, ptr noundef %112, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %120

120:                                              ; preds = %107, %105, %102
  %121 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %141

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %129, align 8
  %130 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 3, ptr %130, align 1
  %131 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 -1, ptr %131, align 2
  %132 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 -1, ptr %132, align 1
  %133 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %133, align 8
  %134 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %135 = load i8, ptr %134, align 4
  %136 = lshr i8 %135, 1
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %133, align 8
  %138 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %129, ptr %138, align 8
  %139 = load ptr, ptr %63, align 4
  %140 = tail call i32 @i2c_transfer(ptr noundef %139, ptr noundef %133, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %141

141:                                              ; preds = %128, %126, %123
  %142 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, ptr @debug, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %144
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %162

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %150, align 8
  %151 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 4, ptr %151, align 1
  %152 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 -1, ptr %152, align 2
  %153 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 -4, ptr %153, align 1
  %154 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %154, align 8
  %155 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %154, align 8
  %159 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %150, ptr %159, align 8
  %160 = load ptr, ptr %63, align 4
  %161 = tail call i32 @i2c_transfer(ptr noundef %160, ptr noundef %154, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %162

162:                                              ; preds = %149, %147, %144
  %163 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, ptr @debug, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %165
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %183

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %171, align 8
  %172 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 -126, ptr %172, align 1
  %173 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %173, align 2
  %174 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 12, ptr %174, align 1
  %175 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %175, align 8
  %176 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %177 = load i8, ptr %176, align 4
  %178 = lshr i8 %177, 1
  %179 = zext i8 %178 to i16
  store i16 %179, ptr %175, align 8
  %180 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %171, ptr %180, align 8
  %181 = load ptr, ptr %63, align 4
  %182 = tail call i32 @i2c_transfer(ptr noundef %181, ptr noundef %175, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %183

183:                                              ; preds = %170, %168, %165
  %184 = load i16, ptr %65, align 2
  %185 = icmp eq i16 %184, -32624
  %186 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %187 = icmp slt i32 %186, 0
  br i1 %185, label %188, label %207

188:                                              ; preds = %183
  br i1 %187, label %189, label %194

189:                                              ; preds = %188
  %190 = load i32, ptr @debug, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %226, label %192

192:                                              ; preds = %189
  %193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %226

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 5, ptr %195, align 8
  %196 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 0, ptr %196, align 1
  %197 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %197, align 2
  %198 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 69, ptr %198, align 1
  %199 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %199, align 8
  %200 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %201 = load i8, ptr %200, align 4
  %202 = lshr i8 %201, 1
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %199, align 8
  %204 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %195, ptr %204, align 8
  %205 = load ptr, ptr %63, align 4
  %206 = tail call i32 @i2c_transfer(ptr noundef %205, ptr noundef %199, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %226

207:                                              ; preds = %183
  br i1 %187, label %208, label %213

208:                                              ; preds = %207
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %208
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %226

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 5, ptr %214, align 8
  %215 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 0, ptr %215, align 1
  %216 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %216, align 2
  %217 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 77, ptr %217, align 1
  %218 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %218, align 8
  %219 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %220 = load i8, ptr %219, align 4
  %221 = lshr i8 %220, 1
  %222 = zext i8 %221 to i16
  store i16 %222, ptr %218, align 8
  %223 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %214, ptr %223, align 8
  %224 = load ptr, ptr %63, align 4
  %225 = tail call i32 @i2c_transfer(ptr noundef %224, ptr noundef %218, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %226

226:                                              ; preds = %213, %211, %208, %194, %192, %189
  %227 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load i32, ptr @debug, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %247, label %232

232:                                              ; preds = %229
  %233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %247

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 5, ptr %235, align 8
  %236 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 1, ptr %236, align 1
  %237 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %237, align 2
  %238 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 12, ptr %238, align 1
  %239 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %239, align 8
  %240 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %241 = load i8, ptr %240, align 4
  %242 = lshr i8 %241, 1
  %243 = zext i8 %242 to i16
  store i16 %243, ptr %239, align 8
  %244 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %235, ptr %244, align 8
  %245 = load ptr, ptr %63, align 4
  %246 = tail call i32 @i2c_transfer(ptr noundef %245, ptr noundef %239, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %247

247:                                              ; preds = %234, %232, %229
  %248 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32, ptr @debug, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %268, label %253

253:                                              ; preds = %250
  %254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %268

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %256, align 8
  %257 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 2, ptr %257, align 1
  %258 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %258, align 2
  %259 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 0, ptr %259, align 1
  %260 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %260, align 8
  %261 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %262 = load i8, ptr %261, align 4
  %263 = lshr i8 %262, 1
  %264 = zext i8 %263 to i16
  store i16 %264, ptr %260, align 8
  %265 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %256, ptr %265, align 8
  %266 = load ptr, ptr %63, align 4
  %267 = tail call i32 @i2c_transfer(ptr noundef %266, ptr noundef %260, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %268

268:                                              ; preds = %255, %253, %250
  %269 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load i32, ptr @debug, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %289, label %274

274:                                              ; preds = %271
  %275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %289

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %277, align 8
  %278 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 3, ptr %278, align 1
  %279 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %279, align 2
  %280 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 0, ptr %280, align 1
  %281 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %281, align 8
  %282 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %283 = load i8, ptr %282, align 4
  %284 = lshr i8 %283, 1
  %285 = zext i8 %284 to i16
  store i16 %285, ptr %281, align 8
  %286 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %277, ptr %286, align 8
  %287 = load ptr, ptr %63, align 4
  %288 = tail call i32 @i2c_transfer(ptr noundef %287, ptr noundef %281, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %289

289:                                              ; preds = %276, %274, %271
  %290 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load i32, ptr @debug, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %310, label %295

295:                                              ; preds = %292
  %296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %310

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %298, align 8
  %299 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 4, ptr %299, align 1
  %300 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %300, align 2
  %301 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 0, ptr %301, align 1
  %302 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %302, align 8
  %303 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %304 = load i8, ptr %303, align 4
  %305 = lshr i8 %304, 1
  %306 = zext i8 %305 to i16
  store i16 %306, ptr %302, align 8
  %307 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %298, ptr %307, align 8
  %308 = load ptr, ptr %63, align 4
  %309 = tail call i32 @i2c_transfer(ptr noundef %308, ptr noundef %302, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %310

310:                                              ; preds = %297, %295, %292
  %311 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load i32, ptr @debug, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %331, label %316

316:                                              ; preds = %313
  %317 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %331

318:                                              ; preds = %310
  %319 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %319, align 8
  %320 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 -126, ptr %320, align 1
  %321 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %321, align 2
  %322 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 4, ptr %322, align 1
  %323 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %323, align 8
  %324 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %325 = load i8, ptr %324, align 4
  %326 = lshr i8 %325, 1
  %327 = zext i8 %326 to i16
  store i16 %327, ptr %323, align 8
  %328 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %319, ptr %328, align 8
  %329 = load ptr, ptr %63, align 4
  %330 = tail call i32 @i2c_transfer(ptr noundef %329, ptr noundef %323, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %331

331:                                              ; preds = %318, %316, %313
  %332 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %331
  %335 = load i32, ptr @debug, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %352, label %337

337:                                              ; preds = %334
  %338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %352

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 5, ptr %340, align 8
  %341 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 0, ptr %341, align 1
  %342 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %342, align 2
  %343 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 0, ptr %343, align 1
  %344 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %344, align 8
  %345 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %346 = load i8, ptr %345, align 4
  %347 = lshr i8 %346, 1
  %348 = zext i8 %347 to i16
  store i16 %348, ptr %344, align 8
  %349 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %340, ptr %349, align 8
  %350 = load ptr, ptr %63, align 4
  %351 = tail call i32 @i2c_transfer(ptr noundef %350, ptr noundef %344, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %352

352:                                              ; preds = %339, %337, %334
  %353 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = load i32, ptr @debug, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %373, label %358

358:                                              ; preds = %355
  %359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %373

360:                                              ; preds = %352
  %361 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 5, ptr %361, align 8
  %362 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 1, ptr %362, align 1
  %363 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %363, align 2
  %364 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 0, ptr %364, align 1
  %365 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %365, align 8
  %366 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %367 = load i8, ptr %366, align 4
  %368 = lshr i8 %367, 1
  %369 = zext i8 %368 to i16
  store i16 %369, ptr %365, align 8
  %370 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %361, ptr %370, align 8
  %371 = load ptr, ptr %63, align 4
  %372 = tail call i32 @i2c_transfer(ptr noundef %371, ptr noundef %365, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %373

373:                                              ; preds = %360, %358, %355
  %374 = load i16, ptr %65, align 2
  %375 = icmp eq i16 %374, -32624
  br i1 %375, label %430, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 12
  %378 = load i16, ptr %377, align 8
  %379 = icmp eq i16 %378, 0
  br i1 %379, label %404, label %380

380:                                              ; preds = %376
  %381 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = load i32, ptr @debug, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %430, label %386

386:                                              ; preds = %383
  %387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %430

388:                                              ; preds = %380
  %389 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %389, align 8
  %390 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 -118, ptr %390, align 1
  %391 = lshr i16 %378, 8
  %392 = trunc i16 %391 to i8
  %393 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 %392, ptr %393, align 2
  %394 = trunc i16 %378 to i8
  %395 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 %394, ptr %395, align 1
  %396 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %396, align 8
  %397 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %398 = load i8, ptr %397, align 4
  %399 = lshr i8 %398, 1
  %400 = zext i8 %399 to i16
  store i16 %400, ptr %396, align 8
  %401 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %389, ptr %401, align 8
  %402 = load ptr, ptr %63, align 4
  %403 = tail call i32 @i2c_transfer(ptr noundef %402, ptr noundef %396, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %430

404:                                              ; preds = %376
  %405 = load i32, ptr @debug, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.dib8000_reset) #15
  br label %409

409:                                              ; preds = %407, %404
  %410 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = load i32, ptr @debug, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

415:                                              ; preds = %412
  %416 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %430

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %418, align 8
  %419 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 -118, ptr %419, align 1
  %420 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 45, ptr %420, align 2
  %421 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 -104, ptr %421, align 1
  %422 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %422, align 8
  %423 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %424 = load i8, ptr %423, align 4
  %425 = lshr i8 %424, 1
  %426 = zext i8 %425 to i16
  store i16 %426, ptr %422, align 8
  %427 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %418, ptr %427, align 8
  %428 = load ptr, ptr %63, align 4
  %429 = tail call i32 @i2c_transfer(ptr noundef %428, ptr noundef %422, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %430

430:                                              ; preds = %417, %415, %412, %388, %386, %383, %373
  tail call fastcc void @dib8000_reset_pll(ptr noundef %62) #14
  %431 = load i16, ptr %65, align 2
  %432 = icmp eq i16 %431, -32624
  br i1 %432, label %454, label %433

433:                                              ; preds = %430
  %434 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %433
  %437 = load i32, ptr @debug, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %454, label %439

439:                                              ; preds = %436
  %440 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %454

441:                                              ; preds = %433
  %442 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 3, ptr %442, align 8
  %443 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 -126, ptr %443, align 1
  %444 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 0, ptr %444, align 2
  %445 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 4, ptr %445, align 1
  %446 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %446, align 8
  %447 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %448 = load i8, ptr %447, align 4
  %449 = lshr i8 %448, 1
  %450 = zext i8 %449 to i16
  store i16 %450, ptr %446, align 8
  %451 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %442, ptr %451, align 8
  %452 = load ptr, ptr %63, align 4
  %453 = tail call i32 @i2c_transfer(ptr noundef %452, ptr noundef %446, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %454

454:                                              ; preds = %441, %439, %436, %430
  %455 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 7
  %456 = load i16, ptr %455, align 4
  %457 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %464

459:                                              ; preds = %454
  %460 = load i32, ptr @debug, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %480, label %462

462:                                              ; preds = %459
  %463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %480

464:                                              ; preds = %454
  %465 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 4, ptr %465, align 8
  %466 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 5, ptr %466, align 1
  %467 = lshr i16 %456, 8
  %468 = trunc i16 %467 to i8
  %469 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 %468, ptr %469, align 2
  %470 = trunc i16 %456 to i8
  %471 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 %470, ptr %471, align 1
  %472 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %472, align 8
  %473 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %474 = load i8, ptr %473, align 4
  %475 = lshr i8 %474, 1
  %476 = zext i8 %475 to i16
  store i16 %476, ptr %472, align 8
  %477 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %465, ptr %477, align 8
  %478 = load ptr, ptr %63, align 4
  %479 = tail call i32 @i2c_transfer(ptr noundef %478, ptr noundef %472, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %480

480:                                              ; preds = %464, %462, %459
  %481 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 8
  %482 = load i16, ptr %481, align 2
  %483 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %480
  %486 = load i32, ptr @debug, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %506, label %488

488:                                              ; preds = %485
  %489 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %506

490:                                              ; preds = %480
  %491 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 4, ptr %491, align 8
  %492 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 6, ptr %492, align 1
  %493 = lshr i16 %482, 8
  %494 = trunc i16 %493 to i8
  %495 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 %494, ptr %495, align 2
  %496 = trunc i16 %482 to i8
  %497 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 %496, ptr %497, align 1
  %498 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %498, align 8
  %499 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %500 = load i8, ptr %499, align 4
  %501 = lshr i8 %500, 1
  %502 = zext i8 %501 to i16
  store i16 %502, ptr %498, align 8
  %503 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %491, ptr %503, align 8
  %504 = load ptr, ptr %63, align 4
  %505 = tail call i32 @i2c_transfer(ptr noundef %504, ptr noundef %498, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %506

506:                                              ; preds = %490, %488, %485
  %507 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 9
  %508 = load i16, ptr %507, align 8
  %509 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %506
  %512 = load i32, ptr @debug, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %532, label %514

514:                                              ; preds = %511
  %515 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %532

516:                                              ; preds = %506
  %517 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 4, ptr %517, align 8
  %518 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 8, ptr %518, align 1
  %519 = lshr i16 %508, 8
  %520 = trunc i16 %519 to i8
  %521 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 %520, ptr %521, align 2
  %522 = trunc i16 %508 to i8
  %523 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 %522, ptr %523, align 1
  %524 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %524, align 8
  %525 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %526 = load i8, ptr %525, align 4
  %527 = lshr i8 %526, 1
  %528 = zext i8 %527 to i16
  store i16 %528, ptr %524, align 8
  %529 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %517, ptr %529, align 8
  %530 = load ptr, ptr %63, align 4
  %531 = tail call i32 @i2c_transfer(ptr noundef %530, ptr noundef %524, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %532

532:                                              ; preds = %516, %514, %511
  %533 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 10
  %534 = load i16, ptr %533, align 2
  %535 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %542

537:                                              ; preds = %532
  %538 = load i32, ptr @debug, align 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %558, label %540

540:                                              ; preds = %537
  %541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %558

542:                                              ; preds = %532
  %543 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 4, ptr %543, align 8
  %544 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 13, ptr %544, align 1
  %545 = lshr i16 %534, 8
  %546 = trunc i16 %545 to i8
  %547 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 %546, ptr %547, align 2
  %548 = trunc i16 %534 to i8
  %549 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 %548, ptr %549, align 1
  %550 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %550, align 8
  %551 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %552 = load i8, ptr %551, align 4
  %553 = lshr i8 %552, 1
  %554 = zext i8 %553 to i16
  store i16 %554, ptr %550, align 8
  %555 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %543, ptr %555, align 8
  %556 = load ptr, ptr %63, align 4
  %557 = tail call i32 @i2c_transfer(ptr noundef %556, ptr noundef %550, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %558

558:                                              ; preds = %542, %540, %537
  %559 = load i16, ptr %65, align 2
  %560 = icmp eq i16 %559, -32624
  br i1 %560, label %569, label %561

561:                                              ; preds = %558
  %562 = tail call fastcc i32 @dib8000_set_output_mode(ptr noundef nonnull %14, i32 noundef 0) #14
  %563 = icmp ne i32 %562, 0
  %564 = load i32, ptr @debug, align 4
  %565 = icmp ne i32 %564, 0
  %566 = select i1 %563, i1 %565, i1 false
  br i1 %566, label %567, label %569

567:                                              ; preds = %561
  %568 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.dib8000_reset) #15
  br label %569

569:                                              ; preds = %567, %561, %558
  %570 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 6
  store ptr null, ptr %570, align 8
  %571 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 6
  %572 = load ptr, ptr %571, align 8
  %573 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %572, i32 0, i32 13
  %574 = load i32, ptr %573, align 4
  %575 = icmp eq i32 %574, 0
  %576 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %577 = icmp slt i32 %576, 0
  br i1 %575, label %578, label %597

578:                                              ; preds = %569
  br i1 %577, label %579, label %584

579:                                              ; preds = %578
  %580 = load i32, ptr @debug, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %616, label %582

582:                                              ; preds = %579
  %583 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %616

584:                                              ; preds = %578
  %585 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 0, ptr %585, align 8
  %586 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 40, ptr %586, align 1
  %587 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 7, ptr %587, align 2
  %588 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 85, ptr %588, align 1
  %589 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %589, align 8
  %590 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %591 = load i8, ptr %590, align 4
  %592 = lshr i8 %591, 1
  %593 = zext i8 %592 to i16
  store i16 %593, ptr %589, align 8
  %594 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %585, ptr %594, align 8
  %595 = load ptr, ptr %63, align 4
  %596 = tail call i32 @i2c_transfer(ptr noundef %595, ptr noundef %589, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %616

597:                                              ; preds = %569
  br i1 %577, label %598, label %603

598:                                              ; preds = %597
  %599 = load i32, ptr @debug, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %616, label %601

601:                                              ; preds = %598
  %602 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %616

603:                                              ; preds = %597
  %604 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  store i8 0, ptr %604, align 8
  %605 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  store i8 40, ptr %605, align 1
  %606 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  store i8 31, ptr %606, align 2
  %607 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  store i8 85, ptr %607, align 1
  %608 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  store i64 17179869184, ptr %608, align 8
  %609 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %610 = load i8, ptr %609, align 4
  %611 = lshr i8 %610, 1
  %612 = zext i8 %611 to i16
  store i16 %612, ptr %608, align 8
  %613 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  store ptr %604, ptr %613, align 8
  %614 = load ptr, ptr %63, align 4
  %615 = tail call i32 @i2c_transfer(ptr noundef %614, ptr noundef %608, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %616

616:                                              ; preds = %603, %601, %598, %584, %582, %579
  %617 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 23
  %618 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 1
  %619 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 2
  %620 = getelementptr %struct.dib8000_state, ptr %62, i32 0, i32 23, i32 3
  %621 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22
  %622 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 1, i32 1
  %623 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 22, i32 0, i32 3
  br label %624

624:                                              ; preds = %658, %616
  %625 = phi ptr [ getelementptr inbounds ([89 x i16], ptr @dib8000_defaults, i32 0, i32 1), %616 ], [ %659, %658 ]
  %626 = phi i16 [ 3, %616 ], [ %660, %658 ]
  %627 = getelementptr i16, ptr %625, i32 1
  %628 = load i16, ptr %625, align 2
  br label %629

629:                                              ; preds = %654, %624
  %630 = phi i16 [ %626, %624 ], [ %656, %654 ]
  %631 = phi i16 [ %628, %624 ], [ %655, %654 ]
  %632 = phi ptr [ %627, %624 ], [ %633, %654 ]
  %633 = getelementptr i16, ptr %632, i32 1
  %634 = load i16, ptr %632, align 2
  %635 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %636 = icmp slt i32 %635, 0
  br i1 %636, label %637, label %642

637:                                              ; preds = %629
  %638 = load i32, ptr @debug, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %654, label %640

640:                                              ; preds = %637
  %641 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %654

642:                                              ; preds = %629
  %643 = lshr i16 %631, 8
  %644 = trunc i16 %643 to i8
  store i8 %644, ptr %617, align 8
  %645 = trunc i16 %631 to i8
  store i8 %645, ptr %618, align 1
  %646 = lshr i16 %634, 8
  %647 = trunc i16 %646 to i8
  store i8 %647, ptr %619, align 2
  %648 = trunc i16 %634 to i8
  store i8 %648, ptr %620, align 1
  store i64 17179869184, ptr %621, align 8
  %649 = load i8, ptr %622, align 4
  %650 = lshr i8 %649, 1
  %651 = zext i8 %650 to i16
  store i16 %651, ptr %621, align 8
  store ptr %617, ptr %623, align 8
  %652 = load ptr, ptr %63, align 4
  %653 = tail call i32 @i2c_transfer(ptr noundef %652, ptr noundef %621, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %654

654:                                              ; preds = %642, %640, %637
  %655 = add i16 %631, 1
  %656 = add i16 %630, -1
  %657 = icmp eq i16 %656, 0
  br i1 %657, label %658, label %629

658:                                              ; preds = %654
  %659 = getelementptr i16, ptr %632, i32 2
  %660 = load i16, ptr %633, align 2
  %661 = icmp eq i16 %660, 0
  br i1 %661, label %662, label %624

662:                                              ; preds = %658
  %663 = getelementptr inbounds %struct.dib8000_state, ptr %62, i32 0, i32 18
  store i8 0, ptr %663, align 4
  %664 = load i16, ptr %65, align 2
  %665 = icmp eq i16 %664, 8090
  br i1 %665, label %684, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.dib8000_config, ptr %62, i32 0, i32 14
  %668 = load i8, ptr %667, align 4
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %684, label %670

670:                                              ; preds = %666
  %671 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %673, label %678

673:                                              ; preds = %670
  %674 = load i32, ptr @debug, align 4
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %684, label %676

676:                                              ; preds = %673
  %677 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %684

678:                                              ; preds = %670
  store i8 3, ptr %617, align 8
  store i8 -121, ptr %618, align 1
  store i8 0, ptr %619, align 2
  store i8 %668, ptr %620, align 1
  store i64 17179869184, ptr %621, align 8
  %679 = load i8, ptr %622, align 4
  %680 = lshr i8 %679, 1
  %681 = zext i8 %680 to i16
  store i16 %681, ptr %621, align 8
  store ptr %617, ptr %623, align 8
  %682 = load ptr, ptr %63, align 4
  %683 = tail call i32 @i2c_transfer(ptr noundef %682, ptr noundef %621, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %684

684:                                              ; preds = %678, %676, %673, %666, %662
  %685 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %62, i16 noundef zeroext 1285) #14
  %686 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %687 = icmp slt i32 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %684
  %689 = load i32, ptr @debug, align 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %703, label %691

691:                                              ; preds = %688
  %692 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %703

693:                                              ; preds = %684
  store i8 5, ptr %617, align 8
  store i8 5, ptr %618, align 1
  %694 = lshr i16 %685, 8
  %695 = trunc i16 %694 to i8
  store i8 %695, ptr %619, align 2
  %696 = trunc i16 %685 to i8
  %697 = and i8 %696, -3
  store i8 %697, ptr %620, align 1
  store i64 17179869184, ptr %621, align 8
  %698 = load i8, ptr %622, align 4
  %699 = lshr i8 %698, 1
  %700 = zext i8 %699 to i16
  store i16 %700, ptr %621, align 8
  store ptr %617, ptr %623, align 8
  %701 = load ptr, ptr %63, align 4
  %702 = tail call i32 @i2c_transfer(ptr noundef %701, ptr noundef %621, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %703

703:                                              ; preds = %693, %691, %688
  tail call fastcc void @dib8000_set_bandwidth(ptr noundef nonnull %14, i32 noundef 6000) #14
  %704 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %62, i32 noundef 0) #14
  tail call fastcc void @dib8000_sad_calib(ptr noundef %62) #14
  %705 = load i16, ptr %65, align 2
  %706 = icmp eq i16 %705, -32624
  br i1 %706, label %709, label %707

707:                                              ; preds = %703
  %708 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %62, i32 noundef 1) #14
  br label %709

709:                                              ; preds = %707, %703
  %710 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %62, i16 noundef zeroext 285) #14
  %711 = tail call i32 @mutex_lock_interruptible(ptr noundef %99) #14
  %712 = icmp slt i32 %711, 0
  br i1 %712, label %713, label %718

713:                                              ; preds = %709
  %714 = load i32, ptr @debug, align 4
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %728, label %716

716:                                              ; preds = %713
  %717 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %728

718:                                              ; preds = %709
  store i8 1, ptr %617, align 8
  store i8 29, ptr %618, align 1
  %719 = lshr i16 %710, 8
  %720 = trunc i16 %719 to i8
  store i8 %720, ptr %619, align 2
  %721 = trunc i16 %710 to i8
  %722 = or i8 %721, 96
  store i8 %722, ptr %620, align 1
  store i64 17179869184, ptr %621, align 8
  %723 = load i8, ptr %622, align 4
  %724 = lshr i8 %723, 1
  %725 = zext i8 %724 to i16
  store i16 %725, ptr %621, align 8
  store ptr %617, ptr %623, align 8
  %726 = load ptr, ptr %63, align 4
  %727 = tail call i32 @i2c_transfer(ptr noundef %726, ptr noundef %621, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %99) #14
  br label %728

728:                                              ; preds = %718, %716, %713
  tail call fastcc void @dib8000_set_power_mode(ptr noundef %62, i32 noundef 1) #14
  %729 = load ptr, ptr %36, align 8
  %730 = getelementptr inbounds %struct.dib8000_state, ptr %729, i32 0, i32 21
  %731 = load ptr, ptr %730, align 8
  %732 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 42
  %733 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 43
  %734 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 46
  %735 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 47
  %736 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 48
  %737 = getelementptr inbounds i8, ptr %732, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(66) %737, i8 0, i64 66, i1 false) #14
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(111) %734, i8 0, i64 111, i1 false) #14
  store i8 1, ptr %732, align 4
  store i8 1, ptr %733, align 1
  store i8 1, ptr %736, align 2
  %738 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 49
  store i8 1, ptr %738, align 1
  store i8 1, ptr %734, align 4
  store i8 1, ptr %735, align 1
  %739 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %739, align 1
  %740 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %740, align 1
  %741 = getelementptr inbounds %struct.dvb_frontend, ptr %731, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %741, align 1
  %742 = load ptr, ptr %36, align 8
  %743 = getelementptr inbounds %struct.dib8000_state, ptr %742, i32 0, i32 17
  %744 = load i16, ptr %743, align 2
  %745 = icmp eq i16 %744, -32624
  %746 = select i1 %745, i16 567, i16 565
  %747 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %742, i16 noundef zeroext %746) #14
  %748 = zext i16 %747 to i32
  %749 = sub nsw i32 0, %748
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds %struct.dib8000_state, ptr %729, i32 0, i32 44
  store i64 %750, ptr %751, align 8
  %752 = getelementptr inbounds %struct.dib8000_state, ptr %729, i32 0, i32 45
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %752, i8 0, i64 20, i1 false) #14
  br label %753

753:                                              ; preds = %728, %46
  %754 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef nonnull %10, i16 noundef zeroext 285)
  %755 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #14
  %756 = icmp slt i32 %755, 0
  br i1 %756, label %757, label %762

757:                                              ; preds = %753
  %758 = load i32, ptr @debug, align 4
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %777, label %760

760:                                              ; preds = %757
  %761 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %777

762:                                              ; preds = %753
  store i8 1, ptr %19, align 8
  %763 = getelementptr %struct.dib8000_state, ptr %10, i32 0, i32 23, i32 1
  store i8 29, ptr %763, align 1
  %764 = lshr i16 %754, 8
  %765 = trunc i16 %764 to i8
  %766 = getelementptr %struct.dib8000_state, ptr %10, i32 0, i32 23, i32 2
  store i8 %765, ptr %766, align 2
  %767 = trunc i16 %754 to i8
  %768 = or i8 %767, 96
  %769 = getelementptr %struct.dib8000_state, ptr %10, i32 0, i32 23, i32 3
  store i8 %768, ptr %769, align 1
  %770 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 22
  store i64 17179869184, ptr %770, align 8
  %771 = load i8, ptr %18, align 8
  %772 = lshr i8 %771, 1
  %773 = zext i8 %772 to i16
  store i16 %773, ptr %770, align 8
  %774 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 22, i32 0, i32 3
  store ptr %19, ptr %774, align 8
  %775 = load ptr, ptr %17, align 4
  %776 = tail call i32 @i2c_transfer(ptr noundef %775, ptr noundef %770, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %23) #14
  br label %777

777:                                              ; preds = %762, %760, %757
  %778 = getelementptr inbounds %struct.dib8000_state, ptr %10, i32 0, i32 29
  store i16 6000, ptr %778, align 8
  br label %780

779:                                              ; preds = %45, %12
  tail call void @kfree(ptr noundef nonnull %10) #14
  br label %780

780:                                              ; preds = %779, %777, %8
  %781 = phi ptr [ null, %779 ], [ %14, %777 ], [ null, %8 ]
  ret ptr %781
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dib8000_get_i2c_master(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 2
  %7 = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %6, i32 noundef %1, i32 noundef %2) #14
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_i2c_enumeration(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #1 {
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_device, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #14
  %13 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 0, ptr %13, align 4
  store ptr %0, ptr %12, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 4) #16
  %16 = getelementptr inbounds %struct.i2c_device, ptr %12, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %242, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.dib8000_i2c_enumeration, ptr noundef nonnull @__func__.dib8000_i2c_enumeration) #15
  br label %242

23:                                               ; preds = %5
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 4) #16
  %26 = getelementptr inbounds %struct.i2c_device, ptr %12, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %240, label %31

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.dib8000_i2c_enumeration, ptr noundef nonnull @__func__.dib8000_i2c_enumeration) #15
  br label %240

33:                                               ; preds = %23
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 20) #16
  %36 = getelementptr inbounds %struct.i2c_device, ptr %12, i32 0, i32 4
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %237, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.dib8000_i2c_enumeration, ptr noundef nonnull @__func__.dib8000_i2c_enumeration) #15
  br label %237

43:                                               ; preds = %33
  tail call void @__mutex_init(ptr noundef nonnull %35, ptr noundef nonnull @.str.120, ptr noundef nonnull @dib8000_i2c_enumeration.__key) #14
  %44 = add i32 %1, -1
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %233

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.i2c_device, ptr %12, i32 0, i32 1
  %48 = icmp eq i8 %4, 0
  %49 = getelementptr inbounds i8, ptr %11, i32 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %52 = getelementptr inbounds i8, ptr %10, i32 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %55 = getelementptr inbounds i8, ptr %9, i32 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %58 = getelementptr inbounds i8, ptr %8, i32 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %61 = getelementptr i8, ptr %15, i32 1
  %62 = getelementptr i8, ptr %15, i32 2
  %63 = getelementptr i8, ptr %15, i32 3
  %64 = getelementptr i8, ptr %15, i32 1
  %65 = getelementptr i8, ptr %15, i32 2
  %66 = getelementptr i8, ptr %15, i32 3
  %67 = getelementptr i8, ptr %15, i32 1
  %68 = getelementptr i8, ptr %15, i32 2
  %69 = getelementptr i8, ptr %15, i32 3
  %70 = getelementptr i8, ptr %15, i32 1
  %71 = getelementptr i8, ptr %15, i32 2
  %72 = getelementptr i8, ptr %15, i32 3
  br label %88

73:                                               ; preds = %197
  %74 = icmp sgt i32 %1, 0
  br i1 %74, label %75, label %233

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, ptr %7, i32 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %79 = getelementptr inbounds i8, ptr %6, i32 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %82 = getelementptr i8, ptr %15, i32 1
  %83 = getelementptr i8, ptr %15, i32 2
  %84 = getelementptr i8, ptr %15, i32 3
  %85 = getelementptr i8, ptr %15, i32 1
  %86 = getelementptr i8, ptr %15, i32 2
  %87 = getelementptr i8, ptr %15, i32 3
  br label %200

88:                                               ; preds = %197, %46
  %89 = phi ptr [ %35, %46 ], [ %174, %197 ]
  %90 = phi ptr [ %0, %46 ], [ %175, %197 ]
  %91 = phi ptr [ %35, %46 ], [ %190, %197 ]
  %92 = phi i32 [ %44, %46 ], [ %198, %197 ]
  %93 = trunc i32 %92 to i8
  %94 = shl i8 %93, 1
  %95 = add i8 %94, %3
  store i8 %95, ptr %47, align 4
  br i1 %48, label %96, label %118

96:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  store i32 4, ptr %49, align 4, !annotation !8
  %97 = lshr i8 %95, 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %11, align 4
  store i16 0, ptr %50, align 2
  %99 = call i32 @mutex_lock_interruptible(ptr noundef %91) #14
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, ptr @debug, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_write16) #15
  br label %110

106:                                              ; preds = %96
  store ptr %15, ptr %51, align 4
  store i8 5, ptr %15, align 8
  store i8 7, ptr %61, align 1
  store i8 0, ptr %62, align 2
  store i8 3, ptr %63, align 1
  %107 = load ptr, ptr %12, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %11, i32 noundef 1) #14
  %109 = load ptr, ptr %36, align 4
  call void @mutex_unlock(ptr noundef %109) #14
  br label %110

110:                                              ; preds = %106, %104, %101
  %111 = phi ptr [ %109, %106 ], [ %89, %104 ], [ %89, %101 ]
  %112 = phi ptr [ %107, %106 ], [ %90, %104 ], [ %90, %101 ]
  %113 = phi ptr [ %109, %106 ], [ %91, %104 ], [ %91, %101 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  %114 = call fastcc zeroext i16 @dib8000_identify(ptr noundef nonnull %12)
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i8, ptr %47, align 4
  br label %151

118:                                              ; preds = %88
  %119 = call fastcc zeroext i16 @dib8000_identify(ptr noundef nonnull %12)
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %140, label %151

121:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  store i32 4, ptr %52, align 4, !annotation !8
  %122 = load i8, ptr %47, align 4
  %123 = lshr i8 %122, 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %10, align 4
  store i16 0, ptr %53, align 2
  %125 = call i32 @mutex_lock_interruptible(ptr noundef %113) #14
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, ptr @debug, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_write16) #15
  br label %136

132:                                              ; preds = %121
  store ptr %15, ptr %54, align 4
  store i8 5, ptr %15, align 8
  store i8 7, ptr %64, align 1
  store i8 0, ptr %65, align 2
  store i8 3, ptr %66, align 1
  %133 = load ptr, ptr %12, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %10, i32 noundef 1) #14
  %135 = load ptr, ptr %36, align 4
  call void @mutex_unlock(ptr noundef %135) #14
  br label %136

136:                                              ; preds = %132, %130, %127
  %137 = phi ptr [ %111, %127 ], [ %111, %130 ], [ %135, %132 ]
  %138 = phi ptr [ %112, %127 ], [ %112, %130 ], [ %133, %132 ]
  %139 = phi ptr [ %113, %127 ], [ %113, %130 ], [ %135, %132 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %140

140:                                              ; preds = %136, %118
  %141 = phi ptr [ %89, %118 ], [ %137, %136 ]
  %142 = phi ptr [ %90, %118 ], [ %138, %136 ]
  %143 = phi ptr [ %91, %118 ], [ %139, %136 ]
  store i8 %2, ptr %47, align 4
  %144 = call fastcc zeroext i16 @dib8000_identify(ptr noundef nonnull %12)
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, ptr @debug, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %233, label %149

149:                                              ; preds = %146
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @__func__.dib8000_i2c_enumeration, i32 noundef %92) #15
  br label %233

151:                                              ; preds = %140, %118, %116
  %152 = phi ptr [ %89, %118 ], [ %141, %140 ], [ %111, %116 ]
  %153 = phi ptr [ %90, %118 ], [ %142, %140 ], [ %112, %116 ]
  %154 = phi ptr [ %91, %118 ], [ %143, %140 ], [ %113, %116 ]
  %155 = phi i8 [ %95, %118 ], [ %2, %140 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  store i32 4, ptr %55, align 4, !annotation !8
  %156 = lshr i8 %155, 1
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %9, align 4
  store i16 0, ptr %56, align 2
  %158 = call i32 @mutex_lock_interruptible(ptr noundef %154) #14
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = load i32, ptr @debug, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_write16) #15
  br label %172

165:                                              ; preds = %151
  store ptr %15, ptr %57, align 4
  store i8 5, ptr %15, align 8
  store i8 6, ptr %67, align 1
  store i8 5, ptr %68, align 2
  store i8 0, ptr %69, align 1
  %166 = load ptr, ptr %12, align 4
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %9, i32 noundef 1) #14
  %168 = load ptr, ptr %36, align 4
  call void @mutex_unlock(ptr noundef %168) #14
  %169 = load i8, ptr %47, align 4
  %170 = lshr i8 %169, 1
  %171 = zext i8 %170 to i16
  br label %172

172:                                              ; preds = %165, %163, %160
  %173 = phi i16 [ %157, %160 ], [ %157, %163 ], [ %171, %165 ]
  %174 = phi ptr [ %152, %160 ], [ %152, %163 ], [ %168, %165 ]
  %175 = phi ptr [ %153, %160 ], [ %153, %163 ], [ %166, %165 ]
  %176 = phi ptr [ %154, %160 ], [ %154, %163 ], [ %168, %165 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  store i32 4, ptr %58, align 4, !annotation !8
  store i16 %173, ptr %8, align 4
  store i16 0, ptr %59, align 2
  %177 = call i32 @mutex_lock_interruptible(ptr noundef %176) #14
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i32, ptr @debug, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_write16) #15
  br label %189

184:                                              ; preds = %172
  %185 = shl i8 %95, 2
  %186 = or i8 %185, 2
  store ptr %15, ptr %60, align 4
  store i8 5, ptr %15, align 8
  store i8 5, ptr %70, align 1
  %187 = lshr i8 %95, 6
  store i8 %187, ptr %71, align 2
  store i8 %186, ptr %72, align 1
  %188 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %8, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %174) #14
  br label %189

189:                                              ; preds = %184, %182, %179
  %190 = phi ptr [ %176, %179 ], [ %176, %182 ], [ %174, %184 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  store i8 %95, ptr %47, align 4
  %191 = call fastcc zeroext i16 @dib8000_identify(ptr noundef nonnull %12)
  %192 = load i32, ptr @debug, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %189
  %195 = zext i8 %95 to i32
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.dib8000_i2c_enumeration, i32 noundef %92, i32 noundef %195) #15
  br label %197

197:                                              ; preds = %194, %189
  %198 = add i32 %92, -1
  %199 = icmp sgt i32 %198, -1
  br i1 %199, label %88, label %73

200:                                              ; preds = %228, %75
  %201 = phi i32 [ 0, %75 ], [ %229, %228 ]
  %202 = trunc i32 %201 to i8
  %203 = shl i8 %202, 1
  %204 = or i8 %203, %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  store i32 4, ptr %76, align 4, !annotation !8
  %205 = lshr i8 %204, 1
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %7, align 4
  store i16 0, ptr %77, align 2
  %207 = call i32 @mutex_lock_interruptible(ptr noundef %174) #14
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %200
  %210 = load i32, ptr @debug, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_write16) #15
  br label %218

214:                                              ; preds = %200
  %215 = shl i8 %204, 2
  store ptr %15, ptr %78, align 4
  store i8 5, ptr %15, align 8
  store i8 5, ptr %82, align 1
  %216 = lshr i8 %204, 6
  store i8 %216, ptr %83, align 2
  store i8 %215, ptr %84, align 1
  %217 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %7, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %174) #14
  br label %218

218:                                              ; preds = %214, %212, %209
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  store i32 4, ptr %79, align 4, !annotation !8
  store i16 %206, ptr %6, align 4
  store i16 0, ptr %80, align 2
  %219 = call i32 @mutex_lock_interruptible(ptr noundef %174) #14
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load i32, ptr @debug, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_write16) #15
  br label %228

226:                                              ; preds = %218
  store ptr %15, ptr %81, align 4
  store i8 5, ptr %15, align 8
  store i8 6, ptr %85, align 1
  store i8 0, ptr %86, align 2
  store i8 0, ptr %87, align 1
  %227 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %6, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %174) #14
  br label %228

228:                                              ; preds = %226, %224, %221
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  %229 = add nuw nsw i32 %201, 1
  %230 = icmp eq i32 %229, %1
  br i1 %230, label %231, label %200

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.i2c_device, ptr %12, i32 0, i32 1
  store i8 %204, ptr %232, align 4
  br label %233

233:                                              ; preds = %231, %149, %146, %73, %43
  %234 = phi ptr [ %141, %149 ], [ %141, %146 ], [ %174, %231 ], [ %174, %73 ], [ %35, %43 ]
  %235 = phi i32 [ -22, %149 ], [ -22, %146 ], [ 0, %231 ], [ 0, %73 ], [ 0, %43 ]
  call void @kfree(ptr noundef %234) #14
  %236 = load ptr, ptr %26, align 4
  br label %237

237:                                              ; preds = %233, %41, %38
  %238 = phi ptr [ %236, %233 ], [ %25, %41 ], [ %25, %38 ]
  %239 = phi i32 [ %235, %233 ], [ -12, %41 ], [ -12, %38 ]
  call void @kfree(ptr noundef %238) #14
  br label %240

240:                                              ; preds = %237, %31, %28
  %241 = phi i32 [ %239, %237 ], [ -12, %31 ], [ -12, %28 ]
  call void @kfree(ptr noundef %15) #14
  br label %242

242:                                              ; preds = %240, %21, %18
  %243 = phi i32 [ %241, %240 ], [ -12, %21 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #14
  ret i32 %243
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_set_wbd_ref(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i16 @llvm.umin.i16(i16 %1, i16 4095)
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 3
  store i16 %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %34

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 0, ptr %16, align 8
  %17 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 106, ptr %17, align 1
  %18 = lshr i16 %5, 8
  %19 = trunc i16 %18 to i8
  %20 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %19, ptr %20, align 2
  %21 = trunc i16 %5 to i8
  %22 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %23, align 8
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %16, ptr %29, align 8
  %30 = load ptr, ptr %24, align 4
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %23, i32 noundef 1) #14
  %32 = icmp eq i32 %31, 1
  %33 = select i1 %32, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %7) #14
  br label %34

34:                                               ; preds = %15, %13, %10
  %35 = phi i32 [ %33, %15 ], [ -22, %13 ], [ -22, %10 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_set_adc_state(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 907)
  %4 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 908)
  %5 = trunc i16 %3 to i8
  %6 = lshr i16 %3, 8
  %7 = trunc i16 %6 to i8
  %8 = trunc i16 %4 to i8
  %9 = lshr i16 %4, 8
  %10 = trunc i16 %9 to i8
  switch i32 %1, label %168 [
    i32 0, label %11
    i32 1, label %129
    i32 2, label %164
    i32 3, label %167
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, -32624
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = or i16 %4, 3
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %18 = tail call i32 @mutex_lock_interruptible(ptr noundef %17) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %42

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %26, align 8
  %27 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -116, ptr %27, align 1
  %28 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %10, ptr %28, align 2
  %29 = trunc i16 %16 to i8
  %30 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = lshr i8 %34, 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %31, align 8
  %37 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %26, ptr %37, align 8
  %38 = load ptr, ptr %32, align 4
  %39 = tail call i32 @i2c_transfer(ptr noundef %38, ptr noundef %31, i32 noundef 1) #14
  %40 = icmp eq i32 %39, 1
  %41 = select i1 %40, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %17) #14
  br label %42

42:                                               ; preds = %25, %23, %20
  %43 = phi i32 [ %41, %25 ], [ -22, %23 ], [ -22, %20 ]
  %44 = trunc i16 %16 to i8
  %45 = and i8 %44, -3
  br label %168

46:                                               ; preds = %11
  %47 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1925)
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %49 = tail call i32 @mutex_lock_interruptible(ptr noundef %48) #14
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %74

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 7, ptr %57, align 8
  %58 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -123, ptr %58, align 1
  %59 = lshr i16 %47, 8
  %60 = trunc i16 %59 to i8
  %61 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %60, ptr %61, align 2
  %62 = trunc i16 %47 to i8
  %63 = or i8 %62, 20
  %64 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %65, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %67 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = lshr i8 %68, 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %65, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %57, ptr %71, align 8
  %72 = load ptr, ptr %66, align 4
  %73 = tail call i32 @i2c_transfer(ptr noundef %72, ptr noundef %65, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %48) #14
  br label %74

74:                                               ; preds = %56, %54, %51
  %75 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1925)
  tail call void @msleep(i32 noundef 20) #14
  %76 = tail call i32 @mutex_lock_interruptible(ptr noundef %48) #14
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, ptr @debug, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %78
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %101

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 7, ptr %84, align 8
  %85 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -123, ptr %85, align 1
  %86 = lshr i16 %75, 8
  %87 = trunc i16 %86 to i8
  %88 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %87, ptr %88, align 2
  %89 = trunc i16 %75 to i8
  %90 = and i8 %89, -17
  %91 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %90, ptr %91, align 1
  %92 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %92, align 8
  %93 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %94 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = lshr i8 %95, 1
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %92, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %84, ptr %98, align 8
  %99 = load ptr, ptr %93, align 4
  %100 = tail call i32 @i2c_transfer(ptr noundef %99, ptr noundef %92, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %48) #14
  br label %101

101:                                              ; preds = %83, %81, %78
  %102 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 921)
  %103 = tail call i32 @mutex_lock_interruptible(ptr noundef %48) #14
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, ptr @debug, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %168, label %108

108:                                              ; preds = %105
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %168

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %111, align 8
  %112 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -103, ptr %112, align 1
  %113 = lshr i16 %102, 8
  %114 = trunc i16 %113 to i8
  %115 = and i8 %114, 15
  %116 = or i8 %115, 112
  %117 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %116, ptr %117, align 2
  %118 = trunc i16 %102 to i8
  %119 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %118, ptr %119, align 1
  %120 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %120, align 8
  %121 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %122 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = lshr i8 %123, 1
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %120, align 8
  %126 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %111, ptr %126, align 8
  %127 = load ptr, ptr %121, align 4
  %128 = tail call i32 @i2c_transfer(ptr noundef %127, ptr noundef %120, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %48) #14
  br label %168

129:                                              ; preds = %2
  %130 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %131 = load i16, ptr %130, align 2
  %132 = icmp eq i16 %131, -32624
  br i1 %132, label %133, label %162

133:                                              ; preds = %129
  %134 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1925)
  %135 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %136 = tail call i32 @mutex_lock_interruptible(ptr noundef %135) #14
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, ptr @debug, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %162, label %141

141:                                              ; preds = %138
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %162

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 7, ptr %144, align 8
  %145 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -123, ptr %145, align 1
  %146 = lshr i16 %134, 8
  %147 = trunc i16 %146 to i8
  %148 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %147, ptr %148, align 2
  %149 = trunc i16 %134 to i8
  %150 = and i8 %149, -21
  %151 = or i8 %150, 16
  %152 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %151, ptr %152, align 1
  %153 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %153, align 8
  %154 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %155 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %153, align 8
  %159 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %144, ptr %159, align 8
  %160 = load ptr, ptr %154, align 4
  %161 = tail call i32 @i2c_transfer(ptr noundef %160, ptr noundef %153, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %135) #14
  br label %162

162:                                              ; preds = %143, %141, %138, %129
  %163 = or i8 %8, 3
  br label %168

164:                                              ; preds = %2
  %165 = and i8 %7, 15
  %166 = and i8 %8, 3
  br label %168

167:                                              ; preds = %2
  br label %168

168:                                              ; preds = %167, %164, %162, %110, %108, %105, %42, %2
  %169 = phi i32 [ 0, %2 ], [ 0, %167 ], [ 0, %164 ], [ 0, %162 ], [ %43, %42 ], [ 0, %105 ], [ 0, %108 ], [ 0, %110 ]
  %170 = phi i8 [ %5, %2 ], [ 0, %167 ], [ %5, %164 ], [ %5, %162 ], [ %5, %42 ], [ %5, %105 ], [ %5, %108 ], [ %5, %110 ]
  %171 = phi i8 [ %7, %2 ], [ 48, %167 ], [ %165, %164 ], [ %7, %162 ], [ %7, %42 ], [ %7, %105 ], [ %7, %108 ], [ %7, %110 ]
  %172 = phi i8 [ %8, %2 ], [ 122, %167 ], [ %166, %164 ], [ %163, %162 ], [ %45, %42 ], [ %8, %105 ], [ %8, %108 ], [ %8, %110 ]
  %173 = phi i8 [ %10, %2 ], [ 0, %167 ], [ 0, %164 ], [ %10, %162 ], [ %10, %42 ], [ %10, %105 ], [ %10, %108 ], [ %10, %110 ]
  %174 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %175 = tail call i32 @mutex_lock_interruptible(ptr noundef %174) #14
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load i32, ptr @debug, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %198, label %180

180:                                              ; preds = %177
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %198

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %183, align 8
  %184 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -117, ptr %184, align 1
  %185 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %171, ptr %185, align 2
  %186 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %170, ptr %186, align 1
  %187 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %187, align 8
  %188 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %189 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %190 = load i8, ptr %189, align 4
  %191 = lshr i8 %190, 1
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %187, align 8
  %193 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %183, ptr %193, align 8
  %194 = load ptr, ptr %188, align 4
  %195 = tail call i32 @i2c_transfer(ptr noundef %194, ptr noundef %187, i32 noundef 1) #14
  %196 = icmp eq i32 %195, 1
  %197 = select i1 %196, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %174) #14
  br label %198

198:                                              ; preds = %182, %180, %177
  %199 = phi i32 [ %197, %182 ], [ -22, %180 ], [ -22, %177 ]
  %200 = tail call i32 @mutex_lock_interruptible(ptr noundef %174) #14
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i32, ptr @debug, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %223, label %205

205:                                              ; preds = %202
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %223

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %208, align 8
  %209 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -116, ptr %209, align 1
  %210 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %173, ptr %210, align 2
  %211 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %172, ptr %211, align 1
  %212 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %212, align 8
  %213 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %214 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %215 = load i8, ptr %214, align 4
  %216 = lshr i8 %215, 1
  %217 = zext i8 %216 to i16
  store i16 %217, ptr %212, align 8
  %218 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %208, ptr %218, align 8
  %219 = load ptr, ptr %213, align 4
  %220 = tail call i32 @i2c_transfer(ptr noundef %219, ptr noundef %212, i32 noundef 1) #14
  %221 = icmp eq i32 %220, 1
  %222 = select i1 %221, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %174) #14
  br label %223

223:                                              ; preds = %207, %205, %202
  %224 = phi i32 [ %222, %207 ], [ -22, %205 ], [ -22, %202 ]
  %225 = or i32 %199, %169
  %226 = or i32 %225, %224
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_set_agc_config(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %1 to i32
  %6 = icmp eq i8 %4, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %629

11:                                               ; preds = %7, %2
  store i8 %1, ptr %3, align 2
  %12 = getelementptr inbounds %struct.dib8000_config, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 8
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dib8000_config, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %25, %16
  %20 = phi i32 [ 0, %16 ], [ %26, %25 ]
  %21 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, %1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp eq i32 %26, %14
  br i1 %27, label %30, label %19

28:                                               ; preds = %19
  %29 = icmp eq ptr %21, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %28, %25, %11
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %629, label %33

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dib8000_set_agc_config, i32 noundef %5) #15
  br label %629

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 6
  store ptr %21, ptr %36, align 8
  %37 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %40 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %64

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %48, align 8
  %49 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 76, ptr %49, align 1
  %50 = lshr i16 %38, 8
  %51 = trunc i16 %50 to i8
  %52 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %51, ptr %52, align 2
  %53 = trunc i16 %38 to i8
  %54 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %57 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %58 = load i8, ptr %57, align 4
  %59 = lshr i8 %58, 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %55, align 8
  %61 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %48, ptr %61, align 8
  %62 = load ptr, ptr %56, align 4
  %63 = tail call i32 @i2c_transfer(ptr noundef %62, ptr noundef %55, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %64

64:                                               ; preds = %47, %45, %42
  %65 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, ptr @debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %91

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %75, align 8
  %76 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 77, ptr %76, align 1
  %77 = lshr i16 %66, 8
  %78 = trunc i16 %77 to i8
  %79 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %78, ptr %79, align 2
  %80 = trunc i16 %66 to i8
  %81 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %82, align 8
  %83 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %84 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %85 = load i8, ptr %84, align 4
  %86 = lshr i8 %85, 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %82, align 8
  %88 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %75, ptr %88, align 8
  %89 = load ptr, ptr %83, align 4
  %90 = tail call i32 @i2c_transfer(ptr noundef %89, ptr noundef %82, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %91

91:                                               ; preds = %74, %72, %69
  %92 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 3
  %93 = load i16, ptr %92, align 2
  %94 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, ptr @debug, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %118

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %102, align 8
  %103 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 78, ptr %103, align 1
  %104 = lshr i16 %93, 8
  %105 = trunc i16 %104 to i8
  %106 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %105, ptr %106, align 2
  %107 = trunc i16 %93 to i8
  %108 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %107, ptr %108, align 1
  %109 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %109, align 8
  %110 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %112 = load i8, ptr %111, align 4
  %113 = lshr i8 %112, 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %109, align 8
  %115 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %102, ptr %115, align 8
  %116 = load ptr, ptr %110, align 4
  %117 = tail call i32 @i2c_transfer(ptr noundef %116, ptr noundef %109, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %118

118:                                              ; preds = %101, %99, %96
  %119 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 4
  %120 = load i8, ptr %119, align 2
  %121 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 5
  %122 = load i16, ptr %121, align 2
  %123 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32, ptr @debug, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %125
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %150

130:                                              ; preds = %118
  %131 = zext i8 %120 to i16
  %132 = shl i16 %131, 12
  %133 = or i16 %132, %122
  %134 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %134, align 8
  %135 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 101, ptr %135, align 1
  %136 = lshr i16 %133, 8
  %137 = trunc i16 %136 to i8
  %138 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %137, ptr %138, align 2
  %139 = trunc i16 %122 to i8
  %140 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %139, ptr %140, align 1
  %141 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %141, align 8
  %142 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %143 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %144 = load i8, ptr %143, align 4
  %145 = lshr i8 %144, 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %141, align 8
  %147 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %134, ptr %147, align 8
  %148 = load ptr, ptr %142, align 4
  %149 = tail call i32 @i2c_transfer(ptr noundef %148, ptr noundef %141, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %150

150:                                              ; preds = %130, %128, %125
  %151 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 23
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 24
  %154 = load i8, ptr %153, align 2
  %155 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i32, ptr @debug, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %179, label %160

160:                                              ; preds = %157
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %179

162:                                              ; preds = %150
  %163 = shl i8 %152, 5
  %164 = or i8 %163, %154
  %165 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %165, align 8
  %166 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 102, ptr %166, align 1
  %167 = lshr i8 %152, 3
  %168 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %167, ptr %168, align 2
  %169 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %164, ptr %169, align 1
  %170 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %170, align 8
  %171 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %172 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %173 = load i8, ptr %172, align 4
  %174 = lshr i8 %173, 1
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %170, align 8
  %176 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %165, ptr %176, align 8
  %177 = load ptr, ptr %171, align 4
  %178 = tail call i32 @i2c_transfer(ptr noundef %177, ptr noundef %170, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %179

179:                                              ; preds = %162, %160, %157
  %180 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 25
  %181 = load i8, ptr %180, align 1
  %182 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 26
  %183 = load i8, ptr %182, align 2
  %184 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load i32, ptr @debug, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %229, label %189

189:                                              ; preds = %186
  %190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %208

191:                                              ; preds = %179
  %192 = shl i8 %181, 6
  %193 = or i8 %192, %183
  %194 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %194, align 8
  %195 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 103, ptr %195, align 1
  %196 = lshr i8 %181, 2
  %197 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %196, ptr %197, align 2
  %198 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %193, ptr %198, align 1
  %199 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %199, align 8
  %200 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %201 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %202 = load i8, ptr %201, align 4
  %203 = lshr i8 %202, 1
  %204 = zext i8 %203 to i16
  store i16 %204, ptr %199, align 8
  %205 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %194, ptr %205, align 8
  %206 = load ptr, ptr %200, align 4
  %207 = tail call i32 @i2c_transfer(ptr noundef %206, ptr noundef %199, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %208

208:                                              ; preds = %191, %189
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 3
  %213 = load i16, ptr %212, align 8
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 7
  %217 = load i16, ptr %216, align 2
  br label %218

218:                                              ; preds = %215, %211
  %219 = phi i16 [ %217, %215 ], [ %213, %211 ]
  %220 = zext i16 %219 to i32
  %221 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 8
  %222 = load i8, ptr %221, align 2
  %223 = zext i8 %222 to i32
  %224 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 27
  %225 = load i8, ptr %224, align 1
  %226 = icmp eq i8 %225, 0
  %227 = zext i1 %226 to i32
  %228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib8000_set_agc_config, i32 noundef %220, i32 noundef %223, i32 noundef %227, i32 noundef %223) #15
  br label %229

229:                                              ; preds = %218, %208, %186
  %230 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 3
  %231 = load i16, ptr %230, align 8
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %258, label %233

233:                                              ; preds = %229
  %234 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load i32, ptr @debug, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %285, label %239

239:                                              ; preds = %236
  %240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %285

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %242, align 8
  %243 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 106, ptr %243, align 1
  %244 = lshr i16 %231, 8
  %245 = trunc i16 %244 to i8
  %246 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %245, ptr %246, align 2
  %247 = trunc i16 %231 to i8
  %248 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %247, ptr %248, align 1
  %249 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %249, align 8
  %250 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %251 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %252 = load i8, ptr %251, align 4
  %253 = lshr i8 %252, 1
  %254 = zext i8 %253 to i16
  store i16 %254, ptr %249, align 8
  %255 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %242, ptr %255, align 8
  %256 = load ptr, ptr %250, align 4
  %257 = tail call i32 @i2c_transfer(ptr noundef %256, ptr noundef %249, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %285

258:                                              ; preds = %229
  %259 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 7
  %260 = load i16, ptr %259, align 2
  %261 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32, ptr @debug, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %285, label %266

266:                                              ; preds = %263
  %267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %285

268:                                              ; preds = %258
  %269 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %269, align 8
  %270 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 106, ptr %270, align 1
  %271 = lshr i16 %260, 8
  %272 = trunc i16 %271 to i8
  %273 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %272, ptr %273, align 2
  %274 = trunc i16 %260 to i8
  %275 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %274, ptr %275, align 1
  %276 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %276, align 8
  %277 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %278 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %279 = load i8, ptr %278, align 4
  %280 = lshr i8 %279, 1
  %281 = zext i8 %280 to i16
  store i16 %281, ptr %276, align 8
  %282 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %269, ptr %282, align 8
  %283 = load ptr, ptr %277, align 4
  %284 = tail call i32 @i2c_transfer(ptr noundef %283, ptr noundef %276, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %285

285:                                              ; preds = %268, %266, %263, %241, %239, %236
  %286 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %287 = load i16, ptr %286, align 2
  %288 = icmp eq i16 %287, -32624
  br i1 %288, label %289, label %320

289:                                              ; preds = %285
  %290 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 922)
  %291 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 8
  %292 = load i8, ptr %291, align 2
  %293 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load i32, ptr @debug, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %320, label %298

298:                                              ; preds = %295
  %299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %320

300:                                              ; preds = %289
  %301 = zext i8 %292 to i16
  %302 = shl nuw nsw i16 %301, 2
  %303 = and i16 %290, 12
  %304 = or i16 %302, %303
  %305 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %305, align 8
  %306 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -102, ptr %306, align 1
  %307 = lshr i8 %292, 6
  %308 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %307, ptr %308, align 2
  %309 = trunc i16 %304 to i8
  %310 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %309, ptr %310, align 1
  %311 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %311, align 8
  %312 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %313 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %314 = load i8, ptr %313, align 4
  %315 = lshr i8 %314, 1
  %316 = zext i8 %315 to i16
  store i16 %316, ptr %311, align 8
  %317 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %305, ptr %317, align 8
  %318 = load ptr, ptr %312, align 4
  %319 = tail call i32 @i2c_transfer(ptr noundef %318, ptr noundef %311, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %320

320:                                              ; preds = %300, %298, %295, %285
  %321 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 9
  %322 = load i8, ptr %321, align 1
  %323 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 27
  %324 = load i8, ptr %323, align 1
  %325 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = load i32, ptr @debug, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %353, label %330

330:                                              ; preds = %327
  %331 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %353

332:                                              ; preds = %320
  %333 = zext i8 %322 to i16
  %334 = shl i16 %333, 9
  %335 = zext i8 %324 to i16
  %336 = shl nuw i16 %335, 8
  %337 = or i16 %336, %334
  %338 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %338, align 8
  %339 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 107, ptr %339, align 1
  %340 = lshr exact i16 %337, 8
  %341 = trunc i16 %340 to i8
  %342 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %341, ptr %342, align 2
  %343 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %343, align 1
  %344 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %344, align 8
  %345 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %346 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %347 = load i8, ptr %346, align 4
  %348 = lshr i8 %347, 1
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %344, align 8
  %350 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %338, ptr %350, align 8
  %351 = load ptr, ptr %345, align 4
  %352 = tail call i32 @i2c_transfer(ptr noundef %351, ptr noundef %344, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %353

353:                                              ; preds = %332, %330, %327
  %354 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 10
  %355 = load i16, ptr %354, align 2
  %356 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = load i32, ptr @debug, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %380, label %361

361:                                              ; preds = %358
  %362 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %380

363:                                              ; preds = %353
  %364 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %364, align 8
  %365 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 108, ptr %365, align 1
  %366 = lshr i16 %355, 8
  %367 = trunc i16 %366 to i8
  %368 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %367, ptr %368, align 2
  %369 = trunc i16 %355 to i8
  %370 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %369, ptr %370, align 1
  %371 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %371, align 8
  %372 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %373 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %374 = load i8, ptr %373, align 4
  %375 = lshr i8 %374, 1
  %376 = zext i8 %375 to i16
  store i16 %376, ptr %371, align 8
  %377 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %364, ptr %377, align 8
  %378 = load ptr, ptr %372, align 4
  %379 = tail call i32 @i2c_transfer(ptr noundef %378, ptr noundef %371, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %380

380:                                              ; preds = %363, %361, %358
  %381 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 11
  %382 = load i16, ptr %381, align 2
  %383 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load i32, ptr @debug, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %407, label %388

388:                                              ; preds = %385
  %389 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %407

390:                                              ; preds = %380
  %391 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %391, align 8
  %392 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 109, ptr %392, align 1
  %393 = lshr i16 %382, 8
  %394 = trunc i16 %393 to i8
  %395 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %394, ptr %395, align 2
  %396 = trunc i16 %382 to i8
  %397 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %396, ptr %397, align 1
  %398 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %398, align 8
  %399 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %400 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %401 = load i8, ptr %400, align 4
  %402 = lshr i8 %401, 1
  %403 = zext i8 %402 to i16
  store i16 %403, ptr %398, align 8
  %404 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %391, ptr %404, align 8
  %405 = load ptr, ptr %399, align 4
  %406 = tail call i32 @i2c_transfer(ptr noundef %405, ptr noundef %398, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %407

407:                                              ; preds = %390, %388, %385
  %408 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 12
  %409 = load i16, ptr %408, align 2
  %410 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %407
  %413 = load i32, ptr @debug, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %434, label %415

415:                                              ; preds = %412
  %416 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %434

417:                                              ; preds = %407
  %418 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %418, align 8
  %419 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 110, ptr %419, align 1
  %420 = lshr i16 %409, 8
  %421 = trunc i16 %420 to i8
  %422 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %421, ptr %422, align 2
  %423 = trunc i16 %409 to i8
  %424 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %423, ptr %424, align 1
  %425 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %425, align 8
  %426 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %427 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %428 = load i8, ptr %427, align 4
  %429 = lshr i8 %428, 1
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %425, align 8
  %431 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %418, ptr %431, align 8
  %432 = load ptr, ptr %426, align 4
  %433 = tail call i32 @i2c_transfer(ptr noundef %432, ptr noundef %425, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %434

434:                                              ; preds = %417, %415, %412
  %435 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 13
  %436 = load i16, ptr %435, align 2
  %437 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %434
  %440 = load i32, ptr @debug, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %461, label %442

442:                                              ; preds = %439
  %443 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %461

444:                                              ; preds = %434
  %445 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %445, align 8
  %446 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 111, ptr %446, align 1
  %447 = lshr i16 %436, 8
  %448 = trunc i16 %447 to i8
  %449 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %448, ptr %449, align 2
  %450 = trunc i16 %436 to i8
  %451 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %450, ptr %451, align 1
  %452 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %452, align 8
  %453 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %454 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %455 = load i8, ptr %454, align 4
  %456 = lshr i8 %455, 1
  %457 = zext i8 %456 to i16
  store i16 %457, ptr %452, align 8
  %458 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %445, ptr %458, align 8
  %459 = load ptr, ptr %453, align 4
  %460 = tail call i32 @i2c_transfer(ptr noundef %459, ptr noundef %452, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %461

461:                                              ; preds = %444, %442, %439
  %462 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 14
  %463 = load i8, ptr %462, align 2
  %464 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 15
  %465 = load i8, ptr %464, align 1
  %466 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %468, label %473

468:                                              ; preds = %461
  %469 = load i32, ptr @debug, align 4
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %487, label %471

471:                                              ; preds = %468
  %472 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %487

473:                                              ; preds = %461
  %474 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %474, align 8
  %475 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 112, ptr %475, align 1
  %476 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %463, ptr %476, align 2
  %477 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %465, ptr %477, align 1
  %478 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %478, align 8
  %479 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %480 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %481 = load i8, ptr %480, align 4
  %482 = lshr i8 %481, 1
  %483 = zext i8 %482 to i16
  store i16 %483, ptr %478, align 8
  %484 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %474, ptr %484, align 8
  %485 = load ptr, ptr %479, align 4
  %486 = tail call i32 @i2c_transfer(ptr noundef %485, ptr noundef %478, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %487

487:                                              ; preds = %473, %471, %468
  %488 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 17
  %489 = load i8, ptr %488, align 1
  %490 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 18
  %491 = load i8, ptr %490, align 2
  %492 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %499

494:                                              ; preds = %487
  %495 = load i32, ptr @debug, align 4
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %513, label %497

497:                                              ; preds = %494
  %498 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %513

499:                                              ; preds = %487
  %500 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %500, align 8
  %501 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 113, ptr %501, align 1
  %502 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %489, ptr %502, align 2
  %503 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %491, ptr %503, align 1
  %504 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %504, align 8
  %505 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %506 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %507 = load i8, ptr %506, align 4
  %508 = lshr i8 %507, 1
  %509 = zext i8 %508 to i16
  store i16 %509, ptr %504, align 8
  %510 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %500, ptr %510, align 8
  %511 = load ptr, ptr %505, align 4
  %512 = tail call i32 @i2c_transfer(ptr noundef %511, ptr noundef %504, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %513

513:                                              ; preds = %499, %497, %494
  %514 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 19
  %515 = load i8, ptr %514, align 1
  %516 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 20
  %517 = load i8, ptr %516, align 2
  %518 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %513
  %521 = load i32, ptr @debug, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %539, label %523

523:                                              ; preds = %520
  %524 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %539

525:                                              ; preds = %513
  %526 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %526, align 8
  %527 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 114, ptr %527, align 1
  %528 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %515, ptr %528, align 2
  %529 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %517, ptr %529, align 1
  %530 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %530, align 8
  %531 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %532 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %533 = load i8, ptr %532, align 4
  %534 = lshr i8 %533, 1
  %535 = zext i8 %534 to i16
  store i16 %535, ptr %530, align 8
  %536 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %526, ptr %536, align 8
  %537 = load ptr, ptr %531, align 4
  %538 = tail call i32 @i2c_transfer(ptr noundef %537, ptr noundef %530, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %539

539:                                              ; preds = %525, %523, %520
  %540 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 21
  %541 = load i8, ptr %540, align 1
  %542 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 22
  %543 = load i8, ptr %542, align 2
  %544 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %551

546:                                              ; preds = %539
  %547 = load i32, ptr @debug, align 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %565, label %549

549:                                              ; preds = %546
  %550 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %565

551:                                              ; preds = %539
  %552 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %552, align 8
  %553 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 115, ptr %553, align 1
  %554 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %541, ptr %554, align 2
  %555 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %543, ptr %555, align 1
  %556 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %556, align 8
  %557 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %558 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %559 = load i8, ptr %558, align 4
  %560 = lshr i8 %559, 1
  %561 = zext i8 %560 to i16
  store i16 %561, ptr %556, align 8
  %562 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %552, ptr %562, align 8
  %563 = load ptr, ptr %557, align 4
  %564 = tail call i32 @i2c_transfer(ptr noundef %563, ptr noundef %556, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %565

565:                                              ; preds = %551, %549, %546
  %566 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 16
  %567 = load i8, ptr %566, align 2
  %568 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %569 = icmp slt i32 %568, 0
  br i1 %569, label %570, label %575

570:                                              ; preds = %565
  %571 = load i32, ptr @debug, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %589, label %573

573:                                              ; preds = %570
  %574 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %589

575:                                              ; preds = %565
  %576 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %576, align 8
  %577 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 75, ptr %577, align 1
  %578 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %578, align 2
  %579 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %567, ptr %579, align 1
  %580 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %580, align 8
  %581 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %582 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %583 = load i8, ptr %582, align 4
  %584 = lshr i8 %583, 1
  %585 = zext i8 %584 to i16
  store i16 %585, ptr %580, align 8
  %586 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %576, ptr %586, align 8
  %587 = load ptr, ptr %581, align 4
  %588 = tail call i32 @i2c_transfer(ptr noundef %587, ptr noundef %580, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %589

589:                                              ; preds = %575, %573, %570
  %590 = load i16, ptr %286, align 2
  %591 = icmp eq i16 %590, -32624
  br i1 %591, label %629, label %592

592:                                              ; preds = %589
  %593 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 923)
  %594 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 6
  %595 = load i8, ptr %594, align 2
  %596 = getelementptr %struct.dibx000_agc_config, ptr %18, i32 %20, i32 8
  %597 = load i8, ptr %596, align 2
  %598 = tail call i32 @mutex_lock_interruptible(ptr noundef %39) #14
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %600, label %605

600:                                              ; preds = %592
  %601 = load i32, ptr @debug, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %629, label %603

603:                                              ; preds = %600
  %604 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %629

605:                                              ; preds = %592
  %606 = zext i8 %595 to i16
  %607 = shl nuw nsw i16 %606, 4
  %608 = and i16 %593, -29
  %609 = or i16 %607, %608
  %610 = zext i8 %597 to i16
  %611 = shl nuw nsw i16 %610, 2
  %612 = or i16 %609, %611
  %613 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %613, align 8
  %614 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -101, ptr %614, align 1
  %615 = lshr i16 %612, 8
  %616 = trunc i16 %615 to i8
  %617 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %616, ptr %617, align 2
  %618 = trunc i16 %612 to i8
  %619 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %618, ptr %619, align 1
  %620 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %620, align 8
  %621 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %622 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %623 = load i8, ptr %622, align 4
  %624 = lshr i8 %623, 1
  %625 = zext i8 %624 to i16
  store i16 %625, ptr %620, align 8
  %626 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %613, ptr %626, align 8
  %627 = load ptr, ptr %621, align 4
  %628 = tail call i32 @i2c_transfer(ptr noundef %627, ptr noundef %620, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %39) #14
  br label %629

629:                                              ; preds = %605, %603, %600, %589, %33, %30, %7
  %630 = phi i32 [ 0, %7 ], [ -22, %33 ], [ -22, %30 ], [ 0, %589 ], [ 0, %600 ], [ 0, %603 ], [ 0, %605 ]
  ret i32 %630
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_read_word) #15
  br label %47

11:                                               ; preds = %2
  %12 = lshr i16 %1, 8
  %13 = trunc i16 %12 to i8
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 %13, ptr %14, align 8
  %15 = trunc i16 %1 to i8
  %16 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %17, i8 0, i32 24, i1 false) #14
  %18 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = lshr i8 %20, 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %17, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %14, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 2
  store i16 2, ptr %24, align 4
  %25 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1
  store i16 %22, ptr %25, align 4
  %26 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 24
  %28 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1, i32 3
  store ptr %27, ptr %28, align 4
  %29 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1, i32 2
  store i16 2, ptr %29, align 4
  %30 = load ptr, ptr %18, align 4
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %17, i32 noundef 2) #14
  %32 = icmp ne i32 %31, 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %11
  %37 = zext i16 %1 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__dib8000_read_word, i32 noundef %37) #15
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i8, ptr %27, align 4
  %41 = zext i8 %40 to i16
  %42 = shl nuw i16 %41, 8
  %43 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 24, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  %46 = or i16 %42, %45
  tail call void @mutex_unlock(ptr noundef %3) #14
  br label %47

47:                                               ; preds = %39, %9, %6
  %48 = phi i16 [ %46, %39 ], [ 0, %9 ], [ 0, %6 ]
  ret i16 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_write_word(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %35

12:                                               ; preds = %3
  %13 = lshr i16 %1, 8
  %14 = trunc i16 %13 to i8
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 %14, ptr %15, align 8
  %16 = trunc i16 %1 to i8
  %17 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 %16, ptr %17, align 1
  %18 = lshr i16 %2, 8
  %19 = trunc i16 %18 to i8
  %20 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %19, ptr %20, align 2
  %21 = trunc i16 %2 to i8
  %22 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %23, align 8
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %15, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 2
  store i16 4, ptr %30, align 4
  %31 = load ptr, ptr %24, align 4
  %32 = tail call i32 @i2c_transfer(ptr noundef %31, ptr noundef %23, i32 noundef 1) #14
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %35

35:                                               ; preds = %12, %10, %7
  %36 = phi i32 [ %34, %12 ], [ -22, %10 ], [ -22, %7 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_read32(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_read32) #15
  br label %72

11:                                               ; preds = %2
  %12 = lshr i16 %1, 8
  %13 = trunc i16 %12 to i8
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 %13, ptr %14, align 8
  %15 = trunc i16 %1 to i8
  %16 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %17, i8 0, i32 24, i1 false) #14
  %18 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = lshr i8 %20, 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %17, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %14, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 2
  store i16 2, ptr %24, align 4
  %25 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1
  store i16 %22, ptr %25, align 4
  %26 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 24
  %28 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1, i32 3
  store ptr %27, ptr %28, align 4
  %29 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 1, i32 2
  store i16 2, ptr %29, align 4
  %30 = load ptr, ptr %18, align 4
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %17, i32 noundef 2) #14
  %32 = icmp ne i32 %31, 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %11
  %37 = zext i16 %1 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__dib8000_read_word, i32 noundef %37) #15
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i8, ptr %27, align 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 24, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add i16 %1, 1
  %46 = lshr i16 %45, 8
  %47 = trunc i16 %46 to i8
  store i8 %47, ptr %14, align 8
  %48 = trunc i16 %45 to i8
  store i8 %48, ptr %16, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %17, i8 0, i32 24, i1 false) #14
  %49 = load i8, ptr %19, align 4
  %50 = lshr i8 %49, 1
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %17, align 8
  store ptr %14, ptr %23, align 8
  store i16 2, ptr %24, align 4
  store i16 %51, ptr %25, align 4
  store i16 1, ptr %26, align 2
  store ptr %27, ptr %28, align 4
  store i16 2, ptr %29, align 4
  %52 = load ptr, ptr %18, align 4
  %53 = tail call i32 @i2c_transfer(ptr noundef %52, ptr noundef %17, i32 noundef 2) #14
  %54 = icmp ne i32 %53, 2
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = zext i16 %45 to i32
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__dib8000_read_word, i32 noundef %59) #15
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i8, ptr %27, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = load i8, ptr %42, align 1
  %66 = zext i8 %65 to i32
  tail call void @mutex_unlock(ptr noundef %3) #14
  %67 = shl nuw i32 %41, 24
  %68 = shl nuw nsw i32 %44, 16
  %69 = or i32 %68, %67
  %70 = or i32 %69, %66
  %71 = or i32 %70, %64
  br label %72

72:                                               ; preds = %61, %9, %6
  %73 = phi i32 [ %71, %61 ], [ 0, %9 ], [ 0, %6 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_reset_pll(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dib8000_config, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, -32624
  br i1 %6, label %231, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %34

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %21, align 8
  %22 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -123, ptr %22, align 1
  %23 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %9, ptr %23, align 2
  %24 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %11, ptr %24, align 1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %25, align 8
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %21, ptr %31, align 8
  %32 = load ptr, ptr %26, align 4
  %33 = tail call i32 @i2c_transfer(ptr noundef %32, ptr noundef %25, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %34

34:                                               ; preds = %20, %18, %15
  %35 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 9
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  %38 = shl nuw i16 %37, 8
  %39 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 8
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i16
  %42 = shl nuw nsw i16 %41, 5
  %43 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 7
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  %46 = shl nuw nsw i16 %45, 4
  %47 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 4
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i16
  %50 = shl nuw nsw i16 %49, 1
  %51 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 5
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i16
  %54 = or i16 %38, %42
  %55 = or i16 %54, %46
  %56 = or i16 %55, %50
  %57 = or i16 %56, %53
  %58 = or i16 %57, 1032
  %59 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #14
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %34
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %83

66:                                               ; preds = %34
  %67 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %67, align 8
  %68 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -122, ptr %68, align 1
  %69 = lshr i16 %58, 8
  %70 = trunc i16 %69 to i8
  %71 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %70, ptr %71, align 2
  %72 = trunc i16 %58 to i8
  %73 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %72, ptr %73, align 1
  %74 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %74, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %76 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %77 = load i8, ptr %76, align 4
  %78 = lshr i8 %77, 1
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %74, align 8
  %80 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %67, ptr %80, align 8
  %81 = load ptr, ptr %75, align 4
  %82 = tail call i32 @i2c_transfer(ptr noundef %81, ptr noundef %74, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %83

83:                                               ; preds = %66, %64, %61
  %84 = and i16 %58, -9
  %85 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 6
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i16
  %88 = shl nuw nsw i16 %87, 3
  %89 = or i16 %88, %84
  %90 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #14
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i32, ptr @debug, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %114

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %98, align 8
  %99 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -122, ptr %99, align 1
  %100 = lshr i16 %89, 8
  %101 = trunc i16 %100 to i8
  %102 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %101, ptr %102, align 2
  %103 = trunc i16 %89 to i8
  %104 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %103, ptr %104, align 1
  %105 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %105, align 8
  %106 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %107 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %108 = load i8, ptr %107, align 4
  %109 = lshr i8 %108, 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %105, align 8
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %98, ptr %111, align 8
  %112 = load ptr, ptr %106, align 4
  %113 = tail call i32 @i2c_transfer(ptr noundef %112, ptr noundef %105, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %114

114:                                              ; preds = %97, %95
  %115 = load i32, ptr @debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = zext i16 %89 to i32
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dib8000_reset_pll, i32 noundef %118) #15
  br label %120

120:                                              ; preds = %117, %114, %92
  %121 = load ptr, ptr %2, align 8
  %122 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %121, i32 0, i32 10
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %159

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 11
  %127 = load i8, ptr %126, align 1
  %128 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 10
  %129 = load i8, ptr %128, align 4
  %130 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #14
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, ptr @debug, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %364, label %135

135:                                              ; preds = %132
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %356

137:                                              ; preds = %125
  %138 = zext i8 %127 to i16
  %139 = shl nuw i16 %138, 8
  %140 = zext i8 %129 to i16
  %141 = shl nuw nsw i16 %140, 7
  %142 = or i16 %141, %139
  %143 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %143, align 8
  %144 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -120, ptr %144, align 1
  %145 = lshr i16 %142, 8
  %146 = trunc i16 %145 to i8
  %147 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %146, ptr %147, align 2
  %148 = trunc i16 %141 to i8
  %149 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %148, ptr %149, align 1
  %150 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %150, align 8
  %151 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %152 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %153 = load i8, ptr %152, align 4
  %154 = lshr i8 %153, 1
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %150, align 8
  %156 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %143, ptr %156, align 8
  %157 = load ptr, ptr %151, align 4
  %158 = tail call i32 @i2c_transfer(ptr noundef %157, ptr noundef %150, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %356

159:                                              ; preds = %120
  %160 = getelementptr inbounds %struct.dib8000_config, ptr %0, i32 0, i32 16
  %161 = load i8, ptr %160, align 2
  %162 = icmp eq i8 %161, 0
  %163 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 11
  %164 = load i8, ptr %163, align 1
  %165 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 10
  %166 = load i8, ptr %165, align 4
  %167 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #14
  %168 = icmp slt i32 %167, 0
  br i1 %162, label %202, label %169

169:                                              ; preds = %159
  br i1 %168, label %170, label %175

170:                                              ; preds = %169
  %171 = load i32, ptr @debug, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %364, label %173

173:                                              ; preds = %170
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %356

175:                                              ; preds = %169
  %176 = and i8 %161, 3
  %177 = zext i8 %176 to i16
  %178 = shl nuw nsw i16 %177, 10
  %179 = zext i8 %164 to i16
  %180 = shl nuw i16 %179, 8
  %181 = or i16 %180, %178
  %182 = zext i8 %166 to i16
  %183 = shl nuw nsw i16 %182, 7
  %184 = or i16 %181, %183
  %185 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %185, align 8
  %186 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -120, ptr %186, align 1
  %187 = lshr i16 %184, 8
  %188 = trunc i16 %187 to i8
  %189 = or i8 %188, 16
  %190 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %189, ptr %190, align 2
  %191 = trunc i16 %183 to i8
  %192 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %191, ptr %192, align 1
  %193 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %193, align 8
  %194 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %195 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %196 = load i8, ptr %195, align 4
  %197 = lshr i8 %196, 1
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %193, align 8
  %199 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %185, ptr %199, align 8
  %200 = load ptr, ptr %194, align 4
  %201 = tail call i32 @i2c_transfer(ptr noundef %200, ptr noundef %193, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %356

202:                                              ; preds = %159
  br i1 %168, label %203, label %208

203:                                              ; preds = %202
  %204 = load i32, ptr @debug, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %364, label %206

206:                                              ; preds = %203
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %356

208:                                              ; preds = %202
  %209 = zext i8 %164 to i16
  %210 = shl nuw i16 %209, 8
  %211 = zext i8 %166 to i16
  %212 = shl nuw nsw i16 %211, 7
  %213 = or i16 %212, %210
  %214 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %214, align 8
  %215 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -120, ptr %215, align 1
  %216 = lshr i16 %213, 8
  %217 = trunc i16 %216 to i8
  %218 = or i8 %217, 28
  %219 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %218, ptr %219, align 2
  %220 = trunc i16 %212 to i8
  %221 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %220, ptr %221, align 1
  %222 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %222, align 8
  %223 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %224 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %225 = load i8, ptr %224, align 4
  %226 = lshr i8 %225, 1
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %222, align 8
  %228 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %214, ptr %228, align 8
  %229 = load ptr, ptr %223, align 4
  %230 = tail call i32 @i2c_transfer(ptr noundef %229, ptr noundef %222, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %356

231:                                              ; preds = %1
  %232 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 5
  %233 = load i8, ptr %232, align 1
  %234 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 4
  %235 = load i8, ptr %234, align 2
  %236 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 3
  %237 = load i8, ptr %236, align 1
  %238 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 2
  %239 = load i8, ptr %238, align 4
  %240 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %241 = tail call i32 @mutex_lock_interruptible(ptr noundef %240) #14
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %231
  %244 = load i32, ptr @debug, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %274, label %246

246:                                              ; preds = %243
  %247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %274

248:                                              ; preds = %231
  %249 = icmp eq i8 %233, 0
  %250 = select i1 %249, i16 8192, i16 0
  %251 = zext i8 %235 to i16
  %252 = shl i16 %251, 12
  %253 = or i16 %252, %250
  %254 = zext i8 %237 to i16
  %255 = shl nuw nsw i16 %254, 6
  %256 = or i16 %253, %255
  %257 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 7, ptr %257, align 8
  %258 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 64, ptr %258, align 1
  %259 = lshr i16 %256, 8
  %260 = trunc i16 %259 to i8
  %261 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %260, ptr %261, align 2
  %262 = trunc i16 %255 to i8
  %263 = or i8 %239, %262
  %264 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %263, ptr %264, align 1
  %265 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %265, align 8
  %266 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %267 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %268 = load i8, ptr %267, align 4
  %269 = lshr i8 %268, 1
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %265, align 8
  %271 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %257, ptr %271, align 8
  %272 = load ptr, ptr %266, align 4
  %273 = tail call i32 @i2c_transfer(ptr noundef %272, ptr noundef %265, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %240) #14
  br label %274

274:                                              ; preds = %248, %246, %243
  %275 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1857)
  %276 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 6
  %277 = load i8, ptr %276, align 4
  %278 = tail call i32 @mutex_lock_interruptible(ptr noundef %240) #14
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load i32, ptr @debug, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %305, label %283

283:                                              ; preds = %280
  %284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %305

285:                                              ; preds = %274
  %286 = icmp eq i8 %277, 0
  %287 = select i1 %286, i16 -32768, i16 0
  %288 = or i16 %287, %275
  %289 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 7, ptr %289, align 8
  %290 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 65, ptr %290, align 1
  %291 = lshr i16 %288, 8
  %292 = trunc i16 %291 to i8
  %293 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %292, ptr %293, align 2
  %294 = trunc i16 %275 to i8
  %295 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %294, ptr %295, align 1
  %296 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %296, align 8
  %297 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %298 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %299 = load i8, ptr %298, align 4
  %300 = lshr i8 %299, 1
  %301 = zext i8 %300 to i16
  store i16 %301, ptr %296, align 8
  %302 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %289, ptr %302, align 8
  %303 = load ptr, ptr %297, align 4
  %304 = tail call i32 @i2c_transfer(ptr noundef %303, ptr noundef %296, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %240) #14
  br label %305

305:                                              ; preds = %285, %283, %280
  %306 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1858)
  %307 = tail call i32 @mutex_lock_interruptible(ptr noundef %240) #14
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load i32, ptr @debug, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %332, label %312

312:                                              ; preds = %309
  %313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %332

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 7, ptr %315, align 8
  %316 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 66, ptr %316, align 1
  %317 = lshr i16 %306, 8
  %318 = trunc i16 %317 to i8
  %319 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %318, ptr %319, align 2
  %320 = trunc i16 %306 to i8
  %321 = or i8 %320, 1
  %322 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %321, ptr %322, align 1
  %323 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %323, align 8
  %324 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %325 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %326 = load i8, ptr %325, align 4
  %327 = lshr i8 %326, 1
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %323, align 8
  %329 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %315, ptr %329, align 8
  %330 = load ptr, ptr %324, align 4
  %331 = tail call i32 @i2c_transfer(ptr noundef %330, ptr noundef %323, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %240) #14
  br label %332

332:                                              ; preds = %314, %312, %309
  %333 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 11
  %334 = load i8, ptr %333, align 1
  %335 = tail call i32 @mutex_lock_interruptible(ptr noundef %240) #14
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = load i32, ptr @debug, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %364, label %340

340:                                              ; preds = %337
  %341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %356

342:                                              ; preds = %332
  %343 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %343, align 8
  %344 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -120, ptr %344, align 1
  %345 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %334, ptr %345, align 2
  %346 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %346, align 1
  %347 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %347, align 8
  %348 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %349 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %350 = load i8, ptr %349, align 4
  %351 = lshr i8 %350, 1
  %352 = zext i8 %351 to i16
  store i16 %352, ptr %347, align 8
  %353 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %343, ptr %353, align 8
  %354 = load ptr, ptr %348, align 4
  %355 = tail call i32 @i2c_transfer(ptr noundef %354, ptr noundef %347, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %240) #14
  br label %356

356:                                              ; preds = %342, %340, %208, %206, %175, %173, %137, %135
  %357 = load i32, ptr @debug, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 13
  %361 = load i32, ptr %360, align 4
  %362 = lshr i32 %361, 25
  %363 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dib8000_reset_pll_common, i32 noundef %361, i32 noundef %361, i32 noundef %362) #15
  br label %364

364:                                              ; preds = %359, %356, %337, %203, %170, %132
  %365 = load i16, ptr %4, align 2
  %366 = icmp eq i16 %365, -32624
  %367 = load i32, ptr %3, align 4
  %368 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %369 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %370 = icmp slt i32 %369, 0
  br i1 %366, label %424, label %371

371:                                              ; preds = %364
  br i1 %370, label %372, label %377

372:                                              ; preds = %371
  %373 = load i32, ptr @debug, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %396, label %375

375:                                              ; preds = %372
  %376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %396

377:                                              ; preds = %371
  %378 = mul i32 %367, 1000
  %379 = lshr i32 %378, 16
  %380 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %380, align 8
  %381 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 23, ptr %381, align 1
  %382 = lshr i32 %378, 24
  %383 = trunc i32 %382 to i8
  %384 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %383, ptr %384, align 2
  %385 = trunc i32 %379 to i8
  %386 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %385, ptr %386, align 1
  %387 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %387, align 8
  %388 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %389 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %390 = load i8, ptr %389, align 4
  %391 = lshr i8 %390, 1
  %392 = zext i8 %391 to i16
  store i16 %392, ptr %387, align 8
  %393 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %380, ptr %393, align 8
  %394 = load ptr, ptr %388, align 4
  %395 = tail call i32 @i2c_transfer(ptr noundef %394, ptr noundef %387, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %396

396:                                              ; preds = %377, %375, %372
  %397 = load i32, ptr %3, align 4
  %398 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = load i32, ptr @debug, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %479, label %403

403:                                              ; preds = %400
  %404 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %479

405:                                              ; preds = %396
  %406 = trunc i32 %397 to i16
  %407 = mul i16 %406, 1000
  %408 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %408, align 8
  %409 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 24, ptr %409, align 1
  %410 = lshr i16 %407, 8
  %411 = trunc i16 %410 to i8
  %412 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %411, ptr %412, align 2
  %413 = trunc i16 %407 to i8
  %414 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %413, ptr %414, align 1
  %415 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %415, align 8
  %416 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %417 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %418 = load i8, ptr %417, align 4
  %419 = lshr i8 %418, 1
  %420 = zext i8 %419 to i16
  store i16 %420, ptr %415, align 8
  %421 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %408, ptr %421, align 8
  %422 = load ptr, ptr %416, align 4
  %423 = tail call i32 @i2c_transfer(ptr noundef %422, ptr noundef %415, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %479

424:                                              ; preds = %364
  br i1 %370, label %425, label %430

425:                                              ; preds = %424
  %426 = load i32, ptr @debug, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %450, label %428

428:                                              ; preds = %425
  %429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %450

430:                                              ; preds = %424
  %431 = lshr i32 %367, 1
  %432 = mul i32 %431, 1000
  %433 = lshr i32 %432, 16
  %434 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %434, align 8
  %435 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 23, ptr %435, align 1
  %436 = lshr i32 %432, 24
  %437 = trunc i32 %436 to i8
  %438 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %437, ptr %438, align 2
  %439 = trunc i32 %433 to i8
  %440 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %439, ptr %440, align 1
  %441 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %441, align 8
  %442 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %443 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %444 = load i8, ptr %443, align 4
  %445 = lshr i8 %444, 1
  %446 = zext i8 %445 to i16
  store i16 %446, ptr %441, align 8
  %447 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %434, ptr %447, align 8
  %448 = load ptr, ptr %442, align 4
  %449 = tail call i32 @i2c_transfer(ptr noundef %448, ptr noundef %441, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %450

450:                                              ; preds = %430, %428, %425
  %451 = load i32, ptr %3, align 4
  %452 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %450
  %455 = load i32, ptr @debug, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %479, label %457

457:                                              ; preds = %454
  %458 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %479

459:                                              ; preds = %450
  %460 = lshr i32 %451, 1
  %461 = trunc i32 %460 to i16
  %462 = mul i16 %461, 1000
  %463 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %463, align 8
  %464 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 24, ptr %464, align 1
  %465 = lshr i16 %462, 8
  %466 = trunc i16 %465 to i8
  %467 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %466, ptr %467, align 2
  %468 = trunc i16 %462 to i8
  %469 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %468, ptr %469, align 1
  %470 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %470, align 8
  %471 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %472 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %473 = load i8, ptr %472, align 4
  %474 = lshr i8 %473, 1
  %475 = zext i8 %474 to i16
  store i16 %475, ptr %470, align 8
  %476 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %463, ptr %476, align 8
  %477 = load ptr, ptr %471, align 4
  %478 = tail call i32 @i2c_transfer(ptr noundef %477, ptr noundef %470, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %479

479:                                              ; preds = %459, %457, %454, %405, %403, %400
  %480 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 13
  %481 = load i32, ptr %480, align 4
  %482 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %483 = icmp slt i32 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %479
  %485 = load i32, ptr @debug, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %508, label %487

487:                                              ; preds = %484
  %488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %508

489:                                              ; preds = %479
  %490 = lshr i32 %481, 16
  %491 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %491, align 8
  %492 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 27, ptr %492, align 1
  %493 = lshr i32 %481, 24
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %495, ptr %496, align 2
  %497 = trunc i32 %490 to i8
  %498 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %497, ptr %498, align 1
  %499 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %499, align 8
  %500 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %501 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %502 = load i8, ptr %501, align 4
  %503 = lshr i8 %502, 1
  %504 = zext i8 %503 to i16
  store i16 %504, ptr %499, align 8
  %505 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %491, ptr %505, align 8
  %506 = load ptr, ptr %500, align 4
  %507 = tail call i32 @i2c_transfer(ptr noundef %506, ptr noundef %499, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %508

508:                                              ; preds = %489, %487, %484
  %509 = load i32, ptr %480, align 4
  %510 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %508
  %513 = load i32, ptr @debug, align 4
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %534, label %515

515:                                              ; preds = %512
  %516 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %534

517:                                              ; preds = %508
  %518 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %518, align 8
  %519 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 28, ptr %519, align 1
  %520 = lshr i32 %509, 8
  %521 = trunc i32 %520 to i8
  %522 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %521, ptr %522, align 2
  %523 = trunc i32 %509 to i8
  %524 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %523, ptr %524, align 1
  %525 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %525, align 8
  %526 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %527 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %528 = load i8, ptr %527, align 4
  %529 = lshr i8 %528, 1
  %530 = zext i8 %529 to i16
  store i16 %530, ptr %525, align 8
  %531 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %518, ptr %531, align 8
  %532 = load ptr, ptr %526, align 4
  %533 = tail call i32 @i2c_transfer(ptr noundef %532, ptr noundef %525, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %534

534:                                              ; preds = %517, %515, %512
  %535 = load i32, ptr %480, align 4
  %536 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %534
  %539 = load i32, ptr @debug, align 4
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %560, label %541

541:                                              ; preds = %538
  %542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %560

543:                                              ; preds = %534
  %544 = lshr i32 %535, 25
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 3
  %547 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %547, align 8
  %548 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 26, ptr %548, align 1
  %549 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %549, align 2
  %550 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %546, ptr %550, align 1
  %551 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %551, align 8
  %552 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %553 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %554 = load i8, ptr %553, align 4
  %555 = lshr i8 %554, 1
  %556 = zext i8 %555 to i16
  store i16 %556, ptr %551, align 8
  %557 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %547, ptr %557, align 8
  %558 = load ptr, ptr %552, align 4
  %559 = tail call i32 @i2c_transfer(ptr noundef %558, ptr noundef %551, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %560

560:                                              ; preds = %543, %541, %538
  %561 = load i16, ptr %4, align 2
  %562 = icmp eq i16 %561, -32624
  br i1 %562, label %590, label %563

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %3, i32 0, i32 12
  %565 = load i16, ptr %564, align 2
  %566 = tail call i32 @mutex_lock_interruptible(ptr noundef %368) #14
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %563
  %569 = load i32, ptr @debug, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %590, label %571

571:                                              ; preds = %568
  %572 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %590

573:                                              ; preds = %563
  %574 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %574, align 8
  %575 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -102, ptr %575, align 1
  %576 = lshr i16 %565, 8
  %577 = trunc i16 %576 to i8
  %578 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %577, ptr %578, align 2
  %579 = trunc i16 %565 to i8
  %580 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %579, ptr %580, align 1
  %581 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %581, align 8
  %582 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %583 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %584 = load i8, ptr %583, align 4
  %585 = lshr i8 %584, 1
  %586 = zext i8 %585 to i16
  store i16 %586, ptr %581, align 8
  %587 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %574, ptr %587, align 8
  %588 = load ptr, ptr %582, align 4
  %589 = tail call i32 @i2c_transfer(ptr noundef %588, ptr noundef %581, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %368) #14
  br label %590

590:                                              ; preds = %573, %571, %568, %560
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_update_timf(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @dib8000_read32(ptr noundef %0, i16 noundef zeroext 435)
  %3 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 7
  store i32 %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %30

12:                                               ; preds = %1
  %13 = lshr i32 %2, 16
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %14, align 8
  %15 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 29, ptr %15, align 1
  %16 = lshr i32 %2, 24
  %17 = trunc i32 %16 to i8
  %18 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %17, ptr %18, align 2
  %19 = trunc i32 %13 to i8
  %20 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %21, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = lshr i8 %24, 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %21, align 8
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %14, ptr %27, align 8
  %28 = load ptr, ptr %22, align 4
  %29 = tail call i32 @i2c_transfer(ptr noundef %28, ptr noundef %21, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %30

30:                                               ; preds = %12, %10, %7
  %31 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, ptr @debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %55

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %39, align 8
  %40 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 30, ptr %40, align 1
  %41 = lshr i32 %2, 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %42, ptr %43, align 2
  %44 = trunc i32 %2 to i8
  %45 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = lshr i8 %49, 1
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %46, align 8
  %52 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %39, ptr %52, align 8
  %53 = load ptr, ptr %47, align 4
  %54 = tail call i32 @i2c_transfer(ptr noundef %53, ptr noundef %46, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %55

55:                                               ; preds = %38, %36
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %3, align 4
  %60 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 8
  %61 = load i32, ptr %60, align 8
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dib8000_update_timf, i32 noundef %59, i32 noundef %61) #15
  br label %63

63:                                               ; preds = %58, %55, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %7, label %10, label %15

10:                                               ; preds = %2
  br i1 %9, label %13, label %11

11:                                               ; preds = %10
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dib8000_set_bandwidth) #15
  br label %13

13:                                               ; preds = %11, %10
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 8
  br label %18

15:                                               ; preds = %2
  br i1 %9, label %18, label %16

16:                                               ; preds = %15
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib8000_set_bandwidth) #15
  br label %18

18:                                               ; preds = %16, %15, %13
  %19 = phi ptr [ %14, %13 ], [ %5, %16 ], [ %5, %15 ]
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %22 = tail call i32 @mutex_lock_interruptible(ptr noundef %21) #14
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %47

29:                                               ; preds = %18
  %30 = lshr i32 %20, 16
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 0, ptr %31, align 8
  %32 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 29, ptr %32, align 1
  %33 = lshr i32 %20, 24
  %34 = trunc i32 %33 to i8
  %35 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %34, ptr %35, align 2
  %36 = trunc i32 %30 to i8
  %37 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = lshr i8 %41, 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %38, align 8
  %44 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %31, ptr %44, align 8
  %45 = load ptr, ptr %39, align 4
  %46 = tail call i32 @i2c_transfer(ptr noundef %45, ptr noundef %38, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %21) #14
  br label %47

47:                                               ; preds = %29, %27, %24
  %48 = tail call i32 @mutex_lock_interruptible(ptr noundef %21) #14
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, ptr @debug, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %72

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 0, ptr %56, align 8
  %57 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 30, ptr %57, align 1
  %58 = lshr i32 %20, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %59, ptr %60, align 2
  %61 = trunc i32 %20 to i8
  %62 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %63, align 8
  %69 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %56, ptr %69, align 8
  %70 = load ptr, ptr %64, align 4
  %71 = tail call i32 @i2c_transfer(ptr noundef %70, ptr noundef %63, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %21) #14
  br label %72

72:                                               ; preds = %55, %53, %50
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib8000_identify(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i16 @dib8000_i2c_read16(ptr noundef %0, i16 noundef zeroext 896)
  %3 = tail call fastcc zeroext i16 @dib8000_i2c_read16(ptr noundef %0, i16 noundef zeroext 896)
  %4 = zext i16 %3 to i32
  %5 = icmp eq i16 %3, 435
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.dib8000_identify, i32 noundef %4) #15
  br label %39

11:                                               ; preds = %1
  %12 = tail call fastcc zeroext i16 @dib8000_i2c_read16(ptr noundef %0, i16 noundef zeroext 897)
  %13 = zext i16 %12 to i32
  switch i16 %12, label %14 [
    i16 -32768, label %19
    i16 -32767, label %24
    i16 -32766, label %29
    i16 -32624, label %34
  ]

14:                                               ; preds = %11
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.dib8000_identify, i32 noundef %13) #15
  br label %39

19:                                               ; preds = %11
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.dib8000_identify) #15
  br label %39

24:                                               ; preds = %11
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.dib8000_identify) #15
  br label %39

29:                                               ; preds = %11
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.dib8000_identify) #15
  br label %39

34:                                               ; preds = %11
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @__func__.dib8000_identify) #15
  br label %39

39:                                               ; preds = %37, %34, %32, %29, %27, %24, %22, %19, %17, %14, %9, %6
  %40 = phi i16 [ 0, %9 ], [ 0, %6 ], [ 0, %17 ], [ 0, %14 ], [ -32624, %34 ], [ -32624, %37 ], [ -32766, %29 ], [ -32766, %32 ], [ -32767, %24 ], [ -32767, %27 ], [ -32768, %19 ], [ -32768, %22 ]
  ret i16 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib8000_release(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  tail call void @dvb_frontend_detach(ptr noundef nonnull %5) #14
  %8 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  tail call void @dvb_frontend_detach(ptr noundef nonnull %9) #14
  %12 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %13) #14
  %16 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  tail call void @dvb_frontend_detach(ptr noundef nonnull %17) #14
  %20 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @dvb_frontend_detach(ptr noundef nonnull %21) #14
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7, %1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 2
  tail call void @dibx000_exit_i2c_master(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 28
  tail call void @i2c_del_adapter(ptr noundef %26) #14
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 21
  %28 = load ptr, ptr %27, align 8
  tail call void @kfree(ptr noundef %28) #14
  tail call void @kfree(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_wakeup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @dib8000_set_power_mode(ptr noundef %3, i32 noundef 0)
  %4 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %3, i32 noundef 2)
  %5 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %3, i32 noundef 0)
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @debug, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dib8000_wakeup) #15
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, -32624
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call fastcc void @dib8000_sad_calib(ptr noundef %3)
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %62, label %57

21:                                               ; preds = %57
  %22 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %62, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %23, i32 0, i32 1, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef nonnull %23) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %25
  %31 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %32, i32 0, i32 1, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef nonnull %32) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %41, i32 0, i32 1, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef nonnull %41) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %50, i32 0, i32 1, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef nonnull %50) #14
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 0)
  br label %62

57:                                               ; preds = %17
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %19, i32 0, i32 1, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef nonnull %19) #14
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %21

62:                                               ; preds = %57, %52, %48, %43, %39, %34, %30, %25, %21, %17
  %63 = phi i32 [ %60, %57 ], [ 0, %17 ], [ 0, %21 ], [ %28, %25 ], [ 0, %30 ], [ %37, %34 ], [ 0, %39 ], [ %46, %43 ], [ 0, %48 ], [ %56, %52 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_sleep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %43

7:                                                ; preds = %43
  %8 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef nonnull %9) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 1, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef nonnull %18) #14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef nonnull %27) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef nonnull %36) #14
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %58, label %48

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef nonnull %5) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %58, label %7

48:                                               ; preds = %38, %34, %25, %16, %7, %1
  %49 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 17
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, -32624
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @dib8000_set_output_mode(ptr noundef %0, i32 noundef 0)
  br label %54

54:                                               ; preds = %52, %48
  tail call fastcc void @dib8000_set_power_mode(ptr noundef %3, i32 noundef 1)
  %55 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %3, i32 noundef 1)
  %56 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %3, i32 noundef 3)
  %57 = or i32 %56, %55
  br label %58

58:                                               ; preds = %54, %43, %38, %29, %20, %11
  %59 = phi i32 [ %57, %54 ], [ %46, %43 ], [ %14, %11 ], [ %23, %20 ], [ %32, %29 ], [ %41, %38 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_set_frontend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %556, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dib8000_set_frontend) #15
  br label %556

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dib8000_set_frontend) #15
  br label %23

23:                                               ; preds = %21, %18
  store i32 6000000, ptr %15, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 17
  br label %27

27:                                               ; preds = %71, %24
  %28 = phi i32 [ 0, %24 ], [ %76, %71 ]
  %29 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %78, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %30, i32 0, i32 8, i32 15
  store i32 8, ptr %33, align 4
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %34, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(456) %35, ptr noundef align 4 dereferenceable(456) %25, i32 456, i1 false)
  %36 = load i16, ptr %26, align 2
  %37 = icmp eq i16 %36, -32624
  %38 = load ptr, ptr %29, align 4
  br i1 %37, label %47, label %39

39:                                               ; preds = %32
  tail call fastcc void @dib8000_set_diversity_in(ptr noundef %38, i32 noundef 1)
  %40 = icmp eq i32 %28, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %29, align 4
  %43 = tail call fastcc i32 @dib8000_set_output_mode(ptr noundef %42, i32 noundef 4)
  br label %63

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8
  %46 = tail call fastcc i32 @dib8000_set_output_mode(ptr noundef %45, i32 noundef 0)
  br label %63

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %38, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.dib8096p_set_diversity_in, ptr noundef nonnull @__func__.dib8096p_set_diversity_in) #15
  br label %54

54:                                               ; preds = %52, %47
  tail call fastcc void @dib8096p_cfg_DibRx(ptr noundef %49, i32 noundef 5, i32 noundef 0) #14
  %55 = getelementptr inbounds %struct.dib8000_state, ptr %49, i32 0, i32 26
  store i8 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dib8000_state, ptr %49, i32 0, i32 21
  %57 = load ptr, ptr %56, align 8
  tail call fastcc void @dib8000_set_diversity_in(ptr noundef %57, i32 noundef 1) #14
  %58 = icmp eq i32 %28, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %29, align 4
  tail call fastcc void @dib8096p_set_output_mode(ptr noundef %60, i32 noundef 4)
  br label %63

61:                                               ; preds = %54
  %62 = load ptr, ptr %4, align 8
  tail call fastcc void @dib8096p_set_output_mode(ptr noundef %62, i32 noundef 0)
  br label %63

63:                                               ; preds = %61, %59, %44, %41
  %64 = load ptr, ptr %29, align 4
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %64, i32 0, i32 1, i32 32, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = tail call i32 %66(ptr noundef %64) #14
  %70 = load ptr, ptr %29, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi ptr [ %70, %68 ], [ %64, %63 ]
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dib8000_state, ptr %74, i32 0, i32 19
  store i32 20, ptr %75, align 8
  %76 = add nuw nsw i32 %28, 1
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %27

78:                                               ; preds = %71, %27
  %79 = phi i32 [ 6, %71 ], [ %28, %27 ]
  %80 = load i16, ptr %26, align 2
  %81 = icmp eq i16 %80, -32624
  %82 = add nsw i32 %79, -1
  %83 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 %82
  %84 = load ptr, ptr %83, align 4
  br i1 %81, label %86, label %85

85:                                               ; preds = %78
  tail call fastcc void @dib8000_set_diversity_in(ptr noundef %84, i32 noundef 0)
  br label %128

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %84, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr @debug, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.dib8096p_set_diversity_in, ptr noundef nonnull @__func__.dib8096p_set_diversity_in) #15
  br label %93

93:                                               ; preds = %91, %86
  tail call fastcc void @dib8096p_cfg_DibRx(ptr noundef %88, i32 noundef 8, i32 noundef 8) #14
  %94 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %88, i16 noundef zeroext 1287) #14
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 25
  %99 = tail call i32 @mutex_lock_interruptible(ptr noundef %98) #14
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, ptr @debug, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %101
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %124

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 23
  store i8 5, ptr %107, align 8
  %108 = getelementptr %struct.dib8000_state, ptr %88, i32 0, i32 23, i32 1
  store i8 7, ptr %108, align 1
  %109 = lshr i16 %94, 8
  %110 = trunc i16 %109 to i8
  %111 = getelementptr %struct.dib8000_state, ptr %88, i32 0, i32 23, i32 2
  store i8 %110, ptr %111, align 2
  %112 = trunc i16 %94 to i8
  %113 = and i8 %112, -2
  %114 = getelementptr %struct.dib8000_state, ptr %88, i32 0, i32 23, i32 3
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 22
  store i64 17179869184, ptr %115, align 8
  %116 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 1
  %117 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 1, i32 1
  %118 = load i8, ptr %117, align 4
  %119 = lshr i8 %118, 1
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %115, align 8
  %121 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 22, i32 0, i32 3
  store ptr %107, ptr %121, align 8
  %122 = load ptr, ptr %116, align 4
  %123 = tail call i32 @i2c_transfer(ptr noundef %122, ptr noundef %115, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %98) #14
  br label %124

124:                                              ; preds = %106, %104, %101, %93
  %125 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 26
  store i8 1, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dib8000_state, ptr %88, i32 0, i32 21
  %127 = load ptr, ptr %126, align 8
  tail call fastcc void @dib8000_set_diversity_in(ptr noundef %127, i32 noundef 0) #14
  br label %128

128:                                              ; preds = %124, %85
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 1
  %131 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %132 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %133 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %134 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  %135 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %136 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %137 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %138 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  br label %139

139:                                              ; preds = %248, %128
  %140 = phi ptr [ %129, %128 ], [ %201, %248 ]
  %141 = tail call fastcc i32 @dib8000_agc_startup(ptr noundef %140)
  %142 = load ptr, ptr %130, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %192, label %144

144:                                              ; preds = %139
  %145 = tail call fastcc i32 @dib8000_agc_startup(ptr noundef nonnull %142)
  %146 = icmp eq i32 %141, 0
  %147 = icmp ne i32 %145, 0
  %148 = icmp sgt i32 %145, %141
  %149 = select i1 %147, i1 %148, i1 false
  %150 = select i1 %146, i1 true, i1 %149
  %151 = select i1 %150, i32 %145, i32 %141
  %152 = load ptr, ptr %131, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %192, label %154

154:                                              ; preds = %144
  %155 = tail call fastcc i32 @dib8000_agc_startup(ptr noundef nonnull %152)
  %156 = icmp eq i32 %151, 0
  %157 = icmp ne i32 %155, 0
  %158 = icmp sgt i32 %155, %151
  %159 = select i1 %157, i1 %158, i1 false
  %160 = select i1 %156, i1 true, i1 %159
  %161 = select i1 %160, i32 %155, i32 %151
  %162 = load ptr, ptr %132, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %192, label %164

164:                                              ; preds = %154
  %165 = tail call fastcc i32 @dib8000_agc_startup(ptr noundef nonnull %162)
  %166 = icmp eq i32 %161, 0
  %167 = icmp ne i32 %165, 0
  %168 = icmp sgt i32 %165, %161
  %169 = select i1 %167, i1 %168, i1 false
  %170 = select i1 %166, i1 true, i1 %169
  %171 = select i1 %170, i32 %165, i32 %161
  %172 = load ptr, ptr %133, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %192, label %174

174:                                              ; preds = %164
  %175 = tail call fastcc i32 @dib8000_agc_startup(ptr noundef nonnull %172)
  %176 = icmp eq i32 %171, 0
  %177 = icmp ne i32 %175, 0
  %178 = icmp sgt i32 %175, %171
  %179 = select i1 %177, i1 %178, i1 false
  %180 = select i1 %176, i1 true, i1 %179
  %181 = select i1 %180, i32 %175, i32 %171
  %182 = load ptr, ptr %134, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %174
  %185 = tail call fastcc i32 @dib8000_agc_startup(ptr noundef nonnull %182)
  %186 = icmp eq i32 %181, 0
  %187 = icmp ne i32 %185, 0
  %188 = icmp sgt i32 %185, %181
  %189 = select i1 %187, i1 %188, i1 false
  %190 = select i1 %186, i1 true, i1 %189
  %191 = select i1 %190, i32 %185, i32 %181
  br label %192

192:                                              ; preds = %184, %174, %164, %154, %144, %139
  %193 = phi i32 [ %141, %139 ], [ %151, %144 ], [ %161, %154 ], [ %171, %164 ], [ %181, %174 ], [ %191, %184 ]
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %255, label %195

195:                                              ; preds = %192
  %196 = mul i32 %193, 10
  %197 = add i32 %196, 990
  %198 = sdiv i32 %197, 100
  %199 = mul i32 %198, 1000
  %200 = add i32 %199, 1000
  tail call void @usleep_range_state(i32 noundef %199, i32 noundef %200, i32 noundef 2) #14
  %201 = load ptr, ptr %4, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %297, label %249

203:                                              ; preds = %249
  %204 = load ptr, ptr %130, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %258, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %204, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.dib8000_state, ptr %208, i32 0, i32 19
  %210 = load i32, ptr %209, align 8
  %211 = icmp eq i32 %210, 26
  br i1 %211, label %212, label %248

212:                                              ; preds = %206
  %213 = load ptr, ptr %135, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %258, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.dvb_frontend, ptr %213, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.dib8000_state, ptr %217, i32 0, i32 19
  %219 = load i32, ptr %218, align 8
  %220 = icmp eq i32 %219, 26
  br i1 %220, label %221, label %248

221:                                              ; preds = %215
  %222 = load ptr, ptr %136, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %258, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.dvb_frontend, ptr %222, i32 0, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.dib8000_state, ptr %226, i32 0, i32 19
  %228 = load i32, ptr %227, align 8
  %229 = icmp eq i32 %228, 26
  br i1 %229, label %230, label %248

230:                                              ; preds = %224
  %231 = load ptr, ptr %137, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %258, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.dvb_frontend, ptr %231, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.dib8000_state, ptr %235, i32 0, i32 19
  %237 = load i32, ptr %236, align 8
  %238 = icmp eq i32 %237, 26
  br i1 %238, label %239, label %248

239:                                              ; preds = %233
  %240 = load ptr, ptr %138, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %258, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.dvb_frontend, ptr %240, i32 0, i32 3
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.dib8000_state, ptr %244, i32 0, i32 19
  %246 = load i32, ptr %245, align 8
  %247 = icmp eq i32 %246, 26
  br i1 %247, label %258, label %248

248:                                              ; preds = %249, %242, %233, %224, %215, %206
  br label %139

249:                                              ; preds = %195
  %250 = getelementptr inbounds %struct.dvb_frontend, ptr %201, i32 0, i32 3
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.dib8000_state, ptr %251, i32 0, i32 19
  %253 = load i32, ptr %252, align 8
  %254 = icmp eq i32 %253, 26
  br i1 %254, label %203, label %248

255:                                              ; preds = %192
  %256 = load ptr, ptr %4, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %297, label %258

258:                                              ; preds = %255, %242, %239, %230, %221, %212, %203
  %259 = phi ptr [ %256, %255 ], [ %201, %239 ], [ %201, %230 ], [ %201, %221 ], [ %201, %212 ], [ %201, %203 ], [ %201, %242 ]
  %260 = getelementptr inbounds %struct.dvb_frontend, ptr %259, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.dib8000_state, ptr %261, i32 0, i32 19
  store i32 30, ptr %262, align 8
  %263 = load ptr, ptr %130, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %297, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.dvb_frontend, ptr %263, i32 0, i32 3
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr inbounds %struct.dib8000_state, ptr %267, i32 0, i32 19
  store i32 30, ptr %268, align 8
  %269 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %297, label %272

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.dvb_frontend, ptr %270, i32 0, i32 3
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.dib8000_state, ptr %274, i32 0, i32 19
  store i32 30, ptr %275, align 8
  %276 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %297, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.dvb_frontend, ptr %277, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.dib8000_state, ptr %281, i32 0, i32 19
  store i32 30, ptr %282, align 8
  %283 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %297, label %286

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.dvb_frontend, ptr %284, i32 0, i32 3
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.dib8000_state, ptr %288, i32 0, i32 19
  store i32 30, ptr %289, align 8
  %290 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.dvb_frontend, ptr %291, i32 0, i32 3
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.dib8000_state, ptr %295, i32 0, i32 19
  store i32 30, ptr %296, align 8
  br label %297

297:                                              ; preds = %293, %286, %279, %272, %265, %258, %255, %195
  %298 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 35
  %299 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 2
  %300 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 3
  %301 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 4
  %302 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 5
  br label %303

303:                                              ; preds = %452, %297
  %304 = phi i32 [ 0, %297 ], [ %453, %452 ]
  %305 = phi i32 [ 0, %297 ], [ %454, %452 ]
  %306 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 %304
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %455, label %309

309:                                              ; preds = %303
  %310 = tail call fastcc i32 @dib8000_tune(ptr noundef nonnull %307)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %321, label %312

312:                                              ; preds = %309
  %313 = load volatile i32, ptr @jiffies, align 64
  %314 = mul i32 %310, 100
  %315 = tail call i32 @__usecs_to_jiffies(i32 noundef %314) #14
  %316 = add i32 %315, %313
  %317 = icmp eq i32 %305, 0
  %318 = icmp ult i32 %316, %305
  %319 = select i1 %317, i1 true, i1 %318
  %320 = select i1 %319, i32 %316, i32 %305
  br label %321

321:                                              ; preds = %312, %309
  %322 = phi i32 [ %305, %309 ], [ %320, %312 ]
  %323 = load i8, ptr %298, align 2
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %449

325:                                              ; preds = %321
  %326 = load ptr, ptr %306, align 4
  %327 = getelementptr inbounds %struct.dvb_frontend, ptr %326, i32 0, i32 3
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.dib8000_state, ptr %328, i32 0, i32 20
  %330 = load i32, ptr %329, align 4
  %331 = and i32 %330, -2
  %332 = icmp eq i32 %331, -6
  br i1 %332, label %333, label %449

333:                                              ; preds = %325
  %334 = load i32, ptr @debug, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %333
  %337 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dib8000_set_frontend, i32 noundef %304) #15
  %338 = load ptr, ptr %306, align 4
  br label %339

339:                                              ; preds = %336, %333
  %340 = phi ptr [ %338, %336 ], [ %326, %333 ]
  %341 = tail call i32 @dib8000_get_frontend(ptr noundef %340, ptr noundef %6)
  store i8 1, ptr %298, align 2
  br label %342

342:                                              ; preds = %446, %339
  %343 = phi i32 [ 0, %339 ], [ %447, %446 ]
  %344 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 21, i32 %343
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %449, label %347

347:                                              ; preds = %342
  %348 = icmp eq i32 %343, %304
  br i1 %348, label %446, label %349

349:                                              ; preds = %347
  %350 = load i32, ptr @debug, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dib8000_set_frontend, i32 noundef %343) #15
  %354 = load ptr, ptr %344, align 4
  br label %355

355:                                              ; preds = %352, %349
  %356 = phi ptr [ %354, %352 ], [ %345, %349 ]
  %357 = getelementptr inbounds %struct.dvb_frontend, ptr %356, i32 0, i32 3
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.dib8000_state, ptr %358, i32 0, i32 20
  store i32 -3, ptr %359, align 4
  %360 = getelementptr inbounds %struct.dib8000_state, ptr %358, i32 0, i32 19
  store i32 30, ptr %360, align 8
  %361 = load ptr, ptr %306, align 4
  %362 = getelementptr inbounds %struct.dvb_frontend, ptr %361, i32 0, i32 8, i32 18
  %363 = load i8, ptr %362, align 1
  %364 = load ptr, ptr %344, align 4
  %365 = getelementptr inbounds %struct.dvb_frontend, ptr %364, i32 0, i32 8, i32 18
  store i8 %363, ptr %365, align 1
  %366 = load ptr, ptr %306, align 4
  %367 = getelementptr inbounds %struct.dvb_frontend, ptr %366, i32 0, i32 8, i32 4
  %368 = load i32, ptr %367, align 4
  %369 = load ptr, ptr %344, align 4
  %370 = getelementptr inbounds %struct.dvb_frontend, ptr %369, i32 0, i32 8, i32 4
  store i32 %368, ptr %370, align 4
  %371 = load ptr, ptr %306, align 4
  %372 = getelementptr inbounds %struct.dvb_frontend, ptr %371, i32 0, i32 8, i32 6
  %373 = load i32, ptr %372, align 4
  %374 = load ptr, ptr %344, align 4
  %375 = getelementptr inbounds %struct.dvb_frontend, ptr %374, i32 0, i32 8, i32 6
  store i32 %373, ptr %375, align 4
  %376 = load ptr, ptr %306, align 4
  %377 = getelementptr inbounds %struct.dvb_frontend, ptr %376, i32 0, i32 8, i32 8
  %378 = load i32, ptr %377, align 4
  %379 = load ptr, ptr %344, align 4
  %380 = getelementptr inbounds %struct.dvb_frontend, ptr %379, i32 0, i32 8, i32 8
  store i32 %378, ptr %380, align 4
  %381 = load ptr, ptr %306, align 4
  %382 = getelementptr inbounds %struct.dvb_frontend, ptr %381, i32 0, i32 8, i32 17
  %383 = load i8, ptr %382, align 4
  %384 = load ptr, ptr %344, align 4
  %385 = getelementptr inbounds %struct.dvb_frontend, ptr %384, i32 0, i32 8, i32 17
  store i8 %383, ptr %385, align 4
  %386 = load ptr, ptr %306, align 4
  %387 = getelementptr %struct.dvb_frontend, ptr %386, i32 0, i32 8, i32 23, i32 0
  %388 = load i8, ptr %387, align 4
  %389 = load ptr, ptr %344, align 4
  %390 = getelementptr %struct.dvb_frontend, ptr %389, i32 0, i32 8, i32 23, i32 0
  store i8 %388, ptr %390, align 4
  %391 = load ptr, ptr %306, align 4
  %392 = getelementptr %struct.dvb_frontend, ptr %391, i32 0, i32 8, i32 23, i32 0, i32 3
  %393 = load i8, ptr %392, align 4
  %394 = load ptr, ptr %344, align 4
  %395 = getelementptr %struct.dvb_frontend, ptr %394, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 %393, ptr %395, align 4
  %396 = load ptr, ptr %306, align 4
  %397 = getelementptr %struct.dvb_frontend, ptr %396, i32 0, i32 8, i32 23, i32 0, i32 1
  %398 = load i32, ptr %397, align 4
  %399 = load ptr, ptr %344, align 4
  %400 = getelementptr %struct.dvb_frontend, ptr %399, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 %398, ptr %400, align 4
  %401 = load ptr, ptr %306, align 4
  %402 = getelementptr %struct.dvb_frontend, ptr %401, i32 0, i32 8, i32 23, i32 0, i32 2
  %403 = load i32, ptr %402, align 4
  %404 = load ptr, ptr %344, align 4
  %405 = getelementptr %struct.dvb_frontend, ptr %404, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 %403, ptr %405, align 4
  %406 = load ptr, ptr %306, align 4
  %407 = getelementptr %struct.dvb_frontend, ptr %406, i32 0, i32 8, i32 23, i32 1
  %408 = load i8, ptr %407, align 4
  %409 = load ptr, ptr %344, align 4
  %410 = getelementptr %struct.dvb_frontend, ptr %409, i32 0, i32 8, i32 23, i32 1
  store i8 %408, ptr %410, align 4
  %411 = load ptr, ptr %306, align 4
  %412 = getelementptr %struct.dvb_frontend, ptr %411, i32 0, i32 8, i32 23, i32 1, i32 3
  %413 = load i8, ptr %412, align 4
  %414 = load ptr, ptr %344, align 4
  %415 = getelementptr %struct.dvb_frontend, ptr %414, i32 0, i32 8, i32 23, i32 1, i32 3
  store i8 %413, ptr %415, align 4
  %416 = load ptr, ptr %306, align 4
  %417 = getelementptr %struct.dvb_frontend, ptr %416, i32 0, i32 8, i32 23, i32 1, i32 1
  %418 = load i32, ptr %417, align 4
  %419 = load ptr, ptr %344, align 4
  %420 = getelementptr %struct.dvb_frontend, ptr %419, i32 0, i32 8, i32 23, i32 1, i32 1
  store i32 %418, ptr %420, align 4
  %421 = load ptr, ptr %306, align 4
  %422 = getelementptr %struct.dvb_frontend, ptr %421, i32 0, i32 8, i32 23, i32 1, i32 2
  %423 = load i32, ptr %422, align 4
  %424 = load ptr, ptr %344, align 4
  %425 = getelementptr %struct.dvb_frontend, ptr %424, i32 0, i32 8, i32 23, i32 1, i32 2
  store i32 %423, ptr %425, align 4
  %426 = load ptr, ptr %306, align 4
  %427 = getelementptr %struct.dvb_frontend, ptr %426, i32 0, i32 8, i32 23, i32 2
  %428 = load i8, ptr %427, align 4
  %429 = load ptr, ptr %344, align 4
  %430 = getelementptr %struct.dvb_frontend, ptr %429, i32 0, i32 8, i32 23, i32 2
  store i8 %428, ptr %430, align 4
  %431 = load ptr, ptr %306, align 4
  %432 = getelementptr %struct.dvb_frontend, ptr %431, i32 0, i32 8, i32 23, i32 2, i32 3
  %433 = load i8, ptr %432, align 4
  %434 = load ptr, ptr %344, align 4
  %435 = getelementptr %struct.dvb_frontend, ptr %434, i32 0, i32 8, i32 23, i32 2, i32 3
  store i8 %433, ptr %435, align 4
  %436 = load ptr, ptr %306, align 4
  %437 = getelementptr %struct.dvb_frontend, ptr %436, i32 0, i32 8, i32 23, i32 2, i32 1
  %438 = load i32, ptr %437, align 4
  %439 = load ptr, ptr %344, align 4
  %440 = getelementptr %struct.dvb_frontend, ptr %439, i32 0, i32 8, i32 23, i32 2, i32 1
  store i32 %438, ptr %440, align 4
  %441 = load ptr, ptr %306, align 4
  %442 = getelementptr %struct.dvb_frontend, ptr %441, i32 0, i32 8, i32 23, i32 2, i32 2
  %443 = load i32, ptr %442, align 4
  %444 = load ptr, ptr %344, align 4
  %445 = getelementptr %struct.dvb_frontend, ptr %444, i32 0, i32 8, i32 23, i32 2, i32 2
  store i32 %443, ptr %445, align 4
  br label %446

446:                                              ; preds = %355, %347
  %447 = add nuw nsw i32 %343, 1
  %448 = icmp eq i32 %447, 6
  br i1 %448, label %449, label %342

449:                                              ; preds = %446, %342, %325, %321
  %450 = add nuw nsw i32 %304, 1
  %451 = icmp eq i32 %450, 6
  br i1 %451, label %455, label %452

452:                                              ; preds = %537, %533, %532, %449
  %453 = phi i32 [ %450, %449 ], [ 0, %532 ], [ 0, %533 ], [ 0, %537 ]
  %454 = phi i32 [ %322, %449 ], [ 0, %532 ], [ 0, %533 ], [ 0, %537 ]
  br label %303

455:                                              ; preds = %449, %303
  %456 = phi i32 [ %322, %449 ], [ %305, %303 ]
  %457 = load ptr, ptr %4, align 8
  %458 = getelementptr inbounds %struct.dvb_frontend, ptr %457, i32 0, i32 3
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr inbounds %struct.dib8000_state, ptr %459, i32 0, i32 20
  %461 = load i32, ptr %460, align 4
  switch i32 %461, label %522 [
    i32 0, label %462
    i32 -7, label %462
    i32 -8, label %462
  ]

462:                                              ; preds = %455, %455, %455
  %463 = icmp eq ptr %457, null
  br i1 %463, label %514, label %464

464:                                              ; preds = %462
  %465 = getelementptr inbounds %struct.dib8000_state, ptr %459, i32 0, i32 19
  %466 = load i32, ptr %465, align 8
  %467 = icmp ne i32 %466, 53
  %468 = zext i1 %467 to i32
  %469 = load ptr, ptr %130, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %514, label %471

471:                                              ; preds = %464
  %472 = getelementptr inbounds %struct.dvb_frontend, ptr %469, i32 0, i32 3
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr inbounds %struct.dib8000_state, ptr %473, i32 0, i32 19
  %475 = load i32, ptr %474, align 8
  %476 = icmp eq i32 %475, 53
  %477 = select i1 %476, i32 %468, i32 1
  %478 = load ptr, ptr %299, align 4
  %479 = icmp eq ptr %478, null
  br i1 %479, label %514, label %480

480:                                              ; preds = %471
  %481 = getelementptr inbounds %struct.dvb_frontend, ptr %478, i32 0, i32 3
  %482 = load ptr, ptr %481, align 4
  %483 = getelementptr inbounds %struct.dib8000_state, ptr %482, i32 0, i32 19
  %484 = load i32, ptr %483, align 8
  %485 = icmp eq i32 %484, 53
  %486 = select i1 %485, i32 %477, i32 1
  %487 = load ptr, ptr %300, align 4
  %488 = icmp eq ptr %487, null
  br i1 %488, label %514, label %489

489:                                              ; preds = %480
  %490 = getelementptr inbounds %struct.dvb_frontend, ptr %487, i32 0, i32 3
  %491 = load ptr, ptr %490, align 4
  %492 = getelementptr inbounds %struct.dib8000_state, ptr %491, i32 0, i32 19
  %493 = load i32, ptr %492, align 8
  %494 = icmp eq i32 %493, 53
  %495 = select i1 %494, i32 %486, i32 1
  %496 = load ptr, ptr %301, align 4
  %497 = icmp eq ptr %496, null
  br i1 %497, label %514, label %498

498:                                              ; preds = %489
  %499 = getelementptr inbounds %struct.dvb_frontend, ptr %496, i32 0, i32 3
  %500 = load ptr, ptr %499, align 4
  %501 = getelementptr inbounds %struct.dib8000_state, ptr %500, i32 0, i32 19
  %502 = load i32, ptr %501, align 8
  %503 = icmp eq i32 %502, 53
  %504 = select i1 %503, i32 %495, i32 1
  %505 = load ptr, ptr %302, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %514, label %507

507:                                              ; preds = %498
  %508 = getelementptr inbounds %struct.dvb_frontend, ptr %505, i32 0, i32 3
  %509 = load ptr, ptr %508, align 4
  %510 = getelementptr inbounds %struct.dib8000_state, ptr %509, i32 0, i32 19
  %511 = load i32, ptr %510, align 8
  %512 = icmp eq i32 %511, 53
  %513 = select i1 %512, i32 %504, i32 1
  br label %514

514:                                              ; preds = %507, %498, %489, %480, %471, %464, %462
  %515 = phi i32 [ 0, %462 ], [ %468, %464 ], [ %477, %471 ], [ %486, %480 ], [ %495, %489 ], [ %504, %498 ], [ %513, %507 ]
  %516 = icmp eq i32 %515, 0
  %517 = load i32, ptr @debug, align 4
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %516, i1 %518, i1 false
  br i1 %519, label %520, label %522

520:                                              ; preds = %514
  %521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.dib8000_set_frontend, i32 noundef %461) #15
  br label %541

522:                                              ; preds = %514, %455
  %523 = phi i32 [ %515, %514 ], [ 1, %455 ]
  %524 = icmp eq i32 %523, 1
  %525 = icmp eq i32 %456, 0
  %526 = select i1 %524, i1 %525, i1 false
  br i1 %526, label %527, label %532

527:                                              ; preds = %522
  %528 = load i32, ptr @debug, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %541, label %530

530:                                              ; preds = %527
  %531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.dib8000_set_frontend) #15
  br label %541

532:                                              ; preds = %522
  switch i32 %523, label %452 [
    i32 0, label %541
    i32 1, label %533
  ]

533:                                              ; preds = %532
  %534 = load volatile i32, ptr @jiffies, align 64
  %535 = sub i32 %534, %456
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %452

537:                                              ; preds = %537, %533
  tail call void @msleep(i32 noundef 100) #14
  %538 = load volatile i32, ptr @jiffies, align 64
  %539 = sub i32 %538, %456
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %537, label %452

541:                                              ; preds = %532, %530, %527, %520
  %542 = load i16, ptr %26, align 2
  %543 = icmp eq i16 %542, -32624
  %544 = load ptr, ptr %4, align 8
  %545 = getelementptr inbounds %struct.dib8000_config, ptr %3, i32 0, i32 15
  %546 = load i8, ptr %545, align 1
  %547 = zext i8 %546 to i32
  br i1 %543, label %550, label %548

548:                                              ; preds = %541
  %549 = tail call fastcc i32 @dib8000_set_output_mode(ptr noundef %544, i32 noundef %547)
  br label %556

550:                                              ; preds = %541
  tail call fastcc void @dib8096p_set_output_mode(ptr noundef %544, i32 noundef %547)
  %551 = getelementptr inbounds %struct.dib8000_config, ptr %3, i32 0, i32 17
  %552 = load i8, ptr %551, align 1
  %553 = and i8 %552, 1
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %550
  tail call fastcc void @dib8096p_setDibTxMux(ptr noundef %3, i32 noundef 1)
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %3, i32 noundef 5)
  br label %556

556:                                              ; preds = %555, %550, %548, %12, %9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib8000_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  store i32 1000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_get_frontend(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 6000000, ptr %6, align 4
  %7 = call i32 @dib8000_read_status(ptr noundef %0, ptr noundef nonnull %3)
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %423, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.dib8000_get_frontend) #15
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %180, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %18, i32 0, i32 1, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef nonnull %18, ptr noundef nonnull %3) #14
  %24 = load i32, ptr %3, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %136, label %27

27:                                               ; preds = %173, %162, %151, %140, %20
  %28 = phi i32 [ 1, %20 ], [ 2, %140 ], [ 3, %151 ], [ 4, %162 ], [ 5, %173 ]
  %29 = phi ptr [ %17, %20 ], [ %137, %140 ], [ %148, %151 ], [ %159, %162 ], [ %170, %173 ]
  %30 = trunc i32 %28 to i8
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.dib8000_get_frontend, i32 noundef %28) #15
  br label %35

35:                                               ; preds = %33, %27
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %36, ptr noundef %1) #14
  br label %40

40:                                               ; preds = %133, %35
  %41 = phi i8 [ 0, %35 ], [ %134, %133 ]
  %42 = zext i8 %41 to i32
  %43 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %423, label %46

46:                                               ; preds = %40
  %47 = icmp eq i8 %41, %30
  br i1 %47, label %133, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %29, align 4
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 8, i32 18
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 8, i32 18
  store i8 %51, ptr %52, align 1
  %53 = load ptr, ptr %29, align 4
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %53, i32 0, i32 8, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %43, align 4
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %56, i32 0, i32 8, i32 4
  store i32 %55, ptr %57, align 4
  %58 = load ptr, ptr %29, align 4
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %58, i32 0, i32 8, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %43, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %61, i32 0, i32 8, i32 6
  store i32 %60, ptr %62, align 4
  %63 = load ptr, ptr %29, align 4
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %63, i32 0, i32 8, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %43, align 4
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %66, i32 0, i32 8, i32 8
  store i32 %65, ptr %67, align 4
  %68 = load ptr, ptr %29, align 4
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %68, i32 0, i32 8, i32 17
  %70 = load i8, ptr %69, align 4
  %71 = load ptr, ptr %43, align 4
  %72 = getelementptr inbounds %struct.dvb_frontend, ptr %71, i32 0, i32 8, i32 17
  store i8 %70, ptr %72, align 4
  %73 = load ptr, ptr %29, align 4
  %74 = getelementptr %struct.dvb_frontend, ptr %73, i32 0, i32 8, i32 23, i32 0
  %75 = load i8, ptr %74, align 4
  %76 = load ptr, ptr %43, align 4
  %77 = getelementptr %struct.dvb_frontend, ptr %76, i32 0, i32 8, i32 23, i32 0
  store i8 %75, ptr %77, align 4
  %78 = load ptr, ptr %29, align 4
  %79 = getelementptr %struct.dvb_frontend, ptr %78, i32 0, i32 8, i32 23, i32 0, i32 3
  %80 = load i8, ptr %79, align 4
  %81 = load ptr, ptr %43, align 4
  %82 = getelementptr %struct.dvb_frontend, ptr %81, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 %80, ptr %82, align 4
  %83 = load ptr, ptr %29, align 4
  %84 = getelementptr %struct.dvb_frontend, ptr %83, i32 0, i32 8, i32 23, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %43, align 4
  %87 = getelementptr %struct.dvb_frontend, ptr %86, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 %85, ptr %87, align 4
  %88 = load ptr, ptr %29, align 4
  %89 = getelementptr %struct.dvb_frontend, ptr %88, i32 0, i32 8, i32 23, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %43, align 4
  %92 = getelementptr %struct.dvb_frontend, ptr %91, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 %90, ptr %92, align 4
  %93 = load ptr, ptr %29, align 4
  %94 = getelementptr %struct.dvb_frontend, ptr %93, i32 0, i32 8, i32 23, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = load ptr, ptr %43, align 4
  %97 = getelementptr %struct.dvb_frontend, ptr %96, i32 0, i32 8, i32 23, i32 1
  store i8 %95, ptr %97, align 4
  %98 = load ptr, ptr %29, align 4
  %99 = getelementptr %struct.dvb_frontend, ptr %98, i32 0, i32 8, i32 23, i32 1, i32 3
  %100 = load i8, ptr %99, align 4
  %101 = load ptr, ptr %43, align 4
  %102 = getelementptr %struct.dvb_frontend, ptr %101, i32 0, i32 8, i32 23, i32 1, i32 3
  store i8 %100, ptr %102, align 4
  %103 = load ptr, ptr %29, align 4
  %104 = getelementptr %struct.dvb_frontend, ptr %103, i32 0, i32 8, i32 23, i32 1, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = load ptr, ptr %43, align 4
  %107 = getelementptr %struct.dvb_frontend, ptr %106, i32 0, i32 8, i32 23, i32 1, i32 1
  store i32 %105, ptr %107, align 4
  %108 = load ptr, ptr %29, align 4
  %109 = getelementptr %struct.dvb_frontend, ptr %108, i32 0, i32 8, i32 23, i32 1, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr %43, align 4
  %112 = getelementptr %struct.dvb_frontend, ptr %111, i32 0, i32 8, i32 23, i32 1, i32 2
  store i32 %110, ptr %112, align 4
  %113 = load ptr, ptr %29, align 4
  %114 = getelementptr %struct.dvb_frontend, ptr %113, i32 0, i32 8, i32 23, i32 2
  %115 = load i8, ptr %114, align 4
  %116 = load ptr, ptr %43, align 4
  %117 = getelementptr %struct.dvb_frontend, ptr %116, i32 0, i32 8, i32 23, i32 2
  store i8 %115, ptr %117, align 4
  %118 = load ptr, ptr %29, align 4
  %119 = getelementptr %struct.dvb_frontend, ptr %118, i32 0, i32 8, i32 23, i32 2, i32 3
  %120 = load i8, ptr %119, align 4
  %121 = load ptr, ptr %43, align 4
  %122 = getelementptr %struct.dvb_frontend, ptr %121, i32 0, i32 8, i32 23, i32 2, i32 3
  store i8 %120, ptr %122, align 4
  %123 = load ptr, ptr %29, align 4
  %124 = getelementptr %struct.dvb_frontend, ptr %123, i32 0, i32 8, i32 23, i32 2, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %43, align 4
  %127 = getelementptr %struct.dvb_frontend, ptr %126, i32 0, i32 8, i32 23, i32 2, i32 1
  store i32 %125, ptr %127, align 4
  %128 = load ptr, ptr %29, align 4
  %129 = getelementptr %struct.dvb_frontend, ptr %128, i32 0, i32 8, i32 23, i32 2, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %43, align 4
  %132 = getelementptr %struct.dvb_frontend, ptr %131, i32 0, i32 8, i32 23, i32 2, i32 2
  store i32 %130, ptr %132, align 4
  br label %133

133:                                              ; preds = %48, %46
  %134 = add nuw nsw i8 %41, 1
  %135 = icmp ult i8 %41, 5
  br i1 %135, label %40, label %423

136:                                              ; preds = %20
  %137 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %180, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.dvb_frontend, ptr %138, i32 0, i32 1, i32 15
  %142 = load ptr, ptr %141, align 4
  %143 = call i32 %142(ptr noundef nonnull %138, ptr noundef nonnull %3) #14
  %144 = load i32, ptr %3, align 4
  %145 = and i32 %144, 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %27

147:                                              ; preds = %140
  %148 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %180, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.dvb_frontend, ptr %149, i32 0, i32 1, i32 15
  %153 = load ptr, ptr %152, align 4
  %154 = call i32 %153(ptr noundef nonnull %149, ptr noundef nonnull %3) #14
  %155 = load i32, ptr %3, align 4
  %156 = and i32 %155, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %27

158:                                              ; preds = %151
  %159 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 4
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %180, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.dvb_frontend, ptr %160, i32 0, i32 1, i32 15
  %164 = load ptr, ptr %163, align 4
  %165 = call i32 %164(ptr noundef nonnull %160, ptr noundef nonnull %3) #14
  %166 = load i32, ptr %3, align 4
  %167 = and i32 %166, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %27

169:                                              ; preds = %162
  %170 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 5
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.dvb_frontend, ptr %171, i32 0, i32 1, i32 15
  %175 = load ptr, ptr %174, align 4
  %176 = call i32 %175(ptr noundef nonnull %171, ptr noundef nonnull %3) #14
  %177 = load i32, ptr %3, align 4
  %178 = and i32 %177, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %27

180:                                              ; preds = %173, %169, %158, %147, %136, %16
  %181 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 508)
  %182 = trunc i16 %181 to i8
  %183 = and i8 %182, 1
  %184 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 18
  store i8 %183, ptr %184, align 1
  %185 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %186 = load i16, ptr %185, align 2
  %187 = icmp eq i16 %186, -32624
  %188 = select i1 %187, i16 572, i16 570
  %189 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %188)
  %190 = zext i16 %189 to i32
  %191 = lshr i32 %190, 6
  %192 = and i32 %191, 1
  %193 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %192, ptr %193, align 4
  %194 = lshr i32 %190, 4
  %195 = and i32 %194, 3
  switch i32 %195, label %204 [
    i32 1, label %196
    i32 2, label %200
  ]

196:                                              ; preds = %180
  %197 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %197, align 4
  %198 = load i32, ptr @debug, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %211, label %208

200:                                              ; preds = %180
  %201 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 3, ptr %201, align 4
  %202 = load i32, ptr @debug, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %211, label %208

204:                                              ; preds = %180
  %205 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 1, ptr %205, align 4
  %206 = load i32, ptr @debug, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204, %200, %196
  %209 = phi ptr [ @.str.85, %196 ], [ @.str.86, %200 ], [ @.str.87, %204 ]
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %209, ptr noundef nonnull @__func__.dib8000_get_frontend) #15
  br label %211

211:                                              ; preds = %208, %204, %200, %196
  %212 = and i32 %190, 3
  switch i32 %212, label %239 [
    i32 0, label %213
    i32 1, label %219
    i32 2, label %225
    i32 3, label %232
  ]

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 0, ptr %214, align 4
  %215 = load i32, ptr @debug, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %240, label %217

217:                                              ; preds = %213
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.dib8000_get_frontend) #15
  br label %240

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 1, ptr %220, align 4
  %221 = load i32, ptr @debug, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %240, label %223

223:                                              ; preds = %219
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.dib8000_get_frontend) #15
  br label %240

225:                                              ; preds = %211
  %226 = load i32, ptr @debug, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.dib8000_get_frontend) #15
  br label %230

230:                                              ; preds = %228, %225
  %231 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 2, ptr %231, align 4
  br label %240

232:                                              ; preds = %211
  %233 = load i32, ptr @debug, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %232
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.dib8000_get_frontend) #15
  br label %237

237:                                              ; preds = %235, %232
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 3, ptr %238, align 4
  br label %240

239:                                              ; preds = %211
  unreachable

240:                                              ; preds = %237, %230, %223, %219, %217, %213
  %241 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 505)
  %242 = trunc i16 %241 to i8
  %243 = and i8 %242, 1
  %244 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 17
  store i8 %243, ptr %244, align 4
  %245 = load i32, ptr @debug, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %248, %240
  br label %266

248:                                              ; preds = %240
  %249 = zext i8 %243 to i32
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.dib8000_get_frontend, i32 noundef %249) #15
  br label %247

251:                                              ; preds = %361
  %252 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  %253 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  %254 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0
  %255 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 3
  %256 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 1
  %257 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 0, i32 2
  %258 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1
  %259 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 3
  %260 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 1
  %261 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 1, i32 2
  %262 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2
  %263 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2, i32 3
  %264 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2, i32 1
  %265 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 2, i32 2
  br label %364

266:                                              ; preds = %361, %247
  %267 = phi i32 [ %362, %361 ], [ 0, %247 ]
  %268 = trunc i32 %267 to i16
  %269 = add i16 %268, 493
  %270 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %269)
  %271 = and i16 %270, 15
  %272 = trunc i16 %271 to i8
  %273 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267
  store i8 %272, ptr %273, align 4
  %274 = add nsw i16 %271, -1
  %275 = icmp ult i16 %274, 13
  %276 = load i32, ptr @debug, align 4
  %277 = icmp ne i32 %276, 0
  %278 = select i1 %275, i1 %277, i1 false
  br i1 %278, label %279, label %282

279:                                              ; preds = %266
  %280 = zext i16 %271 to i32
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.dib8000_get_frontend, i32 noundef %267, i32 noundef %280) #15
  br label %282

282:                                              ; preds = %279, %266
  %283 = trunc i32 %267 to i16
  %284 = add i16 %283, 499
  %285 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %284)
  %286 = and i16 %285, 3
  %287 = icmp eq i16 %286, 3
  %288 = trunc i16 %286 to i8
  %289 = select i1 %287, i8 4, i8 %288
  %290 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 3
  store i8 %289, ptr %290, align 4
  %291 = load i32, ptr @debug, align 4
  %292 = icmp ne i32 %291, 0
  %293 = select i1 %275, i1 %292, i1 false
  br i1 %293, label %294, label %297

294:                                              ; preds = %282
  %295 = zext i8 %289 to i32
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.dib8000_get_frontend, i32 noundef %267, i32 noundef %295) #15
  br label %297

297:                                              ; preds = %294, %282
  %298 = trunc i32 %267 to i16
  %299 = add i16 %298, 481
  %300 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %299)
  %301 = and i16 %300, 7
  %302 = zext i16 %301 to i32
  switch i32 %302, label %323 [
    i32 1, label %303
    i32 2, label %308
    i32 3, label %313
    i32 5, label %318
  ]

303:                                              ; preds = %297
  %304 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 1
  store i32 1, ptr %304, align 4
  %305 = load i32, ptr @debug, align 4
  %306 = icmp ne i32 %305, 0
  %307 = select i1 %275, i1 %306, i1 false
  br i1 %307, label %328, label %331

308:                                              ; preds = %297
  %309 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 1
  store i32 2, ptr %309, align 4
  %310 = load i32, ptr @debug, align 4
  %311 = icmp ne i32 %310, 0
  %312 = select i1 %275, i1 %311, i1 false
  br i1 %312, label %328, label %331

313:                                              ; preds = %297
  %314 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 1
  store i32 3, ptr %314, align 4
  %315 = load i32, ptr @debug, align 4
  %316 = icmp ne i32 %315, 0
  %317 = select i1 %275, i1 %316, i1 false
  br i1 %317, label %328, label %331

318:                                              ; preds = %297
  %319 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 1
  store i32 5, ptr %319, align 4
  %320 = load i32, ptr @debug, align 4
  %321 = icmp ne i32 %320, 0
  %322 = select i1 %275, i1 %321, i1 false
  br i1 %322, label %328, label %331

323:                                              ; preds = %297
  %324 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 1
  store i32 7, ptr %324, align 4
  %325 = load i32, ptr @debug, align 4
  %326 = icmp ne i32 %325, 0
  %327 = select i1 %275, i1 %326, i1 false
  br i1 %327, label %328, label %331

328:                                              ; preds = %323, %318, %313, %308, %303
  %329 = phi ptr [ @.str.95, %303 ], [ @.str.96, %308 ], [ @.str.97, %313 ], [ @.str.98, %318 ], [ @.str.99, %323 ]
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %329, ptr noundef nonnull @__func__.dib8000_get_frontend, i32 noundef %267) #15
  br label %331

331:                                              ; preds = %328, %323, %318, %313, %308, %303
  %332 = trunc i32 %267 to i16
  %333 = add i16 %332, 487
  %334 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %333)
  %335 = and i16 %334, 3
  %336 = zext i16 %335 to i32
  switch i32 %336, label %352 [
    i32 0, label %337
    i32 1, label %342
    i32 2, label %347
    i32 3, label %353
  ]

337:                                              ; preds = %331
  %338 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 2
  store i32 12, ptr %338, align 4
  %339 = load i32, ptr @debug, align 4
  %340 = icmp ne i32 %339, 0
  %341 = select i1 %275, i1 %340, i1 false
  br i1 %341, label %358, label %361

342:                                              ; preds = %331
  %343 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 2
  store i32 0, ptr %343, align 4
  %344 = load i32, ptr @debug, align 4
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %275, i1 %345, i1 false
  br i1 %346, label %358, label %361

347:                                              ; preds = %331
  %348 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 2
  store i32 1, ptr %348, align 4
  %349 = load i32, ptr @debug, align 4
  %350 = icmp ne i32 %349, 0
  %351 = select i1 %275, i1 %350, i1 false
  br i1 %351, label %358, label %361

352:                                              ; preds = %331
  unreachable

353:                                              ; preds = %331
  %354 = getelementptr %struct.dtv_frontend_properties, ptr %1, i32 0, i32 23, i32 %267, i32 2
  store i32 3, ptr %354, align 4
  %355 = load i32, ptr @debug, align 4
  %356 = icmp ne i32 %355, 0
  %357 = select i1 %275, i1 %356, i1 false
  br i1 %357, label %358, label %361

358:                                              ; preds = %353, %347, %342, %337
  %359 = phi ptr [ @.str.100, %337 ], [ @.str.101, %342 ], [ @.str.102, %347 ], [ @.str.103, %353 ]
  %360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %359, ptr noundef nonnull @__func__.dib8000_get_frontend, i32 noundef %267) #15
  br label %361

361:                                              ; preds = %358, %353, %347, %342, %337
  %362 = add nuw nsw i32 %267, 1
  %363 = icmp eq i32 %362, 3
  br i1 %363, label %251, label %266

364:                                              ; preds = %370, %251
  %365 = phi i8 [ 1, %251 ], [ %421, %370 ]
  %366 = zext i8 %365 to i32
  %367 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 %366
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %423, label %370

370:                                              ; preds = %364
  %371 = load i8, ptr %184, align 1
  %372 = getelementptr inbounds %struct.dvb_frontend, ptr %368, i32 0, i32 8, i32 18
  store i8 %371, ptr %372, align 1
  %373 = load i32, ptr %193, align 4
  %374 = load ptr, ptr %367, align 4
  %375 = getelementptr inbounds %struct.dvb_frontend, ptr %374, i32 0, i32 8, i32 4
  store i32 %373, ptr %375, align 4
  %376 = load i32, ptr %252, align 4
  %377 = load ptr, ptr %367, align 4
  %378 = getelementptr inbounds %struct.dvb_frontend, ptr %377, i32 0, i32 8, i32 6
  store i32 %376, ptr %378, align 4
  %379 = load i32, ptr %253, align 4
  %380 = load ptr, ptr %367, align 4
  %381 = getelementptr inbounds %struct.dvb_frontend, ptr %380, i32 0, i32 8, i32 8
  store i32 %379, ptr %381, align 4
  %382 = load i8, ptr %244, align 4
  %383 = load ptr, ptr %367, align 4
  %384 = getelementptr inbounds %struct.dvb_frontend, ptr %383, i32 0, i32 8, i32 17
  store i8 %382, ptr %384, align 4
  %385 = load i8, ptr %254, align 4
  %386 = load ptr, ptr %367, align 4
  %387 = getelementptr %struct.dvb_frontend, ptr %386, i32 0, i32 8, i32 23, i32 0
  store i8 %385, ptr %387, align 4
  %388 = load i8, ptr %255, align 4
  %389 = load ptr, ptr %367, align 4
  %390 = getelementptr %struct.dvb_frontend, ptr %389, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 %388, ptr %390, align 4
  %391 = load i32, ptr %256, align 4
  %392 = load ptr, ptr %367, align 4
  %393 = getelementptr %struct.dvb_frontend, ptr %392, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 %391, ptr %393, align 4
  %394 = load i32, ptr %257, align 4
  %395 = load ptr, ptr %367, align 4
  %396 = getelementptr %struct.dvb_frontend, ptr %395, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 %394, ptr %396, align 4
  %397 = load i8, ptr %258, align 4
  %398 = load ptr, ptr %367, align 4
  %399 = getelementptr %struct.dvb_frontend, ptr %398, i32 0, i32 8, i32 23, i32 1
  store i8 %397, ptr %399, align 4
  %400 = load i8, ptr %259, align 4
  %401 = load ptr, ptr %367, align 4
  %402 = getelementptr %struct.dvb_frontend, ptr %401, i32 0, i32 8, i32 23, i32 1, i32 3
  store i8 %400, ptr %402, align 4
  %403 = load i32, ptr %260, align 4
  %404 = load ptr, ptr %367, align 4
  %405 = getelementptr %struct.dvb_frontend, ptr %404, i32 0, i32 8, i32 23, i32 1, i32 1
  store i32 %403, ptr %405, align 4
  %406 = load i32, ptr %261, align 4
  %407 = load ptr, ptr %367, align 4
  %408 = getelementptr %struct.dvb_frontend, ptr %407, i32 0, i32 8, i32 23, i32 1, i32 2
  store i32 %406, ptr %408, align 4
  %409 = load i8, ptr %262, align 4
  %410 = load ptr, ptr %367, align 4
  %411 = getelementptr %struct.dvb_frontend, ptr %410, i32 0, i32 8, i32 23, i32 2
  store i8 %409, ptr %411, align 4
  %412 = load i8, ptr %263, align 4
  %413 = load ptr, ptr %367, align 4
  %414 = getelementptr %struct.dvb_frontend, ptr %413, i32 0, i32 8, i32 23, i32 2, i32 3
  store i8 %412, ptr %414, align 4
  %415 = load i32, ptr %264, align 4
  %416 = load ptr, ptr %367, align 4
  %417 = getelementptr %struct.dvb_frontend, ptr %416, i32 0, i32 8, i32 23, i32 2, i32 1
  store i32 %415, ptr %417, align 4
  %418 = load i32, ptr %265, align 4
  %419 = load ptr, ptr %367, align 4
  %420 = getelementptr %struct.dvb_frontend, ptr %419, i32 0, i32 8, i32 23, i32 2, i32 2
  store i32 %418, ptr %420, align 4
  %421 = add nuw nsw i8 %365, 1
  %422 = icmp ult i8 %365, 5
  br i1 %422, label %364, label %423

423:                                              ; preds = %370, %364, %133, %40, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -32624
  %9 = select i1 %8, i16 570, i16 568
  %10 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %9) #14
  %11 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %16, i32 0, i32 17
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -32624
  %20 = select i1 %19, i16 570, i16 568
  %21 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %16, i16 noundef zeroext %20) #14
  %22 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dib8000_state, ptr %27, i32 0, i32 17
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, -32624
  %31 = select i1 %30, i16 570, i16 568
  %32 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %27, i16 noundef zeroext %31) #14
  %33 = or i16 %21, %32
  %34 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %70, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %39, i32 0, i32 17
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, -32624
  %43 = select i1 %42, i16 570, i16 568
  %44 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %39, i16 noundef zeroext %43) #14
  %45 = or i16 %33, %44
  %46 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %47, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dib8000_state, ptr %51, i32 0, i32 17
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, -32624
  %55 = select i1 %54, i16 570, i16 568
  %56 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %51, i16 noundef zeroext %55) #14
  %57 = or i16 %45, %56
  %58 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %59, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dib8000_state, ptr %63, i32 0, i32 17
  %65 = load i16, ptr %64, align 2
  %66 = icmp eq i16 %65, -32624
  %67 = select i1 %66, i16 570, i16 568
  %68 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %63, i16 noundef zeroext %67) #14
  %69 = or i16 %57, %68
  br label %70

70:                                               ; preds = %61, %49, %37, %25, %14, %2
  %71 = phi i16 [ 0, %2 ], [ %21, %14 ], [ %33, %25 ], [ %45, %37 ], [ %57, %49 ], [ %69, %61 ]
  %72 = zext i16 %71 to i32
  %73 = zext i16 %10 to i32
  %74 = and i32 %73, 8192
  %75 = icmp ne i32 %74, 0
  %76 = and i32 %72, 8192
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  %79 = zext i1 %78 to i32
  %80 = and i32 %73, 256
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %72, 256
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  %85 = or i32 %79, 2
  %86 = select i1 %84, i32 %79, i32 %85
  %87 = and i32 %73, 30
  %88 = icmp eq i32 %87, 30
  %89 = and i32 %72, 30
  %90 = icmp eq i32 %89, 30
  %91 = select i1 %88, i1 true, i1 %90
  %92 = or i32 %86, 8
  %93 = select i1 %91, i32 %92, i32 %86
  %94 = and i32 %73, 4096
  %95 = icmp eq i32 %94, 0
  %96 = and i32 %72, 4096
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  %99 = and i32 %73, 224
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %98, i1 true, i1 %100
  %102 = or i32 %93, 16
  %103 = select i1 %101, i32 %93, i32 %102
  store i32 %103, ptr %1, align 4
  br i1 %98, label %125, label %104

104:                                              ; preds = %70
  %105 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 554)
  %106 = and i16 %105, 1
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i32, ptr %1, align 4
  %110 = or i32 %109, 4
  store i32 %110, ptr %1, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 555)
  %113 = and i16 %112, 1
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %1, align 4
  %117 = or i32 %116, 4
  store i32 %117, ptr %1, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 556)
  %120 = and i16 %119, 1
  %121 = icmp eq i16 %120, 0
  %122 = load i32, ptr %1, align 4
  br i1 %121, label %125, label %123

123:                                              ; preds = %118
  %124 = or i32 %122, 4
  store i32 %124, ptr %1, align 4
  br label %125

125:                                              ; preds = %123, %118, %70
  %126 = phi i32 [ %103, %70 ], [ %124, %123 ], [ %122, %118 ]
  %127 = load ptr, ptr %4, align 4
  %128 = getelementptr inbounds %struct.dib8000_state, ptr %127, i32 0, i32 21
  %129 = load ptr, ptr %128, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  store i16 0, ptr %3, align 2, !annotation !8
  %130 = call i32 @dib8000_read_signal_strength(ptr noundef %0, ptr noundef nonnull %3) #14
  %131 = load i16, ptr %3, align 2
  %132 = zext i16 %131 to i32
  %133 = icmp ult i16 %131, -9583
  br i1 %133, label %134, label %174

134:                                              ; preds = %144, %125
  %135 = phi i32 [ %145, %144 ], [ 1, %125 ]
  %136 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %135
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, %132
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %135, i32 1
  %141 = load i32, ptr %140, align 4
  br label %174

142:                                              ; preds = %134
  %143 = icmp ult i32 %137, %132
  br i1 %143, label %147, label %144

144:                                              ; preds = %142
  %145 = add nuw nsw i32 %135, 1
  %146 = icmp eq i32 %145, 30
  br i1 %146, label %147, label %134

147:                                              ; preds = %144, %142
  %148 = phi i32 [ 0, %144 ], [ %137, %142 ]
  %149 = phi i32 [ 30, %144 ], [ %135, %142 ]
  %150 = add nsw i32 %149, -1
  %151 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %150
  %152 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %150, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %149, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = sub i32 %153, %155
  %157 = load i32, ptr %151, align 4
  %158 = sub i32 %157, %148
  %159 = sub i32 %132, %148
  %160 = zext i32 %159 to i64
  %161 = sext i32 %156 to i64
  %162 = mul nsw i64 %161, %160
  %163 = icmp ult i64 %162, 4294967296
  br i1 %163, label %164, label %167, !prof !9

164:                                              ; preds = %147
  %165 = trunc i64 %162 to i32
  %166 = udiv i32 %165, %158
  br label %171

167:                                              ; preds = %147
  %168 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %158, i64 %162) #17, !srcloc !10
  %169 = extractvalue { i64, i64 } %168, 1
  %170 = trunc i64 %169 to i32
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i32 [ %166, %164 ], [ %170, %167 ]
  %173 = add i32 %172, %155
  br label %174

174:                                              ; preds = %171, %139, %125
  %175 = phi i32 [ %141, %139 ], [ %173, %171 ], [ 108500, %125 ]
  %176 = add i32 %175, -131000
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %177, ptr %178, align 1
  %179 = and i32 %126, 16
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 43
  store i8 1, ptr %182, align 1
  %183 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 49
  store i8 1, ptr %183, align 1
  %184 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48
  store i8 1, ptr %184, align 2
  %185 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46
  store i8 1, ptr %185, align 4
  %186 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47
  store i8 1, ptr %186, align 1
  %187 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %187, align 1
  %188 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %188, align 1
  %189 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %189, align 1
  %190 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %190, align 1
  %191 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %191, align 1
  br label %393

192:                                              ; preds = %174
  %193 = getelementptr inbounds %struct.dib8000_state, ptr %127, i32 0, i32 45
  %194 = load i32, ptr %193, align 8
  %195 = load volatile i32, ptr @jiffies, align 64
  %196 = sub i32 %194, %195
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %280

198:                                              ; preds = %192
  %199 = load volatile i32, ptr @jiffies, align 64
  %200 = add i32 %199, 100
  store i32 %200, ptr %193, align 8
  %201 = tail call fastcc i32 @dib8000_get_snr(ptr noundef %0) #14
  %202 = getelementptr %struct.dib8000_state, ptr %127, i32 0, i32 21, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %198
  %206 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %203) #14
  %207 = add i32 %206, %201
  br label %208

208:                                              ; preds = %205, %198
  %209 = phi i32 [ %207, %205 ], [ %201, %198 ]
  %210 = getelementptr %struct.dib8000_state, ptr %127, i32 0, i32 21, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %211) #14
  %215 = add i32 %214, %209
  br label %216

216:                                              ; preds = %213, %208
  %217 = phi i32 [ %215, %213 ], [ %209, %208 ]
  %218 = getelementptr %struct.dib8000_state, ptr %127, i32 0, i32 21, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %216
  %222 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %219) #14
  %223 = add i32 %222, %217
  br label %224

224:                                              ; preds = %221, %216
  %225 = phi i32 [ %223, %221 ], [ %217, %216 ]
  %226 = getelementptr %struct.dib8000_state, ptr %127, i32 0, i32 21, i32 4
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %227) #14
  %231 = add i32 %230, %225
  br label %232

232:                                              ; preds = %229, %224
  %233 = phi i32 [ %231, %229 ], [ %225, %224 ]
  %234 = getelementptr %struct.dib8000_state, ptr %127, i32 0, i32 21, i32 5
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %235) #14
  %239 = add i32 %238, %233
  br label %240

240:                                              ; preds = %237, %232
  %241 = phi i32 [ %239, %237 ], [ %233, %232 ]
  %242 = icmp ult i32 %241, 65536
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = lshr i32 %241, 16
  %245 = tail call i32 @intlog10(i32 noundef %244) #14
  %246 = mul i32 %245, 10000
  %247 = lshr i32 %246, 24
  br label %248

248:                                              ; preds = %243, %240
  %249 = phi i32 [ %247, %243 ], [ 0, %240 ]
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 43, i32 1
  %252 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %250, ptr %252, align 1
  store i8 1, ptr %251, align 1
  %253 = load ptr, ptr %4, align 4
  %254 = getelementptr inbounds %struct.dib8000_state, ptr %253, i32 0, i32 17
  %255 = load i16, ptr %254, align 2
  %256 = icmp eq i16 %255, -32624
  %257 = select i1 %256, i16 567, i16 565
  %258 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %253, i16 noundef zeroext %257) #14
  %259 = zext i16 %258 to i64
  %260 = getelementptr inbounds %struct.dib8000_state, ptr %127, i32 0, i32 44
  %261 = load i64, ptr %260, align 8
  %262 = icmp sgt i64 %261, %259
  br i1 %262, label %263, label %265

263:                                              ; preds = %248
  %264 = add i64 %261, 4294967296
  store i64 %264, ptr %260, align 8
  br label %265

265:                                              ; preds = %263, %248
  %266 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %266, align 1
  %267 = load i64, ptr %260, align 8
  %268 = add i64 %267, %259
  %269 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %268, ptr %269, align 1
  %270 = tail call fastcc i32 @dib8000_get_time_us(ptr noundef %0, i32 noundef -1) #14
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %265
  %273 = mul i32 %270, 1632
  %274 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %273, i64 1250000000000) #17, !srcloc !10
  %275 = extractvalue { i64, i64 } %274, 1
  %276 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %276, align 1
  %277 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %278 = load i64, ptr %277, align 1
  %279 = add i64 %278, %275
  store i64 %279, ptr %277, align 1
  br label %280

280:                                              ; preds = %272, %265, %192
  %281 = getelementptr inbounds %struct.dib8000_state, ptr %127, i32 0, i32 46
  %282 = load i32, ptr %281, align 4
  %283 = load volatile i32, ptr @jiffies, align 64
  %284 = sub i32 %282, %283
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %319

286:                                              ; preds = %280
  %287 = tail call fastcc i32 @dib8000_get_time_us(ptr noundef %0, i32 noundef -1) #14
  %288 = load volatile i32, ptr @jiffies, align 64
  %289 = add i32 %287, 500
  %290 = udiv i32 %289, 1000
  %291 = tail call i32 @__msecs_to_jiffies(i32 noundef %290) #14
  %292 = add i32 %291, %288
  store i32 %292, ptr %281, align 4
  %293 = load i32, ptr @debug, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %286
  %296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.dib8000_get_stats, i32 noundef %287) #15
  br label %297

297:                                              ; preds = %295, %286
  %298 = load ptr, ptr %4, align 4
  %299 = getelementptr inbounds %struct.dib8000_state, ptr %298, i32 0, i32 17
  %300 = load i16, ptr %299, align 2
  %301 = icmp eq i16 %300, -32624
  %302 = select i1 %301, i16 562, i16 560
  %303 = select i1 %301, i16 563, i16 561
  %304 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %298, i16 noundef zeroext %302) #14
  %305 = zext i16 %304 to i32
  %306 = shl nuw i32 %305, 16
  %307 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %298, i16 noundef zeroext %303) #14
  %308 = zext i16 %307 to i32
  %309 = or i32 %306, %308
  %310 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %310, align 1
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %313 = load i64, ptr %312, align 1
  %314 = add i64 %313, %311
  store i64 %314, ptr %312, align 1
  %315 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %315, align 1
  %316 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %317 = load i64, ptr %316, align 1
  %318 = add i64 %317, 100000000
  store i64 %318, ptr %316, align 1
  br label %319

319:                                              ; preds = %297, %280
  %320 = getelementptr inbounds %struct.dib8000_state, ptr %127, i32 0, i32 17
  %321 = load i16, ptr %320, align 2
  %322 = icmp ult i16 %321, -32766
  br i1 %322, label %393, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48
  store i8 4, ptr %324, align 2
  %325 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46
  store i8 4, ptr %325, align 4
  %326 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47
  store i8 4, ptr %326, align 1
  %327 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 49, i32 1
  %328 = getelementptr inbounds %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  br label %329

329:                                              ; preds = %390, %323
  %330 = phi i32 [ 0, %323 ], [ %391, %390 ]
  %331 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 23, i32 %330
  %332 = load i8, ptr %331, align 4
  %333 = add i8 %332, -14
  %334 = icmp ult i8 %333, -13
  br i1 %334, label %390, label %335

335:                                              ; preds = %329
  %336 = getelementptr %struct.dib8000_state, ptr %127, i32 0, i32 47, i32 %330
  %337 = load i32, ptr %336, align 4
  %338 = load volatile i32, ptr @jiffies, align 64
  %339 = sub i32 %337, %338
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %367

341:                                              ; preds = %335
  %342 = tail call fastcc i32 @dib8000_get_time_us(ptr noundef %0, i32 noundef %330) #14
  %343 = load volatile i32, ptr @jiffies, align 64
  %344 = add i32 %342, 500
  %345 = udiv i32 %344, 1000
  %346 = tail call i32 @__msecs_to_jiffies(i32 noundef %345) #14
  %347 = add i32 %346, %343
  store i32 %347, ptr %336, align 4
  %348 = load i32, ptr @debug, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %341
  %351 = add nuw nsw i32 %330, 65
  %352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.dib8000_get_stats, i32 noundef %351, i32 noundef %342) #15
  br label %353

353:                                              ; preds = %350, %341
  %354 = getelementptr [3 x %struct.per_layer_regs], ptr @per_layer_regs, i32 0, i32 %330, i32 1
  %355 = load i16, ptr %354, align 2
  %356 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %127, i16 noundef zeroext %355) #14
  %357 = add nuw nsw i32 %330, 1
  %358 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46, i32 1, i32 %357
  store i8 3, ptr %358, align 1
  %359 = zext i16 %356 to i64
  %360 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 46, i32 1, i32 %357, i32 1
  %361 = load i64, ptr %360, align 1
  %362 = add i64 %361, %359
  store i64 %362, ptr %360, align 1
  %363 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47, i32 1, i32 %357
  store i8 3, ptr %363, align 1
  %364 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 47, i32 1, i32 %357, i32 1
  %365 = load i64, ptr %364, align 1
  %366 = add i64 %365, 100000000
  store i64 %366, ptr %364, align 1
  br label %367

367:                                              ; preds = %353, %335
  %368 = phi i32 [ %342, %353 ], [ 0, %335 ]
  br i1 %197, label %369, label %390

369:                                              ; preds = %367
  %370 = getelementptr [3 x %struct.per_layer_regs], ptr @per_layer_regs, i32 0, i32 %330, i32 2
  %371 = load i16, ptr %370, align 2
  %372 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %127, i16 noundef zeroext %371) #14
  %373 = add nuw nsw i32 %330, 1
  %374 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48, i32 1, i32 %373
  store i8 3, ptr %374, align 1
  %375 = zext i16 %372 to i64
  %376 = getelementptr %struct.dvb_frontend, ptr %129, i32 0, i32 8, i32 48, i32 1, i32 %373, i32 1
  %377 = load i64, ptr %376, align 1
  %378 = add i64 %377, %375
  store i64 %378, ptr %376, align 1
  %379 = icmp eq i32 %368, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %369
  %381 = tail call fastcc i32 @dib8000_get_time_us(ptr noundef %0, i32 noundef %330) #14
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %390, label %383

383:                                              ; preds = %380, %369
  %384 = phi i32 [ %381, %380 ], [ %368, %369 ]
  %385 = mul i32 %384, 1632
  %386 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %385, i64 1250000000000) #17, !srcloc !10
  %387 = extractvalue { i64, i64 } %386, 1
  store i8 3, ptr %327, align 1
  %388 = load i64, ptr %328, align 1
  %389 = add i64 %388, %387
  store i64 %389, ptr %328, align 1
  br label %390

390:                                              ; preds = %383, %380, %367, %329
  %391 = add nuw nsw i32 %330, 1
  %392 = icmp eq i32 %391, 3
  br i1 %392, label %393, label %329

393:                                              ; preds = %390, %319, %181
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, -32624
  %8 = select i1 %7, i16 562, i16 560
  %9 = select i1 %7, i16 563, i16 561
  %10 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext %8)
  %11 = zext i16 %10 to i32
  %12 = shl nuw i32 %11, 16
  %13 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext %9)
  %14 = zext i16 %13 to i32
  %15 = or i32 %12, %14
  store i32 %15, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  store i16 0, ptr %3, align 2, !annotation !8
  store i16 0, ptr %1, align 2
  %6 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef nonnull %7, ptr noundef nonnull %3) #14
  %13 = load i16, ptr %3, align 2
  %14 = load i16, ptr %1, align 2
  %15 = call i16 @llvm.uadd.sat.i16(i16 %14, i16 %13)
  store i16 %15, ptr %1, align 2
  %16 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef nonnull %17, ptr noundef nonnull %3) #14
  %23 = load i16, ptr %3, align 2
  %24 = load i16, ptr %1, align 2
  %25 = call i16 @llvm.uadd.sat.i16(i16 %24, i16 %23)
  store i16 %25, ptr %1, align 2
  %26 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef nonnull %27, ptr noundef nonnull %3) #14
  %33 = load i16, ptr %3, align 2
  %34 = load i16, ptr %1, align 2
  %35 = call i16 @llvm.uadd.sat.i16(i16 %34, i16 %33)
  store i16 %35, ptr %1, align 2
  %36 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %37, i32 0, i32 1, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef nonnull %37, ptr noundef nonnull %3) #14
  %43 = load i16, ptr %3, align 2
  %44 = load i16, ptr %1, align 2
  %45 = call i16 @llvm.uadd.sat.i16(i16 %44, i16 %43)
  store i16 %45, ptr %1, align 2
  %46 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %47, i32 0, i32 1, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef nonnull %47, ptr noundef nonnull %3) #14
  %53 = load i16, ptr %3, align 2
  %54 = load i16, ptr %1, align 2
  %55 = call i16 @llvm.uadd.sat.i16(i16 %54, i16 %53)
  store i16 %55, ptr %1, align 2
  br label %56

56:                                               ; preds = %49, %39, %29, %19, %9, %2
  %57 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 390)
  %58 = xor i16 %57, -1
  %59 = load i16, ptr %1, align 2
  %60 = call i16 @llvm.uadd.sat.i16(i16 %59, i16 %58)
  store i16 %60, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib8000_get_snr(ptr noundef %0)
  %6 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %7)
  %11 = add i32 %10, %5
  %12 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %13)
  %17 = add i32 %16, %11
  %18 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %19)
  %23 = add i32 %22, %17
  %24 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %25)
  %29 = add i32 %28, %23
  %30 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 21, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = tail call fastcc i32 @dib8000_get_snr(ptr noundef nonnull %31)
  %35 = add i32 %34, %29
  br label %36

36:                                               ; preds = %33, %27, %21, %15, %9, %2
  %37 = phi i32 [ %5, %2 ], [ %11, %9 ], [ %17, %15 ], [ %23, %21 ], [ %29, %27 ], [ %35, %33 ]
  %38 = icmp ult i32 %37, 65536
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = lshr i32 %37, 16
  %41 = tail call i32 @intlog10(i32 noundef %40) #14
  %42 = mul i32 %41, 10
  %43 = udiv i32 %42, 1677721
  %44 = trunc i32 %43 to i16
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i16 [ %44, %39 ], [ 0, %36 ]
  store i16 %46, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8000_read_unc_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, -32624
  %8 = select i1 %7, i16 567, i16 565
  %9 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext %8)
  %10 = zext i16 %9 to i32
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_set_power_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 900)
  %4 = or i16 %3, 3
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, -32624
  %8 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1280)
  %9 = select i1 %7, i16 -28800, i16 -256
  %10 = or i16 %8, %9
  switch i32 %1, label %26 [
    i32 0, label %11
    i32 1, label %19
  ]

11:                                               ; preds = %2
  %12 = and i16 %3, -4
  %13 = load i16, ptr %5, align 2
  %14 = icmp eq i16 %13, -32624
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = and i16 %10, 255
  br label %26

17:                                               ; preds = %11
  %18 = and i16 %10, 28799
  br label %26

19:                                               ; preds = %2
  %20 = load i16, ptr %5, align 2
  %21 = icmp eq i16 %20, -32624
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = and i16 %10, 255
  br label %26

24:                                               ; preds = %19
  %25 = and i16 %10, -1413
  br label %26

26:                                               ; preds = %24, %22, %17, %15, %2
  %27 = phi i16 [ -1, %2 ], [ -1, %22 ], [ -1, %24 ], [ 0, %15 ], [ 0, %17 ]
  %28 = phi i16 [ %4, %2 ], [ %4, %22 ], [ %4, %24 ], [ %12, %15 ], [ %12, %17 ]
  %29 = phi i16 [ %10, %2 ], [ %23, %22 ], [ %25, %24 ], [ %16, %15 ], [ %18, %17 ]
  %30 = phi i16 [ 16383, %2 ], [ 16383, %22 ], [ 16383, %24 ], [ 0, %15 ], [ 0, %17 ]
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = zext i16 %30 to i32
  %35 = zext i16 %27 to i32
  %36 = zext i16 %28 to i32
  %37 = zext i16 %29 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dib8000_set_power_mode, i32 noundef %34, i32 noundef %35, i32 noundef %35, i32 noundef %36, i32 noundef %37) #15
  br label %39

39:                                               ; preds = %33, %26
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %41 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #14
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %65

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %49, align 8
  %50 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 6, ptr %50, align 1
  %51 = lshr i16 %30, 8
  %52 = trunc i16 %51 to i8
  %53 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %52, ptr %53, align 2
  %54 = trunc i16 %30 to i8
  %55 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %56, align 8
  %57 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %58 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = lshr i8 %59, 1
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %56, align 8
  %62 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %49, ptr %62, align 8
  %63 = load ptr, ptr %57, align 4
  %64 = tail call i32 @i2c_transfer(ptr noundef %63, ptr noundef %56, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %65

65:                                               ; preds = %48, %46, %43
  %66 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #14
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, ptr @debug, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %90

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %74, align 8
  %75 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 7, ptr %75, align 1
  %76 = lshr i16 %27, 8
  %77 = trunc i16 %76 to i8
  %78 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %77, ptr %78, align 2
  %79 = trunc i16 %27 to i8
  %80 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %81, align 8
  %82 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %83 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %84 = load i8, ptr %83, align 4
  %85 = lshr i8 %84, 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %81, align 8
  %87 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %74, ptr %87, align 8
  %88 = load ptr, ptr %82, align 4
  %89 = tail call i32 @i2c_transfer(ptr noundef %88, ptr noundef %81, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %90

90:                                               ; preds = %73, %71, %68
  %91 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #14
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %93
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %115

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %99, align 8
  %100 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 8, ptr %100, align 1
  %101 = lshr i16 %27, 8
  %102 = trunc i16 %101 to i8
  %103 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %102, ptr %103, align 2
  %104 = trunc i16 %27 to i8
  %105 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %104, ptr %105, align 1
  %106 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %106, align 8
  %107 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %108 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %109 = load i8, ptr %108, align 4
  %110 = lshr i8 %109, 1
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %106, align 8
  %112 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %99, ptr %112, align 8
  %113 = load ptr, ptr %107, align 4
  %114 = tail call i32 @i2c_transfer(ptr noundef %113, ptr noundef %106, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %115

115:                                              ; preds = %98, %96, %93
  %116 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #14
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, ptr @debug, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %118
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %140

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %124, align 8
  %125 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -124, ptr %125, align 1
  %126 = lshr i16 %28, 8
  %127 = trunc i16 %126 to i8
  %128 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %127, ptr %128, align 2
  %129 = trunc i16 %28 to i8
  %130 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %129, ptr %130, align 1
  %131 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %131, align 8
  %132 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %133 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %134 = load i8, ptr %133, align 4
  %135 = lshr i8 %134, 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %131, align 8
  %137 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %124, ptr %137, align 8
  %138 = load ptr, ptr %132, align 4
  %139 = tail call i32 @i2c_transfer(ptr noundef %138, ptr noundef %131, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %140

140:                                              ; preds = %123, %121, %118
  %141 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #14
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, ptr @debug, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %165, label %146

146:                                              ; preds = %143
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %165

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 5, ptr %149, align 8
  %150 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 0, ptr %150, align 1
  %151 = lshr i16 %29, 8
  %152 = trunc i16 %151 to i8
  %153 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %152, ptr %153, align 2
  %154 = trunc i16 %29 to i8
  %155 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %154, ptr %155, align 1
  %156 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %156, align 8
  %157 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %158 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %159 = load i8, ptr %158, align 4
  %160 = lshr i8 %159, 1
  %161 = zext i8 %160 to i16
  store i16 %161, ptr %156, align 8
  %162 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %149, ptr %162, align 8
  %163 = load ptr, ptr %157, align 4
  %164 = tail call i32 @i2c_transfer(ptr noundef %163, ptr noundef %156, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %40) #14
  br label %165

165:                                              ; preds = %148, %146, %143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_sad_calib(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, -32624
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %7 = icmp slt i32 %6, 0
  br i1 %4, label %8, label %94

8:                                                ; preds = %1
  br i1 %7, label %9, label %14

9:                                                ; preds = %8
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %15, align 8
  %16 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -102, ptr %16, align 1
  %17 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %17, align 2
  %18 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 12, ptr %18, align 1
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %19, align 8
  %20 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = lshr i8 %22, 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %19, align 8
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %15, ptr %25, align 8
  %26 = load ptr, ptr %20, align 4
  %27 = tail call i32 @i2c_transfer(ptr noundef %26, ptr noundef %19, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %28

28:                                               ; preds = %14, %12, %9
  %29 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %50

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %37, align 8
  %38 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -101, ptr %38, align 1
  %39 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 8, ptr %39, align 2
  %40 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %43 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = lshr i8 %44, 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %41, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %37, ptr %47, align 8
  %48 = load ptr, ptr %42, align 4
  %49 = tail call i32 @i2c_transfer(ptr noundef %48, ptr noundef %41, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %50

50:                                               ; preds = %36, %34, %31
  %51 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %72

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %59, align 8
  %60 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -102, ptr %60, align 1
  %61 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %61, align 2
  %62 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 13, ptr %62, align 1
  %63 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %65 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %63, align 8
  %69 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %59, ptr %69, align 8
  %70 = load ptr, ptr %64, align 4
  %71 = tail call i32 @i2c_transfer(ptr noundef %70, ptr noundef %63, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %72

72:                                               ; preds = %58, %56, %53
  %73 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, ptr @debug, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %180, label %78

78:                                               ; preds = %75
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %180

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %81, align 8
  %82 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -102, ptr %82, align 1
  %83 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %83, align 2
  %84 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 12, ptr %84, align 1
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %85, align 8
  %86 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %87 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = lshr i8 %88, 1
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %85, align 8
  %91 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %81, ptr %91, align 8
  %92 = load ptr, ptr %86, align 4
  %93 = tail call i32 @i2c_transfer(ptr noundef %92, ptr noundef %85, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %180

94:                                               ; preds = %1
  br i1 %7, label %95, label %100

95:                                               ; preds = %94
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %114

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %101, align 8
  %102 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -101, ptr %102, align 1
  %103 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %103, align 2
  %104 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %104, align 1
  %105 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %105, align 8
  %106 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %107 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %108 = load i8, ptr %107, align 4
  %109 = lshr i8 %108, 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %105, align 8
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %101, ptr %111, align 8
  %112 = load ptr, ptr %106, align 4
  %113 = tail call i32 @i2c_transfer(ptr noundef %112, ptr noundef %105, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %114

114:                                              ; preds = %100, %98, %95
  %115 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, ptr @debug, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %136

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %123, align 8
  %124 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -100, ptr %124, align 1
  %125 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 3, ptr %125, align 2
  %126 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 8, ptr %126, align 1
  %127 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %127, align 8
  %128 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %129 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %130 = load i8, ptr %129, align 4
  %131 = lshr i8 %130, 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %127, align 8
  %133 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %123, ptr %133, align 8
  %134 = load ptr, ptr %128, align 4
  %135 = tail call i32 @i2c_transfer(ptr noundef %134, ptr noundef %127, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %136

136:                                              ; preds = %122, %120, %117
  %137 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, ptr @debug, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %139
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %158

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %145, align 8
  %146 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -101, ptr %146, align 1
  %147 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %147, align 2
  %148 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 1, ptr %148, align 1
  %149 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %149, align 8
  %150 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %151 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %152 = load i8, ptr %151, align 4
  %153 = lshr i8 %152, 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %149, align 8
  %155 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %145, ptr %155, align 8
  %156 = load ptr, ptr %150, align 4
  %157 = tail call i32 @i2c_transfer(ptr noundef %156, ptr noundef %149, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %158

158:                                              ; preds = %144, %142, %139
  %159 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, ptr @debug, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %161
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %180

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %167, align 8
  %168 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 -101, ptr %168, align 1
  %169 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %169, align 2
  %170 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %170, align 1
  %171 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %171, align 8
  %172 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %173 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %174 = load i8, ptr %173, align 4
  %175 = lshr i8 %174, 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %171, align 8
  %177 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %167, ptr %177, align 8
  %178 = load ptr, ptr %172, align 4
  %179 = tail call i32 @i2c_transfer(ptr noundef %178, ptr noundef %171, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %180

180:                                              ; preds = %166, %164, %161, %80, %78, %75
  tail call void @msleep(i32 noundef 1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_set_output_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 43
  store i16 %5, ptr %6, align 2
  %7 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 299)
  %8 = and i16 %7, 80
  %9 = or i16 %8, 2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 21
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dib8000_set_output_mode, ptr noundef %13, i32 noundef %1) #15
  br label %15

15:                                               ; preds = %12, %2
  switch i32 %1, label %60 [
    i32 1, label %66
    i32 2, label %16
    i32 7, label %17
    i32 4, label %18
    i32 5, label %24
    i32 0, label %26
    i32 6, label %27
  ]

16:                                               ; preds = %15
  br label %66

17:                                               ; preds = %15
  br label %66

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dib8000_config, ptr %4, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i8 0, i8 5
  %23 = select i1 %21, i8 14, i8 0
  br label %66

24:                                               ; preds = %15
  %25 = or i16 %8, 6
  br label %66

26:                                               ; preds = %15
  br label %66

27:                                               ; preds = %15
  %28 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 298) #14
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dib8000_set_acquisition_mode) #15
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %35 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #14
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %66

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %43, align 8
  %44 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 42, ptr %44, align 1
  %45 = lshr i16 %28, 8
  %46 = trunc i16 %45 to i8
  %47 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %46, ptr %47, align 2
  %48 = trunc i16 %28 to i8
  %49 = or i8 %48, 9
  %50 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %53 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = lshr i8 %54, 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %51, align 8
  %57 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %43, ptr %57, align 8
  %58 = load ptr, ptr %52, align 4
  %59 = tail call i32 @i2c_transfer(ptr noundef %58, ptr noundef %51, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %34) #14
  br label %66

60:                                               ; preds = %15
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %167, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 21
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dib8000_set_output_mode, ptr noundef %64) #15
  br label %167

66:                                               ; preds = %42, %40, %37, %26, %24, %18, %17, %16, %15
  %67 = phi i8 [ 0, %26 ], [ 64, %24 ], [ -128, %17 ], [ 64, %16 ], [ 0, %15 ], [ 0, %18 ], [ -64, %37 ], [ -64, %40 ], [ -64, %42 ]
  %68 = phi i8 [ 0, %26 ], [ 5, %24 ], [ 4, %17 ], [ 4, %16 ], [ 4, %15 ], [ %22, %18 ], [ 4, %37 ], [ 4, %40 ], [ 4, %42 ]
  %69 = phi i8 [ 7, %26 ], [ 2, %24 ], [ 7, %17 ], [ 7, %16 ], [ 7, %15 ], [ 7, %18 ], [ 7, %37 ], [ 7, %40 ], [ 7, %42 ]
  %70 = phi i16 [ %9, %26 ], [ %25, %24 ], [ %9, %17 ], [ %9, %16 ], [ %9, %15 ], [ %9, %18 ], [ %9, %37 ], [ %9, %40 ], [ %9, %42 ]
  %71 = phi i8 [ 2, %26 ], [ 2, %24 ], [ 2, %17 ], [ 2, %16 ], [ 2, %15 ], [ %23, %18 ], [ 2, %37 ], [ 2, %40 ], [ 2, %42 ]
  %72 = load i8, ptr %4, align 8
  %73 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %74 = tail call i32 @mutex_lock_interruptible(ptr noundef %73) #14
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load i32, ptr @debug, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %101

81:                                               ; preds = %66
  %82 = icmp eq i8 %72, 0
  %83 = or i16 %70, 32
  %84 = select i1 %82, i16 %70, i16 %83
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %85, align 8
  %86 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 43, ptr %86, align 1
  %87 = lshr i16 %84, 8
  %88 = trunc i16 %87 to i8
  %89 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %88, ptr %89, align 2
  %90 = trunc i16 %84 to i8
  %91 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %90, ptr %91, align 1
  %92 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %92, align 8
  %93 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %94 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %95 = load i8, ptr %94, align 4
  %96 = lshr i8 %95, 1
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %92, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %85, ptr %98, align 8
  %99 = load ptr, ptr %93, align 4
  %100 = tail call i32 @i2c_transfer(ptr noundef %99, ptr noundef %92, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %73) #14
  br label %101

101:                                              ; preds = %81, %79, %76
  %102 = tail call i32 @mutex_lock_interruptible(ptr noundef %73) #14
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, ptr @debug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %104
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %123

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %110, align 8
  %111 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 44, ptr %111, align 1
  %112 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %69, ptr %112, align 2
  %113 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %114, align 8
  %115 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %116 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %117 = load i8, ptr %116, align 4
  %118 = lshr i8 %117, 1
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %114, align 8
  %120 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %110, ptr %120, align 8
  %121 = load ptr, ptr %115, align 4
  %122 = tail call i32 @i2c_transfer(ptr noundef %121, ptr noundef %114, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %73) #14
  br label %123

123:                                              ; preds = %109, %107, %104
  %124 = tail call i32 @mutex_lock_interruptible(ptr noundef %73) #14
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %145

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 5, ptr %132, align 8
  %133 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 6, ptr %133, align 1
  %134 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %68, ptr %134, align 2
  %135 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %67, ptr %135, align 1
  %136 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %136, align 8
  %137 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %138 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = lshr i8 %139, 1
  %141 = zext i8 %140 to i16
  store i16 %141, ptr %136, align 8
  %142 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %132, ptr %142, align 8
  %143 = load ptr, ptr %137, align 4
  %144 = tail call i32 @i2c_transfer(ptr noundef %143, ptr noundef %136, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %73) #14
  br label %145

145:                                              ; preds = %131, %129, %126
  %146 = tail call i32 @mutex_lock_interruptible(ptr noundef %73) #14
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %148
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %167

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 5, ptr %154, align 8
  %155 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 11, ptr %155, align 1
  %156 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %71, ptr %156, align 2
  %157 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 5, ptr %157, align 1
  %158 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %158, align 8
  %159 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %160 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %161 = load i8, ptr %160, align 4
  %162 = lshr i8 %161, 1
  %163 = zext i8 %162 to i16
  store i16 %163, ptr %158, align 8
  %164 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %154, ptr %164, align 8
  %165 = load ptr, ptr %159, align 4
  %166 = tail call i32 @i2c_transfer(ptr noundef %165, ptr noundef %158, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %73) #14
  br label %167

167:                                              ; preds = %153, %151, %148, %63, %60
  %168 = phi i32 [ -22, %63 ], [ -22, %60 ], [ 0, %148 ], [ 0, %151 ], [ 0, %153 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_set_diversity_in(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 273)
  %6 = and i16 %5, -16
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.dib8000_set_diversity_in, i32 noundef %1) #15
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 12
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #14
  %17 = icmp slt i32 %16, 0
  br i1 %14, label %18, label %64

18:                                               ; preds = %11
  br i1 %17, label %19, label %24

19:                                               ; preds = %18
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %38

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %25, align 8
  %26 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 16, ptr %26, align 1
  %27 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 2, ptr %27, align 2
  %28 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = lshr i8 %32, 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %29, align 8
  %35 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %25, ptr %35, align 8
  %36 = load ptr, ptr %30, align 4
  %37 = tail call i32 @i2c_transfer(ptr noundef %36, ptr noundef %29, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %15) #14
  br label %38

38:                                               ; preds = %24, %22, %19
  %39 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #14
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %109, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %109

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %47, align 8
  %48 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 17, ptr %48, align 1
  %49 = lshr i16 %5, 8
  %50 = trunc i16 %49 to i8
  %51 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %50, ptr %51, align 2
  %52 = trunc i16 %6 to i8
  %53 = or i8 %52, 6
  %54 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %57 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %58 = load i8, ptr %57, align 4
  %59 = lshr i8 %58, 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %55, align 8
  %61 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %47, ptr %61, align 8
  %62 = load ptr, ptr %56, align 4
  %63 = tail call i32 @i2c_transfer(ptr noundef %62, ptr noundef %55, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %15) #14
  br label %109

64:                                               ; preds = %11
  br i1 %17, label %65, label %70

65:                                               ; preds = %64
  %66 = load i32, ptr @debug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %65
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %84

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %71, align 8
  %72 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 16, ptr %72, align 1
  %73 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %73, align 2
  %74 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %75, align 8
  %76 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = lshr i8 %78, 1
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %75, align 8
  %81 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %71, ptr %81, align 8
  %82 = load ptr, ptr %76, align 4
  %83 = tail call i32 @i2c_transfer(ptr noundef %82, ptr noundef %75, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %15) #14
  br label %84

84:                                               ; preds = %70, %68, %65
  %85 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #14
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, ptr @debug, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %109

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %93, align 8
  %94 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 17, ptr %94, align 1
  %95 = lshr i16 %5, 8
  %96 = trunc i16 %95 to i8
  %97 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %96, ptr %97, align 2
  %98 = trunc i16 %6 to i8
  %99 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %98, ptr %99, align 1
  %100 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %100, align 8
  %101 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %102 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %103 = load i8, ptr %102, align 4
  %104 = lshr i8 %103, 1
  %105 = zext i8 %104 to i16
  store i16 %105, ptr %100, align 8
  %106 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %93, ptr %106, align 8
  %107 = load ptr, ptr %101, align 4
  %108 = tail call i32 @i2c_transfer(ptr noundef %107, ptr noundef %100, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %15) #14
  br label %109

109:                                              ; preds = %92, %90, %87, %46, %44, %41
  %110 = trunc i32 %1 to i8
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 13
  store i8 %110, ptr %111, align 2
  switch i32 %1, label %247 [
    i32 0, label %112
    i32 1, label %157
    i32 2, label %202
  ]

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %114 = tail call i32 @mutex_lock_interruptible(ptr noundef %113) #14
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, ptr @debug, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %116
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %135

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %122, align 8
  %123 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 14, ptr %123, align 1
  %124 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %124, align 2
  %125 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 1, ptr %125, align 1
  %126 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %126, align 8
  %127 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %128 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %129 = load i8, ptr %128, align 4
  %130 = lshr i8 %129, 1
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %126, align 8
  %132 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %122, ptr %132, align 8
  %133 = load ptr, ptr %127, align 4
  %134 = tail call i32 @i2c_transfer(ptr noundef %133, ptr noundef %126, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %113) #14
  br label %135

135:                                              ; preds = %121, %119, %116
  %136 = tail call i32 @mutex_lock_interruptible(ptr noundef %113) #14
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, ptr @debug, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %247, label %141

141:                                              ; preds = %138
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %247

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %144, align 8
  %145 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 15, ptr %145, align 1
  %146 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %146, align 2
  %147 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 0, ptr %147, align 1
  %148 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %148, align 8
  %149 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %150 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %151 = load i8, ptr %150, align 4
  %152 = lshr i8 %151, 1
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %148, align 8
  %154 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %144, ptr %154, align 8
  %155 = load ptr, ptr %149, align 4
  %156 = tail call i32 @i2c_transfer(ptr noundef %155, ptr noundef %148, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %113) #14
  br label %247

157:                                              ; preds = %109
  %158 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %159 = tail call i32 @mutex_lock_interruptible(ptr noundef %158) #14
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, ptr @debug, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %161
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %180

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %167, align 8
  %168 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 14, ptr %168, align 1
  %169 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %169, align 2
  %170 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 6, ptr %170, align 1
  %171 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %171, align 8
  %172 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %173 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %174 = load i8, ptr %173, align 4
  %175 = lshr i8 %174, 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %171, align 8
  %177 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %167, ptr %177, align 8
  %178 = load ptr, ptr %172, align 4
  %179 = tail call i32 @i2c_transfer(ptr noundef %178, ptr noundef %171, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %158) #14
  br label %180

180:                                              ; preds = %166, %164, %161
  %181 = tail call i32 @mutex_lock_interruptible(ptr noundef %158) #14
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, ptr @debug, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %247, label %186

186:                                              ; preds = %183
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %247

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %189, align 8
  %190 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 15, ptr %190, align 1
  %191 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %191, align 2
  %192 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 6, ptr %192, align 1
  %193 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %193, align 8
  %194 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %195 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %196 = load i8, ptr %195, align 4
  %197 = lshr i8 %196, 1
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %193, align 8
  %199 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %189, ptr %199, align 8
  %200 = load ptr, ptr %194, align 4
  %201 = tail call i32 @i2c_transfer(ptr noundef %200, ptr noundef %193, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %158) #14
  br label %247

202:                                              ; preds = %109
  %203 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %204 = tail call i32 @mutex_lock_interruptible(ptr noundef %203) #14
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, ptr @debug, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %225, label %209

209:                                              ; preds = %206
  %210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %225

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %212, align 8
  %213 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 14, ptr %213, align 1
  %214 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %214, align 2
  %215 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 0, ptr %215, align 1
  %216 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %216, align 8
  %217 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %218 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %219 = load i8, ptr %218, align 4
  %220 = lshr i8 %219, 1
  %221 = zext i8 %220 to i16
  store i16 %221, ptr %216, align 8
  %222 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %212, ptr %222, align 8
  %223 = load ptr, ptr %217, align 4
  %224 = tail call i32 @i2c_transfer(ptr noundef %223, ptr noundef %216, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %203) #14
  br label %225

225:                                              ; preds = %211, %209, %206
  %226 = tail call i32 @mutex_lock_interruptible(ptr noundef %203) #14
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32, ptr @debug, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %247, label %231

231:                                              ; preds = %228
  %232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %247

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %234, align 8
  %235 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 15, ptr %235, align 1
  %236 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 0, ptr %236, align 2
  %237 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 1, ptr %237, align 1
  %238 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %238, align 8
  %239 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %240 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %241 = load i8, ptr %240, align 4
  %242 = lshr i8 %241, 1
  %243 = zext i8 %242 to i16
  store i16 %243, ptr %238, align 8
  %244 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %234, ptr %244, align 8
  %245 = load ptr, ptr %239, align 4
  %246 = tail call i32 @i2c_transfer(ptr noundef %245, ptr noundef %238, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %203) #14
  br label %247

247:                                              ; preds = %233, %231, %228, %188, %186, %183, %143, %141, %138, %109
  %248 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 17
  %249 = load i16, ptr %248, align 2
  %250 = icmp eq i16 %249, -32766
  br i1 %250, label %251, label %305

251:                                              ; preds = %247
  %252 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 903)
  %253 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %254 = tail call i32 @mutex_lock_interruptible(ptr noundef %253) #14
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i32, ptr @debug, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %279, label %259

259:                                              ; preds = %256
  %260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %279

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 3, ptr %262, align 8
  %263 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 -121, ptr %263, align 1
  %264 = lshr i16 %252, 8
  %265 = trunc i16 %264 to i8
  %266 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %265, ptr %266, align 2
  %267 = trunc i16 %252 to i8
  %268 = and i8 %267, -9
  %269 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %268, ptr %269, align 1
  %270 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %270, align 8
  %271 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %272 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %273 = load i8, ptr %272, align 4
  %274 = lshr i8 %273, 1
  %275 = zext i8 %274 to i16
  store i16 %275, ptr %270, align 8
  %276 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %262, ptr %276, align 8
  %277 = load ptr, ptr %271, align 4
  %278 = tail call i32 @i2c_transfer(ptr noundef %277, ptr noundef %270, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %253) #14
  br label %279

279:                                              ; preds = %261, %259, %256
  tail call void @msleep(i32 noundef 30) #14
  %280 = tail call i32 @mutex_lock_interruptible(ptr noundef %253) #14
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load i32, ptr @debug, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %305, label %285

285:                                              ; preds = %282
  %286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %305

287:                                              ; preds = %279
  %288 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 3, ptr %288, align 8
  %289 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 -121, ptr %289, align 1
  %290 = lshr i16 %252, 8
  %291 = trunc i16 %290 to i8
  %292 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %291, ptr %292, align 2
  %293 = trunc i16 %252 to i8
  %294 = or i8 %293, 8
  %295 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %294, ptr %295, align 1
  %296 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %296, align 8
  %297 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %298 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %299 = load i8, ptr %298, align 4
  %300 = lshr i8 %299, 1
  %301 = zext i8 %300 to i16
  store i16 %301, ptr %296, align 8
  %302 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %288, ptr %302, align 8
  %303 = load ptr, ptr %297, align 4
  %304 = tail call i32 @i2c_transfer(ptr noundef %303, ptr noundef %296, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %253) #14
  br label %305

305:                                              ; preds = %287, %285, %282, %247
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_set_output_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 43
  store i16 %5, ptr %6, align 2
  %7 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1798) #14
  %8 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 25
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %35

16:                                               ; preds = %2
  %17 = and i16 %7, -29128
  %18 = or i16 %17, 4161
  %19 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 7, ptr %19, align 8
  %20 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 6, ptr %20, align 1
  %21 = lshr i16 %18, 8
  %22 = trunc i16 %21 to i8
  %23 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %22, ptr %23, align 2
  %24 = trunc i16 %18 to i8
  %25 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = lshr i8 %29, 1
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %26, align 8
  %32 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %19, ptr %32, align 8
  %33 = load ptr, ptr %27, align 4
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %26, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %35

35:                                               ; preds = %16, %14, %11
  %36 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1799) #14
  %37 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %63

44:                                               ; preds = %35
  %45 = and i16 %36, -1821
  %46 = or i16 %45, 260
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 7, ptr %47, align 8
  %48 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 7, ptr %48, align 1
  %49 = lshr i16 %46, 8
  %50 = trunc i16 %49 to i8
  %51 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %50, ptr %51, align 2
  %52 = trunc i16 %46 to i8
  %53 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %54, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = lshr i8 %57, 1
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %54, align 8
  %60 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %47, ptr %60, align 8
  %61 = load ptr, ptr %55, align 4
  %62 = tail call i32 @i2c_transfer(ptr noundef %61, ptr noundef %54, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %63

63:                                               ; preds = %44, %42, %39
  %64 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1800) #14
  %65 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, ptr @debug, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %91

72:                                               ; preds = %63
  %73 = and i16 %64, -29128
  %74 = or i16 %73, 4161
  %75 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 7, ptr %75, align 8
  %76 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 8, ptr %76, align 1
  %77 = lshr i16 %74, 8
  %78 = trunc i16 %77 to i8
  %79 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %78, ptr %79, align 2
  %80 = trunc i16 %74 to i8
  %81 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %82, align 8
  %83 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %84 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %85 = load i8, ptr %84, align 4
  %86 = lshr i8 %85, 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %82, align 8
  %88 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %75, ptr %88, align 8
  %89 = load ptr, ptr %83, align 4
  %90 = tail call i32 @i2c_transfer(ptr noundef %89, ptr noundef %82, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %91

91:                                               ; preds = %72, %70, %67
  %92 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1801) #14
  %93 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %119

100:                                              ; preds = %91
  %101 = and i16 %92, -1821
  %102 = or i16 %101, 260
  %103 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 7, ptr %103, align 8
  %104 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 9, ptr %104, align 1
  %105 = lshr i16 %102, 8
  %106 = trunc i16 %105 to i8
  %107 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %106, ptr %107, align 2
  %108 = trunc i16 %102 to i8
  %109 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %108, ptr %109, align 1
  %110 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %110, align 8
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %112 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %113 = load i8, ptr %112, align 4
  %114 = lshr i8 %113, 1
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %110, align 8
  %116 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %103, ptr %116, align 8
  %117 = load ptr, ptr %111, align 4
  %118 = tail call i32 @i2c_transfer(ptr noundef %117, ptr noundef %110, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %119

119:                                              ; preds = %100, %98, %95
  %120 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1802) #14
  %121 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %147

128:                                              ; preds = %119
  %129 = and i16 %120, -29128
  %130 = or i16 %129, 4161
  %131 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 7, ptr %131, align 8
  %132 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 10, ptr %132, align 1
  %133 = lshr i16 %130, 8
  %134 = trunc i16 %133 to i8
  %135 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %134, ptr %135, align 2
  %136 = trunc i16 %130 to i8
  %137 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %136, ptr %137, align 1
  %138 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %138, align 8
  %139 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %140 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = lshr i8 %141, 1
  %143 = zext i8 %142 to i16
  store i16 %143, ptr %138, align 8
  %144 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %131, ptr %144, align 8
  %145 = load ptr, ptr %139, align 4
  %146 = tail call i32 @i2c_transfer(ptr noundef %145, ptr noundef %138, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %147

147:                                              ; preds = %128, %126, %123
  %148 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 299)
  %149 = and i16 %148, 80
  %150 = or i16 %149, 2
  %151 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %4, i16 noundef zeroext 1286)
  %152 = and i16 %151, -1475
  switch i32 %1, label %193 [
    i32 0, label %153
    i32 7, label %154
    i32 1, label %160
    i32 2, label %166
    i32 5, label %173
    i32 4, label %181
    i32 6, label %187
  ]

153:                                              ; preds = %147
  br label %193

154:                                              ; preds = %147
  %155 = load i32, ptr @debug, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.dib8096p_set_output_mode) #15
  br label %159

159:                                              ; preds = %157, %154
  tail call fastcc void @dib8096p_configMpegMux(ptr noundef %4, i16 noundef zeroext 3, i16 noundef zeroext 1, i16 noundef zeroext 1)
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %4, i32 noundef 6)
  br label %193

160:                                              ; preds = %147
  %161 = load i32, ptr @debug, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.dib8096p_set_output_mode) #15
  br label %165

165:                                              ; preds = %163, %160
  tail call fastcc void @dib8096p_configMpegMux(ptr noundef %4, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 0)
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %4, i32 noundef 6)
  br label %193

166:                                              ; preds = %147
  %167 = load i32, ptr @debug, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.dib8096p_set_output_mode) #15
  br label %171

171:                                              ; preds = %169, %166
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %4, i32 noundef 4)
  %172 = or i16 %152, 64
  br label %193

173:                                              ; preds = %147
  %174 = load i32, ptr @debug, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.dib8096p_set_output_mode) #15
  br label %178

178:                                              ; preds = %176, %173
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %4, i32 noundef 4)
  %179 = or i16 %152, 320
  %180 = or i16 %149, 6
  br label %193

181:                                              ; preds = %147
  %182 = load i32, ptr @debug, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.dib8096p_set_output_mode) #15
  br label %186

186:                                              ; preds = %184, %181
  tail call fastcc void @dib8096p_setDibTxMux(ptr noundef %4, i32 noundef 2)
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %4, i32 noundef 5)
  br label %193

187:                                              ; preds = %147
  %188 = load i32, ptr @debug, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dib8096p_set_output_mode) #15
  br label %192

192:                                              ; preds = %190, %187
  tail call fastcc void @dib8096p_setDibTxMux(ptr noundef %4, i32 noundef 3)
  tail call fastcc void @dib8096p_setHostBusMux(ptr noundef %4, i32 noundef 5)
  br label %193

193:                                              ; preds = %192, %186, %178, %171, %165, %159, %153, %147
  %194 = phi i8 [ 7, %147 ], [ 7, %192 ], [ 7, %186 ], [ 2, %178 ], [ 7, %171 ], [ 7, %165 ], [ 7, %159 ], [ 7, %153 ]
  %195 = phi i16 [ %150, %147 ], [ %150, %192 ], [ %150, %186 ], [ %180, %178 ], [ %150, %171 ], [ %150, %165 ], [ %150, %159 ], [ %150, %153 ]
  %196 = phi i16 [ %152, %147 ], [ %152, %192 ], [ %152, %186 ], [ %179, %178 ], [ %172, %171 ], [ %152, %165 ], [ %152, %159 ], [ 0, %153 ]
  %197 = icmp eq i32 %1, 0
  %198 = or i16 %196, 1024
  %199 = select i1 %197, i16 %196, i16 %198
  %200 = load i32, ptr @debug, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %193
  %203 = load i8, ptr %4, align 8
  %204 = zext i8 %203 to i32
  %205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.dib8096p_set_output_mode, i32 noundef %204) #15
  br label %206

206:                                              ; preds = %202, %193
  %207 = load i8, ptr %4, align 8
  %208 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32, ptr @debug, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %235, label %213

213:                                              ; preds = %210
  %214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %235

215:                                              ; preds = %206
  %216 = icmp eq i8 %207, 0
  %217 = or i16 %195, 32
  %218 = select i1 %216, i16 %195, i16 %217
  %219 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %219, align 8
  %220 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 43, ptr %220, align 1
  %221 = lshr i16 %218, 8
  %222 = trunc i16 %221 to i8
  %223 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %222, ptr %223, align 2
  %224 = trunc i16 %218 to i8
  %225 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %224, ptr %225, align 1
  %226 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %226, align 8
  %227 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %228 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %229 = load i8, ptr %228, align 4
  %230 = lshr i8 %229, 1
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %226, align 8
  %232 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %219, ptr %232, align 8
  %233 = load ptr, ptr %227, align 4
  %234 = tail call i32 @i2c_transfer(ptr noundef %233, ptr noundef %226, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %235

235:                                              ; preds = %215, %213, %210
  %236 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, ptr @debug, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %257, label %241

241:                                              ; preds = %238
  %242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %257

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 1, ptr %244, align 8
  %245 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 44, ptr %245, align 1
  %246 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %194, ptr %246, align 2
  %247 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 0, ptr %247, align 1
  %248 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %248, align 8
  %249 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %250 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %251 = load i8, ptr %250, align 4
  %252 = lshr i8 %251, 1
  %253 = zext i8 %252 to i16
  store i16 %253, ptr %248, align 8
  %254 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %244, ptr %254, align 8
  %255 = load ptr, ptr %249, align 4
  %256 = tail call i32 @i2c_transfer(ptr noundef %255, ptr noundef %248, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %257

257:                                              ; preds = %243, %241, %238
  %258 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #14
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load i32, ptr @debug, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %282, label %263

263:                                              ; preds = %260
  %264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %282

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 23
  store i8 5, ptr %266, align 8
  %267 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 1
  store i8 6, ptr %267, align 1
  %268 = lshr i16 %199, 8
  %269 = trunc i16 %268 to i8
  %270 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 2
  store i8 %269, ptr %270, align 2
  %271 = trunc i16 %199 to i8
  %272 = getelementptr %struct.dib8000_state, ptr %4, i32 0, i32 23, i32 3
  store i8 %271, ptr %272, align 1
  %273 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22
  store i64 17179869184, ptr %273, align 8
  %274 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1
  %275 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 1, i32 1
  %276 = load i8, ptr %275, align 4
  %277 = lshr i8 %276, 1
  %278 = zext i8 %277 to i16
  store i16 %278, ptr %273, align 8
  %279 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 22, i32 0, i32 3
  store ptr %266, ptr %279, align 8
  %280 = load ptr, ptr %274, align 4
  %281 = tail call i32 @i2c_transfer(ptr noundef %280, ptr noundef %273, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %8) #14
  br label %282

282:                                              ; preds = %265, %263, %260
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_agc_startup(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %133 [
    i32 20, label %6
    i32 21, label %107
    i32 22, label %113
    i32 23, label %126
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -32624
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @dib8000_set_adc_state(ptr noundef %3, i32 noundef 2)
  br label %89

12:                                               ; preds = %6
  tail call fastcc void @dib8000_set_power_mode(ptr noundef %3, i32 noundef 0)
  %13 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %3, i16 noundef zeroext 1947)
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 25
  %15 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %36

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 23
  store i8 7, ptr %23, align 8
  %24 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 1
  store i8 -102, ptr %24, align 1
  %25 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 2
  store i8 -128, ptr %25, align 2
  %26 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 3
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 22
  store i64 17179869184, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 1, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = lshr i8 %30, 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %27, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 22, i32 0, i32 3
  store ptr %23, ptr %33, align 8
  %34 = load ptr, ptr %28, align 4
  %35 = tail call i32 @i2c_transfer(ptr noundef %34, ptr noundef %27, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %14) #14
  br label %36

36:                                               ; preds = %22, %20, %17
  %37 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %61

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 23
  store i8 7, ptr %45, align 8
  %46 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 1
  store i8 -101, ptr %46, align 1
  %47 = lshr i16 %13, 8
  %48 = trunc i16 %47 to i8
  %49 = or i8 %48, 64
  %50 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 2
  store i8 %49, ptr %50, align 2
  %51 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 3
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 22
  store i64 17179869184, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 1
  %54 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 1, i32 1
  %55 = load i8, ptr %54, align 4
  %56 = lshr i8 %55, 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %52, align 8
  %58 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 22, i32 0, i32 3
  store ptr %45, ptr %58, align 8
  %59 = load ptr, ptr %53, align 4
  %60 = tail call i32 @i2c_transfer(ptr noundef %59, ptr noundef %52, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %14) #14
  br label %61

61:                                               ; preds = %44, %42, %39
  %62 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %3, i16 noundef zeroext 1920)
  %63 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #14
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, ptr @debug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %89

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 23
  store i8 7, ptr %71, align 8
  %72 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 1
  store i8 -128, ptr %72, align 1
  %73 = lshr i16 %62, 8
  %74 = trunc i16 %73 to i8
  %75 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 2
  store i8 %74, ptr %75, align 2
  %76 = trunc i16 %62 to i8
  %77 = and i8 %76, 124
  %78 = or i8 %77, 3
  %79 = getelementptr %struct.dib8000_state, ptr %3, i32 0, i32 23, i32 3
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 22
  store i64 17179869184, ptr %80, align 8
  %81 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 1
  %82 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 1, i32 1
  %83 = load i8, ptr %82, align 4
  %84 = lshr i8 %83, 1
  %85 = zext i8 %84 to i16
  store i16 %85, ptr %80, align 8
  %86 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 22, i32 0, i32 3
  store ptr %71, ptr %86, align 8
  %87 = load ptr, ptr %81, align 4
  %88 = tail call i32 @i2c_transfer(ptr noundef %87, ptr noundef %80, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %14) #14
  br label %89

89:                                               ; preds = %70, %68, %65, %10
  %90 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %91, 170001000
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = icmp ult i32 %91, 250001000
  br i1 %94, label %100, label %95

95:                                               ; preds = %93
  %96 = icmp ult i32 %91, 863001000
  br i1 %96, label %100, label %97

97:                                               ; preds = %95
  %98 = icmp ult i32 %91, 2000001000
  %99 = select i1 %98, i8 1, i8 8
  br label %100

100:                                              ; preds = %97, %95, %93, %89
  %101 = phi i8 [ 32, %89 ], [ 4, %93 ], [ %99, %97 ], [ 2, %95 ]
  %102 = tail call fastcc i32 @dib8000_set_agc_config(ptr noundef %3, i8 noundef zeroext %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  store i32 26, ptr %4, align 4
  %105 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 20
  store i32 0, ptr %105, align 4
  br label %135

106:                                              ; preds = %100
  store i32 21, ptr %4, align 4
  br label %135

107:                                              ; preds = %1
  %108 = getelementptr inbounds %struct.dib8000_config, ptr %3, i32 0, i32 11
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void %109(ptr noundef %0, i8 noundef zeroext 1) #14
  br label %112

112:                                              ; preds = %111, %107
  tail call fastcc void @dib8000_restart_agc(ptr noundef %3)
  store i32 22, ptr %4, align 4
  br label %135

113:                                              ; preds = %1
  %114 = getelementptr inbounds %struct.dib8000_config, ptr %3, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %3, i16 noundef zeroext 390) #14
  %119 = load ptr, ptr %114, align 4
  %120 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 21
  %121 = load ptr, ptr %120, align 8
  %122 = tail call i32 %119(ptr noundef %121, i16 noundef zeroext %118) #14
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  tail call fastcc void @dib8000_restart_agc(ptr noundef %3) #14
  br label %135

125:                                              ; preds = %117, %113
  store i32 23, ptr %4, align 4
  br label %135

126:                                              ; preds = %1
  %127 = tail call fastcc i32 @dib8000_agc_soft_split(ptr noundef %3)
  %128 = getelementptr inbounds %struct.dib8000_config, ptr %3, i32 0, i32 11
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  tail call void %129(ptr noundef %0, i8 noundef zeroext 0) #14
  br label %132

132:                                              ; preds = %131, %126
  store i32 26, ptr %4, align 4
  br label %135

133:                                              ; preds = %1
  %134 = tail call fastcc i32 @dib8000_agc_soft_split(ptr noundef %3)
  br label %135

135:                                              ; preds = %133, %132, %125, %124, %112, %106, %104
  %136 = phi i32 [ %134, %133 ], [ 0, %132 ], [ 70, %125 ], [ 50, %112 ], [ 0, %104 ], [ 70, %106 ], [ 50, %124 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_tune(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 19
  %9 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 41
  %10 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %11 = load i32, ptr %8, align 4
  switch i32 %11, label %2132 [
    i32 30, label %12
    i32 51, label %562
    i32 31, label %1611
    i32 32, label %1654
    i32 33, label %1712
    i32 34, label %1713
    i32 35, label %1822
    i32 36, label %1854
    i32 37, label %1875
    i32 38, label %1889
    i32 39, label %1905
    i32 40, label %1994
    i32 41, label %2104
  ]

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 42
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 43
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 46
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 47
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 48
  %18 = getelementptr inbounds i8, ptr %13, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(66) %18, i8 0, i64 66, i1 false) #14
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(111) %15, i8 0, i64 111, i1 false) #14
  store i8 1, ptr %13, align 4
  store i8 1, ptr %14, align 1
  store i8 1, ptr %17, align 2
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 49
  store i8 1, ptr %19, align 1
  store i8 1, ptr %15, align 4
  store i8 1, ptr %16, align 1
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %22, align 1
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %23, i32 0, i32 17
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, -32624
  %27 = select i1 %26, i16 567, i16 565
  %28 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %23, i16 noundef zeroext %27) #14
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 0, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 44
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 45
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %33, i8 0, i64 20, i1 false) #14
  %34 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, -32624
  br i1 %36, label %37, label %145

37:                                               ; preds = %12
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.dib8090p_init_sdram) #15
  br label %42

42:                                               ; preds = %40, %37
  %43 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 274) #14
  %44 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %45 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, ptr @debug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %71

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %53, align 8
  %54 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 18, ptr %54, align 1
  %55 = lshr i16 %43, 8
  %56 = trunc i16 %55 to i8
  %57 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %56, ptr %57, align 2
  %58 = trunc i16 %43 to i8
  %59 = and i8 %58, -16
  %60 = or i8 %59, 7
  %61 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %60, ptr %61, align 1
  %62 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %62, align 8
  %63 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %64 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = lshr i8 %65, 1
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %62, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %53, ptr %68, align 8
  %69 = load ptr, ptr %63, align 4
  %70 = tail call i32 @i2c_transfer(ptr noundef %69, ptr noundef %62, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %71

71:                                               ; preds = %52, %50, %47
  %72 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, ptr @debug, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %93

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 7, ptr %80, align 8
  %81 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 11, ptr %81, align 1
  %82 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %82, align 2
  %83 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 28, ptr %83, align 1
  %84 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %84, align 8
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %86 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %87 = load i8, ptr %86, align 4
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %84, align 8
  %90 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %80, ptr %90, align 8
  %91 = load ptr, ptr %85, align 4
  %92 = tail call i32 @i2c_transfer(ptr noundef %91, ptr noundef %84, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %93

93:                                               ; preds = %79, %77, %74
  %94 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 1280) #14
  %95 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, ptr @debug, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %120

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 5, ptr %103, align 8
  %104 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %104, align 1
  %105 = lshr i16 %94, 8
  %106 = trunc i16 %105 to i8
  %107 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %106, ptr %107, align 2
  %108 = trunc i16 %94 to i8
  %109 = or i8 %108, 4
  %110 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %109, ptr %110, align 1
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %111, align 8
  %112 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %113 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = lshr i8 %114, 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %111, align 8
  %117 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %103, ptr %117, align 8
  %118 = load ptr, ptr %112, align 4
  %119 = tail call i32 @i2c_transfer(ptr noundef %118, ptr noundef %111, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %120

120:                                              ; preds = %102, %100, %97
  %121 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #14
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %145

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 5, ptr %129, align 8
  %130 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %130, align 1
  %131 = lshr i16 %94, 8
  %132 = trunc i16 %131 to i8
  %133 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %132, ptr %133, align 2
  %134 = trunc i16 %94 to i8
  %135 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %134, ptr %135, align 1
  %136 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %136, align 8
  %137 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %138 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = lshr i8 %139, 1
  %141 = zext i8 %140 to i16
  store i16 %141, ptr %136, align 8
  %142 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %129, ptr %142, align 8
  %143 = load ptr, ptr %137, align 4
  %144 = tail call i32 @i2c_transfer(ptr noundef %143, ptr noundef %136, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %44) #14
  br label %145

145:                                              ; preds = %128, %126, %123, %12
  %146 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 -3, ptr %146, align 4
  %147 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 15
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 8
  br i1 %149, label %150, label %262

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32, ptr @debug, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %260, label %157

157:                                              ; preds = %154
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.is_manual_mode) #15
  br label %262

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 8
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 4
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32, ptr @debug, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %260, label %166

166:                                              ; preds = %163
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.is_manual_mode) #15
  br label %262

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 22
  %170 = load i8, ptr %169, align 4
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = zext i8 %170 to i32
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %204, label %181

176:                                              ; preds = %168
  %177 = load i32, ptr @debug, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %260, label %179

179:                                              ; preds = %176
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.is_manual_mode) #15
  br label %262

181:                                              ; preds = %172
  %182 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23
  %183 = load i8, ptr %182, align 4
  %184 = zext i8 %183 to i32
  %185 = add i8 %183, -14
  %186 = icmp ult i8 %185, -13
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = and i8 %170, -2
  store i8 %188, ptr %169, align 4
  %189 = zext i8 %188 to i32
  br label %204

190:                                              ; preds = %181
  %191 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 2
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 6
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 9
  br i1 %197, label %198, label %204

198:                                              ; preds = %244, %240, %220, %216, %194, %190
  %199 = phi i32 [ 65, %190 ], [ 65, %194 ], [ 66, %216 ], [ 66, %220 ], [ 67, %240 ], [ 67, %244 ]
  %200 = load i32, ptr @debug, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %260, label %202

202:                                              ; preds = %198
  %203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.is_manual_mode, i32 noundef %199) #15
  br label %262

204:                                              ; preds = %194, %187, %172
  %205 = phi i32 [ %173, %194 ], [ %173, %172 ], [ %189, %187 ]
  %206 = phi i8 [ %170, %194 ], [ %170, %172 ], [ %188, %187 ]
  %207 = phi i32 [ %184, %194 ], [ 0, %172 ], [ 0, %187 ]
  %208 = and i32 %205, 2
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %228, label %210

210:                                              ; preds = %204
  %211 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i32
  %214 = add i8 %212, -14
  %215 = icmp ult i8 %214, -13
  br i1 %215, label %225, label %216

216:                                              ; preds = %210
  %217 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 6
  br i1 %219, label %198, label %220

220:                                              ; preds = %216
  %221 = add nuw nsw i32 %207, %213
  %222 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 9
  br i1 %224, label %198, label %228

225:                                              ; preds = %210
  %226 = and i8 %206, -3
  store i8 %226, ptr %169, align 4
  %227 = zext i8 %226 to i32
  br label %228

228:                                              ; preds = %225, %220, %204
  %229 = phi i32 [ %227, %225 ], [ %205, %220 ], [ %205, %204 ]
  %230 = phi i8 [ %226, %225 ], [ %206, %220 ], [ %206, %204 ]
  %231 = phi i32 [ %207, %225 ], [ %221, %220 ], [ %207, %204 ]
  %232 = and i32 %229, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %251, label %234

234:                                              ; preds = %228
  %235 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2
  %236 = load i8, ptr %235, align 4
  %237 = zext i8 %236 to i32
  %238 = add i8 %236, -14
  %239 = icmp ult i8 %238, -13
  br i1 %239, label %249, label %240

240:                                              ; preds = %234
  %241 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 6
  br i1 %243, label %198, label %244

244:                                              ; preds = %240
  %245 = add nuw nsw i32 %231, %237
  %246 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 9
  br i1 %248, label %198, label %251

249:                                              ; preds = %234
  %250 = and i8 %230, -5
  store i8 %250, ptr %169, align 4
  br label %251

251:                                              ; preds = %249, %244, %228
  %252 = phi i32 [ %231, %249 ], [ %245, %244 ], [ %231, %228 ]
  %253 = add nsw i32 %252, -14
  %254 = icmp ult i32 %253, -13
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load i32, ptr @debug, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  %259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.is_manual_mode) #15
  br label %262

260:                                              ; preds = %255, %198, %176, %163, %154
  %261 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 35
  store i8 0, ptr %261, align 2
  br label %270

262:                                              ; preds = %258, %251, %202, %179, %166, %157, %145
  %263 = phi ptr [ @.str.55, %145 ], [ @.str.55, %157 ], [ @.str.55, %166 ], [ @.str.55, %179 ], [ @.str.55, %202 ], [ @.str.54, %251 ], [ @.str.55, %258 ]
  %264 = phi i8 [ 0, %145 ], [ 0, %157 ], [ 0, %166 ], [ 0, %179 ], [ 0, %202 ], [ 1, %251 ], [ 0, %258 ]
  %265 = load i32, ptr @debug, align 4
  %266 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 35
  store i8 %264, ptr %266, align 2
  %267 = icmp eq i32 %265, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %262
  %269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.dib8000_tune, ptr noundef nonnull %263) #15
  br label %270

270:                                              ; preds = %268, %262, %260
  %271 = phi ptr [ %261, %260 ], [ %266, %268 ], [ %266, %262 ]
  tail call fastcc void @dib8000_viterbi_state(ptr noundef %5, i8 noundef zeroext 0)
  %272 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 285)
  %273 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %274 = tail call i32 @mutex_lock_interruptible(ptr noundef %273) #14
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %270
  %277 = load i32, ptr @debug, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %297, label %279

279:                                              ; preds = %276
  %280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %297

281:                                              ; preds = %270
  %282 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %282, align 8
  %283 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 29, ptr %283, align 1
  %284 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %284, align 2
  %285 = trunc i16 %272 to i8
  %286 = and i8 %285, 96
  %287 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %286, ptr %287, align 1
  %288 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %288, align 8
  %289 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %290 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %291 = load i8, ptr %290, align 4
  %292 = lshr i8 %291, 1
  %293 = zext i8 %292 to i16
  store i16 %293, ptr %288, align 8
  %294 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %282, ptr %294, align 8
  %295 = load ptr, ptr %289, align 4
  %296 = tail call i32 @i2c_transfer(ptr noundef %295, ptr noundef %288, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %273) #14
  br label %297

297:                                              ; preds = %281, %279, %276
  %298 = load ptr, ptr %6, align 8
  %299 = getelementptr inbounds %struct.dvb_frontend, ptr %298, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %300 = getelementptr inbounds %struct.dvb_frontend, ptr %298, i32 0, i32 1, i32 32, i32 9
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %307, label %303

303:                                              ; preds = %297
  %304 = call i32 %301(ptr noundef %298, ptr noundef nonnull %2) #14
  %305 = load i32, ptr %2, align 4
  %306 = load i32, ptr %299, align 4
  br label %309

307:                                              ; preds = %297
  %308 = load i32, ptr %299, align 4
  br label %309

309:                                              ; preds = %307, %303
  %310 = phi i32 [ %308, %307 ], [ %306, %303 ]
  %311 = phi i32 [ %308, %307 ], [ %305, %303 ]
  %312 = udiv i32 %311, 1000
  store i32 %312, ptr %2, align 4
  %313 = sdiv i32 %310, -1000
  %314 = add nsw i32 %312, %313
  %315 = getelementptr inbounds %struct.dvb_frontend, ptr %298, i32 0, i32 8, i32 18
  %316 = load i8, ptr %315, align 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %392, label %318

318:                                              ; preds = %309
  %319 = getelementptr inbounds %struct.dvb_frontend, ptr %298, i32 0, i32 8, i32 19
  %320 = load i8, ptr %319, align 2
  %321 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 39
  store i8 %320, ptr %321, align 2
  %322 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 26) #14
  %323 = and i16 %322, 1
  %324 = zext i16 %323 to i32
  %325 = getelementptr inbounds %struct.dvb_frontend, ptr %298, i32 0, i32 8, i32 4
  %326 = load i32, ptr %325, align 4
  %327 = call i32 @mutex_lock_interruptible(ptr noundef %273) #14
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %318
  %330 = load i32, ptr @debug, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %353, label %332

332:                                              ; preds = %329
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %353

334:                                              ; preds = %318
  %335 = trunc i32 %326 to i16
  %336 = xor i16 %323, %335
  %337 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %337, align 8
  %338 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 26, ptr %338, align 1
  %339 = lshr i32 %326, 8
  %340 = trunc i32 %339 to i8
  %341 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %340, ptr %341, align 2
  %342 = trunc i16 %336 to i8
  %343 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %342, ptr %343, align 1
  %344 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %344, align 8
  %345 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %346 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %347 = load i8, ptr %346, align 4
  %348 = lshr i8 %347, 1
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %344, align 8
  %350 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %337, ptr %350, align 8
  %351 = load ptr, ptr %345, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef %344, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %273) #14
  br label %353

353:                                              ; preds = %334, %332, %329
  %354 = getelementptr inbounds %struct.dib8000_config, ptr %5, i32 0, i32 6
  %355 = load ptr, ptr %354, align 8
  %356 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %355, i32 0, i32 13
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 0
  %359 = load i32, ptr %325, align 4
  %360 = icmp eq i32 %359, %324
  br i1 %358, label %361, label %389

361:                                              ; preds = %353
  br i1 %360, label %362, label %392

362:                                              ; preds = %361
  %363 = call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 26) #14
  %364 = call i32 @mutex_lock_interruptible(ptr noundef %273) #14
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = load i32, ptr @debug, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %401, label %369

369:                                              ; preds = %366
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %392

371:                                              ; preds = %362
  %372 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %372, align 8
  %373 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 26, ptr %373, align 1
  %374 = lshr i16 %363, 8
  %375 = trunc i16 %374 to i8
  %376 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %375, ptr %376, align 2
  %377 = trunc i16 %363 to i8
  %378 = or i8 %377, 1
  %379 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %378, ptr %379, align 1
  %380 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %380, align 8
  %381 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %382 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %383 = load i8, ptr %382, align 4
  %384 = lshr i8 %383, 1
  %385 = zext i8 %384 to i16
  store i16 %385, ptr %380, align 8
  %386 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %372, ptr %386, align 8
  %387 = load ptr, ptr %381, align 4
  %388 = call i32 @i2c_transfer(ptr noundef %387, ptr noundef %380, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %273) #14
  br label %392

389:                                              ; preds = %353
  %390 = sub nsw i32 0, %314
  %391 = select i1 %360, i32 %390, i32 %314
  br label %392

392:                                              ; preds = %389, %371, %369, %361, %309
  %393 = phi i32 [ %314, %371 ], [ %314, %369 ], [ %391, %389 ], [ %314, %309 ], [ %314, %361 ]
  %394 = load i32, ptr @debug, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %401, label %396

396:                                              ; preds = %392
  %397 = load i32, ptr %299, align 4
  %398 = load i32, ptr %2, align 4
  %399 = sub i32 %397, %398
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.dib8000_set_frequency_offset, i32 noundef %399, i32 noundef %397, i32 noundef %398, i32 noundef %393) #15
  br label %401

401:                                              ; preds = %396, %392, %366
  %402 = phi i32 [ %393, %396 ], [ %393, %392 ], [ %314, %366 ]
  %403 = icmp slt i32 %402, 0
  %404 = call i32 @llvm.abs.i32(i32 %402, i1 true) #14
  %405 = getelementptr inbounds %struct.dib8000_config, ptr %5, i32 0, i32 6
  %406 = load ptr, ptr %405, align 8
  %407 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %406, i32 0, i32 13
  %408 = load i32, ptr %407, align 4
  %409 = and i32 %408, 33554431
  %410 = lshr i32 %408, 25
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = load i16, ptr %34, align 2
  %414 = icmp eq i16 %413, -32624
  br i1 %414, label %415, label %428

415:                                              ; preds = %401
  %416 = call fastcc i32 @dib8000_read32(ptr noundef %5, i16 noundef zeroext 23) #14
  %417 = udiv i32 %416, 1000
  %418 = udiv i32 67108864, %417
  %419 = trunc i32 %418 to i16
  %420 = shl i32 %418, 16
  %421 = ashr exact i32 %420, 16
  %422 = mul i32 %421, %404
  %423 = sub i32 67108864, %422
  %424 = select i1 %403, i32 %423, i32 %422
  %425 = icmp eq i8 %412, 0
  %426 = sub i32 67108864, %424
  %427 = select i1 %425, i32 %424, i32 %426
  br label %441

428:                                              ; preds = %401
  %429 = load i32, ptr %406, align 4
  %430 = udiv i32 67108864, %429
  %431 = trunc i32 %430 to i16
  %432 = sub i16 0, %431
  %433 = select i1 %403, i16 %432, i16 %431
  %434 = icmp eq i8 %412, 0
  %435 = sext i16 %433 to i32
  %436 = mul i32 %404, %435
  br i1 %434, label %439, label %437

437:                                              ; preds = %428
  %438 = sub i32 %409, %436
  br label %441

439:                                              ; preds = %428
  %440 = add i32 %436, %409
  br label %441

441:                                              ; preds = %439, %437, %415
  %442 = phi i32 [ %438, %437 ], [ %440, %439 ], [ %427, %415 ]
  %443 = phi i32 [ 2, %437 ], [ 2, %439 ], [ 4, %415 ]
  %444 = phi i16 [ %433, %437 ], [ %433, %439 ], [ %419, %415 ]
  %445 = load i32, ptr @debug, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %441
  %448 = icmp eq i8 %412, 0
  %449 = select i1 %448, i32 32, i32 45
  %450 = sext i16 %444 to i32
  %451 = udiv i32 %442, %450
  %452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.dib8000_set_dds, i32 noundef %449, i32 noundef %451) #15
  br label %453

453:                                              ; preds = %447, %441
  %454 = load ptr, ptr %405, align 8
  %455 = load i32, ptr %454, align 4
  %456 = udiv i32 %455, %443
  %457 = icmp ugt i32 %404, %456
  br i1 %457, label %532, label %458

458:                                              ; preds = %453
  %459 = call i32 @mutex_lock_interruptible(ptr noundef %273) #14
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %458
  %462 = load i32, ptr @debug, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %480, label %464

464:                                              ; preds = %461
  %465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %480

466:                                              ; preds = %458
  %467 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %467, align 8
  %468 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 26, ptr %468, align 1
  %469 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %469, align 2
  %470 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %412, ptr %470, align 1
  %471 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %471, align 8
  %472 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %473 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %474 = load i8, ptr %473, align 4
  %475 = lshr i8 %474, 1
  %476 = zext i8 %475 to i16
  store i16 %476, ptr %471, align 8
  %477 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %467, ptr %477, align 8
  %478 = load ptr, ptr %472, align 4
  %479 = call i32 @i2c_transfer(ptr noundef %478, ptr noundef %471, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %273) #14
  br label %480

480:                                              ; preds = %466, %464, %461
  %481 = call i32 @mutex_lock_interruptible(ptr noundef %273) #14
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %480
  %484 = load i32, ptr @debug, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %507, label %486

486:                                              ; preds = %483
  %487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %507

488:                                              ; preds = %480
  %489 = lshr i32 %442, 16
  %490 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %490, align 8
  %491 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 27, ptr %491, align 1
  %492 = lshr i32 %442, 24
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %494, ptr %495, align 2
  %496 = trunc i32 %489 to i8
  %497 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %496, ptr %497, align 1
  %498 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %498, align 8
  %499 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %500 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %501 = load i8, ptr %500, align 4
  %502 = lshr i8 %501, 1
  %503 = zext i8 %502 to i16
  store i16 %503, ptr %498, align 8
  %504 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %490, ptr %504, align 8
  %505 = load ptr, ptr %499, align 4
  %506 = call i32 @i2c_transfer(ptr noundef %505, ptr noundef %498, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %273) #14
  br label %507

507:                                              ; preds = %488, %486, %483
  %508 = call i32 @mutex_lock_interruptible(ptr noundef %273) #14
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %507
  %511 = load i32, ptr @debug, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %532, label %513

513:                                              ; preds = %510
  %514 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %532

515:                                              ; preds = %507
  %516 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %516, align 8
  %517 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 28, ptr %517, align 1
  %518 = lshr i32 %442, 8
  %519 = trunc i32 %518 to i8
  %520 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %519, ptr %520, align 2
  %521 = trunc i32 %442 to i8
  %522 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %521, ptr %522, align 1
  %523 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %523, align 8
  %524 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %525 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %526 = load i8, ptr %525, align 4
  %527 = lshr i8 %526, 1
  %528 = zext i8 %527 to i16
  store i16 %528, ptr %523, align 8
  %529 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %516, ptr %529, align 8
  %530 = load ptr, ptr %524, align 4
  %531 = call i32 @i2c_transfer(ptr noundef %530, ptr noundef %523, i32 noundef 1) #14
  call void @mutex_unlock(ptr noundef %273) #14
  br label %532

532:                                              ; preds = %515, %513, %510, %453
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %533 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 7
  %534 = load i32, ptr %533, align 4
  %535 = udiv i32 %534, 1000
  call fastcc void @dib8000_set_bandwidth(ptr noundef %0, i32 noundef %535)
  %536 = load i8, ptr %271, align 2
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %532
  %539 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 37
  store i16 2, ptr %539, align 2
  %540 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 38
  store i16 4, ptr %540, align 8
  br label %541

541:                                              ; preds = %538, %532
  %542 = phi i16 [ 1, %538 ], [ 100, %532 ]
  %543 = phi i32 [ 51, %538 ], [ 33, %532 ]
  %544 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 36
  store i16 %542, ptr %544, align 4
  store i32 %543, ptr %8, align 4
  %545 = load ptr, ptr %6, align 8
  %546 = getelementptr inbounds %struct.dvb_frontend, ptr %545, i32 0, i32 8, i32 6
  %547 = load i32, ptr %546, align 4
  %548 = icmp eq i32 %547, 3
  %549 = select i1 %548, i32 2, i32 1
  %550 = icmp eq i32 %547, 0
  %551 = select i1 %550, i32 0, i32 %549
  %552 = getelementptr [4 x i16], ptr @LUT_isdbt_symbol_duration, i32 0, i32 %551
  %553 = load i16, ptr %552, align 2
  %554 = zext i16 %553 to i32
  %555 = getelementptr inbounds %struct.dvb_frontend, ptr %545, i32 0, i32 8, i32 7
  %556 = load i32, ptr %555, align 4
  %557 = udiv i32 %556, 1000
  %558 = udiv i32 %554, %557
  %559 = trunc i32 %558 to i8
  %560 = add i8 %559, 1
  %561 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 40
  store i8 %560, ptr %561, align 1
  br label %2130

562:                                              ; preds = %1
  %563 = getelementptr inbounds %struct.dib8000_config, ptr %5, i32 0, i32 6
  %564 = load ptr, ptr %563, align 8
  %565 = load i32, ptr %564, align 4
  %566 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %567 = load i16, ptr %566, align 2
  %568 = icmp eq i16 %567, -32624
  br i1 %568, label %569, label %573

569:                                              ; preds = %562
  %570 = tail call fastcc i32 @dib8000_read32(ptr noundef %5, i16 noundef zeroext 23) #14
  %571 = udiv i32 %570, 1000
  %572 = load i16, ptr %566, align 2
  br label %573

573:                                              ; preds = %569, %562
  %574 = phi i16 [ %572, %569 ], [ %567, %562 ]
  %575 = phi i32 [ %571, %569 ], [ %565, %562 ]
  %576 = icmp ugt i16 %574, -32767
  br i1 %576, label %577, label %1346

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 36
  %579 = load i16, ptr %578, align 4
  switch i16 %579, label %1346 [
    i16 1, label %580
    i16 2, label %1123
  ]

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %582 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %584, label %589

584:                                              ; preds = %580
  %585 = load i32, ptr @debug, align 4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %603, label %587

587:                                              ; preds = %584
  %588 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %603

589:                                              ; preds = %580
  %590 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %590, align 8
  %591 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 37, ptr %591, align 1
  %592 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %592, align 2
  %593 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 101, ptr %593, align 1
  %594 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %594, align 8
  %595 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %596 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %597 = load i8, ptr %596, align 4
  %598 = lshr i8 %597, 1
  %599 = zext i8 %598 to i16
  store i16 %599, ptr %594, align 8
  %600 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %590, ptr %600, align 8
  %601 = load ptr, ptr %595, align 4
  %602 = tail call i32 @i2c_transfer(ptr noundef %601, ptr noundef %594, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %603

603:                                              ; preds = %589, %587, %584
  %604 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %605 = icmp slt i32 %604, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %603
  %607 = load i32, ptr @debug, align 4
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %625, label %609

609:                                              ; preds = %606
  %610 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %625

611:                                              ; preds = %603
  %612 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %612, align 8
  %613 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 116, ptr %613, align 1
  %614 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %614, align 2
  %615 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %615, align 1
  %616 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %616, align 8
  %617 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %618 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %619 = load i8, ptr %618, align 4
  %620 = lshr i8 %619, 1
  %621 = zext i8 %620 to i16
  store i16 %621, ptr %616, align 8
  %622 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %612, ptr %622, align 8
  %623 = load ptr, ptr %617, align 4
  %624 = tail call i32 @i2c_transfer(ptr noundef %623, ptr noundef %616, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %625

625:                                              ; preds = %611, %609, %606
  %626 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %627 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %628 = icmp slt i32 %627, 0
  br i1 %628, label %629, label %634

629:                                              ; preds = %625
  %630 = load i32, ptr @debug, align 4
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %653, label %632

632:                                              ; preds = %629
  %633 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %653

634:                                              ; preds = %625
  %635 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %635, align 8
  %636 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %636, align 1
  %637 = lshr i16 %626, 8
  %638 = trunc i16 %637 to i8
  %639 = and i8 %638, 31
  %640 = or i8 %639, -128
  %641 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %640, ptr %641, align 2
  %642 = trunc i16 %626 to i8
  %643 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %642, ptr %643, align 1
  %644 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %644, align 8
  %645 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %646 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %647 = load i8, ptr %646, align 4
  %648 = lshr i8 %647, 1
  %649 = zext i8 %648 to i16
  store i16 %649, ptr %644, align 8
  %650 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %635, ptr %650, align 8
  %651 = load ptr, ptr %645, align 4
  %652 = tail call i32 @i2c_transfer(ptr noundef %651, ptr noundef %644, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %653

653:                                              ; preds = %634, %632, %629
  %654 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 1) #14
  %655 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %656 = icmp slt i32 %655, 0
  br i1 %656, label %657, label %662

657:                                              ; preds = %653
  %658 = load i32, ptr @debug, align 4
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %680, label %660

660:                                              ; preds = %657
  %661 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %680

662:                                              ; preds = %653
  %663 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %663, align 8
  %664 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 1, ptr %664, align 1
  %665 = lshr i16 %654, 8
  %666 = trunc i16 %665 to i8
  %667 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %666, ptr %667, align 2
  %668 = trunc i16 %654 to i8
  %669 = and i8 %668, -4
  %670 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %669, ptr %670, align 1
  %671 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %671, align 8
  %672 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %673 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %674 = load i8, ptr %673, align 4
  %675 = lshr i8 %674, 1
  %676 = zext i8 %675 to i16
  store i16 %676, ptr %671, align 8
  %677 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %663, ptr %677, align 8
  %678 = load ptr, ptr %672, align 4
  %679 = tail call i32 @i2c_transfer(ptr noundef %678, ptr noundef %671, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %680

680:                                              ; preds = %662, %660, %657
  %681 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %682 = icmp slt i32 %681, 0
  br i1 %682, label %683, label %688

683:                                              ; preds = %680
  %684 = load i32, ptr @debug, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %702, label %686

686:                                              ; preds = %683
  %687 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %702

688:                                              ; preds = %680
  %689 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %689, align 8
  %690 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 6, ptr %690, align 1
  %691 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %691, align 2
  %692 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %692, align 1
  %693 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %693, align 8
  %694 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %695 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %696 = load i8, ptr %695, align 4
  %697 = lshr i8 %696, 1
  %698 = zext i8 %697 to i16
  store i16 %698, ptr %693, align 8
  %699 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %689, ptr %699, align 8
  %700 = load ptr, ptr %694, align 4
  %701 = tail call i32 @i2c_transfer(ptr noundef %700, ptr noundef %693, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %702

702:                                              ; preds = %688, %686, %683
  %703 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %704 = icmp slt i32 %703, 0
  br i1 %704, label %705, label %710

705:                                              ; preds = %702
  %706 = load i32, ptr @debug, align 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %724, label %708

708:                                              ; preds = %705
  %709 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %724

710:                                              ; preds = %702
  %711 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %711, align 8
  %712 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 7, ptr %712, align 1
  %713 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %713, align 2
  %714 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %714, align 1
  %715 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %715, align 8
  %716 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %717 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %718 = load i8, ptr %717, align 4
  %719 = lshr i8 %718, 1
  %720 = zext i8 %719 to i16
  store i16 %720, ptr %715, align 8
  %721 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %711, ptr %721, align 8
  %722 = load ptr, ptr %716, align 4
  %723 = tail call i32 @i2c_transfer(ptr noundef %722, ptr noundef %715, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %724

724:                                              ; preds = %710, %708, %705
  %725 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %727, label %732

727:                                              ; preds = %724
  %728 = load i32, ptr @debug, align 4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %746, label %730

730:                                              ; preds = %727
  %731 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %746

732:                                              ; preds = %724
  %733 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %733, align 8
  %734 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 8, ptr %734, align 1
  %735 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %735, align 2
  %736 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %736, align 1
  %737 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %737, align 8
  %738 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %739 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %740 = load i8, ptr %739, align 4
  %741 = lshr i8 %740, 1
  %742 = zext i8 %741 to i16
  store i16 %742, ptr %737, align 8
  %743 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %733, ptr %743, align 8
  %744 = load ptr, ptr %738, align 4
  %745 = tail call i32 @i2c_transfer(ptr noundef %744, ptr noundef %737, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %746

746:                                              ; preds = %732, %730, %727
  %747 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 10) #14
  %748 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %749 = icmp slt i32 %748, 0
  br i1 %749, label %750, label %755

750:                                              ; preds = %746
  %751 = load i32, ptr @debug, align 4
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %773, label %753

753:                                              ; preds = %750
  %754 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %773

755:                                              ; preds = %746
  %756 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %756, align 8
  %757 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 10, ptr %757, align 1
  %758 = lshr i16 %747, 8
  %759 = trunc i16 %758 to i8
  %760 = and i8 %759, 2
  %761 = or i8 %760, 1
  %762 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %761, ptr %762, align 2
  %763 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %763, align 1
  %764 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %764, align 8
  %765 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %766 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %767 = load i8, ptr %766, align 4
  %768 = lshr i8 %767, 1
  %769 = zext i8 %768 to i16
  store i16 %769, ptr %764, align 8
  %770 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %756, ptr %770, align 8
  %771 = load ptr, ptr %765, align 4
  %772 = tail call i32 @i2c_transfer(ptr noundef %771, ptr noundef %764, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %773

773:                                              ; preds = %755, %753, %750
  %774 = load i16, ptr %566, align 2
  %775 = icmp eq i16 %774, -32624
  br i1 %775, label %776, label %778

776:                                              ; preds = %773
  %777 = tail call fastcc i32 @dib8000_wait_lock(ptr noundef %5, i32 noundef %575, i32 noundef 10, i32 noundef 10, i32 noundef 10) #14
  br label %780

778:                                              ; preds = %773
  %779 = tail call fastcc i32 @dib8000_wait_lock(ptr noundef %5, i32 noundef %575, i32 noundef 20, i32 noundef 20, i32 noundef 20) #14
  br label %780

780:                                              ; preds = %778, %776
  %781 = phi i32 [ %777, %776 ], [ %779, %778 ]
  %782 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %783 = icmp slt i32 %782, 0
  br i1 %783, label %784, label %789

784:                                              ; preds = %780
  %785 = load i32, ptr @debug, align 4
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %803, label %787

787:                                              ; preds = %784
  %788 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %803

789:                                              ; preds = %780
  %790 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %790, align 8
  %791 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 17, ptr %791, align 1
  %792 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %792, align 2
  %793 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %793, align 1
  %794 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %794, align 8
  %795 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %796 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %797 = load i8, ptr %796, align 4
  %798 = lshr i8 %797, 1
  %799 = zext i8 %798 to i16
  store i16 %799, ptr %794, align 8
  %800 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %790, ptr %800, align 8
  %801 = load ptr, ptr %795, align 4
  %802 = tail call i32 @i2c_transfer(ptr noundef %801, ptr noundef %794, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %803

803:                                              ; preds = %789, %787, %784
  %804 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %805 = icmp slt i32 %804, 0
  br i1 %805, label %806, label %811

806:                                              ; preds = %803
  %807 = load i32, ptr @debug, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %825, label %809

809:                                              ; preds = %806
  %810 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %825

811:                                              ; preds = %803
  %812 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %812, align 8
  %813 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 18, ptr %813, align 1
  %814 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %814, align 2
  %815 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 -56, ptr %815, align 1
  %816 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %816, align 8
  %817 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %818 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %819 = load i8, ptr %818, align 4
  %820 = lshr i8 %819, 1
  %821 = zext i8 %820 to i16
  store i16 %821, ptr %816, align 8
  %822 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %812, ptr %822, align 8
  %823 = load ptr, ptr %817, align 4
  %824 = tail call i32 @i2c_transfer(ptr noundef %823, ptr noundef %816, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %825

825:                                              ; preds = %811, %809, %806
  %826 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %827 = icmp slt i32 %826, 0
  br i1 %827, label %828, label %833

828:                                              ; preds = %825
  %829 = load i32, ptr @debug, align 4
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %847, label %831

831:                                              ; preds = %828
  %832 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %847

833:                                              ; preds = %825
  %834 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %834, align 8
  %835 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 19, ptr %835, align 1
  %836 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %836, align 2
  %837 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %837, align 1
  %838 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %838, align 8
  %839 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %840 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %841 = load i8, ptr %840, align 4
  %842 = lshr i8 %841, 1
  %843 = zext i8 %842 to i16
  store i16 %843, ptr %838, align 8
  %844 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %834, ptr %844, align 8
  %845 = load ptr, ptr %839, align 4
  %846 = tail call i32 @i2c_transfer(ptr noundef %845, ptr noundef %838, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %847

847:                                              ; preds = %833, %831, %828
  %848 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %850, label %855

850:                                              ; preds = %847
  %851 = load i32, ptr @debug, align 4
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %869, label %853

853:                                              ; preds = %850
  %854 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %869

855:                                              ; preds = %847
  %856 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %856, align 8
  %857 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 20, ptr %857, align 1
  %858 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 1, ptr %858, align 2
  %859 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 -112, ptr %859, align 1
  %860 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %860, align 8
  %861 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %862 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %863 = load i8, ptr %862, align 4
  %864 = lshr i8 %863, 1
  %865 = zext i8 %864 to i16
  store i16 %865, ptr %860, align 8
  %866 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %856, ptr %866, align 8
  %867 = load ptr, ptr %861, align 4
  %868 = tail call i32 @i2c_transfer(ptr noundef %867, ptr noundef %860, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %869

869:                                              ; preds = %855, %853, %850
  %870 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %871 = icmp slt i32 %870, 0
  br i1 %871, label %872, label %877

872:                                              ; preds = %869
  %873 = load i32, ptr @debug, align 4
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %895, label %875

875:                                              ; preds = %872
  %876 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %895

877:                                              ; preds = %869
  %878 = lshr i32 %781, 16
  %879 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %879, align 8
  %880 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 21, ptr %880, align 1
  %881 = lshr i32 %781, 24
  %882 = trunc i32 %881 to i8
  %883 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %882, ptr %883, align 2
  %884 = trunc i32 %878 to i8
  %885 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %884, ptr %885, align 1
  %886 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %886, align 8
  %887 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %888 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %889 = load i8, ptr %888, align 4
  %890 = lshr i8 %889, 1
  %891 = zext i8 %890 to i16
  store i16 %891, ptr %886, align 8
  %892 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %879, ptr %892, align 8
  %893 = load ptr, ptr %887, align 4
  %894 = tail call i32 @i2c_transfer(ptr noundef %893, ptr noundef %886, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %895

895:                                              ; preds = %877, %875, %872
  %896 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %897 = icmp slt i32 %896, 0
  br i1 %897, label %898, label %903

898:                                              ; preds = %895
  %899 = load i32, ptr @debug, align 4
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %920, label %901

901:                                              ; preds = %898
  %902 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %920

903:                                              ; preds = %895
  %904 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %904, align 8
  %905 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 22, ptr %905, align 1
  %906 = lshr i32 %781, 8
  %907 = trunc i32 %906 to i8
  %908 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %907, ptr %908, align 2
  %909 = trunc i32 %781 to i8
  %910 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %909, ptr %910, align 1
  %911 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %911, align 8
  %912 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %913 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %914 = load i8, ptr %913, align 4
  %915 = lshr i8 %914, 1
  %916 = zext i8 %915 to i16
  store i16 %916, ptr %911, align 8
  %917 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %904, ptr %917, align 8
  %918 = load ptr, ptr %912, align 4
  %919 = tail call i32 @i2c_transfer(ptr noundef %918, ptr noundef %911, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %920

920:                                              ; preds = %903, %901, %898
  %921 = load i16, ptr %566, align 2
  %922 = icmp eq i16 %921, -32624
  %923 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 32) #14
  %924 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %925 = icmp slt i32 %924, 0
  br i1 %922, label %926, label %950

926:                                              ; preds = %920
  br i1 %925, label %927, label %932

927:                                              ; preds = %926
  %928 = load i32, ptr @debug, align 4
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %975, label %930

930:                                              ; preds = %927
  %931 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %975

932:                                              ; preds = %926
  %933 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %933, align 8
  %934 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 32, ptr %934, align 1
  %935 = lshr i16 %923, 8
  %936 = trunc i16 %935 to i8
  %937 = and i8 %936, -16
  %938 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %937, ptr %938, align 2
  %939 = trunc i16 %923 to i8
  %940 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %939, ptr %940, align 1
  %941 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %941, align 8
  %942 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %943 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %944 = load i8, ptr %943, align 4
  %945 = lshr i8 %944, 1
  %946 = zext i8 %945 to i16
  store i16 %946, ptr %941, align 8
  %947 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %933, ptr %947, align 8
  %948 = load ptr, ptr %942, align 4
  %949 = tail call i32 @i2c_transfer(ptr noundef %948, ptr noundef %941, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %975

950:                                              ; preds = %920
  br i1 %925, label %951, label %956

951:                                              ; preds = %950
  %952 = load i32, ptr @debug, align 4
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %975, label %954

954:                                              ; preds = %951
  %955 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %975

956:                                              ; preds = %950
  %957 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %957, align 8
  %958 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 32, ptr %958, align 1
  %959 = lshr i16 %923, 8
  %960 = trunc i16 %959 to i8
  %961 = and i8 %960, -16
  %962 = or i8 %961, 9
  %963 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %962, ptr %963, align 2
  %964 = trunc i16 %923 to i8
  %965 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %964, ptr %965, align 1
  %966 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %966, align 8
  %967 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %968 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %969 = load i8, ptr %968, align 4
  %970 = lshr i8 %969, 1
  %971 = zext i8 %970 to i16
  store i16 %971, ptr %966, align 8
  %972 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %957, ptr %972, align 8
  %973 = load ptr, ptr %967, align 4
  %974 = tail call i32 @i2c_transfer(ptr noundef %973, ptr noundef %966, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %975

975:                                              ; preds = %956, %954, %951, %932, %930, %927
  %976 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %977 = icmp slt i32 %976, 0
  br i1 %977, label %978, label %983

978:                                              ; preds = %975
  %979 = load i32, ptr @debug, align 4
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %997, label %981

981:                                              ; preds = %978
  %982 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %997

983:                                              ; preds = %975
  %984 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %984, align 8
  %985 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 99, ptr %985, align 1
  %986 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %986, align 2
  %987 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 2, ptr %987, align 1
  %988 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %988, align 8
  %989 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %990 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %991 = load i8, ptr %990, align 4
  %992 = lshr i8 %991, 1
  %993 = zext i8 %992 to i16
  store i16 %993, ptr %988, align 8
  %994 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %984, ptr %994, align 8
  %995 = load ptr, ptr %989, align 4
  %996 = tail call i32 @i2c_transfer(ptr noundef %995, ptr noundef %988, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %997

997:                                              ; preds = %983, %981, %978
  %998 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %999 = icmp slt i32 %998, 0
  br i1 %999, label %1000, label %1005

1000:                                             ; preds = %997
  %1001 = load i32, ptr @debug, align 4
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1019, label %1003

1003:                                             ; preds = %1000
  %1004 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1019

1005:                                             ; preds = %997
  %1006 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %1006, align 8
  %1007 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 100, ptr %1007, align 1
  %1008 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1008, align 2
  %1009 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1009, align 1
  %1010 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1010, align 8
  %1011 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1012 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1013 = load i8, ptr %1012, align 4
  %1014 = lshr i8 %1013, 1
  %1015 = zext i8 %1014 to i16
  store i16 %1015, ptr %1010, align 8
  %1016 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1006, ptr %1016, align 8
  %1017 = load ptr, ptr %1011, align 4
  %1018 = tail call i32 @i2c_transfer(ptr noundef %1017, ptr noundef %1010, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %1019

1019:                                             ; preds = %1005, %1003, %1000
  %1020 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %1021 = icmp slt i32 %1020, 0
  br i1 %1021, label %1022, label %1027

1022:                                             ; preds = %1019
  %1023 = load i32, ptr @debug, align 4
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1041, label %1025

1025:                                             ; preds = %1022
  %1026 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1041

1027:                                             ; preds = %1019
  %1028 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %1028, align 8
  %1029 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 101, ptr %1029, align 1
  %1030 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 1, ptr %1030, align 2
  %1031 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 17, ptr %1031, align 1
  %1032 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1032, align 8
  %1033 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1035 = load i8, ptr %1034, align 4
  %1036 = lshr i8 %1035, 1
  %1037 = zext i8 %1036 to i16
  store i16 %1037, ptr %1032, align 8
  %1038 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1028, ptr %1038, align 8
  %1039 = load ptr, ptr %1033, align 4
  %1040 = tail call i32 @i2c_transfer(ptr noundef %1039, ptr noundef %1032, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %1041

1041:                                             ; preds = %1027, %1025, %1022
  %1042 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 770) #14
  %1043 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %1044 = icmp slt i32 %1043, 0
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1041
  %1046 = load i32, ptr @debug, align 4
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1068, label %1048

1048:                                             ; preds = %1045
  %1049 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1068

1050:                                             ; preds = %1041
  %1051 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 3, ptr %1051, align 8
  %1052 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 2, ptr %1052, align 1
  %1053 = lshr i16 %1042, 8
  %1054 = trunc i16 %1053 to i8
  %1055 = or i8 %1054, 32
  %1056 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1055, ptr %1056, align 2
  %1057 = trunc i16 %1042 to i8
  %1058 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1057, ptr %1058, align 1
  %1059 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1059, align 8
  %1060 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1062 = load i8, ptr %1061, align 4
  %1063 = lshr i8 %1062, 1
  %1064 = zext i8 %1063 to i16
  store i16 %1064, ptr %1059, align 8
  %1065 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1051, ptr %1065, align 8
  %1066 = load ptr, ptr %1060, align 4
  %1067 = tail call i32 @i2c_transfer(ptr noundef %1066, ptr noundef %1059, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %1068

1068:                                             ; preds = %1050, %1048, %1045
  %1069 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 770) #14
  %1070 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %1071 = icmp slt i32 %1070, 0
  br i1 %1071, label %1072, label %1077

1072:                                             ; preds = %1068
  %1073 = load i32, ptr @debug, align 4
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1095, label %1075

1075:                                             ; preds = %1072
  %1076 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1095

1077:                                             ; preds = %1068
  %1078 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 3, ptr %1078, align 8
  %1079 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 2, ptr %1079, align 1
  %1080 = lshr i16 %1069, 8
  %1081 = trunc i16 %1080 to i8
  %1082 = and i8 %1081, -33
  %1083 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1082, ptr %1083, align 2
  %1084 = trunc i16 %1069 to i8
  %1085 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1084, ptr %1085, align 1
  %1086 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1086, align 8
  %1087 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1088 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1089 = load i8, ptr %1088, align 4
  %1090 = lshr i8 %1089, 1
  %1091 = zext i8 %1090 to i16
  store i16 %1091, ptr %1086, align 8
  %1092 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1078, ptr %1092, align 8
  %1093 = load ptr, ptr %1087, align 4
  %1094 = tail call i32 @i2c_transfer(ptr noundef %1093, ptr noundef %1086, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %1095

1095:                                             ; preds = %1077, %1075, %1072
  %1096 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %1097 = tail call i32 @mutex_lock_interruptible(ptr noundef %581) #14
  %1098 = icmp slt i32 %1097, 0
  br i1 %1098, label %1099, label %1104

1099:                                             ; preds = %1095
  %1100 = load i32, ptr @debug, align 4
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1607, label %1102

1102:                                             ; preds = %1099
  %1103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1607

1104:                                             ; preds = %1095
  %1105 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1105, align 8
  %1106 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1106, align 1
  %1107 = lshr i16 %1096, 8
  %1108 = trunc i16 %1107 to i8
  %1109 = and i8 %1108, 7
  %1110 = or i8 %1109, 32
  %1111 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1110, ptr %1111, align 2
  %1112 = trunc i16 %1096 to i8
  %1113 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1112, ptr %1113, align 1
  %1114 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1114, align 8
  %1115 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1117 = load i8, ptr %1116, align 4
  %1118 = lshr i8 %1117, 1
  %1119 = zext i8 %1118 to i16
  store i16 %1119, ptr %1114, align 8
  %1120 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1105, ptr %1120, align 8
  %1121 = load ptr, ptr %1115, align 4
  %1122 = tail call i32 @i2c_transfer(ptr noundef %1121, ptr noundef %1114, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %581) #14
  br label %1607

1123:                                             ; preds = %577
  %1124 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 6
  store i32 1, ptr %1124, align 4
  %1125 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 8
  store i32 2, ptr %1125, align 4
  %1126 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 4
  store i32 0, ptr %1126, align 4
  %1127 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23
  %1128 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 3, ptr %1128, align 4
  %1129 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 2, ptr %1129, align 4
  %1130 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 0, ptr %1130, align 4
  store i8 13, ptr %1127, align 4
  %1131 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 37
  %1132 = load i16, ptr %1131, align 2
  %1133 = zext i16 %1132 to i32
  store i32 %1133, ptr %1124, align 4
  tail call fastcc void @dib8000_set_isdbt_common_channel(ptr noundef %5, i8 noundef zeroext 16, i8 noundef zeroext 1) #14
  %1134 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %1135 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1136 = icmp slt i32 %1135, 0
  br i1 %1136, label %1137, label %1142

1137:                                             ; preds = %1123
  %1138 = load i32, ptr @debug, align 4
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1156, label %1140

1140:                                             ; preds = %1137
  %1141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1156

1142:                                             ; preds = %1123
  %1143 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1143, align 8
  %1144 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 6, ptr %1144, align 1
  %1145 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1145, align 2
  %1146 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 4, ptr %1146, align 1
  %1147 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1147, align 8
  %1148 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1149 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1150 = load i8, ptr %1149, align 4
  %1151 = lshr i8 %1150, 1
  %1152 = zext i8 %1151 to i16
  store i16 %1152, ptr %1147, align 8
  %1153 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1143, ptr %1153, align 8
  %1154 = load ptr, ptr %1148, align 4
  %1155 = tail call i32 @i2c_transfer(ptr noundef %1154, ptr noundef %1147, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1156

1156:                                             ; preds = %1142, %1140, %1137
  %1157 = load i16, ptr %566, align 2
  %1158 = icmp eq i16 %1157, -32624
  %1159 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1160 = icmp slt i32 %1159, 0
  br i1 %1158, label %1161, label %1181

1161:                                             ; preds = %1156
  br i1 %1160, label %1162, label %1167

1162:                                             ; preds = %1161
  %1163 = load i32, ptr @debug, align 4
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1201, label %1165

1165:                                             ; preds = %1162
  %1166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1201

1167:                                             ; preds = %1161
  %1168 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1168, align 8
  %1169 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 7, ptr %1169, align 1
  %1170 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 28, ptr %1170, align 2
  %1171 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1171, align 1
  %1172 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1172, align 8
  %1173 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1175 = load i8, ptr %1174, align 4
  %1176 = lshr i8 %1175, 1
  %1177 = zext i8 %1176 to i16
  store i16 %1177, ptr %1172, align 8
  %1178 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1168, ptr %1178, align 8
  %1179 = load ptr, ptr %1173, align 4
  %1180 = tail call i32 @i2c_transfer(ptr noundef %1179, ptr noundef %1172, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1201

1181:                                             ; preds = %1156
  br i1 %1160, label %1182, label %1187

1182:                                             ; preds = %1181
  %1183 = load i32, ptr @debug, align 4
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1201, label %1185

1185:                                             ; preds = %1182
  %1186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1201

1187:                                             ; preds = %1181
  %1188 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1188, align 8
  %1189 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 7, ptr %1189, align 1
  %1190 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1190, align 2
  %1191 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 8, ptr %1191, align 1
  %1192 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1192, align 8
  %1193 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1194 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1195 = load i8, ptr %1194, align 4
  %1196 = lshr i8 %1195, 1
  %1197 = zext i8 %1196 to i16
  store i16 %1197, ptr %1192, align 8
  %1198 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1188, ptr %1198, align 8
  %1199 = load ptr, ptr %1193, align 4
  %1200 = tail call i32 @i2c_transfer(ptr noundef %1199, ptr noundef %1192, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1201

1201:                                             ; preds = %1187, %1185, %1182, %1167, %1165, %1162
  %1202 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1203 = icmp slt i32 %1202, 0
  br i1 %1203, label %1204, label %1209

1204:                                             ; preds = %1201
  %1205 = load i32, ptr @debug, align 4
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1223, label %1207

1207:                                             ; preds = %1204
  %1208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1223

1209:                                             ; preds = %1201
  %1210 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1210, align 8
  %1211 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 8, ptr %1211, align 1
  %1212 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 16, ptr %1212, align 2
  %1213 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1213, align 1
  %1214 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1214, align 8
  %1215 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1217 = load i8, ptr %1216, align 4
  %1218 = lshr i8 %1217, 1
  %1219 = zext i8 %1218 to i16
  store i16 %1219, ptr %1214, align 8
  %1220 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1210, ptr %1220, align 8
  %1221 = load ptr, ptr %1215, align 4
  %1222 = tail call i32 @i2c_transfer(ptr noundef %1221, ptr noundef %1214, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1223

1223:                                             ; preds = %1209, %1207, %1204
  %1224 = load i16, ptr %566, align 2
  %1225 = icmp eq i16 %1224, -32624
  %1226 = select i1 %1225, i32 100, i32 200
  %1227 = tail call fastcc i32 @dib8000_wait_lock(ptr noundef %5, i32 noundef %575, i32 noundef 50, i32 noundef %1226, i32 noundef 1000) #14
  %1228 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1229 = icmp slt i32 %1228, 0
  br i1 %1229, label %1230, label %1235

1230:                                             ; preds = %1223
  %1231 = load i32, ptr @debug, align 4
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1249, label %1233

1233:                                             ; preds = %1230
  %1234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1249

1235:                                             ; preds = %1223
  %1236 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %1236, align 8
  %1237 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 99, ptr %1237, align 1
  %1238 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1238, align 2
  %1239 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 3, ptr %1239, align 1
  %1240 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1240, align 8
  %1241 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1242 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1243 = load i8, ptr %1242, align 4
  %1244 = lshr i8 %1243, 1
  %1245 = zext i8 %1244 to i16
  store i16 %1245, ptr %1240, align 8
  %1246 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1236, ptr %1246, align 8
  %1247 = load ptr, ptr %1241, align 4
  %1248 = tail call i32 @i2c_transfer(ptr noundef %1247, ptr noundef %1240, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1249

1249:                                             ; preds = %1235, %1233, %1230
  %1250 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1251 = icmp slt i32 %1250, 0
  br i1 %1251, label %1252, label %1257

1252:                                             ; preds = %1249
  %1253 = load i32, ptr @debug, align 4
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1271, label %1255

1255:                                             ; preds = %1252
  %1256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1271

1257:                                             ; preds = %1249
  %1258 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %1258, align 8
  %1259 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 100, ptr %1259, align 1
  %1260 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1260, align 2
  %1261 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1261, align 1
  %1262 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1262, align 8
  %1263 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1265 = load i8, ptr %1264, align 4
  %1266 = lshr i8 %1265, 1
  %1267 = zext i8 %1266 to i16
  store i16 %1267, ptr %1262, align 8
  %1268 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1258, ptr %1268, align 8
  %1269 = load ptr, ptr %1263, align 4
  %1270 = tail call i32 @i2c_transfer(ptr noundef %1269, ptr noundef %1262, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1271

1271:                                             ; preds = %1257, %1255, %1252
  %1272 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1273 = icmp slt i32 %1272, 0
  br i1 %1273, label %1274, label %1279

1274:                                             ; preds = %1271
  %1275 = load i32, ptr @debug, align 4
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1293, label %1277

1277:                                             ; preds = %1274
  %1278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1293

1279:                                             ; preds = %1271
  %1280 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %1280, align 8
  %1281 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 101, ptr %1281, align 1
  %1282 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1282, align 2
  %1283 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 15, ptr %1283, align 1
  %1284 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1284, align 8
  %1285 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1287 = load i8, ptr %1286, align 4
  %1288 = lshr i8 %1287, 1
  %1289 = zext i8 %1288 to i16
  store i16 %1289, ptr %1284, align 8
  %1290 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1280, ptr %1290, align 8
  %1291 = load ptr, ptr %1285, align 4
  %1292 = tail call i32 @i2c_transfer(ptr noundef %1291, ptr noundef %1284, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1293

1293:                                             ; preds = %1279, %1277, %1274
  %1294 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %1295 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1296 = icmp slt i32 %1295, 0
  br i1 %1296, label %1297, label %1302

1297:                                             ; preds = %1293
  %1298 = load i32, ptr @debug, align 4
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1320, label %1300

1300:                                             ; preds = %1297
  %1301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1320

1302:                                             ; preds = %1293
  %1303 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1303, align 8
  %1304 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1304, align 1
  %1305 = lshr i16 %1294, 8
  %1306 = trunc i16 %1305 to i8
  %1307 = or i8 %1306, -128
  %1308 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1307, ptr %1308, align 2
  %1309 = trunc i16 %1294 to i8
  %1310 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1309, ptr %1310, align 1
  %1311 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1311, align 8
  %1312 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1314 = load i8, ptr %1313, align 4
  %1315 = lshr i8 %1314, 1
  %1316 = zext i8 %1315 to i16
  store i16 %1316, ptr %1311, align 8
  %1317 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1303, ptr %1317, align 8
  %1318 = load ptr, ptr %1312, align 4
  %1319 = tail call i32 @i2c_transfer(ptr noundef %1318, ptr noundef %1311, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1320

1320:                                             ; preds = %1302, %1300, %1297
  %1321 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 1284) #14
  %1322 = tail call i32 @mutex_lock_interruptible(ptr noundef %1134) #14
  %1323 = icmp slt i32 %1322, 0
  br i1 %1323, label %1324, label %1329

1324:                                             ; preds = %1320
  %1325 = load i32, ptr @debug, align 4
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1607, label %1327

1327:                                             ; preds = %1324
  %1328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1607

1329:                                             ; preds = %1320
  %1330 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1330, align 8
  %1331 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1331, align 1
  %1332 = lshr i16 %1294, 8
  %1333 = trunc i16 %1332 to i8
  %1334 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1333, ptr %1334, align 2
  %1335 = trunc i16 %1294 to i8
  %1336 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1335, ptr %1336, align 1
  %1337 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1337, align 8
  %1338 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1339 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1340 = load i8, ptr %1339, align 4
  %1341 = lshr i8 %1340, 1
  %1342 = zext i8 %1341 to i16
  store i16 %1342, ptr %1337, align 8
  %1343 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1330, ptr %1343, align 8
  %1344 = load ptr, ptr %1338, align 4
  %1345 = tail call i32 @i2c_transfer(ptr noundef %1344, ptr noundef %1337, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1134) #14
  br label %1607

1346:                                             ; preds = %577, %573
  %1347 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 4
  store i32 0, ptr %1347, align 4
  %1348 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23
  %1349 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 3, ptr %1349, align 4
  %1350 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 2, ptr %1350, align 4
  %1351 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 0, ptr %1351, align 4
  %1352 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 18
  %1353 = load i8, ptr %1352, align 1
  %1354 = icmp eq i8 %1353, 0
  store i8 13, ptr %1348, align 4
  br i1 %1354, label %1384, label %1355

1355:                                             ; preds = %1346
  %1356 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %1357 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %1358 = tail call i32 @mutex_lock_interruptible(ptr noundef %1357) #14
  %1359 = icmp slt i32 %1358, 0
  br i1 %1359, label %1360, label %1365

1360:                                             ; preds = %1355
  %1361 = load i32, ptr @debug, align 4
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1459, label %1363

1363:                                             ; preds = %1360
  %1364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1452

1365:                                             ; preds = %1355
  %1366 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1366, align 8
  %1367 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1367, align 1
  %1368 = lshr i16 %1356, 8
  %1369 = trunc i16 %1368 to i8
  %1370 = and i8 %1369, -97
  %1371 = or i8 %1370, 32
  %1372 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1371, ptr %1372, align 2
  %1373 = trunc i16 %1356 to i8
  %1374 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1373, ptr %1374, align 1
  %1375 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1375, align 8
  %1376 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1377 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1378 = load i8, ptr %1377, align 4
  %1379 = lshr i8 %1378, 1
  %1380 = zext i8 %1379 to i16
  store i16 %1380, ptr %1375, align 8
  %1381 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1366, ptr %1381, align 8
  %1382 = load ptr, ptr %1376, align 4
  %1383 = tail call i32 @i2c_transfer(ptr noundef %1382, ptr noundef %1375, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1357) #14
  br label %1452

1384:                                             ; preds = %1346
  %1385 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 8
  %1386 = load i32, ptr %1385, align 4
  %1387 = icmp eq i32 %1386, 4
  %1388 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 6
  %1389 = load i32, ptr %1388, align 4
  %1390 = icmp eq i32 %1389, 2
  br i1 %1387, label %1391, label %1422

1391:                                             ; preds = %1384
  br i1 %1390, label %1392, label %1421

1392:                                             ; preds = %1391
  store i32 1, ptr %1388, align 4
  store i32 2, ptr %1385, align 4
  %1393 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %1394 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %1395 = tail call i32 @mutex_lock_interruptible(ptr noundef %1394) #14
  %1396 = icmp slt i32 %1395, 0
  br i1 %1396, label %1397, label %1402

1397:                                             ; preds = %1392
  %1398 = load i32, ptr @debug, align 4
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1459, label %1400

1400:                                             ; preds = %1397
  %1401 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1452

1402:                                             ; preds = %1392
  %1403 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1403, align 8
  %1404 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1404, align 1
  %1405 = lshr i16 %1393, 8
  %1406 = trunc i16 %1405 to i8
  %1407 = and i8 %1406, -97
  %1408 = or i8 %1407, 32
  %1409 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1408, ptr %1409, align 2
  %1410 = trunc i16 %1393 to i8
  %1411 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1410, ptr %1411, align 1
  %1412 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1412, align 8
  %1413 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1414 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1415 = load i8, ptr %1414, align 4
  %1416 = lshr i8 %1415, 1
  %1417 = zext i8 %1416 to i16
  store i16 %1417, ptr %1412, align 8
  %1418 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1403, ptr %1418, align 8
  %1419 = load ptr, ptr %1413, align 4
  %1420 = tail call i32 @i2c_transfer(ptr noundef %1419, ptr noundef %1412, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1394) #14
  br label %1452

1421:                                             ; preds = %1391
  store i32 2, ptr %1385, align 4
  br label %1452

1422:                                             ; preds = %1384
  br i1 %1390, label %1423, label %1452

1423:                                             ; preds = %1422
  store i32 1, ptr %1388, align 4
  %1424 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %1425 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %1426 = tail call i32 @mutex_lock_interruptible(ptr noundef %1425) #14
  %1427 = icmp slt i32 %1426, 0
  br i1 %1427, label %1428, label %1433

1428:                                             ; preds = %1423
  %1429 = load i32, ptr @debug, align 4
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1459, label %1431

1431:                                             ; preds = %1428
  %1432 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1452

1433:                                             ; preds = %1423
  %1434 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1434, align 8
  %1435 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1435, align 1
  %1436 = lshr i16 %1424, 8
  %1437 = trunc i16 %1436 to i8
  %1438 = and i8 %1437, -97
  %1439 = or i8 %1438, 32
  %1440 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1439, ptr %1440, align 2
  %1441 = trunc i16 %1424 to i8
  %1442 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1441, ptr %1442, align 1
  %1443 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1443, align 8
  %1444 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1445 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1446 = load i8, ptr %1445, align 4
  %1447 = lshr i8 %1446, 1
  %1448 = zext i8 %1447 to i16
  store i16 %1448, ptr %1443, align 8
  %1449 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1434, ptr %1449, align 8
  %1450 = load ptr, ptr %1444, align 4
  %1451 = tail call i32 @i2c_transfer(ptr noundef %1450, ptr noundef %1443, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1425) #14
  br label %1452

1452:                                             ; preds = %1433, %1431, %1422, %1421, %1402, %1400, %1365, %1363
  %1453 = phi i8 [ 2, %1433 ], [ 2, %1431 ], [ 7, %1402 ], [ 7, %1400 ], [ 7, %1365 ], [ 7, %1363 ], [ 0, %1422 ], [ 3, %1421 ]
  %1454 = load i32, ptr @debug, align 4
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1459, label %1456

1456:                                             ; preds = %1452
  %1457 = zext i8 %1453 to i32
  %1458 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.dib8000_autosearch_start, i32 noundef %1457) #15
  br label %1459

1459:                                             ; preds = %1456, %1452, %1428, %1397, %1360
  %1460 = phi i8 [ %1453, %1456 ], [ %1453, %1452 ], [ 2, %1428 ], [ 7, %1397 ], [ 7, %1360 ]
  tail call fastcc void @dib8000_set_isdbt_common_channel(ptr noundef %5, i8 noundef zeroext %1460, i8 noundef zeroext 1) #14
  %1461 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %1462 = tail call i32 @mutex_lock_interruptible(ptr noundef %1461) #14
  %1463 = icmp slt i32 %1462, 0
  br i1 %1463, label %1464, label %1469

1464:                                             ; preds = %1459
  %1465 = load i32, ptr @debug, align 4
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1483, label %1467

1467:                                             ; preds = %1464
  %1468 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1483

1469:                                             ; preds = %1459
  %1470 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1470, align 8
  %1471 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 6, ptr %1471, align 1
  %1472 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1472, align 2
  %1473 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 4, ptr %1473, align 1
  %1474 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1474, align 8
  %1475 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1477 = load i8, ptr %1476, align 4
  %1478 = lshr i8 %1477, 1
  %1479 = zext i8 %1478 to i16
  store i16 %1479, ptr %1474, align 8
  %1480 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1470, ptr %1480, align 8
  %1481 = load ptr, ptr %1475, align 4
  %1482 = tail call i32 @i2c_transfer(ptr noundef %1481, ptr noundef %1474, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1461) #14
  br label %1483

1483:                                             ; preds = %1469, %1467, %1464
  %1484 = load i16, ptr %566, align 2
  %1485 = icmp eq i16 %1484, -32624
  %1486 = tail call i32 @mutex_lock_interruptible(ptr noundef %1461) #14
  %1487 = icmp slt i32 %1486, 0
  br i1 %1485, label %1488, label %1508

1488:                                             ; preds = %1483
  br i1 %1487, label %1489, label %1494

1489:                                             ; preds = %1488
  %1490 = load i32, ptr @debug, align 4
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1528, label %1492

1492:                                             ; preds = %1489
  %1493 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1528

1494:                                             ; preds = %1488
  %1495 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1495, align 8
  %1496 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 7, ptr %1496, align 1
  %1497 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 28, ptr %1497, align 2
  %1498 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1498, align 1
  %1499 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1499, align 8
  %1500 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1502 = load i8, ptr %1501, align 4
  %1503 = lshr i8 %1502, 1
  %1504 = zext i8 %1503 to i16
  store i16 %1504, ptr %1499, align 8
  %1505 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1495, ptr %1505, align 8
  %1506 = load ptr, ptr %1500, align 4
  %1507 = tail call i32 @i2c_transfer(ptr noundef %1506, ptr noundef %1499, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1461) #14
  br label %1528

1508:                                             ; preds = %1483
  br i1 %1487, label %1509, label %1514

1509:                                             ; preds = %1508
  %1510 = load i32, ptr @debug, align 4
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1528, label %1512

1512:                                             ; preds = %1509
  %1513 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1528

1514:                                             ; preds = %1508
  %1515 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1515, align 8
  %1516 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 7, ptr %1516, align 1
  %1517 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1517, align 2
  %1518 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 8, ptr %1518, align 1
  %1519 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1519, align 8
  %1520 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1521 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1522 = load i8, ptr %1521, align 4
  %1523 = lshr i8 %1522, 1
  %1524 = zext i8 %1523 to i16
  store i16 %1524, ptr %1519, align 8
  %1525 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1515, ptr %1525, align 8
  %1526 = load ptr, ptr %1520, align 4
  %1527 = tail call i32 @i2c_transfer(ptr noundef %1526, ptr noundef %1519, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1461) #14
  br label %1528

1528:                                             ; preds = %1514, %1512, %1509, %1494, %1492, %1489
  %1529 = tail call i32 @mutex_lock_interruptible(ptr noundef %1461) #14
  %1530 = icmp slt i32 %1529, 0
  br i1 %1530, label %1531, label %1536

1531:                                             ; preds = %1528
  %1532 = load i32, ptr @debug, align 4
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1550, label %1534

1534:                                             ; preds = %1531
  %1535 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1550

1536:                                             ; preds = %1528
  %1537 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1537, align 8
  %1538 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 8, ptr %1538, align 1
  %1539 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 16, ptr %1539, align 2
  %1540 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1540, align 1
  %1541 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1541, align 8
  %1542 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1543 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1544 = load i8, ptr %1543, align 4
  %1545 = lshr i8 %1544, 1
  %1546 = zext i8 %1545 to i16
  store i16 %1546, ptr %1541, align 8
  %1547 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1537, ptr %1547, align 8
  %1548 = load ptr, ptr %1542, align 4
  %1549 = tail call i32 @i2c_transfer(ptr noundef %1548, ptr noundef %1541, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1461) #14
  br label %1550

1550:                                             ; preds = %1536, %1534, %1531
  %1551 = load i16, ptr %566, align 2
  %1552 = icmp eq i16 %1551, -32624
  %1553 = select i1 %1552, i32 200, i32 100
  %1554 = tail call fastcc i32 @dib8000_wait_lock(ptr noundef %5, i32 noundef %575, i32 noundef 50, i32 noundef %1553, i32 noundef 1000) #14
  %1555 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 0) #14
  %1556 = tail call i32 @mutex_lock_interruptible(ptr noundef %1461) #14
  %1557 = icmp slt i32 %1556, 0
  br i1 %1557, label %1558, label %1563

1558:                                             ; preds = %1550
  %1559 = load i32, ptr @debug, align 4
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1581, label %1561

1561:                                             ; preds = %1558
  %1562 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1581

1563:                                             ; preds = %1550
  %1564 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1564, align 8
  %1565 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1565, align 1
  %1566 = lshr i16 %1555, 8
  %1567 = trunc i16 %1566 to i8
  %1568 = or i8 %1567, -128
  %1569 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1568, ptr %1569, align 2
  %1570 = trunc i16 %1555 to i8
  %1571 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1570, ptr %1571, align 1
  %1572 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1572, align 8
  %1573 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1574 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1575 = load i8, ptr %1574, align 4
  %1576 = lshr i8 %1575, 1
  %1577 = zext i8 %1576 to i16
  store i16 %1577, ptr %1572, align 8
  %1578 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1564, ptr %1578, align 8
  %1579 = load ptr, ptr %1573, align 4
  %1580 = tail call i32 @i2c_transfer(ptr noundef %1579, ptr noundef %1572, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1461) #14
  br label %1581

1581:                                             ; preds = %1563, %1561, %1558
  %1582 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 1284) #14
  %1583 = tail call i32 @mutex_lock_interruptible(ptr noundef %1461) #14
  %1584 = icmp slt i32 %1583, 0
  br i1 %1584, label %1585, label %1590

1585:                                             ; preds = %1581
  %1586 = load i32, ptr @debug, align 4
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1607, label %1588

1588:                                             ; preds = %1585
  %1589 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1607

1590:                                             ; preds = %1581
  %1591 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 0, ptr %1591, align 8
  %1592 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 0, ptr %1592, align 1
  %1593 = lshr i16 %1555, 8
  %1594 = trunc i16 %1593 to i8
  %1595 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1594, ptr %1595, align 2
  %1596 = trunc i16 %1555 to i8
  %1597 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1596, ptr %1597, align 1
  %1598 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1598, align 8
  %1599 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1600 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1601 = load i8, ptr %1600, align 4
  %1602 = lshr i8 %1601, 1
  %1603 = zext i8 %1602 to i16
  store i16 %1603, ptr %1598, align 8
  %1604 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1591, ptr %1604, align 8
  %1605 = load ptr, ptr %1599, align 4
  %1606 = tail call i32 @i2c_transfer(ptr noundef %1605, ptr noundef %1598, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1461) #14
  br label %1607

1607:                                             ; preds = %1590, %1588, %1585, %1329, %1327, %1324, %1104, %1102, %1099
  %1608 = load i16, ptr %566, align 2
  %1609 = icmp eq i16 %1608, -32624
  %1610 = select i1 %1609, i32 50, i32 15
  br label %2143

1611:                                             ; preds = %1
  %1612 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 1284) #14
  %1613 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1614 = load i16, ptr %1613, align 2
  %1615 = icmp ugt i16 %1614, -32767
  br i1 %1615, label %1616, label %1626

1616:                                             ; preds = %1611
  %1617 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 36
  %1618 = load i16, ptr %1617, align 4
  %1619 = icmp eq i16 %1618, 1
  br i1 %1619, label %1620, label %1626

1620:                                             ; preds = %1616
  %1621 = and i16 %1612, 1
  %1622 = icmp eq i16 %1621, 0
  br i1 %1622, label %2130, label %1623

1623:                                             ; preds = %1620
  %1624 = load i32, ptr @debug, align 4
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %2143, label %1643

1626:                                             ; preds = %1616, %1611
  %1627 = zext i16 %1612 to i32
  %1628 = and i32 %1627, 1
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1635, label %1630

1630:                                             ; preds = %1626
  %1631 = load i32, ptr @debug, align 4
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1645, label %1633

1633:                                             ; preds = %1630
  %1634 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.dib8000_autosearch_irq) #15
  br label %1645

1635:                                             ; preds = %1626
  %1636 = and i32 %1627, 2
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %2130, label %1638

1638:                                             ; preds = %1635
  %1639 = load i32, ptr @debug, align 4
  %1640 = icmp eq i32 %1639, 0
  br i1 %1640, label %1648, label %1641

1641:                                             ; preds = %1638
  %1642 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.dib8000_autosearch_irq) #15
  br label %1648

1643:                                             ; preds = %1623
  %1644 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.dib8000_autosearch_irq) #15
  br label %2143

1645:                                             ; preds = %1633, %1630
  %1646 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 0, ptr %1646, align 4
  %1647 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 36
  store i16 100, ptr %1647, align 4
  store i32 53, ptr %8, align 4
  br label %2152

1648:                                             ; preds = %1641, %1638
  %1649 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 -5, ptr %1649, align 4
  store i32 33, ptr %8, align 4
  %1650 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 36
  %1651 = load i16, ptr %1650, align 4
  %1652 = icmp eq i16 %1651, 2
  br i1 %1652, label %2143, label %1653

1653:                                             ; preds = %1648
  store i16 100, ptr %1650, align 4
  br label %2130

1654:                                             ; preds = %1
  %1655 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 36
  %1656 = load i16, ptr %1655, align 4
  switch i16 %1656, label %1710 [
    i16 1, label %1657
    i16 2, label %1702
  ]

1657:                                             ; preds = %1654
  %1658 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1659 = load i16, ptr %1658, align 2
  %1660 = icmp eq i16 %1659, -32624
  %1661 = select i1 %1660, i16 596, i16 594
  %1662 = select i1 %1660, i16 597, i16 595
  %1663 = select i1 %1660, i16 598, i16 596
  %1664 = select i1 %1660, i16 599, i16 597
  %1665 = select i1 %1660, i16 600, i16 598
  %1666 = select i1 %1660, i16 601, i16 599
  %1667 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1661)
  %1668 = zext i16 %1667 to i32
  %1669 = shl nuw i32 %1668, 16
  %1670 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1662)
  %1671 = zext i16 %1670 to i32
  %1672 = or i32 %1669, %1671
  %1673 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1663)
  %1674 = zext i16 %1673 to i32
  %1675 = shl nuw i32 %1674, 16
  %1676 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1664)
  %1677 = zext i16 %1676 to i32
  %1678 = or i32 %1675, %1677
  %1679 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1665)
  %1680 = zext i16 %1679 to i32
  %1681 = shl nuw i32 %1680, 16
  %1682 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1666)
  %1683 = zext i16 %1682 to i32
  %1684 = or i32 %1681, %1683
  %1685 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 %1672, ptr %1685, align 4
  %1686 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  store i32 %1678, ptr %1686, align 4
  store i32 %1684, ptr %3, align 4
  %1687 = icmp ult i32 %1684, %1678
  %1688 = zext i1 %1687 to i32
  %1689 = getelementptr [4 x i32], ptr %3, i32 0, i32 %1688
  %1690 = load i32, ptr %1689, align 4
  %1691 = icmp ult i32 %1690, %1672
  %1692 = zext i1 %1687 to i2
  %1693 = select i1 %1691, i2 -2, i2 %1692
  %1694 = icmp eq i2 %1693, 1
  %1695 = select i1 %1694, i16 3, i16 1
  %1696 = icmp eq i2 %1693, 0
  %1697 = select i1 %1696, i16 0, i16 %1695
  %1698 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 37
  store i16 %1697, ptr %1698, align 2
  store i32 51, ptr %8, align 4
  store i16 2, ptr %1655, align 4
  %1699 = load i16, ptr %1658, align 2
  %1700 = icmp eq i16 %1699, -32624
  %1701 = select i1 %1700, i32 50, i32 10
  br label %2137

1702:                                             ; preds = %1654
  %1703 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1704 = load i16, ptr %1703, align 2
  %1705 = icmp eq i16 %1704, -32624
  %1706 = select i1 %1705, i16 572, i16 570
  %1707 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1706)
  %1708 = and i16 %1707, 3
  %1709 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 38
  store i16 %1708, ptr %1709, align 8
  br label %2143

1710:                                             ; preds = %1654
  %1711 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 0, ptr %1711, align 4
  store i16 100, ptr %1655, align 4
  store i32 53, ptr %8, align 4
  br label %2152

1712:                                             ; preds = %1
  tail call fastcc void @dib8000_set_isdbt_loop_params(ptr noundef %5, i32 noundef 0)
  tail call fastcc void @dib8000_set_isdbt_common_channel(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0)
  store i32 34, ptr %8, align 4
  br label %2137

1713:                                             ; preds = %1
  %1714 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %1715 = tail call i32 @mutex_lock_interruptible(ptr noundef %1714) #14
  %1716 = icmp slt i32 %1715, 0
  br i1 %1716, label %1717, label %1722

1717:                                             ; preds = %1713
  %1718 = load i32, ptr @debug, align 4
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1736, label %1720

1720:                                             ; preds = %1717
  %1721 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1736

1722:                                             ; preds = %1713
  %1723 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 3, ptr %1723, align 8
  %1724 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 2, ptr %1724, align 1
  %1725 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 64, ptr %1725, align 2
  %1726 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1726, align 1
  %1727 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1727, align 8
  %1728 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1729 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1730 = load i8, ptr %1729, align 4
  %1731 = lshr i8 %1730, 1
  %1732 = zext i8 %1731 to i16
  store i16 %1732, ptr %1727, align 8
  %1733 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1723, ptr %1733, align 8
  %1734 = load ptr, ptr %1728, align 4
  %1735 = tail call i32 @i2c_transfer(ptr noundef %1734, ptr noundef %1727, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1714) #14
  br label %1736

1736:                                             ; preds = %1722, %1720, %1717
  %1737 = tail call i32 @mutex_lock_interruptible(ptr noundef %1714) #14
  %1738 = icmp slt i32 %1737, 0
  br i1 %1738, label %1739, label %1744

1739:                                             ; preds = %1736
  %1740 = load i32, ptr @debug, align 4
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1758, label %1742

1742:                                             ; preds = %1739
  %1743 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1758

1744:                                             ; preds = %1736
  %1745 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 3, ptr %1745, align 8
  %1746 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 2, ptr %1746, align 1
  %1747 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 0, ptr %1747, align 2
  %1748 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 0, ptr %1748, align 1
  %1749 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1749, align 8
  %1750 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1752 = load i8, ptr %1751, align 4
  %1753 = lshr i8 %1752, 1
  %1754 = zext i8 %1753 to i16
  store i16 %1754, ptr %1749, align 8
  %1755 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1745, ptr %1755, align 8
  %1756 = load ptr, ptr %1750, align 4
  %1757 = tail call i32 @i2c_transfer(ptr noundef %1756, ptr noundef %1749, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1714) #14
  br label %1758

1758:                                             ; preds = %1744, %1742, %1739
  %1759 = load ptr, ptr %6, align 8
  %1760 = getelementptr inbounds %struct.dvb_frontend, ptr %1759, i32 0, i32 8, i32 6
  %1761 = load i32, ptr %1760, align 4
  %1762 = getelementptr inbounds %struct.dib8000_config, ptr %5, i32 0, i32 13
  %1763 = load i16, ptr %1762, align 2
  %1764 = getelementptr inbounds %struct.dvb_frontend, ptr %1759, i32 0, i32 8, i32 8
  %1765 = load i32, ptr %1764, align 4
  %1766 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 273) #14
  %1767 = tail call i32 @mutex_lock_interruptible(ptr noundef %1714) #14
  %1768 = icmp slt i32 %1767, 0
  br i1 %1768, label %1769, label %1774

1769:                                             ; preds = %1758
  %1770 = load i32, ptr @debug, align 4
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %1805, label %1772

1772:                                             ; preds = %1769
  %1773 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1805

1774:                                             ; preds = %1758
  %1775 = icmp eq i16 %1763, 0
  %1776 = icmp eq i32 %1761, 1
  %1777 = icmp eq i32 %1761, 3
  %1778 = select i1 %1777, i32 128, i32 64
  %1779 = select i1 %1776, i32 256, i32 %1778
  %1780 = shl i32 %1779, %1765
  %1781 = mul i32 %1780, 3
  %1782 = sdiv i32 %1781, 2
  %1783 = trunc i32 %1782 to i16
  %1784 = select i1 %1775, i16 48, i16 %1763
  %1785 = add i16 %1784, %1783
  %1786 = shl i16 %1785, 4
  %1787 = and i16 %1766, 15
  %1788 = or i16 %1786, %1787
  %1789 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 1, ptr %1789, align 8
  %1790 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 17, ptr %1790, align 1
  %1791 = lshr i16 %1786, 8
  %1792 = trunc i16 %1791 to i8
  %1793 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %1792, ptr %1793, align 2
  %1794 = trunc i16 %1788 to i8
  %1795 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %1794, ptr %1795, align 1
  %1796 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %1796, align 8
  %1797 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %1799 = load i8, ptr %1798, align 4
  %1800 = lshr i8 %1799, 1
  %1801 = zext i8 %1800 to i16
  store i16 %1801, ptr %1796, align 8
  %1802 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %1789, ptr %1802, align 8
  %1803 = load ptr, ptr %1797, align 4
  %1804 = tail call i32 @i2c_transfer(ptr noundef %1803, ptr noundef %1796, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %1714) #14
  br label %1805

1805:                                             ; preds = %1774, %1772, %1769
  %1806 = load ptr, ptr %6, align 8
  %1807 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 13
  %1808 = load i8, ptr %1807, align 2
  %1809 = zext i8 %1808 to i32
  tail call fastcc void @dib8000_set_diversity_in(ptr noundef %1806, i32 noundef %1809)
  %1810 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 180)
  %1811 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 40
  %1812 = load i8, ptr %1811, align 1
  %1813 = load volatile i32, ptr @jiffies, align 64
  %1814 = lshr i16 %1810, 5
  %1815 = and i16 %1814, 126
  %1816 = mul nuw nsw i16 %1815, 100
  %1817 = zext i16 %1816 to i32
  %1818 = zext i8 %1812 to i32
  %1819 = mul nuw nsw i32 %1817, %1818
  %1820 = tail call i32 @__usecs_to_jiffies(i32 noundef %1819) #14
  %1821 = add i32 %1820, %1813
  store i32 %1821, ptr %9, align 4
  store i32 35, ptr %8, align 4
  br label %2137

1822:                                             ; preds = %1
  %1823 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1824 = load i16, ptr %1823, align 2
  %1825 = icmp eq i16 %1824, -32624
  %1826 = select i1 %1825, i16 570, i16 568
  %1827 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1826) #14
  %1828 = and i16 %1827, 6144
  %1829 = icmp eq i16 %1828, 0
  br i1 %1829, label %1849, label %1830

1830:                                             ; preds = %1822
  tail call fastcc void @dib8000_update_timf(ptr noundef %5)
  %1831 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 12
  %1832 = load i8, ptr %1831, align 1
  %1833 = icmp eq i8 %1832, 0
  br i1 %1833, label %1834, label %1848

1834:                                             ; preds = %1830
  %1835 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 188)
  %1836 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 40
  %1837 = load i8, ptr %1836, align 1
  %1838 = load volatile i32, ptr @jiffies, align 64
  %1839 = zext i8 %1837 to i32
  %1840 = mul nuw nsw i32 %1839, 100
  %1841 = lshr i16 %1835, 5
  %1842 = and i16 %1841, 31
  %1843 = mul nuw nsw i16 %1842, 20
  %1844 = zext i16 %1843 to i32
  %1845 = mul nuw nsw i32 %1840, %1844
  %1846 = tail call i32 @__usecs_to_jiffies(i32 noundef %1845) #14
  %1847 = add i32 %1846, %1838
  store i32 %1847, ptr %9, align 4
  store i32 37, ptr %8, align 4
  br label %2137

1848:                                             ; preds = %1830
  store i32 38, ptr %8, align 4
  br label %2137

1849:                                             ; preds = %1822
  %1850 = load i32, ptr %9, align 4
  %1851 = sub i32 %1850, %10
  %1852 = icmp slt i32 %1851, 0
  br i1 %1852, label %1853, label %2130

1853:                                             ; preds = %1849
  store i32 36, ptr %8, align 4
  br label %2137

1854:                                             ; preds = %1
  %1855 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 21, i32 1
  %1856 = load ptr, ptr %1855, align 4
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %1873, label %1858

1858:                                             ; preds = %1854
  %1859 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 43
  %1860 = load i16, ptr %1859, align 2
  %1861 = icmp eq i16 %1860, 4
  br i1 %1861, label %1873, label %1862

1862:                                             ; preds = %1858
  %1863 = getelementptr inbounds %struct.dvb_frontend, ptr %1856, i32 0, i32 3
  %1864 = load ptr, ptr %1863, align 4
  %1865 = getelementptr inbounds %struct.dib8000_state, ptr %1864, i32 0, i32 20
  %1866 = load i32, ptr %1865, align 4
  %1867 = icmp slt i32 %1866, -3
  br i1 %1867, label %1868, label %1869

1868:                                             ; preds = %1862
  store i32 38, ptr %8, align 4
  br label %2137

1869:                                             ; preds = %1862
  %1870 = icmp eq i32 %1866, -3
  br i1 %1870, label %2130, label %1871

1871:                                             ; preds = %1869
  store i32 53, ptr %8, align 4
  tail call fastcc void @dib8000_viterbi_state(ptr noundef %5, i8 noundef zeroext 1)
  tail call fastcc void @dib8000_set_isdbt_loop_params(ptr noundef %5, i32 noundef 1)
  %1872 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 0, ptr %1872, align 4
  br label %2130

1873:                                             ; preds = %1858, %1854
  tail call fastcc void @dib8000_viterbi_state(ptr noundef %5, i8 noundef zeroext 1)
  tail call fastcc void @dib8000_set_isdbt_loop_params(ptr noundef %5, i32 noundef 1)
  store i32 53, ptr %8, align 4
  %1874 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 0, ptr %1874, align 4
  br label %2152

1875:                                             ; preds = %1
  %1876 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1877 = load i16, ptr %1876, align 2
  %1878 = icmp eq i16 %1877, -32624
  %1879 = select i1 %1878, i16 570, i16 568
  %1880 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1879) #14
  %1881 = and i16 %1880, 1024
  %1882 = icmp eq i16 %1881, 0
  br i1 %1882, label %1884, label %1883

1883:                                             ; preds = %1875
  store i32 38, ptr %8, align 4
  br label %2137

1884:                                             ; preds = %1875
  %1885 = load i32, ptr %9, align 4
  %1886 = sub i32 %1885, %10
  %1887 = icmp slt i32 %1886, 0
  br i1 %1887, label %1888, label %2130

1888:                                             ; preds = %1884
  store i32 36, ptr %8, align 4
  br label %2137

1889:                                             ; preds = %1
  tail call fastcc void @dib8000_viterbi_state(ptr noundef %5, i8 noundef zeroext 1)
  tail call fastcc void @dib8000_set_isdbt_loop_params(ptr noundef %5, i32 noundef 1)
  %1890 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 18
  %1891 = load i8, ptr %1890, align 1
  %1892 = icmp eq i8 %1891, 0
  br i1 %1892, label %1903, label %1893

1893:                                             ; preds = %1889
  %1894 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 19
  %1895 = load i8, ptr %1894, align 2
  %1896 = icmp ult i8 %1895, 14
  br i1 %1896, label %1897, label %1903

1897:                                             ; preds = %1893
  %1898 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 12
  %1899 = load i8, ptr %1898, align 1
  %1900 = icmp eq i8 %1899, 0
  br i1 %1900, label %1901, label %1903

1901:                                             ; preds = %1897
  %1902 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 39
  store i8 0, ptr %1902, align 2
  store i32 41, ptr %8, align 4
  br label %2137

1903:                                             ; preds = %1897, %1893, %1889
  store i32 39, ptr %8, align 4
  %1904 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 -7, ptr %1904, align 4
  br label %2137

1905:                                             ; preds = %1
  %1906 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1907 = load i16, ptr %1906, align 2
  %1908 = icmp eq i16 %1907, -32624
  br i1 %1908, label %1913, label %1909

1909:                                             ; preds = %1905
  %1910 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 1291)
  %1911 = and i16 %1910, 512
  %1912 = icmp eq i16 %1911, 0
  br i1 %1912, label %1993, label %1913

1913:                                             ; preds = %1909, %1905
  %1914 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0, i32 3
  %1915 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 42
  %1916 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 0
  %1917 = load i32, ptr @debug, align 4
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %1923, label %1919

1919:                                             ; preds = %1913
  %1920 = load i8, ptr %1914, align 4
  %1921 = zext i8 %1920 to i32
  %1922 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dib8000_tune, i32 noundef 0, i32 noundef %1921) #15
  br label %1923

1923:                                             ; preds = %1919, %1913
  %1924 = load i8, ptr %1916, align 4
  %1925 = icmp eq i8 %1924, 0
  br i1 %1925, label %1926, label %1929

1926:                                             ; preds = %1923
  %1927 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1, i32 3
  %1928 = load i8, ptr %1927, align 4
  br label %1935

1929:                                             ; preds = %1923
  %1930 = load i8, ptr %1914, align 4
  %1931 = zext i8 %1930 to i16
  store i8 0, ptr %1915, align 8
  %1932 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1, i32 3
  %1933 = load i8, ptr %1932, align 4
  %1934 = icmp ugt i8 %1930, %1933
  br i1 %1934, label %1950, label %1935

1935:                                             ; preds = %1929, %1926
  %1936 = phi i8 [ %1928, %1926 ], [ %1933, %1929 ]
  %1937 = phi i16 [ 0, %1926 ], [ %1931, %1929 ]
  %1938 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1
  %1939 = load i32, ptr @debug, align 4
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %1944, label %1941

1941:                                             ; preds = %1935
  %1942 = zext i8 %1936 to i32
  %1943 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dib8000_tune, i32 noundef 1, i32 noundef %1942) #15
  br label %1944

1944:                                             ; preds = %1941, %1935
  %1945 = load i8, ptr %1938, align 4
  %1946 = icmp eq i8 %1945, 0
  br i1 %1946, label %1950, label %1947

1947:                                             ; preds = %1944
  %1948 = load i8, ptr %1914, align 4
  %1949 = zext i8 %1948 to i16
  store i8 1, ptr %1915, align 8
  br label %1950

1950:                                             ; preds = %1947, %1944, %1929
  %1951 = phi i16 [ %1949, %1947 ], [ %1937, %1944 ], [ %1931, %1929 ]
  %1952 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2
  %1953 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2, i32 3
  %1954 = load i8, ptr %1953, align 4
  %1955 = zext i8 %1954 to i32
  %1956 = zext i8 %1954 to i16
  %1957 = icmp ugt i16 %1951, %1956
  br i1 %1957, label %1969, label %1958

1958:                                             ; preds = %1950
  %1959 = load i32, ptr @debug, align 4
  %1960 = icmp eq i32 %1959, 0
  br i1 %1960, label %1963, label %1961

1961:                                             ; preds = %1958
  %1962 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dib8000_tune, i32 noundef 2, i32 noundef %1955) #15
  br label %1963

1963:                                             ; preds = %1961, %1958
  %1964 = load i8, ptr %1952, align 4
  %1965 = icmp eq i8 %1964, 0
  br i1 %1965, label %1969, label %1966

1966:                                             ; preds = %1963
  %1967 = load i8, ptr %1914, align 4
  %1968 = zext i8 %1967 to i16
  store i8 2, ptr %1915, align 8
  br label %1969

1969:                                             ; preds = %1966, %1963, %1950
  %1970 = phi i16 [ %1968, %1966 ], [ %1951, %1963 ], [ %1951, %1950 ]
  %1971 = zext i16 %1970 to i32
  switch i16 %1970, label %1973 [
    i16 0, label %1975
    i16 3, label %1972
  ]

1972:                                             ; preds = %1969
  br label %1975

1973:                                             ; preds = %1969
  %1974 = shl nuw nsw i16 %1970, 1
  br label %1975

1975:                                             ; preds = %1973, %1972, %1969
  %1976 = phi i16 [ 8, %1972 ], [ %1974, %1973 ], [ 2, %1969 ]
  %1977 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 13
  %1978 = load i8, ptr %1977, align 2
  %1979 = icmp ne i8 %1978, 0
  %1980 = zext i1 %1979 to i16
  %1981 = shl nuw nsw i16 %1976, %1980
  %1982 = zext i16 %1981 to i32
  %1983 = mul nuw nsw i32 %1982, 200
  %1984 = tail call i32 @__msecs_to_jiffies(i32 noundef %1983) #14
  %1985 = add i32 %1984, %10
  store i32 %1985, ptr %9, align 4
  %1986 = load i32, ptr @debug, align 4
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %1992, label %1988

1988:                                             ; preds = %1975
  %1989 = load i8, ptr %1915, align 8
  %1990 = zext i8 %1989 to i32
  %1991 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dib8000_tune, i32 noundef %1971, i32 noundef %1990, i32 noundef %1982, i32 noundef %1985) #15
  br label %1992

1992:                                             ; preds = %1988, %1975
  store i32 40, ptr %8, align 4
  br label %2137

1993:                                             ; preds = %1909
  store i32 53, ptr %8, align 4
  br label %2152

1994:                                             ; preds = %1
  %1995 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 17
  %1996 = load i16, ptr %1995, align 2
  %1997 = icmp eq i16 %1996, -32624
  %1998 = select i1 %1997, i16 570, i16 568
  %1999 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %1998) #14
  %2000 = zext i16 %1999 to i32
  %2001 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 42
  %2002 = load i8, ptr %2001, align 8
  %2003 = zext i8 %2002 to i32
  %2004 = sub nsw i32 7, %2003
  %2005 = shl nuw nsw i32 1, %2004
  %2006 = and i32 %2005, %2000
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2050, label %2008

2008:                                             ; preds = %1994
  %2009 = load i32, ptr @debug, align 4
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2034, label %2011

2011:                                             ; preds = %2008
  %2012 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23
  %2013 = load i8, ptr %2012, align 4
  %2014 = icmp eq i8 %2013, 0
  %2015 = and i32 %2000, 128
  %2016 = icmp eq i32 %2015, 0
  %2017 = select i1 %2016, ptr @.str.60, ptr @.str.59
  %2018 = select i1 %2014, ptr @.str.61, ptr %2017
  %2019 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1
  %2020 = load i8, ptr %2019, align 4
  %2021 = icmp eq i8 %2020, 0
  %2022 = and i32 %2000, 64
  %2023 = icmp eq i32 %2022, 0
  %2024 = select i1 %2023, ptr @.str.60, ptr @.str.59
  %2025 = select i1 %2021, ptr @.str.61, ptr %2024
  %2026 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2
  %2027 = load i8, ptr %2026, align 4
  %2028 = icmp eq i8 %2027, 0
  %2029 = and i32 %2000, 32
  %2030 = icmp eq i32 %2029, 0
  %2031 = select i1 %2030, ptr @.str.60, ptr @.str.59
  %2032 = select i1 %2028, ptr @.str.61, ptr %2031
  %2033 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dib8000_tune, ptr noundef nonnull %2018, ptr noundef nonnull %2025, ptr noundef nonnull %2032) #15
  br label %2034

2034:                                             ; preds = %2011, %2008
  %2035 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 18
  %2036 = load i8, ptr %2035, align 1
  %2037 = icmp eq i8 %2036, 0
  br i1 %2037, label %2046, label %2038

2038:                                             ; preds = %2034
  %2039 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 19
  %2040 = load i8, ptr %2039, align 2
  %2041 = icmp ult i8 %2040, 14
  br i1 %2041, label %2042, label %2046

2042:                                             ; preds = %2038
  %2043 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 12
  %2044 = load i8, ptr %2043, align 1
  %2045 = icmp eq i8 %2044, 0
  br i1 %2045, label %2047, label %2046

2046:                                             ; preds = %2042, %2038, %2034
  br label %2047

2047:                                             ; preds = %2046, %2042
  %2048 = phi i32 [ -8, %2046 ], [ -6, %2042 ]
  %2049 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 %2048, ptr %2049, align 4
  store i32 53, ptr %8, align 4
  br label %2152

2050:                                             ; preds = %1994
  %2051 = load i32, ptr %9, align 4
  %2052 = sub i32 %2051, %10
  %2053 = icmp slt i32 %2052, 0
  br i1 %2053, label %2054, label %2130

2054:                                             ; preds = %2050
  %2055 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 18
  %2056 = load i8, ptr %2055, align 1
  %2057 = icmp eq i8 %2056, 0
  br i1 %2057, label %2070, label %2058

2058:                                             ; preds = %2054
  %2059 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 19
  %2060 = load i8, ptr %2059, align 2
  %2061 = icmp ult i8 %2060, 14
  br i1 %2061, label %2062, label %2070

2062:                                             ; preds = %2058
  %2063 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 12
  %2064 = load i8, ptr %2063, align 1
  %2065 = icmp eq i8 %2064, 0
  br i1 %2065, label %2066, label %2070

2066:                                             ; preds = %2062
  %2067 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 39
  %2068 = load i8, ptr %2067, align 2
  %2069 = add i8 %2068, 3
  store i8 %2069, ptr %2067, align 2
  store i32 41, ptr %8, align 4
  br label %2137

2070:                                             ; preds = %2062, %2058, %2054
  %2071 = and i32 %2000, 224
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2101, label %2073

2073:                                             ; preds = %2070
  %2074 = load i32, ptr @debug, align 4
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2101, label %2076

2076:                                             ; preds = %2073
  %2077 = sub i32 %10, %2051
  %2078 = tail call i32 @jiffies_to_msecs(i32 noundef %2077) #14
  %2079 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23
  %2080 = load i8, ptr %2079, align 4
  %2081 = icmp eq i8 %2080, 0
  %2082 = and i32 %2000, 128
  %2083 = icmp eq i32 %2082, 0
  %2084 = select i1 %2083, ptr @.str.60, ptr @.str.59
  %2085 = select i1 %2081, ptr @.str.61, ptr %2084
  %2086 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 1
  %2087 = load i8, ptr %2086, align 4
  %2088 = icmp eq i8 %2087, 0
  %2089 = and i32 %2000, 64
  %2090 = icmp eq i32 %2089, 0
  %2091 = select i1 %2090, ptr @.str.60, ptr @.str.59
  %2092 = select i1 %2088, ptr @.str.61, ptr %2091
  %2093 = getelementptr %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 23, i32 2
  %2094 = load i8, ptr %2093, align 4
  %2095 = icmp eq i8 %2094, 0
  %2096 = and i32 %2000, 32
  %2097 = icmp eq i32 %2096, 0
  %2098 = select i1 %2097, ptr @.str.60, ptr @.str.59
  %2099 = select i1 %2095, ptr @.str.61, ptr %2098
  %2100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.dib8000_tune, i32 noundef %2078, ptr noundef nonnull %2085, ptr noundef nonnull %2092, ptr noundef nonnull %2099) #15
  br label %2101

2101:                                             ; preds = %2076, %2073, %2070
  %2102 = phi i32 [ -8, %2076 ], [ -8, %2073 ], [ 0, %2070 ]
  %2103 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 %2102, ptr %2103, align 4
  store i32 53, ptr %8, align 4
  br label %2152

2104:                                             ; preds = %1
  %2105 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 39
  %2106 = load i8, ptr %2105, align 2
  %2107 = zext i8 %2106 to i32
  %2108 = udiv i8 %2106, 3
  %2109 = zext i8 %2108 to i32
  %2110 = icmp ugt i8 %2106, 38
  br i1 %2110, label %2128, label %2111

2111:                                             ; preds = %2104
  %2112 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 6
  %2113 = load i32, ptr %2112, align 4
  %2114 = icmp eq i32 %2113, 3
  %2115 = select i1 %2114, ptr @lut_prbs_4k, ptr @lut_prbs_8k
  %2116 = icmp eq i32 %2113, 0
  %2117 = select i1 %2116, ptr @lut_prbs_2k, ptr %2115
  %2118 = getelementptr [13 x i16], ptr %2117, i32 0, i32 %2109
  %2119 = load i16, ptr %2118, align 2
  %2120 = load i32, ptr @debug, align 4
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2125, label %2122

2122:                                             ; preds = %2111
  %2123 = zext i16 %2119 to i32
  %2124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.dib8000_get_init_prbs, i32 noundef %2109, i32 noundef %2107, i32 noundef %2123) #15
  br label %2125

2125:                                             ; preds = %2122, %2111
  %2126 = icmp eq i16 %2119, 0
  br i1 %2126, label %2128, label %2127

2127:                                             ; preds = %2125
  tail call fastcc void @dib8000_set_subchannel_prbs(ptr noundef %5, i16 noundef zeroext %2119)
  store i32 39, ptr %8, align 4
  br label %2137

2128:                                             ; preds = %2125, %2104
  store i32 53, ptr %8, align 4
  %2129 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 20
  store i32 0, ptr %2129, align 4
  br label %2152

2130:                                             ; preds = %2050, %1884, %1871, %1869, %1849, %1653, %1635, %1620, %541
  %2131 = load i32, ptr %8, align 4
  br label %2132

2132:                                             ; preds = %2130, %1
  %2133 = phi i32 [ %2131, %2130 ], [ %11, %1 ]
  %2134 = icmp eq i32 %2133, 53
  br i1 %2134, label %2152, label %2135

2135:                                             ; preds = %2132
  %2136 = icmp ugt i32 %2133, 33
  br i1 %2136, label %2137, label %2146

2137:                                             ; preds = %2135, %2127, %2066, %1992, %1903, %1901, %1888, %1883, %1868, %1853, %1848, %1834, %1805, %1712, %1657
  %2138 = phi i32 [ 1, %2135 ], [ 1, %2127 ], [ 1, %2066 ], [ 1, %1992 ], [ 1, %1903 ], [ 1, %1901 ], [ 14, %1883 ], [ 1, %1888 ], [ 1, %1868 ], [ 1, %1848 ], [ 1, %1834 ], [ 1, %1853 ], [ 1, %1805 ], [ 1, %1712 ], [ %1701, %1657 ]
  %2139 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 40
  %2140 = load i8, ptr %2139, align 1
  %2141 = zext i8 %2140 to i32
  %2142 = mul nuw nsw i32 %2138, %2141
  br label %2154

2143:                                             ; preds = %1702, %1648, %1643, %1623, %1607
  %2144 = phi i32 [ 33, %1702 ], [ 31, %1607 ], [ 32, %1648 ], [ 32, %1623 ], [ 32, %1643 ]
  %2145 = phi i32 [ 1, %1702 ], [ %1610, %1607 ], [ 1, %1648 ], [ 1, %1623 ], [ 1, %1643 ]
  store i32 %2144, ptr %8, align 4
  br label %2146

2146:                                             ; preds = %2143, %2135
  %2147 = phi i32 [ 1, %2135 ], [ %2145, %2143 ]
  %2148 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 40
  %2149 = load i8, ptr %2148, align 1
  %2150 = zext i8 %2149 to i32
  %2151 = icmp ult i32 %2147, %2150
  br i1 %2151, label %2154, label %2152

2152:                                             ; preds = %2146, %2132, %2128, %2101, %2047, %1993, %1873, %1710, %1645
  %2153 = phi i32 [ %2147, %2146 ], [ 0, %2132 ], [ 0, %2128 ], [ 0, %2047 ], [ 0, %2101 ], [ 0, %1993 ], [ 0, %1873 ], [ 0, %1710 ], [ 0, %1645 ]
  br label %2154

2154:                                             ; preds = %2152, %2146, %2137
  %2155 = phi i32 [ %2142, %2137 ], [ %2153, %2152 ], [ %2150, %2146 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %2155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_setDibTxMux(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1288)
  %4 = and i16 %3, -897
  %5 = trunc i16 %4 to i8
  %6 = lshr i16 %4, 8
  %7 = trunc i16 %6 to i8
  switch i32 %1, label %30 [
    i32 1, label %8
    i32 2, label %15
    i32 3, label %22
  ]

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.dib8096p_setDibTxMux) #15
  br label %13

13:                                               ; preds = %11, %8
  tail call fastcc void @dib8096p_cfg_DibTx(ptr noundef %0, i32 noundef 8, i32 noundef 0)
  %14 = or i8 %7, 2
  br label %30

15:                                               ; preds = %2
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.dib8096p_setDibTxMux) #15
  br label %20

20:                                               ; preds = %18, %15
  tail call fastcc void @dib8096p_cfg_DibTx(ptr noundef %0, i32 noundef 5, i32 noundef 0)
  %21 = or i8 %7, 1
  br label %30

22:                                               ; preds = %2
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.dib8096p_setDibTxMux) #15
  br label %27

27:                                               ; preds = %25, %22
  tail call fastcc void @dib8096p_cfg_DibTx(ptr noundef %0, i32 noundef 20, i32 noundef 10)
  %28 = trunc i16 %3 to i8
  %29 = or i8 %28, -128
  br label %30

30:                                               ; preds = %27, %20, %13, %2
  %31 = phi i8 [ %5, %2 ], [ %29, %27 ], [ %5, %20 ], [ %5, %13 ]
  %32 = phi i8 [ %7, %2 ], [ %7, %27 ], [ %21, %20 ], [ %14, %13 ]
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %34 = tail call i32 @mutex_lock_interruptible(ptr noundef %33) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %55

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 5, ptr %42, align 8
  %43 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 8, ptr %43, align 1
  %44 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %32, ptr %44, align 2
  %45 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %31, ptr %45, align 1
  %46 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = lshr i8 %49, 1
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %46, align 8
  %52 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %42, ptr %52, align 8
  %53 = load ptr, ptr %47, align 4
  %54 = tail call i32 @i2c_transfer(ptr noundef %53, ptr noundef %46, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %33) #14
  br label %55

55:                                               ; preds = %41, %39, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_setHostBusMux(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1288)
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, -113
  %6 = lshr i16 %3, 8
  %7 = trunc i16 %6 to i8
  switch i32 %1, label %29 [
    i32 4, label %8
    i32 5, label %15
    i32 6, label %22
  ]

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.dib8096p_setHostBusMux) #15
  br label %13

13:                                               ; preds = %11, %8
  tail call fastcc void @dib8096p_enMpegMux(ptr noundef %0, i32 noundef 0)
  %14 = or i8 %5, 64
  br label %29

15:                                               ; preds = %2
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.dib8096p_setHostBusMux) #15
  br label %20

20:                                               ; preds = %18, %15
  tail call fastcc void @dib8096p_enMpegMux(ptr noundef %0, i32 noundef 0)
  %21 = or i8 %5, 32
  br label %29

22:                                               ; preds = %2
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.dib8096p_setHostBusMux) #15
  br label %27

27:                                               ; preds = %25, %22
  %28 = or i8 %5, 16
  br label %29

29:                                               ; preds = %27, %20, %13, %2
  %30 = phi i8 [ %5, %2 ], [ %28, %27 ], [ %21, %20 ], [ %14, %13 ]
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %32 = tail call i32 @mutex_lock_interruptible(ptr noundef %31) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %53

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 5, ptr %40, align 8
  %41 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 8, ptr %41, align 1
  %42 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %7, ptr %42, align 2
  %43 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %30, ptr %43, align 1
  %44 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %46 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = lshr i8 %47, 1
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %44, align 8
  %50 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %40, ptr %50, align 8
  %51 = load ptr, ptr %45, align 4
  %52 = tail call i32 @i2c_transfer(ptr noundef %51, ptr noundef %44, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %31) #14
  br label %53

53:                                               ; preds = %39, %37, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_cfg_DibRx(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.dib8096p_cfg_DibRx, i32 noundef 0) #15
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %45

17:                                               ; preds = %8
  %18 = shl i32 %2, 3
  %19 = udiv i32 %18, 5
  %20 = lshr i32 %19, 3
  %21 = and i32 %19, 7
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %20, %23
  %25 = icmp eq i32 %24, 0
  %26 = trunc i32 %24 to i16
  %27 = add i16 %26, -1
  %28 = select i1 %25, i16 0, i16 %27
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %29, align 8
  %30 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 6, ptr %30, align 1
  %31 = lshr i16 %28, 8
  %32 = trunc i16 %31 to i8
  %33 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %32, ptr %33, align 2
  %34 = trunc i16 %28 to i8
  %35 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %36, align 8
  %37 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = lshr i8 %39, 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %36, align 8
  %42 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %29, ptr %42, align 8
  %43 = load ptr, ptr %37, align 4
  %44 = tail call i32 @i2c_transfer(ptr noundef %43, ptr noundef %36, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %45

45:                                               ; preds = %17, %15, %12
  %46 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %67

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %54, align 8
  %55 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 18, ptr %55, align 1
  %56 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %56, align 2
  %57 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 1, ptr %57, align 1
  %58 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %58, align 8
  %59 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %60 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %61 = load i8, ptr %60, align 4
  %62 = lshr i8 %61, 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %58, align 8
  %64 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %54, ptr %64, align 8
  %65 = load ptr, ptr %59, align 4
  %66 = tail call i32 @i2c_transfer(ptr noundef %65, ptr noundef %58, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %67

67:                                               ; preds = %53, %51, %48
  %68 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %70
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %92

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %76, align 8
  %77 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 0, ptr %77, align 1
  %78 = lshr i32 %1, 8
  %79 = trunc i32 %78 to i8
  %80 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %79, ptr %80, align 2
  %81 = trunc i32 %1 to i8
  %82 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %83, align 8
  %84 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %86 = load i8, ptr %85, align 4
  %87 = lshr i8 %86, 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %83, align 8
  %89 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %76, ptr %89, align 8
  %90 = load ptr, ptr %84, align 4
  %91 = tail call i32 @i2c_transfer(ptr noundef %90, ptr noundef %83, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %92

92:                                               ; preds = %75, %73, %70
  %93 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %114

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %101, align 8
  %102 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 1, ptr %102, align 1
  %103 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %103, align 2
  %104 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 5, ptr %104, align 1
  %105 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %105, align 8
  %106 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %107 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %108 = load i8, ptr %107, align 4
  %109 = lshr i8 %108, 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %105, align 8
  %111 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %101, ptr %111, align 8
  %112 = load ptr, ptr %106, align 4
  %113 = tail call i32 @i2c_transfer(ptr noundef %112, ptr noundef %105, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %114

114:                                              ; preds = %100, %98, %95
  %115 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, ptr @debug, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %136

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %123, align 8
  %124 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 3, ptr %124, align 1
  %125 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %125, align 2
  %126 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %126, align 1
  %127 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %127, align 8
  %128 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %129 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %130 = load i8, ptr %129, align 4
  %131 = lshr i8 %130, 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %127, align 8
  %133 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %123, ptr %133, align 8
  %134 = load ptr, ptr %128, align 4
  %135 = tail call i32 @i2c_transfer(ptr noundef %134, ptr noundef %127, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %136

136:                                              ; preds = %122, %120, %117
  %137 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, ptr @debug, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %139
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %158

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %145, align 8
  %146 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 4, ptr %146, align 1
  %147 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %147, align 2
  %148 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %148, align 1
  %149 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %149, align 8
  %150 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %151 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %152 = load i8, ptr %151, align 4
  %153 = lshr i8 %152, 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %149, align 8
  %155 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %145, ptr %155, align 8
  %156 = load ptr, ptr %150, align 4
  %157 = tail call i32 @i2c_transfer(ptr noundef %156, ptr noundef %149, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %158

158:                                              ; preds = %144, %142, %139
  %159 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, ptr @debug, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %161
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %180

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %167, align 8
  %168 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 5, ptr %168, align 1
  %169 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %169, align 2
  %170 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %170, align 1
  %171 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %171, align 8
  %172 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %173 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %174 = load i8, ptr %173, align 4
  %175 = lshr i8 %174, 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %171, align 8
  %177 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %167, ptr %177, align 8
  %178 = load ptr, ptr %172, align 4
  %179 = tail call i32 @i2c_transfer(ptr noundef %178, ptr noundef %171, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %180

180:                                              ; preds = %166, %164, %161
  %181 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, ptr @debug, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %205, label %186

186:                                              ; preds = %183
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %205

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %189, align 8
  %190 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 7, ptr %190, align 1
  %191 = lshr i32 %2, 8
  %192 = trunc i32 %191 to i8
  %193 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %192, ptr %193, align 2
  %194 = trunc i32 %2 to i8
  %195 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %194, ptr %195, align 1
  %196 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %196, align 8
  %197 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %198 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %199 = load i8, ptr %198, align 4
  %200 = lshr i8 %199, 1
  %201 = zext i8 %200 to i16
  store i16 %201, ptr %196, align 8
  %202 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %189, ptr %202, align 8
  %203 = load ptr, ptr %197, align 4
  %204 = tail call i32 @i2c_transfer(ptr noundef %203, ptr noundef %196, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %205

205:                                              ; preds = %188, %186, %183
  %206 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %227, label %211

211:                                              ; preds = %208
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %227

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %214, align 8
  %215 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 8, ptr %215, align 1
  %216 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %216, align 2
  %217 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %217, align 1
  %218 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %218, align 8
  %219 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %220 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %221 = load i8, ptr %220, align 4
  %222 = lshr i8 %221, 1
  %223 = zext i8 %222 to i16
  store i16 %223, ptr %218, align 8
  %224 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %214, ptr %224, align 8
  %225 = load ptr, ptr %219, align 4
  %226 = tail call i32 @i2c_transfer(ptr noundef %225, ptr noundef %218, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %227

227:                                              ; preds = %213, %211, %208
  %228 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i32, ptr @debug, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %249, label %233

233:                                              ; preds = %230
  %234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %249

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %236, align 8
  %237 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 18, ptr %237, align 1
  %238 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %238, align 2
  %239 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %239, align 1
  %240 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %240, align 8
  %241 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %242 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %243 = load i8, ptr %242, align 4
  %244 = lshr i8 %243, 1
  %245 = zext i8 %244 to i16
  store i16 %245, ptr %240, align 8
  %246 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %236, ptr %246, align 8
  %247 = load ptr, ptr %241, align 4
  %248 = tail call i32 @i2c_transfer(ptr noundef %247, ptr noundef %240, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %249

249:                                              ; preds = %235, %233, %230
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_configMpegMux(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #1 {
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.dib8096p_configMpegMux) #15
  br label %9

9:                                                ; preds = %7, %4
  tail call fastcc void @dib8096p_enMpegMux(ptr noundef %0, i32 noundef 0)
  %10 = icmp eq i16 %2, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 26
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  %15 = select i1 %14, i16 0, i16 %3
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i16 [ %3, %9 ], [ %15, %11 ]
  %18 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %19 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %47

26:                                               ; preds = %16
  %27 = shl i16 %1, 3
  %28 = shl i16 %2, 2
  %29 = and i16 %28, 4
  %30 = or i16 %29, %27
  %31 = and i16 %17, 1
  %32 = or i16 %31, %30
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 5, ptr %33, align 8
  %34 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 7, ptr %34, align 1
  %35 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %35, align 2
  %36 = trunc i16 %32 to i8
  %37 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = lshr i8 %41, 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %38, align 8
  %44 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %33, ptr %44, align 8
  %45 = load ptr, ptr %39, align 4
  %46 = tail call i32 @i2c_transfer(ptr noundef %45, ptr noundef %38, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %18) #14
  br label %47

47:                                               ; preds = %26, %24, %21
  tail call fastcc void @dib8096p_enMpegMux(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_enMpegMux(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1287)
  %4 = trunc i16 %3 to i8
  %5 = lshr i16 %3, 8
  %6 = trunc i16 %5 to i8
  switch i32 %1, label %11 [
    i32 1, label %7
    i32 0, label %9
  ]

7:                                                ; preds = %2
  %8 = and i8 %6, -2
  br label %11

9:                                                ; preds = %2
  %10 = or i8 %6, 1
  br label %11

11:                                               ; preds = %9, %7, %2
  %12 = phi i8 [ %6, %2 ], [ %10, %9 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %35

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 5, ptr %22, align 8
  %23 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 7, ptr %23, align 1
  %24 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %12, ptr %24, align 2
  %25 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %4, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = lshr i8 %29, 1
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %26, align 8
  %32 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %22, ptr %32, align 8
  %33 = load ptr, ptr %27, align 4
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %26, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %13) #14
  br label %35

35:                                               ; preds = %21, %19, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_restart_agc(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %11, align 8
  %12 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 2, ptr %12, align 1
  %13 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 10, ptr %13, align 2
  %14 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = lshr i8 %18, 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %15, align 8
  %21 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %11, ptr %21, align 8
  %22 = load ptr, ptr %16, align 4
  %23 = tail call i32 @i2c_transfer(ptr noundef %22, ptr noundef %15, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %2) #14
  br label %24

24:                                               ; preds = %10, %8, %5
  %25 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #14
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %46

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %33, align 8
  %34 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 2, ptr %34, align 1
  %35 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %35, align 2
  %36 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = lshr i8 %40, 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %37, align 8
  %43 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %33, ptr %43, align 8
  %44 = load ptr, ptr %38, align 4
  %45 = tail call i32 @i2c_transfer(ptr noundef %44, ptr noundef %37, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %2) #14
  br label %46

46:                                               ; preds = %32, %30, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_agc_soft_split(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dibx000_agc_config, ptr %3, i32 0, i32 27
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dibx000_agc_config, ptr %3, i32 0, i32 28, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 390)
  %15 = zext i16 %14 to i32
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.dibx000_agc_config, ptr %16, i32 0, i32 28, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp ugt i16 %14, %18
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.dibx000_agc_config, ptr %16, i32 0, i32 28
  %23 = load i16, ptr %22, align 2
  br label %41

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.dibx000_agc_config, ptr %16, i32 0, i32 28, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = icmp ult i16 %14, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dibx000_agc_config, ptr %16, i32 0, i32 28, i32 1
  %30 = load i16, ptr %29, align 2
  br label %41

31:                                               ; preds = %24
  %32 = zext i16 %26 to i32
  %33 = getelementptr inbounds %struct.dibx000_agc_config, ptr %16, i32 0, i32 28, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = sub nsw i32 %15, %19
  %37 = mul i32 %36, %35
  %38 = sub nsw i32 %32, %19
  %39 = sdiv i32 %37, %38
  %40 = trunc i32 %39 to i16
  br label %41

41:                                               ; preds = %31, %28, %21
  %42 = phi i16 [ %23, %21 ], [ %30, %28 ], [ %40, %31 ]
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = zext i16 %42 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib8000_agc_soft_split, i32 noundef %46) #15
  br label %48

48:                                               ; preds = %45, %41
  %49 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 107)
  %50 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %51 = tail call i32 @mutex_lock_interruptible(ptr noundef %50) #14
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %76

58:                                               ; preds = %48
  %59 = or i16 %49, %42
  %60 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %60, align 8
  %61 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 107, ptr %61, align 1
  %62 = lshr i16 %59, 8
  %63 = trunc i16 %62 to i8
  %64 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %63, ptr %64, align 2
  %65 = trunc i16 %42 to i8
  %66 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %67, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %69 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %70 = load i8, ptr %69, align 4
  %71 = lshr i8 %70, 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %67, align 8
  %73 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %60, ptr %73, align 8
  %74 = load ptr, ptr %68, align 4
  %75 = tail call i32 @i2c_transfer(ptr noundef %74, ptr noundef %67, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %50) #14
  br label %76

76:                                               ; preds = %58, %56, %53, %9, %5, %1
  %77 = phi i32 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ 5000, %53 ], [ 5000, %56 ], [ 5000, %58 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_viterbi_state(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 771)
  %4 = icmp eq i8 %1, 0
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #14
  %7 = icmp slt i32 %6, 0
  br i1 %4, label %32, label %8

8:                                                ; preds = %2
  br i1 %7, label %9, label %14

9:                                                ; preds = %8
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %56

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %15, align 8
  %16 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 3, ptr %16, align 1
  %17 = lshr i16 %3, 8
  %18 = trunc i16 %17 to i8
  %19 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %18, ptr %19, align 2
  %20 = trunc i16 %3 to i8
  %21 = and i8 %20, -3
  %22 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %23, align 8
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %15, ptr %29, align 8
  %30 = load ptr, ptr %24, align 4
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %23, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %56

32:                                               ; preds = %2
  br i1 %7, label %33, label %38

33:                                               ; preds = %32
  %34 = load i32, ptr @debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %56

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 3, ptr %39, align 8
  %40 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 3, ptr %40, align 1
  %41 = lshr i16 %3, 8
  %42 = trunc i16 %41 to i8
  %43 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %42, ptr %43, align 2
  %44 = trunc i16 %3 to i8
  %45 = or i8 %44, 2
  %46 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %49 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = lshr i8 %50, 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %47, align 8
  %53 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %39, ptr %53, align 8
  %54 = load ptr, ptr %48, align 4
  %55 = tail call i32 @i2c_transfer(ptr noundef %54, ptr noundef %47, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %56

56:                                               ; preds = %38, %36, %33, %14, %12, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_set_isdbt_loop_params(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 8
  switch i32 %1, label %99 [
    i32 0, label %5
    i32 1, label %49
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 8, i32 18
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 8, i32 17
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 32
  %14 = load i16, ptr %13, align 2
  %15 = mul i16 %14, -4096
  br i1 %12, label %16, label %26

16:                                               ; preds = %9
  %17 = add i16 %15, -20480
  %18 = sub i16 10, %14
  %19 = lshr exact i16 %17, 8
  %20 = trunc i16 %19 to i8
  %21 = or i8 %20, 6
  %22 = trunc i16 %18 to i8
  %23 = or i8 %22, 96
  %24 = lshr i16 %18, 8
  %25 = trunc i16 %24 to i8
  br label %99

26:                                               ; preds = %9
  %27 = add i16 %15, -24576
  %28 = sub i16 9, %14
  %29 = lshr exact i16 %27, 8
  %30 = trunc i16 %29 to i8
  %31 = or i8 %30, 6
  %32 = trunc i16 %28 to i8
  %33 = or i8 %32, 96
  %34 = lshr i16 %28, 8
  %35 = trunc i16 %34 to i8
  br label %99

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 32
  %38 = load i16, ptr %37, align 2
  %39 = mul i16 %38, -4096
  %40 = add i16 %39, -28672
  %41 = sub i16 8, %38
  %42 = lshr exact i16 %40, 8
  %43 = trunc i16 %42 to i8
  %44 = or i8 %43, 6
  %45 = trunc i16 %41 to i8
  %46 = or i8 %45, 96
  %47 = lshr i16 %41, 8
  %48 = trunc i16 %47 to i8
  br label %99

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 8, i32 18
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 8, i32 17
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 32
  %58 = load i16, ptr %57, align 2
  %59 = mul i16 %58, -4096
  br i1 %56, label %60, label %72

60:                                               ; preds = %53
  %61 = add i16 %59, -12288
  %62 = sub i16 12, %58
  %63 = shl i16 %58, 5
  %64 = add i16 %63, 160
  %65 = or i16 %64, %62
  %66 = lshr exact i16 %61, 8
  %67 = trunc i16 %66 to i8
  %68 = or i8 %67, 6
  %69 = trunc i16 %65 to i8
  %70 = lshr i16 %65, 8
  %71 = trunc i16 %70 to i8
  br label %99

72:                                               ; preds = %53
  %73 = add i16 %59, -16384
  %74 = sub i16 11, %58
  %75 = shl i16 %58, 5
  %76 = add i16 %75, 160
  %77 = or i16 %76, %74
  %78 = lshr exact i16 %73, 8
  %79 = trunc i16 %78 to i8
  %80 = or i8 %79, 6
  %81 = trunc i16 %77 to i8
  %82 = lshr i16 %77, 8
  %83 = trunc i16 %82 to i8
  br label %99

84:                                               ; preds = %49
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 32
  %86 = load i16, ptr %85, align 2
  %87 = mul i16 %86, -4096
  %88 = add i16 %87, -20480
  %89 = shl i16 %86, 5
  %90 = add i16 %89, 160
  %91 = sub i16 10, %86
  %92 = or i16 %90, %91
  %93 = lshr exact i16 %88, 8
  %94 = trunc i16 %93 to i8
  %95 = or i8 %94, 6
  %96 = trunc i16 %92 to i8
  %97 = lshr i16 %92, 8
  %98 = trunc i16 %97 to i8
  br label %99

99:                                               ; preds = %84, %72, %60, %36, %26, %16, %2
  %100 = phi i8 [ 0, %2 ], [ 64, %60 ], [ 96, %72 ], [ -128, %84 ], [ 64, %16 ], [ 96, %26 ], [ -128, %36 ]
  %101 = phi i8 [ 0, %2 ], [ %68, %60 ], [ %80, %72 ], [ %95, %84 ], [ %21, %16 ], [ %31, %26 ], [ %44, %36 ]
  %102 = phi i8 [ 0, %2 ], [ %69, %60 ], [ %81, %72 ], [ %96, %84 ], [ %23, %16 ], [ %33, %26 ], [ %46, %36 ]
  %103 = phi i8 [ 0, %2 ], [ %71, %60 ], [ %83, %72 ], [ %98, %84 ], [ %25, %16 ], [ %35, %26 ], [ %48, %36 ]
  %104 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %105 = tail call i32 @mutex_lock_interruptible(ptr noundef %104) #14
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load i32, ptr @debug, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %107
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %126

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %113, align 8
  %114 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 32, ptr %114, align 1
  %115 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %101, ptr %115, align 2
  %116 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %100, ptr %116, align 1
  %117 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %117, align 8
  %118 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %119 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %120 = load i8, ptr %119, align 4
  %121 = lshr i8 %120, 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %117, align 8
  %123 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %113, ptr %123, align 8
  %124 = load ptr, ptr %118, align 4
  %125 = tail call i32 @i2c_transfer(ptr noundef %124, ptr noundef %117, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %104) #14
  br label %126

126:                                              ; preds = %112, %110, %107
  %127 = tail call i32 @mutex_lock_interruptible(ptr noundef %104) #14
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, ptr @debug, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %129
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %148

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %135, align 8
  %136 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 37, ptr %136, align 1
  %137 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %103, ptr %137, align 2
  %138 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %102, ptr %138, align 1
  %139 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %139, align 8
  %140 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %141 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %142 = load i8, ptr %141, align 4
  %143 = lshr i8 %142, 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %139, align 8
  %145 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %135, ptr %145, align 8
  %146 = load ptr, ptr %140, align 4
  %147 = tail call i32 @i2c_transfer(ptr noundef %146, ptr noundef %139, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %104) #14
  br label %148

148:                                              ; preds = %134, %132, %129
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_set_isdbt_common_channel(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 17
  store i8 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %34

18:                                               ; preds = %9
  %19 = shl i8 %1, 4
  %20 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %20, align 8
  %21 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 10, ptr %21, align 1
  %22 = lshr i8 %1, 4
  %23 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %22, ptr %23, align 2
  %24 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %19, ptr %24, align 1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %25, align 8
  %31 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %20, ptr %31, align 8
  %32 = load ptr, ptr %26, align 4
  %33 = tail call i32 @i2c_transfer(ptr noundef %32, ptr noundef %25, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %34

34:                                               ; preds = %18, %16, %13
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 8, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 3
  %39 = select i1 %38, i16 2, i16 3
  %40 = icmp eq i32 %37, 0
  %41 = select i1 %40, i16 1, i16 %39
  %42 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 32
  store i16 %41, ptr %42, align 2
  %43 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1)
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %74

53:                                               ; preds = %34
  %54 = trunc i32 %45 to i16
  %55 = and i16 %54, 3
  %56 = and i16 %43, 252
  %57 = or i16 %55, %56
  %58 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %58, align 8
  %59 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 1, ptr %59, align 1
  %60 = lshr i16 %43, 8
  %61 = trunc i16 %60 to i8
  %62 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %61, ptr %62, align 2
  %63 = trunc i16 %57 to i8
  %64 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %65, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %67 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = lshr i8 %68, 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %65, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %58, ptr %71, align 8
  %72 = load ptr, ptr %66, align 4
  %73 = tail call i32 @i2c_transfer(ptr noundef %72, ptr noundef %65, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %74

74:                                               ; preds = %53, %51, %48
  %75 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 274)
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 17
  %77 = load i8, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 18
  %79 = load i8, ptr %78, align 1
  %80 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, ptr @debug, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %82
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %111

87:                                               ; preds = %74
  %88 = shl i8 %77, 5
  %89 = and i8 %88, 32
  %90 = shl i8 %79, 4
  %91 = and i8 %90, 16
  %92 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 1, ptr %92, align 8
  %93 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 18, ptr %93, align 1
  %94 = lshr i16 %75, 8
  %95 = trunc i16 %94 to i8
  %96 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %95, ptr %96, align 2
  %97 = trunc i16 %75 to i8
  %98 = and i8 %97, -49
  %99 = or i8 %89, %98
  %100 = or i8 %99, %91
  %101 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %100, ptr %101, align 1
  %102 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %102, align 8
  %103 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %104 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %105 = load i8, ptr %104, align 4
  %106 = lshr i8 %105, 1
  %107 = zext i8 %106 to i16
  store i16 %107, ptr %102, align 8
  %108 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %92, ptr %108, align 8
  %109 = load ptr, ptr %103, align 4
  %110 = tail call i32 @i2c_transfer(ptr noundef %109, ptr noundef %102, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %111

111:                                              ; preds = %87, %85, %82
  %112 = load i8, ptr %76, align 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %111
  %115 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 0
  %116 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 12
  %119 = load i8, ptr %115, align 4
  %120 = zext i8 %119 to i16
  %121 = select i1 %118, i16 %120, i16 0
  %122 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1
  %123 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 12
  %126 = load i8, ptr %122, align 4
  %127 = zext i8 %126 to i16
  %128 = select i1 %125, i16 %127, i16 0
  %129 = add nuw nsw i16 %128, %121
  %130 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2
  %131 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 12
  %134 = load i8, ptr %130, align 4
  %135 = zext i8 %134 to i16
  %136 = select i1 %133, i16 %135, i16 0
  %137 = add nuw nsw i16 %136, %129
  %138 = icmp eq i16 %137, 0
  %139 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 31
  %140 = load i16, ptr %139, align 4
  br i1 %138, label %191, label %176

141:                                              ; preds = %111
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 12
  %145 = select i1 %144, i16 64, i16 0
  %146 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 31
  store i16 %145, ptr %146, align 4
  %147 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1
  %148 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 12
  %151 = load i8, ptr %147, align 4
  %152 = zext i8 %151 to i16
  %153 = select i1 %150, i16 %152, i16 0
  %154 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2
  %155 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 12
  %158 = load i8, ptr %154, align 4
  %159 = zext i8 %158 to i16
  %160 = select i1 %157, i16 %159, i16 0
  %161 = add nuw nsw i16 %160, %153
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %191, label %163

163:                                              ; preds = %141
  %164 = zext i16 %161 to i32
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi i32 [ 0, %163 ], [ %168, %165 ]
  %167 = phi i16 [ %145, %163 ], [ %174, %165 ]
  %168 = add nuw nsw i32 %166, 1
  %169 = getelementptr [13 x i8], ptr @permu_seg, i32 0, i32 %168
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl nuw i32 1, %171
  %173 = trunc i32 %172 to i16
  %174 = or i16 %167, %173
  %175 = icmp eq i32 %168, %164
  br i1 %175, label %190, label %165

176:                                              ; preds = %114
  %177 = zext i16 %137 to i32
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i32 [ 0, %176 ], [ %187, %178 ]
  %180 = phi i16 [ %140, %176 ], [ %186, %178 ]
  %181 = getelementptr [13 x i8], ptr @permu_seg, i32 0, i32 %179
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw i32 1, %183
  %185 = trunc i32 %184 to i16
  %186 = or i16 %180, %185
  %187 = add nuw nsw i32 %179, 1
  %188 = icmp eq i32 %187, %177
  br i1 %188, label %189, label %178

189:                                              ; preds = %178
  store i16 %186, ptr %139, align 4
  br label %191

190:                                              ; preds = %165
  store i16 %174, ptr %146, align 4
  br label %191

191:                                              ; preds = %190, %189, %141, %114
  %192 = phi i16 [ %145, %141 ], [ %174, %190 ], [ %186, %189 ], [ %140, %114 ]
  %193 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 31
  %194 = icmp eq i16 %192, 0
  br i1 %194, label %223, label %195

195:                                              ; preds = %191
  %196 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 268)
  %197 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i32, ptr @debug, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %245, label %202

202:                                              ; preds = %199
  %203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %245

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 1, ptr %205, align 8
  %206 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 12, ptr %206, align 1
  %207 = lshr i16 %196, 8
  %208 = trunc i16 %207 to i8
  %209 = and i8 %208, -7
  %210 = or i8 %209, 2
  %211 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %210, ptr %211, align 2
  %212 = trunc i16 %196 to i8
  %213 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %212, ptr %213, align 1
  %214 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %214, align 8
  %215 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %216 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %217 = load i8, ptr %216, align 4
  %218 = lshr i8 %217, 1
  %219 = zext i8 %218 to i16
  store i16 %219, ptr %214, align 8
  %220 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %205, ptr %220, align 8
  %221 = load ptr, ptr %215, align 4
  %222 = tail call i32 @i2c_transfer(ptr noundef %221, ptr noundef %214, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %245

223:                                              ; preds = %191
  %224 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load i32, ptr @debug, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %245, label %229

229:                                              ; preds = %226
  %230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %245

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 1, ptr %232, align 8
  %233 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 12, ptr %233, align 1
  %234 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 4, ptr %234, align 2
  %235 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 39, ptr %235, align 1
  %236 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %236, align 8
  %237 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %238 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %239 = load i8, ptr %238, align 4
  %240 = lshr i8 %239, 1
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %236, align 8
  %242 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %232, ptr %242, align 8
  %243 = load ptr, ptr %237, align 4
  %244 = tail call i32 @i2c_transfer(ptr noundef %243, ptr noundef %236, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %245

245:                                              ; preds = %231, %229, %226, %204, %202, %199
  %246 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  %247 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  %248 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  %249 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  %250 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  %251 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %252 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %253 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  br label %254

254:                                              ; preds = %334, %245
  %255 = phi i32 [ 0, %245 ], [ %336, %334 ]
  %256 = phi i16 [ 12, %245 ], [ %335, %334 ]
  %257 = phi i16 [ 0, %245 ], [ %337, %334 ]
  %258 = load ptr, ptr %4, align 8
  %259 = getelementptr %struct.dvb_frontend, ptr %258, i32 0, i32 8, i32 23, i32 %255
  %260 = getelementptr %struct.dvb_frontend, ptr %258, i32 0, i32 8, i32 23, i32 %255, i32 2
  %261 = load i32, ptr %260, align 4
  switch i32 %261, label %264 [
    i32 12, label %265
    i32 0, label %262
    i32 1, label %263
  ]

262:                                              ; preds = %254
  br label %265

263:                                              ; preds = %254
  br label %265

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264, %263, %262, %254
  %266 = phi i32 [ 3072, %264 ], [ 2048, %263 ], [ 1024, %262 ], [ 0, %254 ]
  %267 = getelementptr %struct.dvb_frontend, ptr %258, i32 0, i32 8, i32 23, i32 %255, i32 1
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, -1
  %270 = icmp ult i32 %269, 5
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = getelementptr inbounds [5 x i32], ptr @switch.table.dib8000_set_isdbt_common_channel, i32 0, i32 %269
  %273 = load i32, ptr %272, align 4
  br label %274

274:                                              ; preds = %271, %265
  %275 = phi i32 [ %273, %271 ], [ 56, %265 ]
  %276 = getelementptr %struct.dvb_frontend, ptr %258, i32 0, i32 8, i32 23, i32 %255, i32 3
  %277 = load i8, ptr %276, align 4
  %278 = zext i8 %277 to i32
  %279 = icmp eq i8 %277, 0
  %280 = tail call i32 @llvm.ctlz.i32(i32 %278, i1 false) #14, !range !11
  %281 = sub nuw nsw i32 32, %280
  %282 = select i1 %279, i32 0, i32 %281
  %283 = icmp ugt i32 %282, 3
  br i1 %283, label %284, label %291

284:                                              ; preds = %274
  %285 = icmp eq i32 %282, 4
  br i1 %285, label %286, label %290

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.dvb_frontend, ptr %258, i32 0, i32 8, i32 18
  %288 = load i8, ptr %287, align 1
  %289 = icmp eq i8 %288, 1
  br i1 %289, label %291, label %290

290:                                              ; preds = %286, %284
  br label %291

291:                                              ; preds = %290, %286, %274
  %292 = phi i32 [ 4, %286 ], [ 0, %290 ], [ %282, %274 ]
  %293 = load i8, ptr %259, align 4
  %294 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load i32, ptr @debug, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %322, label %299

299:                                              ; preds = %296
  %300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %322

301:                                              ; preds = %291
  %302 = and i8 %293, 15
  %303 = zext i8 %302 to i32
  %304 = shl nuw nsw i32 %303, 6
  %305 = or i32 %304, %266
  %306 = or i32 %305, %275
  %307 = or i32 %306, %292
  %308 = trunc i32 %255 to i16
  %309 = add i16 %308, 2
  %310 = lshr i16 %309, 8
  %311 = trunc i16 %310 to i8
  store i8 %311, ptr %246, align 8
  %312 = trunc i16 %257 to i8
  %313 = add i8 %312, 2
  store i8 %313, ptr %247, align 1
  %314 = lshr i32 %307, 8
  %315 = trunc i32 %314 to i8
  store i8 %315, ptr %248, align 2
  %316 = trunc i32 %307 to i8
  store i8 %316, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %317 = load i8, ptr %252, align 4
  %318 = lshr i8 %317, 1
  %319 = zext i8 %318 to i16
  store i16 %319, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %320 = load ptr, ptr %251, align 4
  %321 = tail call i32 @i2c_transfer(ptr noundef %320, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %322

322:                                              ; preds = %301, %299, %296
  %323 = load i8, ptr %259, align 4
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %334, label %325

325:                                              ; preds = %322
  switch i16 %256, label %334 [
    i16 12, label %326
    i16 0, label %326
    i16 1, label %330
  ]

326:                                              ; preds = %325, %325
  %327 = load i32, ptr %260, align 4
  switch i32 %327, label %334 [
    i32 1, label %328
    i32 3, label %328
  ]

328:                                              ; preds = %326, %326
  %329 = trunc i32 %327 to i16
  br label %334

330:                                              ; preds = %325
  %331 = load i32, ptr %260, align 4
  %332 = icmp eq i32 %331, 3
  %333 = select i1 %332, i16 3, i16 1
  br label %334

334:                                              ; preds = %330, %328, %326, %325, %322
  %335 = phi i16 [ %256, %325 ], [ %329, %328 ], [ %256, %322 ], [ %256, %326 ], [ %333, %330 ]
  %336 = add nuw nsw i32 %255, 1
  %337 = add nuw nsw i16 %257, 1
  %338 = icmp eq i32 %336, 3
  br i1 %338, label %339, label %254

339:                                              ; preds = %334
  br i1 %6, label %340, label %347

340:                                              ; preds = %339
  %341 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1
  %342 = load i8, ptr %341, align 4
  %343 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 33
  store i8 %342, ptr %343, align 8
  %344 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2
  %345 = load i8, ptr %344, align 4
  %346 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 34
  store i8 %345, ptr %346, align 1
  br label %347

347:                                              ; preds = %340, %339
  %348 = load i16, ptr %42, align 2
  %349 = load i16, ptr %193, align 4
  %350 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load i32, ptr @debug, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %368, label %355

355:                                              ; preds = %352
  %356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %368

357:                                              ; preds = %347
  %358 = shl i16 %348, 13
  %359 = or i16 %358, %349
  store i8 0, ptr %246, align 8
  store i8 0, ptr %247, align 1
  %360 = lshr i16 %359, 8
  %361 = trunc i16 %360 to i8
  store i8 %361, ptr %248, align 2
  %362 = trunc i16 %349 to i8
  store i8 %362, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %363 = load i8, ptr %252, align 4
  %364 = lshr i8 %363, 1
  %365 = zext i8 %364 to i16
  store i16 %365, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %366 = load ptr, ptr %251, align 4
  %367 = tail call i32 @i2c_transfer(ptr noundef %366, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %368

368:                                              ; preds = %357, %355, %352
  %369 = load i16, ptr %193, align 4
  %370 = icmp ne i16 %369, 0
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 12
  store i8 %371, ptr %372, align 1
  switch i16 %335, label %374 [
    i16 3, label %375
    i16 1, label %373
  ]

373:                                              ; preds = %368
  br label %375

374:                                              ; preds = %368
  br label %375

375:                                              ; preds = %374, %373, %368
  %376 = phi i1 [ true, %374 ], [ false, %373 ], [ false, %368 ]
  %377 = phi i8 [ 0, %374 ], [ 7, %373 ], [ 7, %368 ]
  %378 = phi ptr [ @adp_Qdefault, %374 ], [ @adp_Q16, %373 ], [ @adp_Q64, %368 ]
  %379 = load i16, ptr %378, align 2
  %380 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %375
  %383 = load i32, ptr @debug, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %396, label %385

385:                                              ; preds = %382
  %386 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %396

387:                                              ; preds = %375
  store i8 0, ptr %246, align 8
  store i8 -41, ptr %247, align 1
  %388 = lshr i16 %379, 8
  %389 = trunc i16 %388 to i8
  store i8 %389, ptr %248, align 2
  %390 = trunc i16 %379 to i8
  store i8 %390, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %391 = load i8, ptr %252, align 4
  %392 = lshr i8 %391, 1
  %393 = zext i8 %392 to i16
  store i16 %393, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %394 = load ptr, ptr %251, align 4
  %395 = tail call i32 @i2c_transfer(ptr noundef %394, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %396

396:                                              ; preds = %387, %385, %382
  %397 = getelementptr i16, ptr %378, i32 1
  %398 = load i16, ptr %397, align 2
  %399 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %410, label %401

401:                                              ; preds = %396
  store i8 0, ptr %246, align 8
  store i8 -40, ptr %247, align 1
  %402 = lshr i16 %398, 8
  %403 = trunc i16 %402 to i8
  store i8 %403, ptr %248, align 2
  %404 = trunc i16 %398 to i8
  store i8 %404, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %405 = load i8, ptr %252, align 4
  %406 = lshr i8 %405, 1
  %407 = zext i8 %406 to i16
  store i16 %407, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %408 = load ptr, ptr %251, align 4
  %409 = tail call i32 @i2c_transfer(ptr noundef %408, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %415

410:                                              ; preds = %396
  %411 = load i32, ptr @debug, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %410
  %414 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %415

415:                                              ; preds = %413, %410, %401
  %416 = getelementptr i16, ptr %378, i32 2
  %417 = load i16, ptr %416, align 2
  %418 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %429, label %420

420:                                              ; preds = %415
  store i8 0, ptr %246, align 8
  store i8 -39, ptr %247, align 1
  %421 = lshr i16 %417, 8
  %422 = trunc i16 %421 to i8
  store i8 %422, ptr %248, align 2
  %423 = trunc i16 %417 to i8
  store i8 %423, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %424 = load i8, ptr %252, align 4
  %425 = lshr i8 %424, 1
  %426 = zext i8 %425 to i16
  store i16 %426, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %427 = load ptr, ptr %251, align 4
  %428 = tail call i32 @i2c_transfer(ptr noundef %427, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %434

429:                                              ; preds = %415
  %430 = load i32, ptr @debug, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %429
  %433 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %434

434:                                              ; preds = %432, %429, %420
  %435 = getelementptr i16, ptr %378, i32 3
  %436 = load i16, ptr %435, align 2
  %437 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %448, label %439

439:                                              ; preds = %434
  store i8 0, ptr %246, align 8
  store i8 -38, ptr %247, align 1
  %440 = lshr i16 %436, 8
  %441 = trunc i16 %440 to i8
  store i8 %441, ptr %248, align 2
  %442 = trunc i16 %436 to i8
  store i8 %442, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %443 = load i8, ptr %252, align 4
  %444 = lshr i8 %443, 1
  %445 = zext i8 %444 to i16
  store i16 %445, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %446 = load ptr, ptr %251, align 4
  %447 = tail call i32 @i2c_transfer(ptr noundef %446, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %453

448:                                              ; preds = %434
  %449 = load i32, ptr @debug, align 4
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %448
  %452 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %453

453:                                              ; preds = %451, %448, %439
  %454 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %453
  %457 = load i32, ptr @debug, align 4
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %467, label %459

459:                                              ; preds = %456
  %460 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %467

461:                                              ; preds = %453
  store i8 0, ptr %246, align 8
  store i8 116, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 %377, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %462 = load i8, ptr %252, align 4
  %463 = lshr i8 %462, 1
  %464 = zext i8 %463 to i16
  store i16 %464, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %465 = load ptr, ptr %251, align 4
  %466 = tail call i32 @i2c_transfer(ptr noundef %465, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %467

467:                                              ; preds = %461, %459, %456
  br i1 %376, label %499, label %468

468:                                              ; preds = %495, %467
  %469 = phi i32 [ %496, %495 ], [ 0, %467 ]
  %470 = phi i16 [ %497, %495 ], [ 0, %467 ]
  %471 = getelementptr [11 x i16], ptr @adc_target_16dB, i32 0, i32 %469
  %472 = load i16, ptr %471, align 2
  %473 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %474 = icmp slt i32 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %468
  %476 = load i32, ptr @debug, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %495, label %478

478:                                              ; preds = %475
  %479 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %495

480:                                              ; preds = %468
  %481 = trunc i32 %469 to i16
  %482 = add i16 %481, 80
  %483 = lshr i16 %482, 8
  %484 = trunc i16 %483 to i8
  store i8 %484, ptr %246, align 8
  %485 = trunc i16 %470 to i8
  %486 = add i8 %485, 80
  store i8 %486, ptr %247, align 1
  %487 = lshr i16 %472, 8
  %488 = trunc i16 %487 to i8
  store i8 %488, ptr %248, align 2
  %489 = trunc i16 %472 to i8
  store i8 %489, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %490 = load i8, ptr %252, align 4
  %491 = lshr i8 %490, 1
  %492 = zext i8 %491 to i16
  store i16 %492, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %493 = load ptr, ptr %251, align 4
  %494 = tail call i32 @i2c_transfer(ptr noundef %493, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %495

495:                                              ; preds = %480, %478, %475
  %496 = add nuw nsw i32 %469, 1
  %497 = add nuw nsw i16 %470, 1
  %498 = icmp eq i32 %496, 10
  br i1 %498, label %531, label %468

499:                                              ; preds = %527, %467
  %500 = phi i32 [ %528, %527 ], [ 0, %467 ]
  %501 = phi i16 [ %529, %527 ], [ 0, %467 ]
  %502 = getelementptr [11 x i16], ptr @adc_target_16dB, i32 0, i32 %500
  %503 = load i16, ptr %502, align 2
  %504 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %505 = icmp slt i32 %504, 0
  br i1 %505, label %506, label %511

506:                                              ; preds = %499
  %507 = load i32, ptr @debug, align 4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %527, label %509

509:                                              ; preds = %506
  %510 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %527

511:                                              ; preds = %499
  %512 = add i16 %503, -355
  %513 = trunc i32 %500 to i16
  %514 = add i16 %513, 80
  %515 = lshr i16 %514, 8
  %516 = trunc i16 %515 to i8
  store i8 %516, ptr %246, align 8
  %517 = trunc i16 %501 to i8
  %518 = add i8 %517, 80
  store i8 %518, ptr %247, align 1
  %519 = lshr i16 %512, 8
  %520 = trunc i16 %519 to i8
  store i8 %520, ptr %248, align 2
  %521 = trunc i16 %512 to i8
  store i8 %521, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %522 = load i8, ptr %252, align 4
  %523 = lshr i8 %522, 1
  %524 = zext i8 %523 to i16
  store i16 %524, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %525 = load ptr, ptr %251, align 4
  %526 = tail call i32 @i2c_transfer(ptr noundef %525, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %527

527:                                              ; preds = %511, %509, %506
  %528 = add nuw nsw i32 %500, 1
  %529 = add nuw nsw i16 %501, 1
  %530 = icmp eq i32 %528, 10
  br i1 %530, label %531, label %499

531:                                              ; preds = %527, %495
  %532 = load i8, ptr %76, align 4
  %533 = icmp eq i8 %532, 0
  %534 = select i1 %533, ptr @ana_fe_coeff_1seg, ptr @ana_fe_coeff_3seg
  tail call fastcc void @dib8000_load_ana_fe_coefs(ptr noundef %0, ptr noundef nonnull %534)
  %535 = load i8, ptr %78, align 1
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %948, label %537

537:                                              ; preds = %531
  %538 = load ptr, ptr %4, align 8
  %539 = getelementptr inbounds %struct.dvb_frontend, ptr %538, i32 0, i32 8, i32 6
  %540 = load i32, ptr %539, align 4
  switch i32 %540, label %579 [
    i32 0, label %541
    i32 3, label %541
  ]

541:                                              ; preds = %537, %537
  %542 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 219) #14
  %543 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %541
  %546 = load i32, ptr @debug, align 4
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %560, label %548

548:                                              ; preds = %545
  %549 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %560

550:                                              ; preds = %541
  store i8 0, ptr %246, align 8
  store i8 -37, ptr %247, align 1
  %551 = lshr i16 %542, 8
  %552 = trunc i16 %551 to i8
  store i8 %552, ptr %248, align 2
  %553 = trunc i16 %542 to i8
  %554 = or i8 %553, 1
  store i8 %554, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %555 = load i8, ptr %252, align 4
  %556 = lshr i8 %555, 1
  %557 = zext i8 %556 to i16
  store i16 %557, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %558 = load ptr, ptr %251, align 4
  %559 = tail call i32 @i2c_transfer(ptr noundef %558, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %560

560:                                              ; preds = %550, %548, %545
  %561 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 190) #14
  %562 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %563 = icmp slt i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %560
  %565 = load i32, ptr @debug, align 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %617, label %567

567:                                              ; preds = %564
  %568 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %617

569:                                              ; preds = %560
  store i8 0, ptr %246, align 8
  store i8 -66, ptr %247, align 1
  %570 = lshr i16 %561, 8
  %571 = trunc i16 %570 to i8
  %572 = or i8 %571, 64
  store i8 %572, ptr %248, align 2
  %573 = trunc i16 %561 to i8
  store i8 %573, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %574 = load i8, ptr %252, align 4
  %575 = lshr i8 %574, 1
  %576 = zext i8 %575 to i16
  store i16 %576, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %577 = load ptr, ptr %251, align 4
  %578 = tail call i32 @i2c_transfer(ptr noundef %577, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %617

579:                                              ; preds = %537
  %580 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 219) #14
  %581 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %583, label %588

583:                                              ; preds = %579
  %584 = load i32, ptr @debug, align 4
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %598, label %586

586:                                              ; preds = %583
  %587 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %598

588:                                              ; preds = %579
  store i8 0, ptr %246, align 8
  store i8 -37, ptr %247, align 1
  %589 = lshr i16 %580, 8
  %590 = trunc i16 %589 to i8
  store i8 %590, ptr %248, align 2
  %591 = trunc i16 %580 to i8
  %592 = and i8 %591, -2
  store i8 %592, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %593 = load i8, ptr %252, align 4
  %594 = lshr i8 %593, 1
  %595 = zext i8 %594 to i16
  store i16 %595, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %596 = load ptr, ptr %251, align 4
  %597 = tail call i32 @i2c_transfer(ptr noundef %596, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %598

598:                                              ; preds = %588, %586, %583
  %599 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 190) #14
  %600 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %601 = icmp slt i32 %600, 0
  br i1 %601, label %602, label %607

602:                                              ; preds = %598
  %603 = load i32, ptr @debug, align 4
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %617, label %605

605:                                              ; preds = %602
  %606 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %617

607:                                              ; preds = %598
  store i8 0, ptr %246, align 8
  store i8 -66, ptr %247, align 1
  %608 = lshr i16 %599, 8
  %609 = trunc i16 %608 to i8
  %610 = and i8 %609, -65
  store i8 %610, ptr %248, align 2
  %611 = trunc i16 %599 to i8
  store i8 %611, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %612 = load i8, ptr %252, align 4
  %613 = lshr i8 %612, 1
  %614 = zext i8 %613 to i16
  store i16 %614, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %615 = load ptr, ptr %251, align 4
  %616 = tail call i32 @i2c_transfer(ptr noundef %615, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %617

617:                                              ; preds = %607, %605, %602, %569, %567, %564
  %618 = getelementptr inbounds %struct.dvb_frontend, ptr %538, i32 0, i32 8, i32 17
  %619 = load i8, ptr %618, align 4
  %620 = icmp eq i8 %619, 1
  %621 = select i1 %620, i16 224, i16 64
  %622 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 30
  store i16 %621, ptr %622, align 2
  %623 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 268) #14
  %624 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %625 = icmp slt i32 %624, 0
  br i1 %625, label %626, label %631

626:                                              ; preds = %617
  %627 = load i32, ptr @debug, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %642, label %629

629:                                              ; preds = %626
  %630 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %642

631:                                              ; preds = %617
  store i8 1, ptr %246, align 8
  store i8 12, ptr %247, align 1
  %632 = lshr i16 %623, 8
  %633 = trunc i16 %632 to i8
  %634 = and i8 %633, -7
  %635 = or i8 %634, 2
  store i8 %635, ptr %248, align 2
  %636 = trunc i16 %623 to i8
  store i8 %636, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %637 = load i8, ptr %252, align 4
  %638 = lshr i8 %637, 1
  %639 = zext i8 %638 to i16
  store i16 %639, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %640 = load ptr, ptr %251, align 4
  %641 = tail call i32 @i2c_transfer(ptr noundef %640, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %642

642:                                              ; preds = %631, %629, %626
  %643 = load i8, ptr %618, align 4
  %644 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %645 = icmp slt i32 %644, 0
  br i1 %645, label %646, label %651

646:                                              ; preds = %642
  %647 = load i32, ptr @debug, align 4
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %660, label %649

649:                                              ; preds = %646
  %650 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %660

651:                                              ; preds = %642
  %652 = shl i8 %643, 2
  %653 = xor i8 %652, -1
  %654 = or i8 %653, -5
  store i8 0, ptr %246, align 8
  store i8 -69, ptr %247, align 1
  store i8 71, ptr %248, align 2
  store i8 %654, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %655 = load i8, ptr %252, align 4
  %656 = lshr i8 %655, 1
  %657 = zext i8 %656 to i16
  store i16 %657, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %658 = load ptr, ptr %251, align 4
  %659 = tail call i32 @i2c_transfer(ptr noundef %658, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %660

660:                                              ; preds = %651, %649, %646
  %661 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %662 = icmp slt i32 %661, 0
  br i1 %662, label %663, label %668

663:                                              ; preds = %660
  %664 = load i32, ptr @debug, align 4
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %674, label %666

666:                                              ; preds = %663
  %667 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %674

668:                                              ; preds = %660
  store i8 1, ptr %246, align 8
  store i8 84, ptr %247, align 1
  store i8 4, ptr %248, align 2
  store i8 8, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %669 = load i8, ptr %252, align 4
  %670 = lshr i8 %669, 1
  %671 = zext i8 %670 to i16
  store i16 %671, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %672 = load ptr, ptr %251, align 4
  %673 = tail call i32 @i2c_transfer(ptr noundef %672, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %674

674:                                              ; preds = %668, %666, %663
  %675 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %676 = icmp slt i32 %675, 0
  br i1 %676, label %677, label %682

677:                                              ; preds = %674
  %678 = load i32, ptr @debug, align 4
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %688, label %680

680:                                              ; preds = %677
  %681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %688

682:                                              ; preds = %674
  store i8 1, ptr %246, align 8
  store i8 85, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 55, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %683 = load i8, ptr %252, align 4
  %684 = lshr i8 %683, 1
  %685 = zext i8 %684 to i16
  store i16 %685, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %686 = load ptr, ptr %251, align 4
  %687 = tail call i32 @i2c_transfer(ptr noundef %686, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %688

688:                                              ; preds = %682, %680, %677
  %689 = load i8, ptr %618, align 4
  %690 = icmp eq i8 %689, 0
  br i1 %690, label %691, label %739

691:                                              ; preds = %688
  %692 = load i16, ptr %42, align 2
  %693 = icmp eq i16 %692, 3
  %694 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %695 = icmp slt i32 %694, 0
  br i1 %693, label %696, label %708

696:                                              ; preds = %691
  br i1 %695, label %697, label %702

697:                                              ; preds = %696
  %698 = load i32, ptr @debug, align 4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %725, label %700

700:                                              ; preds = %697
  %701 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %725

702:                                              ; preds = %696
  store i8 0, ptr %246, align 8
  store i8 -76, ptr %247, align 1
  store i8 -97, ptr %248, align 2
  store i8 -49, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %703 = load i8, ptr %252, align 4
  %704 = lshr i8 %703, 1
  %705 = zext i8 %704 to i16
  store i16 %705, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %706 = load ptr, ptr %251, align 4
  %707 = tail call i32 @i2c_transfer(ptr noundef %706, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %725

708:                                              ; preds = %691
  br i1 %695, label %709, label %714

709:                                              ; preds = %708
  %710 = load i32, ptr @debug, align 4
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %725, label %712

712:                                              ; preds = %709
  %713 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %725

714:                                              ; preds = %708
  %715 = shl i16 %692, 14
  %716 = add i16 %715, -16384
  store i8 0, ptr %246, align 8
  store i8 -76, ptr %247, align 1
  %717 = lshr exact i16 %716, 8
  %718 = trunc i16 %717 to i8
  %719 = or i8 %718, 15
  store i8 %719, ptr %248, align 2
  store i8 -49, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %720 = load i8, ptr %252, align 4
  %721 = lshr i8 %720, 1
  %722 = zext i8 %721 to i16
  store i16 %722, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %723 = load ptr, ptr %251, align 4
  %724 = tail call i32 @i2c_transfer(ptr noundef %723, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %725

725:                                              ; preds = %714, %712, %709, %702, %700, %697
  %726 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %727 = icmp slt i32 %726, 0
  br i1 %727, label %728, label %733

728:                                              ; preds = %725
  %729 = load i32, ptr @debug, align 4
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %767, label %731

731:                                              ; preds = %728
  %732 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %767

733:                                              ; preds = %725
  store i8 1, ptr %246, align 8
  store i8 82, ptr %247, align 1
  store i8 20, ptr %248, align 2
  store i8 -92, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %734 = load i8, ptr %252, align 4
  %735 = lshr i8 %734, 1
  %736 = zext i8 %735 to i16
  store i16 %736, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %737 = load ptr, ptr %251, align 4
  %738 = tail call i32 @i2c_transfer(ptr noundef %737, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %767

739:                                              ; preds = %688
  %740 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %741 = icmp slt i32 %740, 0
  br i1 %741, label %742, label %747

742:                                              ; preds = %739
  %743 = load i32, ptr @debug, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %753, label %745

745:                                              ; preds = %742
  %746 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %753

747:                                              ; preds = %739
  store i8 0, ptr %246, align 8
  store i8 -76, ptr %247, align 1
  store i8 95, ptr %248, align 2
  store i8 -49, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %748 = load i8, ptr %252, align 4
  %749 = lshr i8 %748, 1
  %750 = zext i8 %749 to i16
  store i16 %750, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %751 = load ptr, ptr %251, align 4
  %752 = tail call i32 @i2c_transfer(ptr noundef %751, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %753

753:                                              ; preds = %747, %745, %742
  %754 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %756, label %761

756:                                              ; preds = %753
  %757 = load i32, ptr @debug, align 4
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %767, label %759

759:                                              ; preds = %756
  %760 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %767

761:                                              ; preds = %753
  store i8 1, ptr %246, align 8
  store i8 82, ptr %247, align 1
  store i8 20, ptr %248, align 2
  store i8 -124, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %762 = load i8, ptr %252, align 4
  %763 = lshr i8 %762, 1
  %764 = zext i8 %763 to i16
  store i16 %764, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %765 = load ptr, ptr %251, align 4
  %766 = tail call i32 @i2c_transfer(ptr noundef %765, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %767

767:                                              ; preds = %761, %759, %756, %733, %731, %728
  %768 = phi ptr [ @coff_thres_1seg, %728 ], [ @coff_thres_1seg, %731 ], [ @coff_thres_1seg, %733 ], [ @coff_thres_3seg, %756 ], [ @coff_thres_3seg, %759 ], [ @coff_thres_3seg, %761 ]
  %769 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %770 = icmp slt i32 %769, 0
  br i1 %770, label %771, label %776

771:                                              ; preds = %767
  %772 = load i32, ptr @debug, align 4
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %782, label %774

774:                                              ; preds = %771
  %775 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %782

776:                                              ; preds = %767
  store i8 0, ptr %246, align 8
  store i8 -28, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 1, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %777 = load i8, ptr %252, align 4
  %778 = lshr i8 %777, 1
  %779 = zext i8 %778 to i16
  store i16 %779, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %780 = load ptr, ptr %251, align 4
  %781 = tail call i32 @i2c_transfer(ptr noundef %780, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %782

782:                                              ; preds = %776, %774, %771
  %783 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 205) #14
  %784 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %785 = icmp slt i32 %784, 0
  br i1 %785, label %786, label %791

786:                                              ; preds = %782
  %787 = load i32, ptr @debug, align 4
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %801, label %789

789:                                              ; preds = %786
  %790 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %801

791:                                              ; preds = %782
  store i8 0, ptr %246, align 8
  store i8 -51, ptr %247, align 1
  %792 = lshr i16 %783, 8
  %793 = trunc i16 %792 to i8
  store i8 %793, ptr %248, align 2
  %794 = trunc i16 %783 to i8
  %795 = and i8 %794, -16
  store i8 %795, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %796 = load i8, ptr %252, align 4
  %797 = lshr i8 %796, 1
  %798 = zext i8 %797 to i16
  store i16 %798, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %799 = load ptr, ptr %251, align 4
  %800 = tail call i32 @i2c_transfer(ptr noundef %799, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %801

801:                                              ; preds = %791, %789, %786
  %802 = load i8, ptr %618, align 4
  %803 = icmp eq i8 %802, 0
  br i1 %803, label %804, label %821

804:                                              ; preds = %801
  %805 = load i32, ptr %539, align 4
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %821

807:                                              ; preds = %804
  %808 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %809 = icmp slt i32 %808, 0
  br i1 %809, label %810, label %815

810:                                              ; preds = %807
  %811 = load i32, ptr @debug, align 4
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %821, label %813

813:                                              ; preds = %810
  %814 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %821

815:                                              ; preds = %807
  store i8 1, ptr %246, align 8
  store i8 9, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 15, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %816 = load i8, ptr %252, align 4
  %817 = lshr i8 %816, 1
  %818 = zext i8 %817 to i16
  store i16 %818, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %819 = load ptr, ptr %251, align 4
  %820 = tail call i32 @i2c_transfer(ptr noundef %819, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %821

821:                                              ; preds = %815, %813, %810, %804, %801
  br label %822

822:                                              ; preds = %872, %821
  %823 = phi i32 [ %873, %872 ], [ 0, %821 ]
  %824 = phi i16 [ %874, %872 ], [ 0, %821 ]
  %825 = getelementptr i16, ptr %768, i32 %823
  %826 = load i16, ptr %825, align 2
  %827 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %828 = icmp slt i32 %827, 0
  br i1 %828, label %829, label %834

829:                                              ; preds = %822
  %830 = load i32, ptr @debug, align 4
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %849, label %832

832:                                              ; preds = %829
  %833 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %849

834:                                              ; preds = %822
  %835 = trunc i32 %823 to i16
  %836 = add i16 %835, 181
  %837 = lshr i16 %836, 8
  %838 = trunc i16 %837 to i8
  store i8 %838, ptr %246, align 8
  %839 = trunc i16 %824 to i8
  %840 = add i8 %839, -75
  store i8 %840, ptr %247, align 1
  %841 = lshr i16 %826, 8
  %842 = trunc i16 %841 to i8
  store i8 %842, ptr %248, align 2
  %843 = trunc i16 %826 to i8
  store i8 %843, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %844 = load i8, ptr %252, align 4
  %845 = lshr i8 %844, 1
  %846 = zext i8 %845 to i16
  store i16 %846, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %847 = load ptr, ptr %251, align 4
  %848 = tail call i32 @i2c_transfer(ptr noundef %847, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %849

849:                                              ; preds = %834, %832, %829
  %850 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %851 = icmp slt i32 %850, 0
  br i1 %851, label %852, label %857

852:                                              ; preds = %849
  %853 = load i32, ptr @debug, align 4
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %872, label %855

855:                                              ; preds = %852
  %856 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %872

857:                                              ; preds = %849
  %858 = trunc i32 %823 to i16
  %859 = add i16 %858, 184
  %860 = lshr i16 %859, 8
  %861 = trunc i16 %860 to i8
  store i8 %861, ptr %246, align 8
  %862 = trunc i16 %824 to i8
  %863 = add i8 %862, -72
  store i8 %863, ptr %247, align 1
  %864 = lshr i16 %826, 8
  %865 = trunc i16 %864 to i8
  store i8 %865, ptr %248, align 2
  %866 = trunc i16 %826 to i8
  store i8 %866, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %867 = load i8, ptr %252, align 4
  %868 = lshr i8 %867, 1
  %869 = zext i8 %868 to i16
  store i16 %869, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %870 = load ptr, ptr %251, align 4
  %871 = tail call i32 @i2c_transfer(ptr noundef %870, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %872

872:                                              ; preds = %857, %855, %852
  %873 = add nuw nsw i32 %823, 1
  %874 = add nuw nsw i16 %824, 1
  %875 = icmp eq i32 %873, 3
  br i1 %875, label %876, label %822

876:                                              ; preds = %872
  %877 = load i16, ptr %622, align 2
  %878 = load i16, ptr %193, align 4
  %879 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %880 = icmp slt i32 %879, 0
  br i1 %880, label %881, label %886

881:                                              ; preds = %876
  %882 = load i32, ptr @debug, align 4
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %897, label %884

884:                                              ; preds = %881
  %885 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %897

886:                                              ; preds = %876
  %887 = xor i16 %877, -1
  %888 = or i16 %878, %887
  store i8 1, ptr %246, align 8
  store i8 10, ptr %247, align 1
  %889 = lshr i16 %888, 8
  %890 = trunc i16 %889 to i8
  store i8 %890, ptr %248, align 2
  %891 = trunc i16 %888 to i8
  store i8 %891, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %892 = load i8, ptr %252, align 4
  %893 = lshr i8 %892, 1
  %894 = zext i8 %893 to i16
  store i16 %894, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %895 = load ptr, ptr %251, align 4
  %896 = tail call i32 @i2c_transfer(ptr noundef %895, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %897

897:                                              ; preds = %886, %884, %881
  %898 = load i8, ptr %618, align 4
  %899 = icmp eq i8 %898, 0
  %900 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %901 = icmp slt i32 %900, 0
  br i1 %899, label %902, label %914

902:                                              ; preds = %897
  br i1 %901, label %903, label %908

903:                                              ; preds = %902
  %904 = load i32, ptr @debug, align 4
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %926, label %906

906:                                              ; preds = %903
  %907 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %926

908:                                              ; preds = %902
  store i8 0, ptr %246, align 8
  store i8 -78, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 64, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %909 = load i8, ptr %252, align 4
  %910 = lshr i8 %909, 1
  %911 = zext i8 %910 to i16
  store i16 %911, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %912 = load ptr, ptr %251, align 4
  %913 = tail call i32 @i2c_transfer(ptr noundef %912, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %926

914:                                              ; preds = %897
  br i1 %901, label %915, label %920

915:                                              ; preds = %914
  %916 = load i32, ptr @debug, align 4
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %926, label %918

918:                                              ; preds = %915
  %919 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %926

920:                                              ; preds = %914
  store i8 0, ptr %246, align 8
  store i8 -78, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 32, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %921 = load i8, ptr %252, align 4
  %922 = lshr i8 %921, 1
  %923 = zext i8 %922 to i16
  store i16 %923, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %924 = load ptr, ptr %251, align 4
  %925 = tail call i32 @i2c_transfer(ptr noundef %924, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %926

926:                                              ; preds = %920, %918, %915, %908, %906, %903
  %927 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 19
  %928 = load i8, ptr %927, align 2
  %929 = zext i8 %928 to i32
  %930 = udiv i8 %928, 3
  %931 = zext i8 %930 to i32
  %932 = icmp ugt i8 %928, 38
  br i1 %932, label %1117, label %933

933:                                              ; preds = %926
  %934 = load ptr, ptr %4, align 8
  %935 = getelementptr inbounds %struct.dvb_frontend, ptr %934, i32 0, i32 8, i32 6
  %936 = load i32, ptr %935, align 4
  %937 = icmp eq i32 %936, 3
  %938 = select i1 %937, ptr @lut_prbs_4k, ptr @lut_prbs_8k
  %939 = icmp eq i32 %936, 0
  %940 = select i1 %939, ptr @lut_prbs_2k, ptr %938
  %941 = getelementptr [13 x i16], ptr %940, i32 0, i32 %931
  %942 = load i16, ptr %941, align 2
  %943 = load i32, ptr @debug, align 4
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1117, label %945

945:                                              ; preds = %933
  %946 = zext i16 %942 to i32
  %947 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.dib8000_get_init_prbs, i32 noundef %931, i32 noundef %929, i32 noundef %946) #15
  br label %1117

948:                                              ; preds = %531
  %949 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 30
  store i16 8191, ptr %949, align 2
  %950 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 18
  %951 = load i8, ptr %950, align 4
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %953, label %1088

953:                                              ; preds = %948
  %954 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %955 = icmp slt i32 %954, 0
  br i1 %955, label %956, label %961

956:                                              ; preds = %953
  %957 = load i32, ptr @debug, align 4
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %967, label %959

959:                                              ; preds = %956
  %960 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %967

961:                                              ; preds = %953
  store i8 0, ptr %246, align 8
  store i8 -76, ptr %247, align 1
  store i8 4, ptr %248, align 2
  store i8 9, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %962 = load i8, ptr %252, align 4
  %963 = lshr i8 %962, 1
  %964 = zext i8 %963 to i16
  store i16 %964, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %965 = load ptr, ptr %251, align 4
  %966 = tail call i32 @i2c_transfer(ptr noundef %965, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %967

967:                                              ; preds = %961, %959, %956
  %968 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %969 = icmp slt i32 %968, 0
  br i1 %969, label %970, label %975

970:                                              ; preds = %967
  %971 = load i32, ptr @debug, align 4
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %981, label %973

973:                                              ; preds = %970
  %974 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %981

975:                                              ; preds = %967
  store i8 0, ptr %246, align 8
  store i8 -69, ptr %247, align 1
  store i8 65, ptr %248, align 2
  store i8 2, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %976 = load i8, ptr %252, align 4
  %977 = lshr i8 %976, 1
  %978 = zext i8 %977 to i16
  store i16 %978, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %979 = load ptr, ptr %251, align 4
  %980 = tail call i32 @i2c_transfer(ptr noundef %979, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %981

981:                                              ; preds = %975, %973, %970
  br label %982

982:                                              ; preds = %1001, %981
  %983 = phi i16 [ %1002, %1001 ], [ 0, %981 ]
  %984 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %985 = icmp slt i32 %984, 0
  br i1 %985, label %986, label %991

986:                                              ; preds = %982
  %987 = load i32, ptr @debug, align 4
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1001, label %989

989:                                              ; preds = %986
  %990 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1001

991:                                              ; preds = %982
  %992 = add nuw nsw i16 %983, 181
  %993 = lshr i16 %992, 8
  %994 = trunc i16 %993 to i8
  store i8 %994, ptr %246, align 8
  %995 = trunc i16 %992 to i8
  store i8 %995, ptr %247, align 1
  store i8 40, ptr %248, align 2
  store i8 0, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %996 = load i8, ptr %252, align 4
  %997 = lshr i8 %996, 1
  %998 = zext i8 %997 to i16
  store i16 %998, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %999 = load ptr, ptr %251, align 4
  %1000 = tail call i32 @i2c_transfer(ptr noundef %999, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1001

1001:                                             ; preds = %991, %989, %986
  %1002 = add nuw nsw i16 %983, 1
  %1003 = icmp ult i16 %983, 5
  br i1 %1003, label %982, label %1004

1004:                                             ; preds = %1001
  %1005 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1006 = icmp slt i32 %1005, 0
  br i1 %1006, label %1007, label %1012

1007:                                             ; preds = %1004
  %1008 = load i32, ptr @debug, align 4
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1018, label %1010

1010:                                             ; preds = %1007
  %1011 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1018

1012:                                             ; preds = %1004
  store i8 1, ptr %246, align 8
  store i8 82, ptr %247, align 1
  store i8 20, ptr %248, align 2
  store i8 97, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1013 = load i8, ptr %252, align 4
  %1014 = lshr i8 %1013, 1
  %1015 = zext i8 %1014 to i16
  store i16 %1015, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1016 = load ptr, ptr %251, align 4
  %1017 = tail call i32 @i2c_transfer(ptr noundef %1016, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1018

1018:                                             ; preds = %1012, %1010, %1007
  %1019 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1020 = icmp slt i32 %1019, 0
  br i1 %1020, label %1021, label %1026

1021:                                             ; preds = %1018
  %1022 = load i32, ptr @debug, align 4
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1032, label %1024

1024:                                             ; preds = %1021
  %1025 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1032

1026:                                             ; preds = %1018
  store i8 1, ptr %246, align 8
  store i8 84, ptr %247, align 1
  store i8 2, ptr %248, align 2
  store i8 6, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1027 = load i8, ptr %252, align 4
  %1028 = lshr i8 %1027, 1
  %1029 = zext i8 %1028 to i16
  store i16 %1029, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1030 = load ptr, ptr %251, align 4
  %1031 = tail call i32 @i2c_transfer(ptr noundef %1030, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1032

1032:                                             ; preds = %1026, %1024, %1021
  %1033 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1034 = icmp slt i32 %1033, 0
  br i1 %1034, label %1035, label %1040

1035:                                             ; preds = %1032
  %1036 = load i32, ptr @debug, align 4
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1046, label %1038

1038:                                             ; preds = %1035
  %1039 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1046

1040:                                             ; preds = %1032
  store i8 1, ptr %246, align 8
  store i8 85, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 39, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1041 = load i8, ptr %252, align 4
  %1042 = lshr i8 %1041, 1
  %1043 = zext i8 %1042 to i16
  store i16 %1043, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1044 = load ptr, ptr %251, align 4
  %1045 = tail call i32 @i2c_transfer(ptr noundef %1044, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1046

1046:                                             ; preds = %1040, %1038, %1035
  %1047 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1048 = icmp slt i32 %1047, 0
  br i1 %1048, label %1049, label %1054

1049:                                             ; preds = %1046
  %1050 = load i32, ptr @debug, align 4
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1060, label %1052

1052:                                             ; preds = %1049
  %1053 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1060

1054:                                             ; preds = %1046
  store i8 0, ptr %246, align 8
  store i8 -28, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 0, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1055 = load i8, ptr %252, align 4
  %1056 = lshr i8 %1055, 1
  %1057 = zext i8 %1056 to i16
  store i16 %1057, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1058 = load ptr, ptr %251, align 4
  %1059 = tail call i32 @i2c_transfer(ptr noundef %1058, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1060

1060:                                             ; preds = %1054, %1052, %1049
  %1061 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1062 = icmp slt i32 %1061, 0
  br i1 %1062, label %1063, label %1068

1063:                                             ; preds = %1060
  %1064 = load i32, ptr @debug, align 4
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1074, label %1066

1066:                                             ; preds = %1063
  %1067 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1074

1068:                                             ; preds = %1060
  store i8 1, ptr %246, align 8
  store i8 9, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 31, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1069 = load i8, ptr %252, align 4
  %1070 = lshr i8 %1069, 1
  %1071 = zext i8 %1070 to i16
  store i16 %1071, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1072 = load ptr, ptr %251, align 4
  %1073 = tail call i32 @i2c_transfer(ptr noundef %1072, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1074

1074:                                             ; preds = %1068, %1066, %1063
  %1075 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1076 = icmp slt i32 %1075, 0
  br i1 %1076, label %1077, label %1082

1077:                                             ; preds = %1074
  %1078 = load i32, ptr @debug, align 4
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1088, label %1080

1080:                                             ; preds = %1077
  %1081 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1088

1082:                                             ; preds = %1074
  store i8 0, ptr %246, align 8
  store i8 -51, ptr %247, align 1
  store i8 32, ptr %248, align 2
  store i8 15, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1083 = load i8, ptr %252, align 4
  %1084 = lshr i8 %1083, 1
  %1085 = zext i8 %1084 to i16
  store i16 %1085, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1086 = load ptr, ptr %251, align 4
  %1087 = tail call i32 @i2c_transfer(ptr noundef %1086, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1088

1088:                                             ; preds = %1082, %1080, %1077, %948
  %1089 = getelementptr inbounds %struct.dib8000_config, ptr %0, i32 0, i32 6
  %1090 = load ptr, ptr %1089, align 8
  %1091 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1090, i32 0, i32 13
  %1092 = load i32, ptr %1091, align 4
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1094, label %1116

1094:                                             ; preds = %1088
  %1095 = load i16, ptr %949, align 2
  %1096 = load i16, ptr %193, align 4
  %1097 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1098 = icmp slt i32 %1097, 0
  br i1 %1098, label %1099, label %1104

1099:                                             ; preds = %1094
  %1100 = load i32, ptr @debug, align 4
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1116, label %1102

1102:                                             ; preds = %1099
  %1103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1116

1104:                                             ; preds = %1094
  %1105 = xor i16 %1095, -1
  %1106 = or i16 %1096, %1105
  store i8 1, ptr %246, align 8
  store i8 10, ptr %247, align 1
  %1107 = lshr i16 %1106, 8
  %1108 = trunc i16 %1107 to i8
  store i8 %1108, ptr %248, align 2
  %1109 = trunc i16 %1106 to i8
  %1110 = or i8 %1109, 64
  store i8 %1110, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1111 = load i8, ptr %252, align 4
  %1112 = lshr i8 %1111, 1
  %1113 = zext i8 %1112 to i16
  store i16 %1113, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1114 = load ptr, ptr %251, align 4
  %1115 = tail call i32 @i2c_transfer(ptr noundef %1114, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1116

1116:                                             ; preds = %1104, %1102, %1099, %1088
  tail call fastcc void @dib8000_load_ana_fe_coefs(ptr noundef %0, ptr noundef nonnull @ana_fe_coeff_13seg) #14
  br label %1117

1117:                                             ; preds = %1116, %945, %933, %926
  %1118 = phi i16 [ 4095, %1116 ], [ 0, %926 ], [ %942, %945 ], [ %942, %933 ]
  %1119 = load ptr, ptr %4, align 8
  %1120 = load i16, ptr %193, align 4
  %1121 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1122 = icmp slt i32 %1121, 0
  br i1 %1122, label %1123, label %1128

1123:                                             ; preds = %1117
  %1124 = load i32, ptr @debug, align 4
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1137, label %1126

1126:                                             ; preds = %1123
  %1127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1137

1128:                                             ; preds = %1117
  store i8 1, ptr %246, align 8
  store i8 96, ptr %247, align 1
  %1129 = lshr i16 %1120, 8
  %1130 = trunc i16 %1129 to i8
  store i8 %1130, ptr %248, align 2
  %1131 = trunc i16 %1120 to i8
  store i8 %1131, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1132 = load i8, ptr %252, align 4
  %1133 = lshr i8 %1132, 1
  %1134 = zext i8 %1133 to i16
  store i16 %1134, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1135 = load ptr, ptr %251, align 4
  %1136 = tail call i32 @i2c_transfer(ptr noundef %1135, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1137

1137:                                             ; preds = %1128, %1126, %1123
  %1138 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 30
  %1139 = load i16, ptr %1138, align 2
  %1140 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1141 = icmp slt i32 %1140, 0
  br i1 %1141, label %1142, label %1147

1142:                                             ; preds = %1137
  %1143 = load i32, ptr @debug, align 4
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1156, label %1145

1145:                                             ; preds = %1142
  %1146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1156

1147:                                             ; preds = %1137
  store i8 1, ptr %246, align 8
  store i8 97, ptr %247, align 1
  %1148 = lshr i16 %1139, 8
  %1149 = trunc i16 %1148 to i8
  store i8 %1149, ptr %248, align 2
  %1150 = trunc i16 %1139 to i8
  store i8 %1150, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1151 = load i8, ptr %252, align 4
  %1152 = lshr i8 %1151, 1
  %1153 = zext i8 %1152 to i16
  store i16 %1153, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1154 = load ptr, ptr %251, align 4
  %1155 = tail call i32 @i2c_transfer(ptr noundef %1154, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1156

1156:                                             ; preds = %1147, %1145, %1142
  %1157 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 18
  %1158 = load i8, ptr %1157, align 1
  %1159 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1160 = icmp slt i32 %1159, 0
  br i1 %1160, label %1161, label %1166

1161:                                             ; preds = %1156
  %1162 = load i32, ptr @debug, align 4
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1174, label %1164

1164:                                             ; preds = %1161
  %1165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1174

1166:                                             ; preds = %1156
  %1167 = shl i8 %1158, 1
  %1168 = or i8 %1167, %1158
  store i8 1, ptr %246, align 8
  store i8 95, ptr %247, align 1
  store i8 %1168, ptr %248, align 2
  store i8 -43, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1169 = load i8, ptr %252, align 4
  %1170 = lshr i8 %1169, 1
  %1171 = zext i8 %1170 to i16
  store i16 %1171, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1172 = load ptr, ptr %251, align 4
  %1173 = tail call i32 @i2c_transfer(ptr noundef %1172, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1174

1174:                                             ; preds = %1166, %1164, %1161
  %1175 = load i8, ptr %1157, align 1
  %1176 = icmp eq i8 %1175, 0
  br i1 %1176, label %1264, label %1177

1177:                                             ; preds = %1174
  %1178 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 6
  %1179 = load i32, ptr %1178, align 4
  switch i32 %1179, label %1214 [
    i32 0, label %1180
    i32 3, label %1197
  ]

1180:                                             ; preds = %1177
  %1181 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 17
  %1182 = load i8, ptr %1181, align 4
  %1183 = icmp eq i8 %1182, 0
  %1184 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 23, i32 0, i32 2
  %1185 = load i32, ptr %1184, align 4
  %1186 = icmp eq i32 %1185, 12
  br i1 %1183, label %1187, label %1189

1187:                                             ; preds = %1180
  %1188 = select i1 %1186, ptr @coeff_2k_sb_1seg_dqpsk, ptr @coeff_2k_sb_1seg
  br label %1231

1189:                                             ; preds = %1180
  %1190 = getelementptr %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 23, i32 1, i32 2
  %1191 = load i32, ptr %1190, align 4
  %1192 = icmp eq i32 %1191, 12
  br i1 %1186, label %1193, label %1195

1193:                                             ; preds = %1189
  %1194 = select i1 %1192, ptr @coeff_2k_sb_3seg_0dqpsk_1dqpsk, ptr @coeff_2k_sb_3seg_0dqpsk
  br label %1231

1195:                                             ; preds = %1189
  %1196 = select i1 %1192, ptr @coeff_2k_sb_3seg_1dqpsk, ptr @coeff_2k_sb_3seg
  br label %1231

1197:                                             ; preds = %1177
  %1198 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 17
  %1199 = load i8, ptr %1198, align 4
  %1200 = icmp eq i8 %1199, 0
  %1201 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 23, i32 0, i32 2
  %1202 = load i32, ptr %1201, align 4
  %1203 = icmp eq i32 %1202, 12
  br i1 %1200, label %1204, label %1206

1204:                                             ; preds = %1197
  %1205 = select i1 %1203, ptr @coeff_4k_sb_1seg_dqpsk, ptr @coeff_4k_sb_1seg
  br label %1231

1206:                                             ; preds = %1197
  %1207 = getelementptr %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 23, i32 1, i32 2
  %1208 = load i32, ptr %1207, align 4
  %1209 = icmp eq i32 %1208, 12
  br i1 %1203, label %1210, label %1212

1210:                                             ; preds = %1206
  %1211 = select i1 %1209, ptr @coeff_4k_sb_3seg_0dqpsk_1dqpsk, ptr @coeff_4k_sb_3seg_0dqpsk
  br label %1231

1212:                                             ; preds = %1206
  %1213 = select i1 %1209, ptr @coeff_4k_sb_3seg_1dqpsk, ptr @coeff_4k_sb_3seg
  br label %1231

1214:                                             ; preds = %1177
  %1215 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 17
  %1216 = load i8, ptr %1215, align 4
  %1217 = icmp eq i8 %1216, 0
  %1218 = getelementptr inbounds %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 23, i32 0, i32 2
  %1219 = load i32, ptr %1218, align 4
  %1220 = icmp eq i32 %1219, 12
  br i1 %1217, label %1221, label %1223

1221:                                             ; preds = %1214
  %1222 = select i1 %1220, ptr @coeff_8k_sb_1seg_dqpsk, ptr @coeff_8k_sb_1seg
  br label %1231

1223:                                             ; preds = %1214
  %1224 = getelementptr %struct.dvb_frontend, ptr %1119, i32 0, i32 8, i32 23, i32 1, i32 2
  %1225 = load i32, ptr %1224, align 4
  %1226 = icmp eq i32 %1225, 12
  br i1 %1220, label %1227, label %1229

1227:                                             ; preds = %1223
  %1228 = select i1 %1226, ptr @coeff_8k_sb_3seg_0dqpsk_1dqpsk, ptr @coeff_8k_sb_3seg_0dqpsk
  br label %1231

1229:                                             ; preds = %1223
  %1230 = select i1 %1226, ptr @coeff_8k_sb_3seg_1dqpsk, ptr @coeff_8k_sb_3seg
  br label %1231

1231:                                             ; preds = %1229, %1227, %1221, %1212, %1210, %1204, %1195, %1193, %1187
  %1232 = phi ptr [ %1188, %1187 ], [ %1194, %1193 ], [ %1196, %1195 ], [ %1205, %1204 ], [ %1211, %1210 ], [ %1213, %1212 ], [ %1222, %1221 ], [ %1228, %1227 ], [ %1230, %1229 ]
  br label %1233

1233:                                             ; preds = %1260, %1231
  %1234 = phi i32 [ 0, %1231 ], [ %1261, %1260 ]
  %1235 = phi i16 [ 0, %1231 ], [ %1262, %1260 ]
  %1236 = getelementptr i16, ptr %1232, i32 %1234
  %1237 = load i16, ptr %1236, align 2
  %1238 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1239 = icmp slt i32 %1238, 0
  br i1 %1239, label %1240, label %1245

1240:                                             ; preds = %1233
  %1241 = load i32, ptr @debug, align 4
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1260, label %1243

1243:                                             ; preds = %1240
  %1244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1260

1245:                                             ; preds = %1233
  %1246 = trunc i32 %1234 to i16
  %1247 = add i16 %1246, 343
  %1248 = lshr i16 %1247, 8
  %1249 = trunc i16 %1248 to i8
  store i8 %1249, ptr %246, align 8
  %1250 = trunc i16 %1235 to i8
  %1251 = add i8 %1250, 87
  store i8 %1251, ptr %247, align 1
  %1252 = lshr i16 %1237, 8
  %1253 = trunc i16 %1252 to i8
  store i8 %1253, ptr %248, align 2
  %1254 = trunc i16 %1237 to i8
  store i8 %1254, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1255 = load i8, ptr %252, align 4
  %1256 = lshr i8 %1255, 1
  %1257 = zext i8 %1256 to i16
  store i16 %1257, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1258 = load ptr, ptr %251, align 4
  %1259 = tail call i32 @i2c_transfer(ptr noundef %1258, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1260

1260:                                             ; preds = %1245, %1243, %1240
  %1261 = add nuw nsw i32 %1234, 1
  %1262 = add nuw nsw i16 %1235, 1
  %1263 = icmp eq i32 %1261, 8
  br i1 %1263, label %1264, label %1233

1264:                                             ; preds = %1260, %1174
  tail call fastcc void @dib8000_set_subchannel_prbs(ptr noundef %0, i16 noundef zeroext %1118)
  %1265 = load i16, ptr %193, align 4
  %1266 = zext i16 %1265 to i32
  %1267 = xor i32 %1266, -1
  %1268 = and i32 %1266, 1
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1270, label %1278

1270:                                             ; preds = %1264
  %1271 = load i16, ptr %1138, align 2
  %1272 = zext i16 %1271 to i32
  %1273 = and i32 %1267, 2
  %1274 = and i32 %1273, %1272
  %1275 = lshr exact i32 %1274, 1
  %1276 = trunc i32 %1275 to i16
  %1277 = xor i16 %1276, 1
  br label %1278

1278:                                             ; preds = %1270, %1264
  %1279 = phi i16 [ %1277, %1270 ], [ 0, %1264 ]
  %1280 = phi i16 [ 1, %1270 ], [ 0, %1264 ]
  br label %1281

1281:                                             ; preds = %1309, %1278
  %1282 = phi i32 [ %1312, %1309 ], [ 1, %1278 ]
  %1283 = phi i16 [ %1311, %1309 ], [ %1279, %1278 ]
  %1284 = phi i16 [ %1310, %1309 ], [ %1280, %1278 ]
  %1285 = shl nuw i32 1, %1282
  %1286 = and i32 %1285, %1266
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1288, label %1309

1288:                                             ; preds = %1281
  %1289 = load i16, ptr %1138, align 2
  %1290 = zext i16 %1289 to i32
  %1291 = add nsw i32 %1282, -1
  %1292 = xor i32 %1290, -1
  %1293 = or i32 %1292, %1266
  %1294 = lshr i32 %1293, %1291
  %1295 = and i32 %1294, 1
  %1296 = shl nuw i32 %1295, %1282
  %1297 = trunc i32 %1296 to i16
  %1298 = add i16 %1284, %1297
  %1299 = icmp eq i32 %1282, 12
  %1300 = shl i32 2, %1282
  %1301 = and i32 %1300, %1267
  %1302 = and i32 %1301, %1290
  %1303 = icmp eq i32 %1302, 0
  %1304 = select i1 %1299, i1 true, i1 %1303
  %1305 = zext i1 %1304 to i32
  %1306 = shl nuw i32 %1305, %1282
  %1307 = trunc i32 %1306 to i16
  %1308 = add i16 %1283, %1307
  br label %1309

1309:                                             ; preds = %1288, %1281
  %1310 = phi i16 [ %1298, %1288 ], [ %1284, %1281 ]
  %1311 = phi i16 [ %1308, %1288 ], [ %1283, %1281 ]
  %1312 = add nuw nsw i32 %1282, 1
  %1313 = icmp eq i32 %1312, 13
  br i1 %1313, label %1314, label %1281, !llvm.loop !12

1314:                                             ; preds = %1309
  %1315 = trunc i16 %1311 to i8
  %1316 = lshr i16 %1311, 8
  %1317 = trunc i16 %1316 to i8
  %1318 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1319 = icmp slt i32 %1318, 0
  br i1 %1319, label %1320, label %1325

1320:                                             ; preds = %1314
  %1321 = load i32, ptr @debug, align 4
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1334, label %1323

1323:                                             ; preds = %1320
  %1324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1334

1325:                                             ; preds = %1314
  %1326 = lshr i16 %1310, 8
  %1327 = trunc i16 %1326 to i8
  %1328 = trunc i16 %1310 to i8
  store i8 0, ptr %246, align 8
  store i8 -34, ptr %247, align 1
  store i8 %1327, ptr %248, align 2
  store i8 %1328, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1329 = load i8, ptr %252, align 4
  %1330 = lshr i8 %1329, 1
  %1331 = zext i8 %1330 to i16
  store i16 %1331, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1332 = load ptr, ptr %251, align 4
  %1333 = tail call i32 @i2c_transfer(ptr noundef %1332, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1334

1334:                                             ; preds = %1325, %1323, %1320
  %1335 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1336 = icmp slt i32 %1335, 0
  br i1 %1336, label %1337, label %1342

1337:                                             ; preds = %1334
  %1338 = load i32, ptr @debug, align 4
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1348, label %1340

1340:                                             ; preds = %1337
  %1341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1348

1342:                                             ; preds = %1334
  store i8 0, ptr %246, align 8
  store i8 -33, ptr %247, align 1
  store i8 %1317, ptr %248, align 2
  store i8 %1315, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1343 = load i8, ptr %252, align 4
  %1344 = lshr i8 %1343, 1
  %1345 = zext i8 %1344 to i16
  store i16 %1345, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1346 = load ptr, ptr %251, align 4
  %1347 = tail call i32 @i2c_transfer(ptr noundef %1346, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1348

1348:                                             ; preds = %1342, %1340, %1337
  %1349 = load i16, ptr %1138, align 2
  %1350 = load i16, ptr %193, align 4
  %1351 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1352 = icmp slt i32 %1351, 0
  br i1 %1352, label %1353, label %1358

1353:                                             ; preds = %1348
  %1354 = load i32, ptr @debug, align 4
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1369, label %1356

1356:                                             ; preds = %1353
  %1357 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1369

1358:                                             ; preds = %1348
  %1359 = xor i16 %1349, -1
  %1360 = or i16 %1350, %1359
  store i8 0, ptr %246, align 8
  store i8 -67, ptr %247, align 1
  %1361 = lshr i16 %1360, 8
  %1362 = trunc i16 %1361 to i8
  store i8 %1362, ptr %248, align 2
  %1363 = trunc i16 %1360 to i8
  store i8 %1363, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1364 = load i8, ptr %252, align 4
  %1365 = lshr i8 %1364, 1
  %1366 = zext i8 %1365 to i16
  store i16 %1366, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1367 = load ptr, ptr %251, align 4
  %1368 = tail call i32 @i2c_transfer(ptr noundef %1367, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1369

1369:                                             ; preds = %1358, %1356, %1353
  %1370 = load i16, ptr %1138, align 2
  %1371 = load i16, ptr %193, align 4
  %1372 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1373 = icmp slt i32 %1372, 0
  br i1 %1373, label %1374, label %1379

1374:                                             ; preds = %1369
  %1375 = load i32, ptr @debug, align 4
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1390, label %1377

1377:                                             ; preds = %1374
  %1378 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1390

1379:                                             ; preds = %1369
  %1380 = xor i16 %1370, -1
  %1381 = or i16 %1371, %1380
  store i8 0, ptr %246, align 8
  store i8 -64, ptr %247, align 1
  %1382 = lshr i16 %1381, 8
  %1383 = trunc i16 %1382 to i8
  store i8 %1383, ptr %248, align 2
  %1384 = trunc i16 %1381 to i8
  store i8 %1384, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1385 = load i8, ptr %252, align 4
  %1386 = lshr i8 %1385, 1
  %1387 = zext i8 %1386 to i16
  store i16 %1387, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1388 = load ptr, ptr %251, align 4
  %1389 = tail call i32 @i2c_transfer(ptr noundef %1388, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1390

1390:                                             ; preds = %1379, %1377, %1374
  %1391 = load i16, ptr %1138, align 2
  %1392 = load i16, ptr %193, align 4
  %1393 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1394 = icmp slt i32 %1393, 0
  br i1 %1394, label %1395, label %1400

1395:                                             ; preds = %1390
  %1396 = load i32, ptr @debug, align 4
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1411, label %1398

1398:                                             ; preds = %1395
  %1399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1411

1400:                                             ; preds = %1390
  %1401 = xor i16 %1391, -1
  %1402 = or i16 %1392, %1401
  store i8 0, ptr %246, align 8
  store i8 -31, ptr %247, align 1
  %1403 = lshr i16 %1402, 8
  %1404 = trunc i16 %1403 to i8
  store i8 %1404, ptr %248, align 2
  %1405 = trunc i16 %1402 to i8
  store i8 %1405, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1406 = load i8, ptr %252, align 4
  %1407 = lshr i8 %1406, 1
  %1408 = zext i8 %1407 to i16
  store i16 %1408, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1409 = load ptr, ptr %251, align 4
  %1410 = tail call i32 @i2c_transfer(ptr noundef %1409, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1411

1411:                                             ; preds = %1400, %1398, %1395
  br i1 %6, label %1412, label %1434

1412:                                             ; preds = %1411
  %1413 = load i16, ptr %1138, align 2
  %1414 = load i16, ptr %193, align 4
  %1415 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1416 = icmp slt i32 %1415, 0
  br i1 %1416, label %1417, label %1422

1417:                                             ; preds = %1412
  %1418 = load i32, ptr @debug, align 4
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1448, label %1420

1420:                                             ; preds = %1417
  %1421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1448

1422:                                             ; preds = %1412
  %1423 = xor i16 %1413, -1
  %1424 = or i16 %1414, %1423
  store i8 1, ptr %246, align 8
  store i8 32, ptr %247, align 1
  %1425 = lshr i16 %1424, 8
  %1426 = trunc i16 %1425 to i8
  %1427 = and i8 %1426, 31
  store i8 %1427, ptr %248, align 2
  %1428 = trunc i16 %1424 to i8
  store i8 %1428, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1429 = load i8, ptr %252, align 4
  %1430 = lshr i8 %1429, 1
  %1431 = zext i8 %1430 to i16
  store i16 %1431, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1432 = load ptr, ptr %251, align 4
  %1433 = tail call i32 @i2c_transfer(ptr noundef %1432, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1448

1434:                                             ; preds = %1411
  %1435 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1436 = icmp slt i32 %1435, 0
  br i1 %1436, label %1437, label %1442

1437:                                             ; preds = %1434
  %1438 = load i32, ptr @debug, align 4
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1448, label %1440

1440:                                             ; preds = %1437
  %1441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1448

1442:                                             ; preds = %1434
  store i8 1, ptr %246, align 8
  store i8 32, ptr %247, align 1
  store i8 31, ptr %248, align 2
  store i8 -1, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1443 = load i8, ptr %252, align 4
  %1444 = lshr i8 %1443, 1
  %1445 = zext i8 %1444 to i16
  store i16 %1445, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1446 = load ptr, ptr %251, align 4
  %1447 = tail call i32 @i2c_transfer(ptr noundef %1446, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1448

1448:                                             ; preds = %1442, %1440, %1437, %1422, %1420, %1417
  %1449 = load i16, ptr %1138, align 2
  %1450 = load i16, ptr %193, align 4
  %1451 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1452 = icmp slt i32 %1451, 0
  br i1 %1452, label %1453, label %1458

1453:                                             ; preds = %1448
  %1454 = load i32, ptr @debug, align 4
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1469, label %1456

1456:                                             ; preds = %1453
  %1457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1469

1458:                                             ; preds = %1448
  %1459 = xor i16 %1450, -1
  %1460 = and i16 %1449, %1459
  store i8 0, ptr %246, align 8
  store i8 -45, ptr %247, align 1
  %1461 = lshr i16 %1460, 8
  %1462 = trunc i16 %1461 to i8
  store i8 %1462, ptr %248, align 2
  %1463 = trunc i16 %1460 to i8
  store i8 %1463, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1464 = load i8, ptr %252, align 4
  %1465 = lshr i8 %1464, 1
  %1466 = zext i8 %1465 to i16
  store i16 %1466, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1467 = load ptr, ptr %251, align 4
  %1468 = tail call i32 @i2c_transfer(ptr noundef %1467, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1469

1469:                                             ; preds = %1458, %1456, %1453
  %1470 = load i16, ptr %1138, align 2
  %1471 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1472 = icmp slt i32 %1471, 0
  br i1 %1472, label %1473, label %1478

1473:                                             ; preds = %1469
  %1474 = load i32, ptr @debug, align 4
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1489, label %1476

1476:                                             ; preds = %1473
  %1477 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1489

1478:                                             ; preds = %1469
  %1479 = xor i16 %1470, -1
  store i8 1, ptr %246, align 8
  store i8 31, ptr %247, align 1
  %1480 = lshr i16 %1479, 8
  %1481 = trunc i16 %1480 to i8
  %1482 = or i8 %1481, 16
  store i8 %1482, ptr %248, align 2
  %1483 = trunc i16 %1479 to i8
  store i8 %1483, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1484 = load i8, ptr %252, align 4
  %1485 = lshr i8 %1484, 1
  %1486 = zext i8 %1485 to i16
  store i16 %1486, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1487 = load ptr, ptr %251, align 4
  %1488 = tail call i32 @i2c_transfer(ptr noundef %1487, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1489

1489:                                             ; preds = %1478, %1476, %1473
  %1490 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1491 = icmp slt i32 %1490, 0
  br i1 %1491, label %1492, label %1497

1492:                                             ; preds = %1489
  %1493 = load i32, ptr @debug, align 4
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1503, label %1495

1495:                                             ; preds = %1492
  %1496 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1503

1497:                                             ; preds = %1489
  store i8 0, ptr %246, align 8
  store i8 -78, ptr %247, align 1
  store i8 0, ptr %248, align 2
  store i8 32, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1498 = load i8, ptr %252, align 4
  %1499 = lshr i8 %1498, 1
  %1500 = zext i8 %1499 to i16
  store i16 %1500, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1501 = load ptr, ptr %251, align 4
  %1502 = tail call i32 @i2c_transfer(ptr noundef %1501, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1503

1503:                                             ; preds = %1497, %1495, %1492
  %1504 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 0
  %1505 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 0, i32 2
  %1506 = load i32, ptr %1505, align 4
  %1507 = icmp eq i32 %1506, 12
  %1508 = select i1 %1507, i16 5, i16 1
  %1509 = load i8, ptr %1504, align 4
  %1510 = zext i8 %1509 to i16
  %1511 = mul nuw nsw i16 %1508, %1510
  %1512 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1
  %1513 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 1, i32 2
  %1514 = load i32, ptr %1513, align 4
  %1515 = icmp eq i32 %1514, 12
  %1516 = select i1 %1515, i16 5, i16 1
  %1517 = load i8, ptr %1512, align 4
  %1518 = zext i8 %1517 to i16
  %1519 = mul nuw nsw i16 %1516, %1518
  %1520 = add nuw nsw i16 %1519, %1511
  %1521 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2
  %1522 = getelementptr %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 23, i32 2, i32 2
  %1523 = load i32, ptr %1522, align 4
  %1524 = icmp eq i32 %1523, 12
  %1525 = select i1 %1524, i16 5, i16 1
  %1526 = load i8, ptr %1521, align 4
  %1527 = zext i8 %1526 to i16
  %1528 = mul nuw nsw i16 %1525, %1527
  %1529 = add nuw nsw i16 %1528, %1520
  %1530 = shl i16 %1529, 7
  %1531 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1532 = icmp slt i32 %1531, 0
  br i1 %1532, label %1533, label %1538

1533:                                             ; preds = %1503
  %1534 = load i32, ptr @debug, align 4
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1547, label %1536

1536:                                             ; preds = %1533
  %1537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1547

1538:                                             ; preds = %1503
  store i8 1, ptr %246, align 8
  store i8 34, ptr %247, align 1
  %1539 = lshr i16 %1530, 8
  %1540 = trunc i16 %1539 to i8
  store i8 %1540, ptr %248, align 2
  %1541 = trunc i16 %1530 to i8
  store i8 %1541, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1542 = load i8, ptr %252, align 4
  %1543 = lshr i8 %1542, 1
  %1544 = zext i8 %1543 to i16
  store i16 %1544, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1545 = load ptr, ptr %251, align 4
  %1546 = tail call i32 @i2c_transfer(ptr noundef %1545, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1547

1547:                                             ; preds = %1538, %1536, %1533
  %1548 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1549 = icmp slt i32 %1548, 0
  br i1 %1549, label %1550, label %1555

1550:                                             ; preds = %1547
  %1551 = load i32, ptr @debug, align 4
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1564, label %1553

1553:                                             ; preds = %1550
  %1554 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1564

1555:                                             ; preds = %1547
  store i8 1, ptr %246, align 8
  store i8 35, ptr %247, align 1
  %1556 = lshr i16 %1530, 8
  %1557 = trunc i16 %1556 to i8
  store i8 %1557, ptr %248, align 2
  %1558 = trunc i16 %1530 to i8
  store i8 %1558, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1559 = load i8, ptr %252, align 4
  %1560 = lshr i8 %1559, 1
  %1561 = zext i8 %1560 to i16
  store i16 %1561, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1562 = load ptr, ptr %251, align 4
  %1563 = tail call i32 @i2c_transfer(ptr noundef %1562, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1564

1564:                                             ; preds = %1555, %1553, %1550
  %1565 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1566 = icmp slt i32 %1565, 0
  br i1 %1566, label %1567, label %1572

1567:                                             ; preds = %1564
  %1568 = load i32, ptr @debug, align 4
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1581, label %1570

1570:                                             ; preds = %1567
  %1571 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1581

1572:                                             ; preds = %1564
  store i8 1, ptr %246, align 8
  store i8 36, ptr %247, align 1
  %1573 = lshr i16 %1530, 8
  %1574 = trunc i16 %1573 to i8
  store i8 %1574, ptr %248, align 2
  %1575 = trunc i16 %1530 to i8
  store i8 %1575, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1576 = load i8, ptr %252, align 4
  %1577 = lshr i8 %1576, 1
  %1578 = zext i8 %1577 to i16
  store i16 %1578, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1579 = load ptr, ptr %251, align 4
  %1580 = tail call i32 @i2c_transfer(ptr noundef %1579, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1581

1581:                                             ; preds = %1572, %1570, %1567
  %1582 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 18
  %1583 = load i8, ptr %1582, align 4
  %1584 = icmp eq i8 %1583, 0
  br i1 %1584, label %1585, label %1599

1585:                                             ; preds = %1581
  %1586 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #14
  %1587 = icmp slt i32 %1586, 0
  br i1 %1587, label %1588, label %1593

1588:                                             ; preds = %1585
  %1589 = load i32, ptr @debug, align 4
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1599, label %1591

1591:                                             ; preds = %1588
  %1592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %1599

1593:                                             ; preds = %1585
  store i8 0, ptr %246, align 8
  store i8 -6, ptr %247, align 1
  store i8 12, ptr %248, align 2
  store i8 -43, ptr %249, align 1
  store i64 17179869184, ptr %250, align 8
  %1594 = load i8, ptr %252, align 4
  %1595 = lshr i8 %1594, 1
  %1596 = zext i8 %1595 to i16
  store i16 %1596, ptr %250, align 8
  store ptr %246, ptr %253, align 8
  %1597 = load ptr, ptr %251, align 4
  %1598 = tail call i32 @i2c_transfer(ptr noundef %1597, ptr noundef %250, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %1599

1599:                                             ; preds = %1593, %1591, %1588, %1581
  store i8 0, ptr %1582, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_set_subchannel_prbs(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %0, i16 noundef zeroext 1)
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %32

12:                                               ; preds = %2
  %13 = shl i16 %1, 2
  %14 = and i16 %3, 3
  %15 = or i16 %14, %13
  %16 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 0, ptr %16, align 8
  %17 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 1, ptr %17, align 1
  %18 = lshr i16 %13, 8
  %19 = trunc i16 %18 to i8
  %20 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %19, ptr %20, align 2
  %21 = trunc i16 %15 to i8
  %22 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %23, align 8
  %29 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %16, ptr %29, align 8
  %30 = load ptr, ptr %24, align 4
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %23, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %4) #14
  br label %32

32:                                               ; preds = %12, %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_wait_lock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %7 = mul i32 %4, %1
  %8 = mul i32 %3, %1
  %9 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  %11 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  %12 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  %13 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  br label %18

18:                                               ; preds = %72, %5
  %19 = phi i16 [ 11, %5 ], [ %73, %72 ]
  %20 = phi i32 [ 0, %5 ], [ %30, %72 ]
  %21 = trunc i16 %19 to i15
  switch i15 %21, label %29 [
    i15 11, label %22
    i15 13, label %27
    i15 15, label %28
  ]

22:                                               ; preds = %18
  %23 = load i16, ptr %9, align 2
  %24 = icmp eq i16 %23, -32624
  %25 = select i1 %24, i32 %3, i32 %2
  %26 = mul i32 %25, %1
  br label %29

27:                                               ; preds = %18
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %27, %22, %18
  %30 = phi i32 [ %8, %27 ], [ %7, %28 ], [ %20, %18 ], [ %26, %22 ]
  %31 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, ptr @debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %51

38:                                               ; preds = %29
  %39 = lshr i32 %30, 16
  %40 = lshr i16 %19, 8
  %41 = trunc i16 %40 to i8
  store i8 %41, ptr %10, align 8
  %42 = trunc i16 %19 to i8
  store i8 %42, ptr %11, align 1
  %43 = lshr i32 %30, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %12, align 2
  %45 = trunc i32 %39 to i8
  store i8 %45, ptr %13, align 1
  store i64 17179869184, ptr %14, align 8
  %46 = load i8, ptr %16, align 4
  %47 = lshr i8 %46, 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %14, align 8
  store ptr %10, ptr %17, align 8
  %49 = load ptr, ptr %15, align 4
  %50 = tail call i32 @i2c_transfer(ptr noundef %49, ptr noundef %14, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %6) #14
  br label %51

51:                                               ; preds = %38, %36, %33
  %52 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #14
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %72

59:                                               ; preds = %51
  %60 = add nuw nsw i16 %19, 1
  %61 = lshr i16 %60, 8
  %62 = trunc i16 %61 to i8
  store i8 %62, ptr %10, align 8
  %63 = trunc i16 %60 to i8
  store i8 %63, ptr %11, align 1
  %64 = lshr i32 %30, 8
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %12, align 2
  %66 = trunc i32 %30 to i8
  store i8 %66, ptr %13, align 1
  store i64 17179869184, ptr %14, align 8
  %67 = load i8, ptr %16, align 4
  %68 = lshr i8 %67, 1
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %14, align 8
  store ptr %10, ptr %17, align 8
  %70 = load ptr, ptr %15, align 4
  %71 = tail call i32 @i2c_transfer(ptr noundef %70, ptr noundef %14, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %6) #14
  br label %72

72:                                               ; preds = %59, %57, %54
  %73 = add nuw nsw i16 %19, 2
  %74 = icmp ult i16 %19, 14
  br i1 %74, label %18, label %75

75:                                               ; preds = %72
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8000_load_ana_fe_coefs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %8 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  %9 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  %10 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  %11 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  %12 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  %13 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %15 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  br label %16

16:                                               ; preds = %43, %6
  %17 = phi i32 [ 0, %6 ], [ %44, %43 ]
  %18 = phi i16 [ 0, %6 ], [ %45, %43 ]
  %19 = getelementptr i16, ptr %1, i32 %17
  %20 = load i16, ptr %19, align 2
  %21 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #14
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %43

28:                                               ; preds = %16
  %29 = trunc i32 %17 to i16
  %30 = add i16 %29, 117
  %31 = lshr i16 %30, 8
  %32 = trunc i16 %31 to i8
  store i8 %32, ptr %8, align 8
  %33 = trunc i16 %18 to i8
  %34 = add i8 %33, 117
  store i8 %34, ptr %9, align 1
  %35 = lshr i16 %20, 8
  %36 = trunc i16 %35 to i8
  store i8 %36, ptr %10, align 2
  %37 = trunc i16 %20 to i8
  store i8 %37, ptr %11, align 1
  store i64 17179869184, ptr %12, align 8
  %38 = load i8, ptr %14, align 4
  %39 = lshr i8 %38, 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %12, align 8
  store ptr %8, ptr %15, align 8
  %41 = load ptr, ptr %13, align 4
  %42 = tail call i32 @i2c_transfer(ptr noundef %41, ptr noundef %12, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %7) #14
  br label %43

43:                                               ; preds = %28, %26, %23
  %44 = add nuw nsw i32 %17, 1
  %45 = add nuw nsw i16 %18, 1
  %46 = icmp eq i32 %44, 24
  br i1 %46, label %47, label %16

47:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib8096p_cfg_DibTx(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.dib8096p_cfg_DibTx) #15
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 25
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %31

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %18, align 8
  %19 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 79, ptr %19, align 1
  %20 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %20, align 2
  %21 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = lshr i8 %25, 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %22, align 8
  %28 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %18, ptr %28, align 8
  %29 = load ptr, ptr %23, align 4
  %30 = tail call i32 @i2c_transfer(ptr noundef %29, ptr noundef %22, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %31

31:                                               ; preds = %17, %15, %12
  %32 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %56

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %40, align 8
  %41 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 67, ptr %41, align 1
  %42 = lshr i32 %1, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %43, ptr %44, align 2
  %45 = trunc i32 %1 to i8
  %46 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %49 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = lshr i8 %50, 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %47, align 8
  %53 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %40, ptr %53, align 8
  %54 = load ptr, ptr %48, align 4
  %55 = tail call i32 @i2c_transfer(ptr noundef %54, ptr noundef %47, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %56

56:                                               ; preds = %39, %37, %34
  %57 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %78

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %65, align 8
  %66 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 69, ptr %66, align 1
  %67 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %67, align 2
  %68 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 5, ptr %68, align 1
  %69 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %69, align 8
  %70 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %71 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = lshr i8 %72, 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %69, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %65, ptr %75, align 8
  %76 = load ptr, ptr %70, align 4
  %77 = tail call i32 @i2c_transfer(ptr noundef %76, ptr noundef %69, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %78

78:                                               ; preds = %64, %62, %59
  %79 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %103

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %87, align 8
  %88 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 70, ptr %88, align 1
  %89 = lshr i32 %2, 8
  %90 = trunc i32 %89 to i8
  %91 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 %90, ptr %91, align 2
  %92 = trunc i32 %2 to i8
  %93 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %94, align 8
  %95 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %96 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %97 = load i8, ptr %96, align 4
  %98 = lshr i8 %97, 1
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %94, align 8
  %100 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %87, ptr %100, align 8
  %101 = load ptr, ptr %95, align 4
  %102 = tail call i32 @i2c_transfer(ptr noundef %101, ptr noundef %94, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %103

103:                                              ; preds = %86, %84, %81
  %104 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, ptr @debug, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %125

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %112, align 8
  %113 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 72, ptr %113, align 1
  %114 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %114, align 2
  %115 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %116, align 8
  %117 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %118 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %119 = load i8, ptr %118, align 4
  %120 = lshr i8 %119, 1
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %116, align 8
  %122 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %112, ptr %122, align 8
  %123 = load ptr, ptr %117, align 4
  %124 = tail call i32 @i2c_transfer(ptr noundef %123, ptr noundef %116, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %125

125:                                              ; preds = %111, %109, %106
  %126 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, ptr @debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %147

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %134, align 8
  %135 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 73, ptr %135, align 1
  %136 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %136, align 2
  %137 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %137, align 1
  %138 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %138, align 8
  %139 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %140 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = lshr i8 %141, 1
  %143 = zext i8 %142 to i16
  store i16 %143, ptr %138, align 8
  %144 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %134, ptr %144, align 8
  %145 = load ptr, ptr %139, align 4
  %146 = tail call i32 @i2c_transfer(ptr noundef %145, ptr noundef %138, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %147

147:                                              ; preds = %133, %131, %128
  %148 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, ptr @debug, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %150
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %169

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %156, align 8
  %157 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 74, ptr %157, align 1
  %158 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %158, align 2
  %159 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %159, align 1
  %160 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %160, align 8
  %161 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %162 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %163 = load i8, ptr %162, align 4
  %164 = lshr i8 %163, 1
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %160, align 8
  %166 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %156, ptr %166, align 8
  %167 = load ptr, ptr %161, align 4
  %168 = tail call i32 @i2c_transfer(ptr noundef %167, ptr noundef %160, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %169

169:                                              ; preds = %155, %153, %150
  %170 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, ptr @debug, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %172
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %191

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %178, align 8
  %179 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 76, ptr %179, align 1
  %180 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %180, align 2
  %181 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %181, align 1
  %182 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %182, align 8
  %183 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %184 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %185 = load i8, ptr %184, align 4
  %186 = lshr i8 %185, 1
  %187 = zext i8 %186 to i16
  store i16 %187, ptr %182, align 8
  %188 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %178, ptr %188, align 8
  %189 = load ptr, ptr %183, align 4
  %190 = tail call i32 @i2c_transfer(ptr noundef %189, ptr noundef %182, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %191

191:                                              ; preds = %177, %175, %172
  %192 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, ptr @debug, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %194
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %213

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 23
  store i8 6, ptr %200, align 8
  %201 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 1
  store i8 79, ptr %201, align 1
  %202 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 2
  store i8 0, ptr %202, align 2
  %203 = getelementptr %struct.dib8000_state, ptr %0, i32 0, i32 23, i32 3
  store i8 0, ptr %203, align 1
  %204 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22
  store i64 17179869184, ptr %204, align 8
  %205 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1
  %206 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 1, i32 1
  %207 = load i8, ptr %206, align 4
  %208 = lshr i8 %207, 1
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %204, align 8
  %210 = getelementptr inbounds %struct.dib8000_state, ptr %0, i32 0, i32 22, i32 0, i32 3
  store ptr %200, ptr %210, align 8
  %211 = load ptr, ptr %205, align 4
  %212 = tail call i32 @i2c_transfer(ptr noundef %211, ptr noundef %204, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %9) #14
  br label %213

213:                                              ; preds = %199, %197, %194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_get_snr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib8000_state, ptr %3, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, -32624
  %7 = select i1 %6, i16 544, i16 542
  %8 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %3, i16 noundef zeroext %7)
  %9 = zext i16 %8 to i32
  %10 = lshr i32 %9, 6
  %11 = and i32 %10, 255
  %12 = and i32 %9, 63
  %13 = and i32 %9, 32
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 -64
  %16 = add nuw nsw i32 %12, 16
  %17 = add nsw i32 %16, %15
  %18 = shl i32 %11, %17
  %19 = load i16, ptr %4, align 2
  %20 = icmp eq i16 %19, -32624
  %21 = select i1 %20, i16 545, i16 543
  %22 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %3, i16 noundef zeroext %21)
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %1
  %25 = zext i16 %22 to i32
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %25, 63
  %29 = select i1 %27, i32 0, i32 -64
  %30 = lshr i32 %25, 6
  %31 = and i32 %30, 255
  %32 = add nuw nsw i32 %28, 16
  %33 = add nsw i32 %32, %29
  %34 = shl i32 %31, %33
  %35 = udiv i32 %34, %18
  %36 = shl i32 %35, 16
  %37 = shl i32 %34, 16
  %38 = mul i32 %36, %18
  %39 = sub i32 %37, %38
  %40 = udiv i32 %39, %18
  %41 = add i32 %36, %40
  br label %42

42:                                               ; preds = %24, %1
  %43 = phi i32 [ %41, %24 ], [ -1, %1 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @dib8000_get_time_us(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib8000_state, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = icmp sgt i32 %1, -1
  %8 = add i32 %1, 1
  %9 = select i1 %7, i32 %8, i32 3
  %10 = select i1 %7, i32 %1, i32 0
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 8, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds [3 x i32], ptr @switch.table.dib8000_get_time_us, i32 0, i32 %13
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %17, %15 ], [ 32, %2 ]
  %20 = icmp slt i32 %10, %9
  br i1 %20, label %21, label %102

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 8, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i32 %23, 3
  %26 = select i1 %25, i32 768, i32 384
  %27 = select i1 %24, i32 1536, i32 %26
  br label %28

28:                                               ; preds = %64, %21
  %29 = phi i32 [ 0, %21 ], [ %67, %64 ]
  %30 = phi i32 [ 1, %21 ], [ %66, %64 ]
  %31 = phi i32 [ 0, %21 ], [ %65, %64 ]
  %32 = phi i32 [ %10, %21 ], [ %68, %64 ]
  %33 = getelementptr %struct.dvb_frontend, ptr %6, i32 0, i32 8, i32 23, i32 %32
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = add i8 %34, -14
  %37 = icmp ult i8 %36, -13
  br i1 %37, label %64, label %38

38:                                               ; preds = %28
  %39 = getelementptr %struct.dvb_frontend, ptr %6, i32 0, i32 8, i32 23, i32 %32, i32 2
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %42 [
    i32 12, label %43
    i32 0, label %43
    i32 1, label %41
  ]

41:                                               ; preds = %38
  br label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %41, %38, %38
  %44 = phi i32 [ 6, %42 ], [ 4, %41 ], [ 2, %38 ], [ 2, %38 ]
  %45 = getelementptr %struct.dvb_frontend, ptr %6, i32 0, i32 8, i32 23, i32 %32, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %47, 5
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = getelementptr inbounds [5 x i32], ptr @switch.table.dib8000_get_time_us.123, i32 0, i32 %47
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [5 x i32], ptr @switch.table.dib8000_get_time_us.124, i32 0, i32 %47
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi i32 [ %51, %49 ], [ 7, %43 ]
  %56 = phi i32 [ %53, %49 ], [ 8, %43 ]
  %57 = getelementptr %struct.dvb_frontend, ptr %6, i32 0, i32 8, i32 23, i32 %32, i32 3
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %27, %35
  %61 = mul nuw nsw i32 %60, %44
  %62 = mul nuw nsw i32 %61, %55
  %63 = add i32 %62, %31
  br label %64

64:                                               ; preds = %54, %28
  %65 = phi i32 [ %31, %28 ], [ %63, %54 ]
  %66 = phi i32 [ %30, %28 ], [ %56, %54 ]
  %67 = phi i32 [ %29, %28 ], [ %59, %54 ]
  %68 = add nsw i32 %32, 1
  %69 = icmp eq i32 %68, %9
  br i1 %69, label %70, label %28

70:                                               ; preds = %64
  %71 = icmp eq i32 %65, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %70
  %73 = mul i32 %66, 1575000000
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i32 %73, -1
  br i1 %75, label %76, label %79, !prof !9

76:                                               ; preds = %72
  %77 = udiv i32 %73, %19
  %78 = zext i32 %77 to i64
  br label %82

79:                                               ; preds = %72
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %74) #17, !srcloc !10
  %81 = extractvalue { i64, i64 } %80, 1
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i64 [ %78, %76 ], [ %81, %79 ]
  %84 = lshr i32 %65, 1
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %74, %85
  %87 = add i64 %86, %83
  %88 = icmp ult i64 %87, 4294967296
  br i1 %88, label %89, label %92, !prof !9

89:                                               ; preds = %82
  %90 = trunc i64 %87 to i32
  %91 = udiv i32 %90, %65
  br label %96

92:                                               ; preds = %82
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %87) #17, !srcloc !10
  %94 = extractvalue { i64, i64 } %93, 1
  %95 = trunc i64 %94 to i32
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i32 [ %91, %89 ], [ %95, %92 ]
  %98 = mul i32 %67, 96768
  %99 = udiv i32 %98, %19
  %100 = add i32 %97, %98
  %101 = add i32 %100, %99
  br label %102

102:                                              ; preds = %96, %70, %18
  %103 = phi i32 [ %101, %96 ], [ 0, %70 ], [ 0, %18 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib8000_i2c_read16(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 20, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = lshr i8 %6, 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  %15 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @mutex_lock_interruptible(ptr noundef %16) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_i2c_read16) #15
  br label %52

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %26 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %25, align 4
  store i8 3, ptr %27, align 1
  %28 = trunc i16 %1 to i8
  %29 = load ptr, ptr %25, align 4
  %30 = getelementptr i8, ptr %29, i32 1
  store i8 %28, ptr %30, align 1
  %31 = getelementptr inbounds %struct.i2c_device, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %14, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %3, i32 noundef 2) #14
  %35 = icmp ne i32 %34, 2
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = zext i16 %1 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib8000_i2c_read16, i32 noundef %40) #15
  br label %42

42:                                               ; preds = %39, %24
  %43 = load ptr, ptr %14, align 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  %46 = shl nuw i16 %45, 8
  %47 = getelementptr i8, ptr %43, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  %50 = or i16 %46, %49
  %51 = load ptr, ptr %15, align 4
  call void @mutex_unlock(ptr noundef %51) #14
  br label %52

52:                                               ; preds = %42, %22, %19
  %53 = phi i16 [ %50, %42 ], [ 0, %22 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i16 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib8096p_tuner_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %102 [
    i8 18, label %60
    i8 20, label %9
    i8 36, label %10
    i8 26, label %11
    i8 34, label %12
    i8 51, label %13
    i8 52, label %14
    i8 53, label %15
    i8 54, label %16
    i8 55, label %17
    i8 56, label %18
    i8 57, label %19
    i8 42, label %20
    i8 43, label %21
    i8 44, label %22
    i8 45, label %23
    i8 46, label %24
    i8 47, label %25
    i8 48, label %26
    i8 49, label %27
    i8 50, label %28
    i8 62, label %29
    i8 63, label %30
    i8 64, label %31
    i8 37, label %32
    i8 38, label %33
    i8 39, label %34
    i8 40, label %35
    i8 29, label %36
    i8 31, label %48
  ]

9:                                                ; preds = %3
  br label %60

10:                                               ; preds = %3
  br label %60

11:                                               ; preds = %3
  br label %60

12:                                               ; preds = %3
  br label %60

13:                                               ; preds = %3
  br label %60

14:                                               ; preds = %3
  br label %60

15:                                               ; preds = %3
  br label %60

16:                                               ; preds = %3
  br label %60

17:                                               ; preds = %3
  br label %60

18:                                               ; preds = %3
  br label %60

19:                                               ; preds = %3
  br label %60

20:                                               ; preds = %3
  br label %60

21:                                               ; preds = %3
  br label %60

22:                                               ; preds = %3
  br label %60

23:                                               ; preds = %3
  br label %60

24:                                               ; preds = %3
  br label %60

25:                                               ; preds = %3
  br label %60

26:                                               ; preds = %3
  br label %60

27:                                               ; preds = %3
  br label %60

28:                                               ; preds = %3
  br label %60

29:                                               ; preds = %3
  br label %60

30:                                               ; preds = %3
  br label %60

31:                                               ; preds = %3
  br label %60

32:                                               ; preds = %3
  br label %60

33:                                               ; preds = %3
  br label %60

34:                                               ; preds = %3
  br label %60

35:                                               ; preds = %3
  br label %60

36:                                               ; preds = %3
  %37 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 921)
  %38 = lshr i16 %37, 12
  %39 = or i16 %38, 924
  %40 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %39)
  %41 = lshr i16 %40, 8
  %42 = trunc i16 %41 to i8
  %43 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %44 = load ptr, ptr %43, align 4
  store i8 %42, ptr %44, align 1
  %45 = trunc i16 %40 to i8
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr i8, ptr %46, i32 1
  store i8 %45, ptr %47, align 1
  br label %253

48:                                               ; preds = %3
  %49 = icmp eq i32 %2, 1
  br i1 %49, label %50, label %253

50:                                               ; preds = %48
  %51 = getelementptr i8, ptr %7, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 3
  %54 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext 921)
  %55 = and i16 %54, -12289
  %56 = zext i8 %53 to i16
  %57 = shl nuw nsw i16 %56, 12
  %58 = or i16 %57, %55
  %59 = tail call fastcc i32 @dib8000_write_word(ptr noundef %5, i16 noundef zeroext 921, i16 noundef zeroext %58)
  br label %253

60:                                               ; preds = %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %3
  %61 = phi i16 [ 1921, %9 ], [ 1922, %10 ], [ 1923, %11 ], [ 1924, %12 ], [ 1926, %13 ], [ 1927, %14 ], [ 1928, %15 ], [ 1929, %16 ], [ 1930, %17 ], [ 1931, %18 ], [ 1932, %19 ], [ 1935, %20 ], [ 1936, %21 ], [ 1937, %22 ], [ 1938, %23 ], [ 1939, %24 ], [ 1940, %25 ], [ 1941, %26 ], [ 1942, %27 ], [ 1943, %28 ], [ 1944, %29 ], [ 1945, %30 ], [ 1948, %31 ], [ 936, %32 ], [ 937, %33 ], [ 938, %34 ], [ 939, %35 ], [ 1920, %3 ]
  %62 = icmp eq i32 %2, 1
  br i1 %62, label %63, label %93

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %7, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr i8, ptr %7, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 25
  %69 = tail call i32 @mutex_lock_interruptible(ptr noundef %68) #14
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %253, label %74

74:                                               ; preds = %71
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %253

76:                                               ; preds = %63
  %77 = lshr i16 %61, 8
  %78 = trunc i16 %77 to i8
  %79 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 23
  store i8 %78, ptr %79, align 8
  %80 = trunc i16 %61 to i8
  %81 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 1
  store i8 %80, ptr %81, align 1
  %82 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 2
  store i8 %65, ptr %82, align 2
  %83 = getelementptr %struct.dib8000_state, ptr %5, i32 0, i32 23, i32 3
  store i8 %67, ptr %83, align 1
  %84 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22
  store i64 17179869184, ptr %84, align 8
  %85 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1
  %86 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 1, i32 1
  %87 = load i8, ptr %86, align 4
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %84, align 8
  %90 = getelementptr inbounds %struct.dib8000_state, ptr %5, i32 0, i32 22, i32 0, i32 3
  store ptr %79, ptr %90, align 8
  %91 = load ptr, ptr %85, align 4
  %92 = tail call i32 @i2c_transfer(ptr noundef %91, ptr noundef %84, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %68) #14
  br label %253

93:                                               ; preds = %60
  %94 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %5, i16 noundef zeroext %61) #14
  %95 = lshr i16 %94, 8
  %96 = trunc i16 %95 to i8
  %97 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %98 = load ptr, ptr %97, align 4
  store i8 %96, ptr %98, align 1
  %99 = trunc i16 %94 to i8
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr i8, ptr %100, i32 1
  store i8 %99, ptr %101, align 1
  br label %253

102:                                              ; preds = %3
  %103 = icmp ult i8 %8, 16
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = add nsw i8 %8, -1
  br label %116

106:                                              ; preds = %102
  switch i8 %8, label %109 [
    i8 17, label %116
    i8 16, label %107
    i8 19, label %108
  ]

107:                                              ; preds = %106
  br label %116

108:                                              ; preds = %106
  br label %116

109:                                              ; preds = %106
  %110 = add i8 %8, -21
  %111 = icmp ult i8 %110, 5
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = add nsw i8 %8, -3
  br label %116

114:                                              ; preds = %109
  switch i8 %8, label %253 [
    i8 28, label %116
    i8 99, label %115
  ]

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %114, %112, %108, %107, %106, %104
  %117 = phi i8 [ %105, %104 ], [ 17, %107 ], [ %113, %112 ], [ 99, %115 ], [ 16, %108 ], [ 15, %106 ], [ 23, %114 ]
  store i8 %117, ptr %7, align 1
  %118 = icmp eq i32 %2, 1
  %119 = load ptr, ptr %4, align 8
  %120 = load ptr, ptr %6, align 4
  %121 = load i8, ptr %120, align 1
  br i1 %118, label %122, label %189

122:                                              ; preds = %132, %116
  %123 = phi i16 [ %125, %132 ], [ 1000, %116 ]
  %124 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %119, i16 noundef zeroext 1984) #14
  %125 = add nsw i16 %123, -1
  %126 = icmp eq i16 %125, 0
  %127 = load i32, ptr @debug, align 4
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.dib8096p_tuner_write_serpar) #15
  br label %137

132:                                              ; preds = %122
  %133 = and i16 %124, 2
  %134 = icmp ne i16 %133, 0
  %135 = icmp ne i16 %125, 0
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %122, label %137

137:                                              ; preds = %132, %130
  %138 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 25
  %139 = tail call i32 @mutex_lock_interruptible(ptr noundef %138) #14
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32, ptr @debug, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %141
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %162

146:                                              ; preds = %137
  %147 = and i8 %121, 63
  %148 = or i8 %147, 64
  %149 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 23
  store i8 7, ptr %149, align 8
  %150 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 1
  store i8 -63, ptr %150, align 1
  %151 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 2
  store i8 0, ptr %151, align 2
  %152 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 3
  store i8 %148, ptr %152, align 1
  %153 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 22
  store i64 17179869184, ptr %153, align 8
  %154 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 1
  %155 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 1, i32 1
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %153, align 8
  %159 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 22, i32 0, i32 3
  store ptr %149, ptr %159, align 8
  %160 = load ptr, ptr %154, align 4
  %161 = tail call i32 @i2c_transfer(ptr noundef %160, ptr noundef %153, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %138) #14
  br label %162

162:                                              ; preds = %146, %144, %141
  %163 = load ptr, ptr %6, align 4
  %164 = getelementptr i8, ptr %163, i32 1
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr i8, ptr %163, i32 2
  %167 = load i8, ptr %166, align 1
  %168 = tail call i32 @mutex_lock_interruptible(ptr noundef %138) #14
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load i32, ptr @debug, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %253, label %173

173:                                              ; preds = %170
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %253

175:                                              ; preds = %162
  %176 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 23
  store i8 7, ptr %176, align 8
  %177 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 1
  store i8 -62, ptr %177, align 1
  %178 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 2
  store i8 %165, ptr %178, align 2
  %179 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 3
  store i8 %167, ptr %179, align 1
  %180 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 22
  store i64 17179869184, ptr %180, align 8
  %181 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 1
  %182 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 1, i32 1
  %183 = load i8, ptr %182, align 4
  %184 = lshr i8 %183, 1
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %180, align 8
  %186 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 22, i32 0, i32 3
  store ptr %176, ptr %186, align 8
  %187 = load ptr, ptr %181, align 4
  %188 = tail call i32 @i2c_transfer(ptr noundef %187, ptr noundef %180, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %138) #14
  br label %253

189:                                              ; preds = %199, %116
  %190 = phi i16 [ %192, %199 ], [ 1000, %116 ]
  %191 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %119, i16 noundef zeroext 1984) #14
  %192 = add nsw i16 %190, -1
  %193 = icmp eq i16 %192, 0
  %194 = load i32, ptr @debug, align 4
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.dib8096p_tuner_read_serpar) #15
  br label %204

199:                                              ; preds = %189
  %200 = and i16 %191, 2
  %201 = icmp ne i16 %200, 0
  %202 = icmp ne i16 %192, 0
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %189, label %204

204:                                              ; preds = %199, %197
  %205 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 25
  %206 = tail call i32 @mutex_lock_interruptible(ptr noundef %205) #14
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %228, label %211

211:                                              ; preds = %208
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib8000_write_word) #15
  br label %228

213:                                              ; preds = %204
  %214 = and i8 %121, 63
  %215 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 23
  store i8 7, ptr %215, align 8
  %216 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 1
  store i8 -63, ptr %216, align 1
  %217 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 2
  store i8 0, ptr %217, align 2
  %218 = getelementptr %struct.dib8000_state, ptr %119, i32 0, i32 23, i32 3
  store i8 %214, ptr %218, align 1
  %219 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 22
  store i64 17179869184, ptr %219, align 8
  %220 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 1
  %221 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 1, i32 1
  %222 = load i8, ptr %221, align 4
  %223 = lshr i8 %222, 1
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %219, align 8
  %225 = getelementptr inbounds %struct.dib8000_state, ptr %119, i32 0, i32 22, i32 0, i32 3
  store ptr %215, ptr %225, align 8
  %226 = load ptr, ptr %220, align 4
  %227 = tail call i32 @i2c_transfer(ptr noundef %226, ptr noundef %219, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %205) #14
  br label %228

228:                                              ; preds = %213, %211, %208
  br label %229

229:                                              ; preds = %239, %228
  %230 = phi i16 [ %232, %239 ], [ 1000, %228 ]
  %231 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %119, i16 noundef zeroext 1984) #14
  %232 = add nsw i16 %230, -1
  %233 = icmp eq i16 %232, 0
  %234 = load i32, ptr @debug, align 4
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %233, i1 %235, i1 false
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.dib8096p_tuner_read_serpar) #15
  br label %244

239:                                              ; preds = %229
  %240 = and i16 %231, 1
  %241 = icmp ne i16 %240, 0
  %242 = icmp ne i16 %232, 0
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %229, label %244

244:                                              ; preds = %239, %237
  %245 = tail call fastcc zeroext i16 @dib8000_read_word(ptr noundef %119, i16 noundef zeroext 1987) #14
  %246 = lshr i16 %245, 8
  %247 = trunc i16 %246 to i8
  %248 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %249 = load ptr, ptr %248, align 4
  store i8 %247, ptr %249, align 1
  %250 = trunc i16 %245 to i8
  %251 = load ptr, ptr %248, align 4
  %252 = getelementptr i8, ptr %251, i32 1
  store i8 %250, ptr %252, align 1
  br label %253

253:                                              ; preds = %244, %175, %173, %170, %114, %93, %76, %74, %71, %50, %48, %36
  %254 = phi i32 [ 1, %50 ], [ %2, %36 ], [ 1, %71 ], [ 1, %74 ], [ 1, %76 ], [ %2, %93 ], [ 2, %244 ], [ %2, %114 ], [ 1, %170 ], [ 1, %173 ], [ 1, %175 ], [ %2, %48 ]
  ret i32 %254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dib8096p_i2c_func(ptr nocapture noundef readnone %0) #13 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_reset_i2c_master(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.uadd.sat.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148460225, i64 2148460505, i64 2148460839, i64 2148461173}
!11 = !{i32 0, i32 33}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
