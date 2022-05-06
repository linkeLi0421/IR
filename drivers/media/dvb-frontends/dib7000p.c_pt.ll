; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib7000p.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib7000p.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib7000p_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib7000p_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib7000p_attach:\09\09\09\09\09"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_segments = type { i32, i32 }
%struct.dib7000p_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib7000p_state = type { %struct.dvb_frontend, %struct.dib7000p_config, i8, ptr, %struct.dibx000_i2c_master, i16, i8, i32, ptr, i32, i8, i16, i8, i16, i16, i8, i16, i16, %struct.i2c_adapter, [2 x %struct.i2c_msg], [4 x i8], [2 x i8], %struct.mutex, i8, i64, i32, i32, i32 }
%struct.dib7000p_config = type { i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr, i8, i8, i16, i8, i8 }
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

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__param_str_buggy_sfn_workaround = internal constant [21 x i8] c"buggy_sfn_workaround\00", align 1
@buggy_sfn_workaround = internal global i32 0, align 4
@__param_buggy_sfn_workaround = internal constant %struct.kernel_param { ptr @__param_str_buggy_sfn_workaround, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @buggy_sfn_workaround } }, section "__param", align 4
@__UNIQUE_ID_buggy_sfn_workaroundtype251 = internal constant [34 x i8] c"parmtype=buggy_sfn_workaround:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buggy_sfn_workaround252 = internal constant [73 x i8] c"parm=buggy_sfn_workaround:Enable work-around for buggy SFNs (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib7000p_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib7000p_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib7000p_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib7000p_attach to i32), ptr @__kstrtab_dib7000p_attach, ptr @__kstrtabns_dib7000p_attach }, section "___ksymtab+dib7000p_attach", align 4
@__UNIQUE_ID_author253 = internal constant [49 x i8] c"author=Olivier Grenie <olivie.grenie@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [59 x i8] c"description=Driver for the DiBcom 7000PC COFDM demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [40 x i8] c"\017dib7000p: %s: could not acquire lock\0A\00", align 1
@__func__.dib7000p_read_word = private unnamed_addr constant [19 x i8] c"dib7000p_read_word\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\017dib7000p: %s: i2c read error on %d\0A\00", align 1
@__func__.dib7000p_write_word = private unnamed_addr constant [20 x i8] c"dib7000p_write_word\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\017dib7000p: %s: raw pow_i = %d\0A\00", align 1
@__func__.dib7000p_get_adc_power = private unnamed_addr constant [23 x i8] c"dib7000p_get_adc_power\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\017dib7000p: %s:  mant = %d exp = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\017dib7000p: %s:  ix = %d\0A\00", align 1
@lut_1000ln_mant = internal unnamed_addr constant [21 x i32] [i32 6908, i32 6956, i32 7003, i32 7047, i32 7090, i32 7131, i32 7170, i32 7208, i32 7244, i32 7279, i32 7313, i32 7346, i32 7377, i32 7408, i32 7438, i32 7467, i32 7495, i32 7523, i32 7549, i32 7575, i32 7600], align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"\017dib7000p: %s:  pow_i = %d\0A\00", align 1
@__const.dib7000pc_detection.msg = private unnamed_addr constant [2 x { i16, i16, i16, [2 x i8], ptr }] [{ i16, i16, i16, [2 x i8], ptr } { i16 9, i16 0, i16 2, [2 x i8] zeroinitializer, ptr null }, { i16, i16, i16, [2 x i8], ptr } { i16 9, i16 1, i16 2, [2 x i8] zeroinitializer, ptr null }], align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"\017dib7000p: %s: -D-  DiB7000PC detected\0A\00", align 1
@__func__.dib7000pc_detection = private unnamed_addr constant [20 x i8] c"dib7000pc_detection\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\017dib7000p: %s: -D-  DiB7000PC not detected\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"\017dib7000p: %s: sleep dib7090: %d\0A\00", align 1
@__func__.dib7090_tuner_sleep = private unnamed_addr constant [20 x i8] c"dib7090_tuner_sleep\00", align 1
@dib7000p_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 7000PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib7000p_release, ptr null, ptr @dib7000p_wakeup, ptr @dib7000p_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib7000p_set_frontend, ptr @dib7000p_fe_get_tune_settings, ptr @dib7000p_get_frontend, ptr @dib7000p_read_status, ptr @dib7000p_read_ber, ptr @dib7000p_read_signal_strength, ptr @dib7000p_read_snr, ptr @dib7000p_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@dib7000p_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"&st->i2c_buffer_lock\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"DiB7090 tuner interface\00", align 1
@dib7090_tuner_xfer_algo = internal constant %struct.i2c_algorithm { ptr @dib7090_tuner_xfer, ptr null, ptr null, ptr null, ptr @dib7000p_i2c_func, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [56 x i8] c"\017dib7000p: %s: setting output mode for demod %p to %d\0A\00", align 1
@__func__.dib7000p_set_output_mode = private unnamed_addr constant [25 x i8] c"dib7000p_set_output_mode\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"\017dib7000p: %s: Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"\017dib7000p: %s: autosearch returns: %d\0A\00", align 1
@__func__.dib7000p_set_frontend = private unnamed_addr constant [22 x i8] c"dib7000p_set_frontend\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\017dib7000p: %s: SPLIT %p: %u\0A\00", align 1
@__func__.dib7000p_agc_startup = private unnamed_addr constant [21 x i8] c"dib7000p_agc_startup\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"\017dib7000p: %s: no valid AGC configuration found for band 0x%02x\0A\00", align 1
@__func__.dib7000p_set_agc_config = private unnamed_addr constant [24 x i8] c"dib7000p_set_agc_config\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"\017dib7000p: %s: WBD: ref: %d, sel: %d, active: %d, alpha: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"\014dib7000p: DIB7000P: dib7000p_get_internal_freq returned 0\0A\00", align 1
@.str.18 = private unnamed_addr constant [84 x i8] c"\017dib7000p: %s: setting a frequency offset of %dkHz internal freq = %d invert = %d\0A\00", align 1
@__func__.dib7000p_set_dds = private unnamed_addr constant [17 x i8] c"dib7000p_set_dds\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\017dib7000p: %s: using default timf\0A\00", align 1
@__func__.dib7000p_set_bandwidth = private unnamed_addr constant [23 x i8] c"dib7000p_set_bandwidth\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\017dib7000p: %s: using updated timf\0A\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"\017dib7000p: %s: diversity combination deactivated - forced by COFDM parameters\0A\00", align 1
@__func__.dib7000p_set_diversity_in = private unnamed_addr constant [26 x i8] c"dib7000p_set_diversity_in\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\017dib7000p: %s: SFN workaround is active\0A\00", align 1
@__func__.dib7000p_tune = private unnamed_addr constant [14 x i8] c"dib7000p_tune\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"\017dib7000p: %s: updated timf_frequency: %d (default: %d)\0A\00", align 1
@__func__.dib7000p_update_timf = private unnamed_addr constant [21 x i8] c"dib7000p_update_timf\00", align 1
@dib7000p_spur_protect.notch = internal unnamed_addr constant [8 x i16] [i16 16143, i16 14402, i16 12238, i16 9713, i16 6902, i16 3888, i16 759, i16 -2392], align 2
@dib7000p_spur_protect.sine = internal unnamed_addr constant [256 x i8] c"\00\02\03\05\06\08\09\0B\0D\0E\10\11\13\14\16\18\19\1B\1C\1E\1F!\22$&')*,-/023578:;=>@ACDFGIJLMOPRSUVXY[\\^_abcefhiklmoprsuvwyz{}~\80\81\82\84\85\86\88\89\8A\8C\8D\8E\90\91\92\93\95\96\97\98\9A\9B\9C\9D\9F\A0\A1\A2\A4\A5\A6\A7\A8\AA\AB\AC\AD\AE\AF\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\CF\D0\D1\D2\D3\D4\D5\D6\D7\D7\D8\D9\DA\DB\DC\DC\DD\DE\DF\E0\E0\E1\E2\E3\E3\E4\E5\E5\E6\E7\E7\E8\E9\E9\EA\EB\EB\EC\ED\ED\EE\EE\EF\EF\F0\F1\F1\F2\F2\F3\F3\F4\F4\F5\F5\F5\F6\F6\F7\F7\F8\F8\F8\F9\F9\F9\FA\FA\FA\FB\FB\FB\FC\FC\FC\FC\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"\017dib7000p: %s: relative position of the Spur: %dk (RF: %dk, XTAL: %dk)\0A\00", align 1
@__func__.dib7000p_spur_protect = private unnamed_addr constant [22 x i8] c"dib7000p_spur_protect\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"\017dib7000p: %s: PALF COEF: %d re: %d im: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"\017dib7000p: %s: SET MPEG ON DIBSTREAM TX\0A\00", align 1
@__func__.dib7090_setDibTxMux = private unnamed_addr constant [20 x i8] c"dib7090_setDibTxMux\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"\017dib7000p: %s: SET DIV_OUT ON DIBSTREAM TX\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"\017dib7000p: %s: SET ADC_OUT ON DIBSTREAM TX\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"\017dib7000p: %s: Configure DibStream Tx\0A\00", align 1
@__func__.dib7090_cfg_DibTx = private unnamed_addr constant [18 x i8] c"dib7090_cfg_DibTx\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"\017dib7000p: %s: SET DEM OUT OLD INTERF ON HOST BUS\0A\00", align 1
@__func__.dib7090_setHostBusMux = private unnamed_addr constant [22 x i8] c"dib7090_setHostBusMux\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"\017dib7000p: %s: SET DIBSTREAM TX ON HOST BUS\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"\017dib7000p: %s: SET MPEG MUX ON HOST BUS\0A\00", align 1
@strength_to_db_table = internal unnamed_addr constant [33 x %struct.linear_segments] [%struct.linear_segments { i32 63630, i32 110500 }, %struct.linear_segments { i32 62273, i32 110000 }, %struct.linear_segments { i32 60162, i32 109000 }, %struct.linear_segments { i32 58730, i32 108000 }, %struct.linear_segments { i32 58294, i32 107000 }, %struct.linear_segments { i32 57778, i32 106000 }, %struct.linear_segments { i32 57320, i32 105000 }, %struct.linear_segments { i32 56779, i32 104000 }, %struct.linear_segments { i32 56293, i32 103000 }, %struct.linear_segments { i32 55724, i32 102000 }, %struct.linear_segments { i32 55145, i32 101000 }, %struct.linear_segments { i32 54680, i32 100000 }, %struct.linear_segments { i32 54293, i32 99000 }, %struct.linear_segments { i32 53813, i32 98000 }, %struct.linear_segments { i32 53427, i32 97000 }, %struct.linear_segments { i32 52981, i32 96000 }, %struct.linear_segments { i32 52636, i32 95000 }, %struct.linear_segments { i32 52014, i32 94000 }, %struct.linear_segments { i32 51674, i32 93000 }, %struct.linear_segments { i32 50692, i32 92000 }, %struct.linear_segments { i32 49824, i32 91000 }, %struct.linear_segments { i32 49052, i32 90000 }, %struct.linear_segments { i32 48436, i32 89000 }, %struct.linear_segments { i32 47836, i32 88000 }, %struct.linear_segments { i32 47368, i32 87000 }, %struct.linear_segments { i32 46468, i32 86000 }, %struct.linear_segments { i32 45597, i32 85000 }, %struct.linear_segments { i32 44586, i32 84000 }, %struct.linear_segments { i32 43667, i32 83000 }, %struct.linear_segments { i32 42673, i32 82000 }, %struct.linear_segments { i32 41816, i32 81000 }, %struct.linear_segments { i32 40876, i32 80000 }, %struct.linear_segments zeroinitializer], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.33 = private unnamed_addr constant [59 x i8] c"\017dib7000p: %s: Next all layers stats available in %u us.\0A\00", align 1
@__func__.dib7000p_get_stats = private unnamed_addr constant [19 x i8] c"dib7000p_get_stats\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"\017dib7000p: %s: checking demod on I2C address: %d (%x)\0A\00", align 1
@__func__.dib7000p_identify = private unnamed_addr constant [18 x i8] c"dib7000p_identify\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"\017dib7000p: %s: wrong Vendor ID (read=0x%x)\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"\017dib7000p: %s: wrong Device ID (%x)\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"\017dib7000p: %s: Tuner ITF: write busy (overflow)\0A\00", align 1
@__func__.w7090p_tuner_write_serpar = private unnamed_addr constant [26 x i8] c"w7090p_tuner_write_serpar\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"\017dib7000p: %s: TunerITF: read busy (overflow)\0A\00", align 1
@__func__.w7090p_tuner_read_serpar = private unnamed_addr constant [25 x i8] c"w7090p_tuner_read_serpar\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"\017dib7000p: %s: TunerITF: read busy (empty)\0A\00", align 1
@__func__.dib7000p_demod_reset = private unnamed_addr constant [21 x i8] c"dib7000p_demod_reset\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"\017dib7000p: %s: OUTPUT_MODE could not be reset.\0A\00", align 1
@dib7000p_defaults = internal unnamed_addr constant [77 x i16] [i16 3, i16 2, i16 4, i16 14344, i16 2068, i16 12, i16 6, i16 27, i16 30528, i16 91, i16 -29312, i16 457, i16 -15488, i16 0, i16 128, i16 0, i16 144, i16 1, i16 -11072, i16 1, i16 26, i16 26240, i16 11, i16 79, i16 7250, i16 7238, i16 7264, i16 7309, i16 7338, i16 7382, i16 7427, i16 7456, i16 7500, i16 7544, i16 7574, i16 1, i16 142, i16 1040, i16 8, i16 145, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 154, i16 8192, i16 1, i16 168, i16 3277, i16 1, i16 183, i16 8207, i16 1, i16 212, i16 361, i16 5, i16 187, i16 573, i16 164, i16 164, i16 32752, i16 15564, i16 1, i16 198, i16 2048, i16 1, i16 222, i16 16, i16 1, i16 235, i16 98, i16 0], align 2
@.str.42 = private unnamed_addr constant [52 x i8] c"\017dib7000p: %s: gpio dir: %x: val: %x, pwm_pos: %x\0A\00", align 1
@__func__.dib7000p_reset_gpio = private unnamed_addr constant [20 x i8] c"dib7000p_reset_gpio\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"\017dib7000p: %s: setting output mode TS_SERIAL using Mpeg Mux\0A\00", align 1
@__func__.dib7090_set_output_mode = private unnamed_addr constant [24 x i8] c"dib7090_set_output_mode\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"\017dib7000p: %s: setting output mode TS_PARALLEL_GATED using Mpeg Mux\0A\00", align 1
@.str.47 = private unnamed_addr constant [73 x i8] c"\017dib7000p: %s: setting output mode TS_PARALLEL_CONT using Smooth block\0A\00", align 1
@.str.48 = private unnamed_addr constant [64 x i8] c"\017dib7000p: %s: setting output mode TS_FIFO using Smooth block\0A\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c"\017dib7000p: %s: setting output mode MODE_DIVERSITY\0A\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"\017dib7000p: %s: setting output mode MODE_ANALOG_ADC\0A\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"\017dib7000p: %s: Enable Mpeg mux\0A\00", align 1
@__func__.dib7090_configMpegMux = private unnamed_addr constant [22 x i8] c"dib7090_configMpegMux\00", align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"\017dib7000p: %s: %s mode OFF : by default Enable Mpeg INPUT\0A\00", align 1
@__func__.dib7090_set_diversity_in = private unnamed_addr constant [25 x i8] c"dib7090_set_diversity_in\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"\017dib7000p: %s: Configure DibStream Rx\0A\00", align 1
@__func__.dib7090_cfg_DibRx = private unnamed_addr constant [18 x i8] c"dib7090_cfg_DibRx\00", align 1
@dib7000p_i2c_enumeration.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"&dpst->i2c_buffer_lock\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"\017dib7000p: %s: DiB7000P #%d: not identified\0A\00", align 1
@__func__.dib7000p_i2c_enumeration = private unnamed_addr constant [25 x i8] c"dib7000p_i2c_enumeration\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"\017dib7000p: %s: IC %d initialized (to i2c_address 0x%x)\0A\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"\017dib7000p: %s: PID filter: index %x, PID %d, OnOff %d\0A\00", align 1
@__func__.dib7000p_pid_filter = private unnamed_addr constant [20 x i8] c"dib7000p_pid_filter\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"\017dib7000p: %s: PID filter enabled %d\0A\00", align 1
@__func__.dib7000p_pid_filter_ctrl = private unnamed_addr constant [25 x i8] c"dib7000p_pid_filter_ctrl\00", align 1
@.str.60 = private unnamed_addr constant [89 x i8] c"\017dib7000p: %s: Updating pll (prediv: old =  %d new = %d ; loopdiv : old = %d new = %d)\0A\00", align 1
@__func__.dib7000p_update_pll = private unnamed_addr constant [20 x i8] c"dib7000p_update_pll\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"\017dib7000p: %s: Waiting for PLL to lock\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_buggy_sfn_workaround252, ptr @__UNIQUE_ID_buggy_sfn_workaroundtype251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_license256, ptr @__ksymtab_dib7000p_attach, ptr @__param_buggy_sfn_workaround, ptr @__param_debug], section "llvm.metadata"
@switch.table.dib7000p_get_frontend.62 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], align 4
@switch.table.dib7000p_set_channel = private unnamed_addr constant [6 x i8] c"\04\06\02\0A\02\0E", align 1
@switch.table.dib7000p_get_time_us = private unnamed_addr constant [3 x i32] [i32 16, i32 8, i32 4], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @dib7000p_attach(ptr noundef writeonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 14
  store ptr @dib7090_slave_reset, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 13
  store ptr @dib7090_get_adc_power, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 6
  store ptr @dib7000pc_detection, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 11
  store ptr @dib7090_get_i2c_tuner, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 12
  store ptr @dib7090_tuner_sleep, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 15
  store ptr @dib7000p_init, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 2
  store ptr @dib7000p_set_agc1_min, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 4
  store ptr @dib7000p_set_gpio, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 10
  store ptr @dib7000p_i2c_enumeration, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 9
  store ptr @dib7000p_pid_filter, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 8
  store ptr @dib7000p_pid_filter_ctrl, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 7
  store ptr @dib7000p_get_i2c_master, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 3
  store ptr @dib7000p_update_pll, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 5
  store ptr @dib7000p_ctrl_timf, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dib7000p_ops, ptr %0, i32 0, i32 1
  store ptr @dib7000p_get_agc_values, ptr %18, align 4
  store ptr @dib7000p_set_wbd_ref, ptr %0, align 4
  br label %19

19:                                               ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7090_slave_reset(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %3, i16 noundef zeroext 1794)
  %5 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 22
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %31

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 7, ptr %14, align 8
  %15 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 2, ptr %15, align 1
  %16 = lshr i16 %4, 8
  %17 = trunc i16 %16 to i8
  %18 = or i8 %17, 64
  %19 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 %18, ptr %19, align 2
  %20 = trunc i16 %4 to i8
  %21 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = lshr i8 %24, 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %22, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %14, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @i2c_transfer(ptr noundef %29, ptr noundef %22, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %31

31:                                               ; preds = %13, %11, %8
  %32 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %53

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 4, ptr %40, align 8
  %41 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 8, ptr %41, align 1
  %42 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 -1, ptr %42, align 2
  %43 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 -1, ptr %43, align 1
  %44 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %46 = load i8, ptr %45, align 4
  %47 = lshr i8 %46, 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %44, align 8
  %49 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %40, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = tail call i32 @i2c_transfer(ptr noundef %51, ptr noundef %44, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %53

53:                                               ; preds = %39, %37, %34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7090_get_adc_power(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %3, i16 noundef zeroext 388) #12
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %3, i16 noundef zeroext 389) #12
  %6 = zext i16 %4 to i32
  %7 = shl nuw i32 %6, 16
  %8 = zext i16 %5 to i32
  %9 = or i32 %7, %8
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dib7000p_get_adc_power, i32 noundef %9) #13
  br label %14

14:                                               ; preds = %12, %1
  %15 = icmp ult i32 %9, 2
  br i1 %15, label %22, label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %19, %16 ], [ %9, %14 ]
  %18 = phi i32 [ %20, %16 ], [ 0, %14 ]
  %19 = lshr i32 %17, 1
  %20 = add nuw nsw i32 %18, 1
  %21 = icmp ult i32 %17, 4
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %14
  %23 = phi i32 [ 0, %14 ], [ %20, %16 ]
  %24 = mul i32 %9, 1000
  %25 = shl nuw i32 1, %23
  %26 = sdiv i32 %24, %25
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = add i32 %26, -1000
  %31 = udiv i32 %30, 100
  br label %44

32:                                               ; preds = %22
  %33 = udiv i32 %26, 1000
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib7000p_get_adc_power, i32 noundef %33, i32 noundef %23) #13
  %35 = load i32, ptr @debug, align 4
  %36 = add i32 %26, -1000
  %37 = udiv i32 %36, 100
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = and i32 %37, 255
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dib7000p_get_adc_power, i32 noundef %40) #13
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %39, %32, %29
  %45 = phi i1 [ true, %29 ], [ %43, %39 ], [ true, %32 ]
  %46 = phi i32 [ %31, %29 ], [ %37, %39 ], [ %37, %32 ]
  %47 = and i32 %46, 255
  %48 = getelementptr [21 x i32], ptr @lut_1000ln_mant, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %23, 693
  %51 = add i32 %50, 16763356
  %52 = add i32 %51, %49
  %53 = shl i32 %52, 8
  %54 = add i32 %53, -1768448
  %55 = sdiv i32 %54, 1000
  br i1 %45, label %58, label %56

56:                                               ; preds = %44
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dib7000p_get_adc_power, i32 noundef %55) #13
  br label %58

58:                                               ; preds = %56, %44
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000pc_detection(ptr noundef %0) #1 {
  %2 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) @__const.dib7000pc_detection.msg, i32 24, i1 false)
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %2, i32 0, i32 1, i32 3
  store ptr %8, ptr %13, align 4
  store i8 3, ptr %4, align 8
  %14 = getelementptr i8, ptr %4, i32 1
  store i8 0, ptr %14, align 1
  %15 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #12
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i8, ptr %8, align 8
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %8, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -77
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %43

27:                                               ; preds = %20, %17, %10
  store i16 64, ptr %12, align 4
  store i16 64, ptr %2, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #12
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8, ptr %8, align 8
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %8, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, -77
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %43

40:                                               ; preds = %33, %30, %27
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40, %37, %24
  %44 = phi ptr [ @.str.6, %24 ], [ @.str.6, %37 ], [ @.str.7, %40 ]
  %45 = phi i32 [ 1, %24 ], [ 1, %37 ], [ 0, %40 ]
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %44, ptr noundef nonnull @__func__.dib7000pc_detection) #13
  br label %47

47:                                               ; preds = %43, %40, %37, %24
  %48 = phi i32 [ 0, %40 ], [ 1, %24 ], [ 1, %37 ], [ %45, %43 ]
  call void @kfree(ptr noundef nonnull %8) #12
  br label %49

49:                                               ; preds = %47, %6
  %50 = phi i32 [ %48, %47 ], [ -12, %6 ]
  call void @kfree(ptr noundef nonnull %4) #12
  br label %51

51:                                               ; preds = %49, %1
  %52 = phi i32 [ %50, %49 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i32 %52
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @dib7090_get_i2c_tuner(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 18
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7090_tuner_sleep(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib7090_tuner_sleep, i32 noundef %1) #13
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1922)
  %11 = icmp ugt i16 %10, 255
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 17
  store i16 %10, ptr %13, align 2
  br label %14

14:                                               ; preds = %12, %9
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = trunc i16 %10 to i8
  br label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 17
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
  %29 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %30 = tail call i32 @mutex_lock_interruptible(ptr noundef %29) #12
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %51

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %38, align 8
  %39 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -126, ptr %39, align 1
  %40 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %28, ptr %40, align 2
  %41 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %27, ptr %41, align 1
  %42 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = lshr i8 %44, 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %42, align 8
  %47 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %38, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = tail call i32 @i2c_transfer(ptr noundef %49, ptr noundef %42, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %29) #12
  br label %51

51:                                               ; preds = %37, %35, %32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dib7000p_init(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4944) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %1048, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %8, ptr noundef align 4 dereferenceable(44) %2, i32 44, i1 false)
  %9 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 3
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 2
  store i8 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dib7000p_config, ptr %2, i32 0, i32 8
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 14
  store i16 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.dib7000p_config, ptr %2, i32 0, i32 7
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 13
  store i16 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 14
  %18 = load i8, ptr %17, align 4
  switch i8 %18, label %19 [
    i8 7, label %20
    i8 1, label %20
  ]

19:                                               ; preds = %7
  store i8 5, ptr %17, align 4
  br label %20

20:                                               ; preds = %19, %7, %7
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 3
  store ptr %5, ptr %21, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %22, ptr noundef nonnull align 4 dereferenceable(544) @dib7000p_ops, i32 544, i1 false)
  %23 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.9, ptr noundef nonnull @dib7000p_init.__key) #12
  %24 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %43

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 5, ptr %32, align 8
  %33 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 7, ptr %33, align 1
  %34 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %34, align 2
  %35 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 3, ptr %35, align 1
  %36 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %36, align 8
  %37 = load i8, ptr %10, align 4
  %38 = lshr i8 %37, 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %36, align 8
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %32, ptr %40, align 8
  %41 = load ptr, ptr %9, align 8
  %42 = tail call i32 @i2c_transfer(ptr noundef %41, ptr noundef %36, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %43

43:                                               ; preds = %31, %29, %26
  %44 = tail call fastcc i32 @dib7000p_identify(ptr noundef nonnull %5)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %1047

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef nonnull %5, i16 noundef zeroext 897)
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 16
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 4
  %52 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 4, i32 2, i32 9, i32 1
  store ptr %50, ptr %52, align 4
  %53 = load ptr, ptr %9, align 8
  %54 = load i8, ptr %10, align 4
  %55 = tail call i32 @dibx000_init_i2c_master(ptr noundef %51, i16 noundef zeroext 11, ptr noundef %53, i8 noundef zeroext %54) #12
  %56 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 18
  %57 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 18, i32 12
  %58 = tail call i32 @strscpy(ptr noundef %57, ptr noundef nonnull @.str.10, i32 noundef 48) #12
  %59 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 18, i32 2
  store ptr @dib7090_tuner_xfer_algo, ptr %59, align 8
  %60 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 18, i32 3
  store ptr null, ptr %60, align 4
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 9, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 18, i32 9, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 18, i32 9, i32 8
  store ptr %5, ptr %65, align 8
  %66 = tail call i32 @i2c_add_adapter(ptr noundef %56) #12
  tail call fastcc void @dib7000p_set_power_mode(ptr noundef nonnull %5, i32 noundef 0) #12
  %67 = load i16, ptr %48, align 4
  %68 = icmp eq i16 %67, 28816
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  tail call void @dibx000_reset_i2c_master(ptr noundef %51) #12
  br label %70

70:                                               ; preds = %69, %46
  tail call fastcc void @dib7000p_set_adc_state(ptr noundef nonnull %5, i32 noundef 4) #12
  %71 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %90

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %79, align 8
  %80 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 2, ptr %80, align 1
  %81 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 -1, ptr %81, align 2
  %82 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 -1, ptr %82, align 1
  %83 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %83, align 8
  %84 = load i8, ptr %10, align 4
  %85 = lshr i8 %84, 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %83, align 8
  %87 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %79, ptr %87, align 8
  %88 = load ptr, ptr %9, align 8
  %89 = tail call i32 @i2c_transfer(ptr noundef %88, ptr noundef %83, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %90

90:                                               ; preds = %78, %76, %73
  %91 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %110

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %99, align 8
  %100 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 3, ptr %100, align 1
  %101 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 -1, ptr %101, align 2
  %102 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 -1, ptr %102, align 1
  %103 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %103, align 8
  %104 = load i8, ptr %10, align 4
  %105 = lshr i8 %104, 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %103, align 8
  %107 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %99, ptr %107, align 8
  %108 = load ptr, ptr %9, align 8
  %109 = tail call i32 @i2c_transfer(ptr noundef %108, ptr noundef %103, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %110

110:                                              ; preds = %98, %96, %93
  %111 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %113
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %130

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %119, align 8
  %120 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 4, ptr %120, align 1
  %121 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %121, align 2
  %122 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 31, ptr %122, align 1
  %123 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %123, align 8
  %124 = load i8, ptr %10, align 4
  %125 = lshr i8 %124, 1
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %123, align 8
  %127 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %119, ptr %127, align 8
  %128 = load ptr, ptr %9, align 8
  %129 = tail call i32 @i2c_transfer(ptr noundef %128, ptr noundef %123, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %130

130:                                              ; preds = %118, %116, %113
  %131 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, ptr @debug, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %150

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 5, ptr %139, align 8
  %140 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 0, ptr %140, align 1
  %141 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %141, align 2
  %142 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 7, ptr %142, align 1
  %143 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %143, align 8
  %144 = load i8, ptr %10, align 4
  %145 = lshr i8 %144, 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %143, align 8
  %147 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %139, ptr %147, align 8
  %148 = load ptr, ptr %9, align 8
  %149 = tail call i32 @i2c_transfer(ptr noundef %148, ptr noundef %143, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %150

150:                                              ; preds = %138, %136, %133
  %151 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, ptr @debug, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %153
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %170

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %159, align 8
  %160 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 2, ptr %160, align 1
  %161 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %161, align 2
  %162 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %162, align 1
  %163 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %163, align 8
  %164 = load i8, ptr %10, align 4
  %165 = lshr i8 %164, 1
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %163, align 8
  %167 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %159, ptr %167, align 8
  %168 = load ptr, ptr %9, align 8
  %169 = tail call i32 @i2c_transfer(ptr noundef %168, ptr noundef %163, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %170

170:                                              ; preds = %158, %156, %153
  %171 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, ptr @debug, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %173
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %190

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %179, align 8
  %180 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 3, ptr %180, align 1
  %181 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %181, align 2
  %182 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %182, align 1
  %183 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %183, align 8
  %184 = load i8, ptr %10, align 4
  %185 = lshr i8 %184, 1
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %183, align 8
  %187 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %179, ptr %187, align 8
  %188 = load ptr, ptr %9, align 8
  %189 = tail call i32 @i2c_transfer(ptr noundef %188, ptr noundef %183, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %190

190:                                              ; preds = %178, %176, %173
  %191 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i32, ptr @debug, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %193
  %197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %210

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %199, align 8
  %200 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 4, ptr %200, align 1
  %201 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %201, align 2
  %202 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %202, align 1
  %203 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %203, align 8
  %204 = load i8, ptr %10, align 4
  %205 = lshr i8 %204, 1
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %203, align 8
  %207 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %199, ptr %207, align 8
  %208 = load ptr, ptr %9, align 8
  %209 = tail call i32 @i2c_transfer(ptr noundef %208, ptr noundef %203, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %210

210:                                              ; preds = %198, %196, %193
  %211 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i32, ptr @debug, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %230, label %216

216:                                              ; preds = %213
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %230

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 5, ptr %219, align 8
  %220 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 0, ptr %220, align 1
  %221 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %221, align 2
  %222 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %222, align 1
  %223 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %223, align 8
  %224 = load i8, ptr %10, align 4
  %225 = lshr i8 %224, 1
  %226 = zext i8 %225 to i16
  store i16 %226, ptr %223, align 8
  %227 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %219, ptr %227, align 8
  %228 = load ptr, ptr %9, align 8
  %229 = tail call i32 @i2c_transfer(ptr noundef %228, ptr noundef %223, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %230

230:                                              ; preds = %218, %216, %213
  %231 = load i16, ptr %48, align 4
  %232 = icmp eq i16 %231, 28816
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 6
  %235 = load ptr, ptr %234, align 8
  br label %281

236:                                              ; preds = %230
  %237 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load i32, ptr @debug, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %256, label %242

242:                                              ; preds = %239
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %256

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %245, align 8
  %246 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -126, ptr %246, align 1
  %247 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %247, align 2
  %248 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 3, ptr %248, align 1
  %249 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %249, align 8
  %250 = load i8, ptr %10, align 4
  %251 = lshr i8 %250, 1
  %252 = zext i8 %251 to i16
  store i16 %252, ptr %249, align 8
  %253 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %245, ptr %253, align 8
  %254 = load ptr, ptr %9, align 8
  %255 = tail call i32 @i2c_transfer(ptr noundef %254, ptr noundef %249, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %256

256:                                              ; preds = %244, %242, %239
  %257 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load i32, ptr @debug, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %276, label %262

262:                                              ; preds = %259
  %263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %276

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %265, align 8
  %266 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -126, ptr %266, align 1
  %267 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %267, align 2
  %268 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %268, align 1
  %269 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %269, align 8
  %270 = load i8, ptr %10, align 4
  %271 = lshr i8 %270, 1
  %272 = zext i8 %271 to i16
  store i16 %272, ptr %269, align 8
  %273 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %265, ptr %273, align 8
  %274 = load ptr, ptr %9, align 8
  %275 = tail call i32 @i2c_transfer(ptr noundef %274, ptr noundef %269, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %276

276:                                              ; preds = %264, %262, %259
  %277 = load i16, ptr %48, align 4
  %278 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 6
  %279 = load ptr, ptr %278, align 8
  %280 = icmp eq i16 %277, 28816
  br i1 %280, label %281, label %355

281:                                              ; preds = %276, %233
  %282 = phi ptr [ %235, %233 ], [ %279, %276 ]
  %283 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %282, i32 0, i32 5
  %284 = load i8, ptr %283, align 1
  %285 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %282, i32 0, i32 4
  %286 = load i8, ptr %285, align 2
  %287 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %282, i32 0, i32 3
  %288 = load i8, ptr %287, align 1
  %289 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %282, i32 0, i32 2
  %290 = load i8, ptr %289, align 4
  %291 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %281
  %294 = load i32, ptr @debug, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %322, label %296

296:                                              ; preds = %293
  %297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %322

298:                                              ; preds = %281
  %299 = icmp eq i8 %284, 0
  %300 = select i1 %299, i16 8192, i16 0
  %301 = zext i8 %286 to i16
  %302 = shl i16 %301, 12
  %303 = or i16 %302, %300
  %304 = zext i8 %288 to i16
  %305 = shl nuw nsw i16 %304, 6
  %306 = or i16 %303, %305
  %307 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 7, ptr %307, align 8
  %308 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 64, ptr %308, align 1
  %309 = lshr i16 %306, 8
  %310 = trunc i16 %309 to i8
  %311 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %310, ptr %311, align 2
  %312 = trunc i16 %305 to i8
  %313 = or i8 %290, %312
  %314 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %313, ptr %314, align 1
  %315 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %315, align 8
  %316 = load i8, ptr %10, align 4
  %317 = lshr i8 %316, 1
  %318 = zext i8 %317 to i16
  store i16 %318, ptr %315, align 8
  %319 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %307, ptr %319, align 8
  %320 = load ptr, ptr %9, align 8
  %321 = tail call i32 @i2c_transfer(ptr noundef %320, ptr noundef %315, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %322

322:                                              ; preds = %298, %296, %293
  br label %323

323:                                              ; preds = %323, %322
  %324 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext 1856) #12
  %325 = icmp slt i16 %324, 0
  br i1 %325, label %326, label %323

326:                                              ; preds = %323
  %327 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext 1857) #12
  %328 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %282, i32 0, i32 6
  %329 = load i8, ptr %328, align 4
  %330 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %326
  %333 = load i32, ptr @debug, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %478, label %335

335:                                              ; preds = %332
  %336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %478

337:                                              ; preds = %326
  %338 = icmp eq i8 %329, 0
  %339 = select i1 %338, i16 -32768, i16 0
  %340 = or i16 %339, %327
  %341 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 7, ptr %341, align 8
  %342 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 65, ptr %342, align 1
  %343 = lshr i16 %340, 8
  %344 = trunc i16 %343 to i8
  %345 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %344, ptr %345, align 2
  %346 = trunc i16 %327 to i8
  %347 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %346, ptr %347, align 1
  %348 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %348, align 8
  %349 = load i8, ptr %10, align 4
  %350 = lshr i8 %349, 1
  %351 = zext i8 %350 to i16
  store i16 %351, ptr %348, align 8
  %352 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %341, ptr %352, align 8
  %353 = load ptr, ptr %9, align 8
  %354 = tail call i32 @i2c_transfer(ptr noundef %353, ptr noundef %348, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %478

355:                                              ; preds = %276
  %356 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 3
  %357 = load i8, ptr %356, align 1
  %358 = and i8 %357, 63
  %359 = zext i8 %358 to i16
  %360 = shl nuw nsw i16 %359, 9
  %361 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 11
  %362 = load i8, ptr %361, align 1
  %363 = zext i8 %362 to i16
  %364 = shl nuw nsw i16 %363, 7
  %365 = or i16 %360, %364
  %366 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 10
  %367 = load i8, ptr %366, align 4
  %368 = zext i8 %367 to i16
  %369 = shl nuw nsw i16 %368, 6
  %370 = or i16 %365, %369
  %371 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 9
  %372 = load i8, ptr %371, align 1
  %373 = zext i8 %372 to i16
  %374 = shl nuw nsw i16 %373, 5
  %375 = or i16 %370, %374
  %376 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 8
  %377 = load i8, ptr %376, align 2
  %378 = zext i8 %377 to i16
  %379 = shl nuw nsw i16 %378, 2
  %380 = or i16 %375, %379
  %381 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 7
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i16
  %384 = shl nuw nsw i16 %383, 1
  %385 = or i16 %380, %384
  %386 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %355
  %389 = load i32, ptr @debug, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %409, label %391

391:                                              ; preds = %388
  %392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %409

393:                                              ; preds = %355
  %394 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %394, align 8
  %395 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -124, ptr %395, align 1
  %396 = lshr i16 %385, 8
  %397 = trunc i16 %396 to i8
  %398 = or i8 %397, -128
  %399 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %398, ptr %399, align 2
  %400 = trunc i16 %385 to i8
  %401 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %400, ptr %401, align 1
  %402 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %402, align 8
  %403 = load i8, ptr %10, align 4
  %404 = lshr i8 %403, 1
  %405 = zext i8 %404 to i16
  store i16 %405, ptr %402, align 8
  %406 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %394, ptr %406, align 8
  %407 = load ptr, ptr %9, align 8
  %408 = tail call i32 @i2c_transfer(ptr noundef %407, ptr noundef %402, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %409

409:                                              ; preds = %393, %391, %388
  %410 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 2
  %411 = load i8, ptr %410, align 4
  %412 = load i8, ptr %356, align 1
  %413 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 4
  %414 = load i8, ptr %413, align 2
  %415 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 5
  %416 = load i8, ptr %415, align 1
  %417 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %409
  %420 = load i32, ptr @debug, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %449, label %422

422:                                              ; preds = %419
  %423 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %449

424:                                              ; preds = %409
  %425 = zext i8 %411 to i16
  %426 = shl nuw nsw i16 %425, 5
  %427 = lshr i8 %412, 3
  %428 = and i8 %427, 24
  %429 = zext i8 %428 to i16
  %430 = or i16 %426, %429
  %431 = zext i8 %414 to i16
  %432 = shl nuw nsw i16 %431, 1
  %433 = or i16 %430, %432
  %434 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %434, align 8
  %435 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -121, ptr %435, align 1
  %436 = lshr i16 %433, 8
  %437 = trunc i16 %436 to i8
  %438 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %437, ptr %438, align 2
  %439 = trunc i16 %433 to i8
  %440 = or i8 %416, %439
  %441 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %440, ptr %441, align 1
  %442 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %442, align 8
  %443 = load i8, ptr %10, align 4
  %444 = lshr i8 %443, 1
  %445 = zext i8 %444 to i16
  store i16 %445, ptr %442, align 8
  %446 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %434, ptr %446, align 8
  %447 = load ptr, ptr %9, align 8
  %448 = tail call i32 @i2c_transfer(ptr noundef %447, ptr noundef %442, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %449

449:                                              ; preds = %424, %422, %419
  %450 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %279, i32 0, i32 6
  %451 = load i8, ptr %450, align 4
  %452 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %449
  %455 = load i32, ptr @debug, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %478, label %457

457:                                              ; preds = %454
  %458 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %478

459:                                              ; preds = %449
  %460 = zext i8 %451 to i16
  %461 = shl i16 %460, 15
  %462 = and i16 %385, 32512
  %463 = or i16 %461, %462
  %464 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %464, align 8
  %465 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -124, ptr %465, align 1
  %466 = lshr exact i16 %463, 8
  %467 = trunc i16 %466 to i8
  %468 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %467, ptr %468, align 2
  %469 = trunc i16 %385 to i8
  %470 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %469, ptr %470, align 1
  %471 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %471, align 8
  %472 = load i8, ptr %10, align 4
  %473 = lshr i8 %472, 1
  %474 = zext i8 %473 to i16
  store i16 %474, ptr %471, align 8
  %475 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %464, ptr %475, align 8
  %476 = load ptr, ptr %9, align 8
  %477 = tail call i32 @i2c_transfer(ptr noundef %476, ptr noundef %471, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %478

478:                                              ; preds = %459, %457, %454, %337, %335, %332
  %479 = phi ptr [ %279, %459 ], [ %279, %457 ], [ %279, %454 ], [ %282, %337 ], [ %282, %335 ], [ %282, %332 ]
  %480 = load i32, ptr %479, align 4
  %481 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %478
  %484 = load i32, ptr @debug, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %505, label %486

486:                                              ; preds = %483
  %487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %505

488:                                              ; preds = %478
  %489 = mul i32 %480, 1000
  %490 = lshr i32 %489, 16
  %491 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %491, align 8
  %492 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 18, ptr %492, align 1
  %493 = lshr i32 %489, 24
  %494 = trunc i32 %493 to i8
  %495 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %494, ptr %495, align 2
  %496 = trunc i32 %490 to i8
  %497 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %496, ptr %497, align 1
  %498 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %498, align 8
  %499 = load i8, ptr %10, align 4
  %500 = lshr i8 %499, 1
  %501 = zext i8 %500 to i16
  store i16 %501, ptr %498, align 8
  %502 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %491, ptr %502, align 8
  %503 = load ptr, ptr %9, align 8
  %504 = tail call i32 @i2c_transfer(ptr noundef %503, ptr noundef %498, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %505

505:                                              ; preds = %488, %486, %483
  %506 = load i32, ptr %479, align 4
  %507 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %505
  %510 = load i32, ptr @debug, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %531, label %512

512:                                              ; preds = %509
  %513 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %531

514:                                              ; preds = %505
  %515 = trunc i32 %506 to i16
  %516 = mul i16 %515, 1000
  %517 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %517, align 8
  %518 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 19, ptr %518, align 1
  %519 = lshr i16 %516, 8
  %520 = trunc i16 %519 to i8
  %521 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %520, ptr %521, align 2
  %522 = trunc i16 %516 to i8
  %523 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %522, ptr %523, align 1
  %524 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %524, align 8
  %525 = load i8, ptr %10, align 4
  %526 = lshr i8 %525, 1
  %527 = zext i8 %526 to i16
  store i16 %527, ptr %524, align 8
  %528 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %517, ptr %528, align 8
  %529 = load ptr, ptr %9, align 8
  %530 = tail call i32 @i2c_transfer(ptr noundef %529, ptr noundef %524, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %531

531:                                              ; preds = %514, %512, %509
  %532 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %479, i32 0, i32 13
  %533 = load i32, ptr %532, align 4
  %534 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %535 = icmp slt i32 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %531
  %537 = load i32, ptr @debug, align 4
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %557, label %539

539:                                              ; preds = %536
  %540 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %557

541:                                              ; preds = %531
  %542 = lshr i32 %533, 16
  %543 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %543, align 8
  %544 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 21, ptr %544, align 1
  %545 = lshr i32 %533, 24
  %546 = trunc i32 %545 to i8
  %547 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %546, ptr %547, align 2
  %548 = trunc i32 %542 to i8
  %549 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %548, ptr %549, align 1
  %550 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %550, align 8
  %551 = load i8, ptr %10, align 4
  %552 = lshr i8 %551, 1
  %553 = zext i8 %552 to i16
  store i16 %553, ptr %550, align 8
  %554 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %543, ptr %554, align 8
  %555 = load ptr, ptr %9, align 8
  %556 = tail call i32 @i2c_transfer(ptr noundef %555, ptr noundef %550, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %557

557:                                              ; preds = %541, %539, %536
  %558 = load i32, ptr %532, align 4
  %559 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %561, label %566

561:                                              ; preds = %557
  %562 = load i32, ptr @debug, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %581, label %564

564:                                              ; preds = %561
  %565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %581

566:                                              ; preds = %557
  %567 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %567, align 8
  %568 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 22, ptr %568, align 1
  %569 = lshr i32 %558, 8
  %570 = trunc i32 %569 to i8
  %571 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %570, ptr %571, align 2
  %572 = trunc i32 %558 to i8
  %573 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %572, ptr %573, align 1
  %574 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %574, align 8
  %575 = load i8, ptr %10, align 4
  %576 = lshr i8 %575, 1
  %577 = zext i8 %576 to i16
  store i16 %577, ptr %574, align 8
  %578 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %567, ptr %578, align 8
  %579 = load ptr, ptr %9, align 8
  %580 = tail call i32 @i2c_transfer(ptr noundef %579, ptr noundef %574, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %581

581:                                              ; preds = %566, %564, %561
  %582 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %479, i32 0, i32 12
  %583 = load i16, ptr %582, align 2
  %584 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %585 = icmp slt i32 %584, 0
  br i1 %585, label %586, label %591

586:                                              ; preds = %581
  %587 = load i32, ptr @debug, align 4
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %618, label %589

589:                                              ; preds = %586
  %590 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %606

591:                                              ; preds = %581
  %592 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %592, align 8
  %593 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 72, ptr %593, align 1
  %594 = lshr i16 %583, 8
  %595 = trunc i16 %594 to i8
  %596 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %595, ptr %596, align 2
  %597 = trunc i16 %583 to i8
  %598 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %597, ptr %598, align 1
  %599 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %599, align 8
  %600 = load i8, ptr %10, align 4
  %601 = lshr i8 %600, 1
  %602 = zext i8 %601 to i16
  store i16 %602, ptr %599, align 8
  %603 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %592, ptr %603, align 8
  %604 = load ptr, ptr %9, align 8
  %605 = tail call i32 @i2c_transfer(ptr noundef %604, ptr noundef %599, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %606

606:                                              ; preds = %591, %589
  %607 = load i32, ptr @debug, align 4
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %618, label %609

609:                                              ; preds = %606
  %610 = load i16, ptr %16, align 2
  %611 = zext i16 %610 to i32
  %612 = load i16, ptr %13, align 8
  %613 = zext i16 %612 to i32
  %614 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 9
  %615 = load i16, ptr %614, align 8
  %616 = zext i16 %615 to i32
  %617 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.dib7000p_reset_gpio, i32 noundef %611, i32 noundef %613, i32 noundef %616) #13
  br label %618

618:                                              ; preds = %609, %606, %586
  %619 = load i16, ptr %16, align 2
  %620 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %627

622:                                              ; preds = %618
  %623 = load i32, ptr @debug, align 4
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %642, label %625

625:                                              ; preds = %622
  %626 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %642

627:                                              ; preds = %618
  %628 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 4, ptr %628, align 8
  %629 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 5, ptr %629, align 1
  %630 = lshr i16 %619, 8
  %631 = trunc i16 %630 to i8
  %632 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %631, ptr %632, align 2
  %633 = trunc i16 %619 to i8
  %634 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %633, ptr %634, align 1
  %635 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %635, align 8
  %636 = load i8, ptr %10, align 4
  %637 = lshr i8 %636, 1
  %638 = zext i8 %637 to i16
  store i16 %638, ptr %635, align 8
  %639 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %628, ptr %639, align 8
  %640 = load ptr, ptr %9, align 8
  %641 = tail call i32 @i2c_transfer(ptr noundef %640, ptr noundef %635, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %642

642:                                              ; preds = %627, %625, %622
  %643 = load i16, ptr %13, align 8
  %644 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %645 = icmp slt i32 %644, 0
  br i1 %645, label %646, label %651

646:                                              ; preds = %642
  %647 = load i32, ptr @debug, align 4
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %666, label %649

649:                                              ; preds = %646
  %650 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %666

651:                                              ; preds = %642
  %652 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 4, ptr %652, align 8
  %653 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 6, ptr %653, align 1
  %654 = lshr i16 %643, 8
  %655 = trunc i16 %654 to i8
  %656 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %655, ptr %656, align 2
  %657 = trunc i16 %643 to i8
  %658 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %657, ptr %658, align 1
  %659 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %659, align 8
  %660 = load i8, ptr %10, align 4
  %661 = lshr i8 %660, 1
  %662 = zext i8 %661 to i16
  store i16 %662, ptr %659, align 8
  %663 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %652, ptr %663, align 8
  %664 = load ptr, ptr %9, align 8
  %665 = tail call i32 @i2c_transfer(ptr noundef %664, ptr noundef %659, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %666

666:                                              ; preds = %651, %649, %646
  %667 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 9
  %668 = load i16, ptr %667, align 8
  %669 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %670 = icmp slt i32 %669, 0
  br i1 %670, label %671, label %676

671:                                              ; preds = %666
  %672 = load i32, ptr @debug, align 4
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %691, label %674

674:                                              ; preds = %671
  %675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %691

676:                                              ; preds = %666
  %677 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 4, ptr %677, align 8
  %678 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 8, ptr %678, align 1
  %679 = lshr i16 %668, 8
  %680 = trunc i16 %679 to i8
  %681 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %680, ptr %681, align 2
  %682 = trunc i16 %668 to i8
  %683 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %682, ptr %683, align 1
  %684 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %684, align 8
  %685 = load i8, ptr %10, align 4
  %686 = lshr i8 %685, 1
  %687 = zext i8 %686 to i16
  store i16 %687, ptr %684, align 8
  %688 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %677, ptr %688, align 8
  %689 = load ptr, ptr %9, align 8
  %690 = tail call i32 @i2c_transfer(ptr noundef %689, ptr noundef %684, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %691

691:                                              ; preds = %676, %674, %671
  %692 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 10
  %693 = load i16, ptr %692, align 2
  %694 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %696, label %701

696:                                              ; preds = %691
  %697 = load i32, ptr @debug, align 4
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %716, label %699

699:                                              ; preds = %696
  %700 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %716

701:                                              ; preds = %691
  %702 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 4, ptr %702, align 8
  %703 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 13, ptr %703, align 1
  %704 = lshr i16 %693, 8
  %705 = trunc i16 %704 to i8
  %706 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %705, ptr %706, align 2
  %707 = trunc i16 %693 to i8
  %708 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %707, ptr %708, align 1
  %709 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %709, align 8
  %710 = load i8, ptr %10, align 4
  %711 = lshr i8 %710, 1
  %712 = zext i8 %711 to i16
  store i16 %712, ptr %709, align 8
  %713 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %702, ptr %713, align 8
  %714 = load ptr, ptr %9, align 8
  %715 = tail call i32 @i2c_transfer(ptr noundef %714, ptr noundef %709, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %716

716:                                              ; preds = %701, %699, %696
  %717 = load i16, ptr %48, align 4
  %718 = icmp eq i16 %717, 28816
  br i1 %718, label %719, label %819

719:                                              ; preds = %716
  %720 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %721 = icmp slt i32 %720, 0
  br i1 %721, label %722, label %727

722:                                              ; preds = %719
  %723 = load i32, ptr @debug, align 4
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %739, label %725

725:                                              ; preds = %722
  %726 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %739

727:                                              ; preds = %719
  %728 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %728, align 8
  %729 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -125, ptr %729, align 1
  %730 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %730, align 2
  %731 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %731, align 1
  %732 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %732, align 8
  %733 = load i8, ptr %10, align 4
  %734 = lshr i8 %733, 1
  %735 = zext i8 %734 to i16
  store i16 %735, ptr %732, align 8
  %736 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %728, ptr %736, align 8
  %737 = load ptr, ptr %9, align 8
  %738 = tail call i32 @i2c_transfer(ptr noundef %737, ptr noundef %732, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %739

739:                                              ; preds = %727, %725, %722
  %740 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %741 = icmp slt i32 %740, 0
  br i1 %741, label %742, label %747

742:                                              ; preds = %739
  %743 = load i32, ptr @debug, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %759, label %745

745:                                              ; preds = %742
  %746 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %759

747:                                              ; preds = %739
  %748 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %748, align 8
  %749 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 42, ptr %749, align 1
  %750 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %750, align 2
  %751 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 35, ptr %751, align 1
  %752 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %752, align 8
  %753 = load i8, ptr %10, align 4
  %754 = lshr i8 %753, 1
  %755 = zext i8 %754 to i16
  store i16 %755, ptr %752, align 8
  %756 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %748, ptr %756, align 8
  %757 = load ptr, ptr %9, align 8
  %758 = tail call i32 @i2c_transfer(ptr noundef %757, ptr noundef %752, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %759

759:                                              ; preds = %747, %745, %742
  %760 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %761 = icmp slt i32 %760, 0
  br i1 %761, label %762, label %767

762:                                              ; preds = %759
  %763 = load i32, ptr @debug, align 4
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %779, label %765

765:                                              ; preds = %762
  %766 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %779

767:                                              ; preds = %759
  %768 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %768, align 8
  %769 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 43, ptr %769, align 1
  %770 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 2, ptr %770, align 2
  %771 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 -44, ptr %771, align 1
  %772 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %772, align 8
  %773 = load i8, ptr %10, align 4
  %774 = lshr i8 %773, 1
  %775 = zext i8 %774 to i16
  store i16 %775, ptr %772, align 8
  %776 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %768, ptr %776, align 8
  %777 = load ptr, ptr %9, align 8
  %778 = tail call i32 @i2c_transfer(ptr noundef %777, ptr noundef %772, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %779

779:                                              ; preds = %767, %765, %762
  %780 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %781 = icmp slt i32 %780, 0
  br i1 %781, label %782, label %787

782:                                              ; preds = %779
  %783 = load i32, ptr @debug, align 4
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %799, label %785

785:                                              ; preds = %782
  %786 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %799

787:                                              ; preds = %779
  %788 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %788, align 8
  %789 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 44, ptr %789, align 1
  %790 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 1, ptr %790, align 2
  %791 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 44, ptr %791, align 1
  %792 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %792, align 8
  %793 = load i8, ptr %10, align 4
  %794 = lshr i8 %793, 1
  %795 = zext i8 %794 to i16
  store i16 %795, ptr %792, align 8
  %796 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %788, ptr %796, align 8
  %797 = load ptr, ptr %9, align 8
  %798 = tail call i32 @i2c_transfer(ptr noundef %797, ptr noundef %792, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %799

799:                                              ; preds = %787, %785, %782
  %800 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %801 = icmp slt i32 %800, 0
  br i1 %801, label %802, label %807

802:                                              ; preds = %799
  %803 = load i32, ptr @debug, align 4
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %819, label %805

805:                                              ; preds = %802
  %806 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %819

807:                                              ; preds = %799
  %808 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 1, ptr %808, align 8
  %809 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 17, ptr %809, align 1
  %810 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %810, align 2
  %811 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 30, ptr %811, align 1
  %812 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %812, align 8
  %813 = load i8, ptr %10, align 4
  %814 = lshr i8 %813, 1
  %815 = zext i8 %814 to i16
  store i16 %815, ptr %812, align 8
  %816 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %808, ptr %816, align 8
  %817 = load ptr, ptr %9, align 8
  %818 = tail call i32 @i2c_transfer(ptr noundef %817, ptr noundef %812, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %819

819:                                              ; preds = %807, %805, %802, %716
  %820 = tail call fastcc i32 @dib7000p_set_output_mode(ptr noundef %5, i32 noundef 0) #12
  %821 = icmp ne i32 %820, 0
  %822 = load i32, ptr @debug, align 4
  %823 = icmp ne i32 %822, 0
  %824 = select i1 %821, i1 %823, i1 false
  br i1 %824, label %825, label %827

825:                                              ; preds = %819
  %826 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.dib7000p_demod_reset) #13
  br label %827

827:                                              ; preds = %825, %819
  tail call fastcc void @dib7000p_set_adc_state(ptr noundef %5, i32 noundef 0) #12
  tail call fastcc void @dib7000p_sad_calib(ptr noundef %5) #12
  tail call fastcc void @dib7000p_set_adc_state(ptr noundef %5, i32 noundef 1) #12
  %828 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext 1285) #12
  %829 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %830 = icmp slt i32 %829, 0
  br i1 %830, label %831, label %836

831:                                              ; preds = %827
  %832 = load i32, ptr @debug, align 4
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %852, label %834

834:                                              ; preds = %831
  %835 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %852

836:                                              ; preds = %827
  %837 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 5, ptr %837, align 8
  %838 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 5, ptr %838, align 1
  %839 = lshr i16 %828, 8
  %840 = trunc i16 %839 to i8
  %841 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %840, ptr %841, align 2
  %842 = trunc i16 %828 to i8
  %843 = and i8 %842, -3
  %844 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %843, ptr %844, align 1
  %845 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %845, align 8
  %846 = load i8, ptr %10, align 4
  %847 = lshr i8 %846, 1
  %848 = zext i8 %847 to i16
  store i16 %848, ptr %845, align 8
  %849 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %837, ptr %849, align 8
  %850 = load ptr, ptr %9, align 8
  %851 = tail call i32 @i2c_transfer(ptr noundef %850, ptr noundef %845, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %852

852:                                              ; preds = %836, %834, %831
  tail call fastcc void @dib7000p_set_bandwidth(ptr noundef %5, i32 noundef 8000) #12
  %853 = load i16, ptr %48, align 4
  %854 = icmp eq i16 %853, 28816
  br i1 %854, label %855, label %875

855:                                              ; preds = %852
  %856 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %857 = icmp slt i32 %856, 0
  br i1 %857, label %858, label %863

858:                                              ; preds = %855
  %859 = load i32, ptr @debug, align 4
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %917, label %861

861:                                              ; preds = %858
  %862 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %917

863:                                              ; preds = %855
  %864 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %864, align 8
  %865 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 36, ptr %865, align 1
  %866 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 7, ptr %866, align 2
  %867 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 85, ptr %867, align 1
  %868 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %868, align 8
  %869 = load i8, ptr %10, align 4
  %870 = lshr i8 %869, 1
  %871 = zext i8 %870 to i16
  store i16 %871, ptr %868, align 8
  %872 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %864, ptr %872, align 8
  %873 = load ptr, ptr %9, align 8
  %874 = tail call i32 @i2c_transfer(ptr noundef %873, ptr noundef %868, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %917

875:                                              ; preds = %852
  %876 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 1, i32 2
  %877 = load i8, ptr %876, align 2
  %878 = icmp eq i8 %877, 0
  %879 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %880 = icmp slt i32 %879, 0
  br i1 %878, label %899, label %881

881:                                              ; preds = %875
  br i1 %880, label %882, label %887

882:                                              ; preds = %881
  %883 = load i32, ptr @debug, align 4
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %917, label %885

885:                                              ; preds = %882
  %886 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %917

887:                                              ; preds = %881
  %888 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %888, align 8
  %889 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 36, ptr %889, align 1
  %890 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 7, ptr %890, align 2
  %891 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 85, ptr %891, align 1
  %892 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %892, align 8
  %893 = load i8, ptr %10, align 4
  %894 = lshr i8 %893, 1
  %895 = zext i8 %894 to i16
  store i16 %895, ptr %892, align 8
  %896 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %888, ptr %896, align 8
  %897 = load ptr, ptr %9, align 8
  %898 = tail call i32 @i2c_transfer(ptr noundef %897, ptr noundef %892, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %917

899:                                              ; preds = %875
  br i1 %880, label %900, label %905

900:                                              ; preds = %899
  %901 = load i32, ptr @debug, align 4
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %917, label %903

903:                                              ; preds = %900
  %904 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %917

905:                                              ; preds = %899
  %906 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 0, ptr %906, align 8
  %907 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 36, ptr %907, align 1
  %908 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 31, ptr %908, align 2
  %909 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 85, ptr %909, align 1
  %910 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %910, align 8
  %911 = load i8, ptr %10, align 4
  %912 = lshr i8 %911, 1
  %913 = zext i8 %912 to i16
  store i16 %913, ptr %910, align 8
  %914 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %906, ptr %914, align 8
  %915 = load ptr, ptr %9, align 8
  %916 = tail call i32 @i2c_transfer(ptr noundef %915, ptr noundef %910, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %917

917:                                              ; preds = %905, %903, %900, %887, %885, %882, %863, %861, %858
  %918 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  %919 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  %920 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  %921 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  %922 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  %923 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  br label %924

924:                                              ; preds = %958, %917
  %925 = phi i16 [ 3, %917 ], [ %960, %958 ]
  %926 = phi ptr [ getelementptr inbounds ([77 x i16], ptr @dib7000p_defaults, i32 0, i32 1), %917 ], [ %959, %958 ]
  %927 = getelementptr i16, ptr %926, i32 1
  %928 = load i16, ptr %926, align 2
  br label %929

929:                                              ; preds = %954, %924
  %930 = phi i16 [ %925, %924 ], [ %956, %954 ]
  %931 = phi i16 [ %928, %924 ], [ %955, %954 ]
  %932 = phi ptr [ %927, %924 ], [ %933, %954 ]
  %933 = getelementptr i16, ptr %932, i32 1
  %934 = load i16, ptr %932, align 2
  %935 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %936 = icmp slt i32 %935, 0
  br i1 %936, label %937, label %942

937:                                              ; preds = %929
  %938 = load i32, ptr @debug, align 4
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %954, label %940

940:                                              ; preds = %937
  %941 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %954

942:                                              ; preds = %929
  %943 = lshr i16 %931, 8
  %944 = trunc i16 %943 to i8
  store i8 %944, ptr %918, align 8
  %945 = trunc i16 %931 to i8
  store i8 %945, ptr %919, align 1
  %946 = lshr i16 %934, 8
  %947 = trunc i16 %946 to i8
  store i8 %947, ptr %920, align 2
  %948 = trunc i16 %934 to i8
  store i8 %948, ptr %921, align 1
  store i64 17179869184, ptr %922, align 8
  %949 = load i8, ptr %10, align 4
  %950 = lshr i8 %949, 1
  %951 = zext i8 %950 to i16
  store i16 %951, ptr %922, align 8
  store ptr %918, ptr %923, align 8
  %952 = load ptr, ptr %9, align 8
  %953 = tail call i32 @i2c_transfer(ptr noundef %952, ptr noundef %922, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %954

954:                                              ; preds = %942, %940, %937
  %955 = add i16 %931, 1
  %956 = add i16 %930, -1
  %957 = icmp eq i16 %956, 0
  br i1 %957, label %958, label %929

958:                                              ; preds = %954
  %959 = getelementptr i16, ptr %932, i32 2
  %960 = load i16, ptr %933, align 2
  %961 = icmp eq i16 %960, 0
  br i1 %961, label %962, label %924

962:                                              ; preds = %958
  %963 = load i16, ptr %48, align 4
  %964 = icmp eq i16 %963, 28816
  br i1 %964, label %1025, label %965

965:                                              ; preds = %962
  %966 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %967 = icmp slt i32 %966, 0
  br i1 %967, label %968, label %973

968:                                              ; preds = %965
  %969 = load i32, ptr @debug, align 4
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %985, label %971

971:                                              ; preds = %968
  %972 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %985

973:                                              ; preds = %965
  %974 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %974, align 8
  %975 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -123, ptr %975, align 1
  %976 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 0, ptr %976, align 2
  %977 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 6, ptr %977, align 1
  %978 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %978, align 8
  %979 = load i8, ptr %10, align 4
  %980 = lshr i8 %979, 1
  %981 = zext i8 %980 to i16
  store i16 %981, ptr %978, align 8
  %982 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %974, ptr %982, align 8
  %983 = load ptr, ptr %9, align 8
  %984 = tail call i32 @i2c_transfer(ptr noundef %983, ptr noundef %978, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %985

985:                                              ; preds = %973, %971, %968
  %986 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %987 = icmp slt i32 %986, 0
  br i1 %987, label %988, label %993

988:                                              ; preds = %985
  %989 = load i32, ptr @debug, align 4
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1005, label %991

991:                                              ; preds = %988
  %992 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1005

993:                                              ; preds = %985
  %994 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %994, align 8
  %995 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -122, ptr %995, align 1
  %996 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 12, ptr %996, align 2
  %997 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 64, ptr %997, align 1
  %998 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %998, align 8
  %999 = load i8, ptr %10, align 4
  %1000 = lshr i8 %999, 1
  %1001 = zext i8 %1000 to i16
  store i16 %1001, ptr %998, align 8
  %1002 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %994, ptr %1002, align 8
  %1003 = load ptr, ptr %9, align 8
  %1004 = tail call i32 @i2c_transfer(ptr noundef %1003, ptr noundef %998, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %1005

1005:                                             ; preds = %993, %991, %988
  %1006 = tail call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %1007 = icmp slt i32 %1006, 0
  br i1 %1007, label %1008, label %1013

1008:                                             ; preds = %1005
  %1009 = load i32, ptr @debug, align 4
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1025, label %1011

1011:                                             ; preds = %1008
  %1012 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1025

1013:                                             ; preds = %1005
  %1014 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 3, ptr %1014, align 8
  %1015 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 -119, ptr %1015, align 1
  %1016 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 44, ptr %1016, align 2
  %1017 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 -114, ptr %1017, align 1
  %1018 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %1018, align 8
  %1019 = load i8, ptr %10, align 4
  %1020 = lshr i8 %1019, 1
  %1021 = zext i8 %1020 to i16
  store i16 %1021, ptr %1018, align 8
  %1022 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %1014, ptr %1022, align 8
  %1023 = load ptr, ptr %9, align 8
  %1024 = tail call i32 @i2c_transfer(ptr noundef %1023, ptr noundef %1018, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %23) #12
  br label %1025

1025:                                             ; preds = %1013, %1011, %1008, %962
  tail call fastcc void @dib7000p_set_power_mode(ptr noundef %5, i32 noundef 2) #12
  %1026 = load ptr, ptr %21, align 8
  %1027 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42
  %1028 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 43
  %1029 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 46
  %1030 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 47
  %1031 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 48
  %1032 = getelementptr inbounds i8, ptr %1027, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(66) %1032, i8 0, i64 66, i1 false) #12
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(111) %1029, i8 0, i64 111, i1 false) #12
  store i8 1, ptr %1027, align 4
  store i8 1, ptr %1028, align 1
  store i8 1, ptr %1031, align 2
  %1033 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 49
  store i8 1, ptr %1033, align 1
  store i8 1, ptr %1029, align 8
  store i8 1, ptr %1030, align 1
  %1034 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %1034, align 1
  %1035 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %1035, align 2
  %1036 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %1036, align 8
  %1037 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1026, i16 noundef zeroext 506) #12
  %1038 = zext i16 %1037 to i64
  %1039 = getelementptr inbounds %struct.dib7000p_state, ptr %1026, i32 0, i32 24
  store i64 %1038, ptr %1039, align 8
  %1040 = getelementptr inbounds %struct.dib7000p_state, ptr %1026, i32 0, i32 26
  store i32 0, ptr %1040, align 4
  %1041 = getelementptr inbounds %struct.dib7000p_state, ptr %1026, i32 0, i32 25
  store i32 0, ptr %1041, align 8
  %1042 = load i16, ptr %48, align 4
  %1043 = icmp eq i16 %1042, 28816
  br i1 %1043, label %1044, label %1048

1044:                                             ; preds = %1025
  %1045 = load i8, ptr %17, align 4
  %1046 = zext i8 %1045 to i32
  tail call fastcc void @dib7090_set_output_mode(ptr noundef nonnull %5, i32 noundef %1046)
  tail call fastcc void @dib7090_set_diversity_in(ptr noundef nonnull %5)
  br label %1048

1047:                                             ; preds = %43
  tail call void @kfree(ptr noundef nonnull %5) #12
  br label %1048

1048:                                             ; preds = %1047, %1044, %1025, %3
  %1049 = phi ptr [ null, %1047 ], [ null, %3 ], [ %5, %1044 ], [ %5, %1025 ]
  ret ptr %1049
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_set_agc1_min(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %32

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %14, align 8
  %15 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 108, ptr %15, align 1
  %16 = lshr i16 %1, 8
  %17 = trunc i16 %16 to i8
  %18 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %17, ptr %18, align 2
  %19 = trunc i16 %1 to i8
  %20 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %21, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = lshr i8 %23, 1
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %21, align 8
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %14, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @i2c_transfer(ptr noundef %28, ptr noundef %21, i32 noundef 1) #12
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %32

32:                                               ; preds = %13, %11, %8
  %33 = phi i32 [ %31, %13 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_set_gpio(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %6, i16 noundef zeroext 1029) #12
  %8 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 13
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
  store i16 %18, ptr %8, align 2
  %19 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 22
  %20 = tail call i32 @mutex_lock_interruptible(ptr noundef %19) #12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %44

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 20
  store i8 4, ptr %28, align 8
  %29 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 1
  store i8 5, ptr %29, align 1
  %30 = lshr i16 %18, 8
  %31 = trunc i16 %30 to i8
  %32 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 2
  store i8 %31, ptr %32, align 2
  %33 = trunc i16 %18 to i8
  %34 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 3
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19
  store i64 17179869184, ptr %35, align 8
  %36 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 2
  %37 = load i8, ptr %36, align 4
  %38 = lshr i8 %37, 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %35, align 8
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19, i32 0, i32 3
  store ptr %28, ptr %40, align 8
  %41 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @i2c_transfer(ptr noundef %42, ptr noundef %35, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %19) #12
  br label %44

44:                                               ; preds = %27, %25, %22
  %45 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %6, i16 noundef zeroext 1030) #12
  %46 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 14
  %47 = and i16 %45, %12
  %48 = and i8 %3, 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, %9
  %51 = trunc i32 %50 to i16
  %52 = or i16 %47, %51
  store i16 %52, ptr %46, align 8
  %53 = tail call i32 @mutex_lock_interruptible(ptr noundef %19) #12
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %55
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %77

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 20
  store i8 4, ptr %61, align 8
  %62 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 1
  store i8 6, ptr %62, align 1
  %63 = lshr i16 %52, 8
  %64 = trunc i16 %63 to i8
  %65 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 2
  store i8 %64, ptr %65, align 2
  %66 = trunc i16 %52 to i8
  %67 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 3
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19
  store i64 17179869184, ptr %68, align 8
  %69 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = lshr i8 %70, 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %68, align 8
  %73 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19, i32 0, i32 3
  store ptr %61, ptr %73, align 8
  %74 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = tail call i32 @i2c_transfer(ptr noundef %75, ptr noundef %68, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %19) #12
  br label %77

77:                                               ; preds = %60, %58, %55
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_i2c_enumeration(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) #1 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4944) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %145, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 3
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.55, ptr noundef nonnull @dib7000p_i2c_enumeration.__key) #12
  %11 = add i32 %1, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %143

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 1
  %15 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 20
  %17 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 1
  %18 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 2
  %19 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 3
  %20 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19
  %21 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19, i32 0, i32 3
  br label %33

22:                                               ; preds = %109
  %23 = icmp sgt i32 %1, 0
  br i1 %23, label %24, label %143

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 20
  %28 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 1
  %29 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 2
  %30 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 3
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19
  %32 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19, i32 0, i32 3
  br label %112

33:                                               ; preds = %109, %13
  %34 = phi i32 [ %11, %13 ], [ %110, %109 ]
  %35 = phi i32 [ %1, %13 ], [ %34, %109 ]
  %36 = getelementptr %struct.dib7000p_config, ptr %3, i32 %34
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %14, ptr noundef align 4 dereferenceable(44) %36, i32 44, i1 false)
  %37 = getelementptr %struct.dib7000p_config, ptr %3, i32 %34, i32 17
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  %40 = trunc i32 %34 to i8
  %41 = shl i8 %40, 1
  %42 = add i8 %38, %41
  %43 = trunc i32 %35 to i8
  %44 = shl i8 %43, 1
  %45 = add i8 %44, 126
  %46 = select i1 %39, i8 %45, i8 %42
  store i8 %46, ptr %15, align 4
  %47 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %60

54:                                               ; preds = %33
  store i8 5, ptr %16, align 8
  store i8 7, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 3, ptr %19, align 1
  store i64 17179869184, ptr %20, align 8
  %55 = load i8, ptr %15, align 4
  %56 = lshr i8 %55, 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %20, align 8
  store ptr %16, ptr %21, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = tail call i32 @i2c_transfer(ptr noundef %58, ptr noundef %20, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %10) #12
  br label %60

60:                                               ; preds = %54, %52, %49
  %61 = tail call fastcc i32 @dib7000p_identify(ptr noundef nonnull %6)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %60
  store i8 %2, ptr %15, align 4
  %64 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %77

71:                                               ; preds = %63
  store i8 5, ptr %16, align 8
  store i8 7, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 3, ptr %19, align 1
  store i64 17179869184, ptr %20, align 8
  %72 = load i8, ptr %15, align 4
  %73 = lshr i8 %72, 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %20, align 8
  store ptr %16, ptr %21, align 8
  %75 = load ptr, ptr %9, align 8
  %76 = tail call i32 @i2c_transfer(ptr noundef %75, ptr noundef %20, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %10) #12
  br label %77

77:                                               ; preds = %71, %69, %66
  %78 = tail call fastcc i32 @dib7000p_identify(ptr noundef nonnull %6)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %143, label %83

83:                                               ; preds = %80
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dib7000p_i2c_enumeration, i32 noundef %34) #13
  br label %143

85:                                               ; preds = %77, %60
  %86 = tail call fastcc i32 @dib7000p_set_output_mode(ptr noundef nonnull %6, i32 noundef 4)
  %87 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #12
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, ptr @debug, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %89
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %103

94:                                               ; preds = %85
  %95 = shl i8 %46, 2
  %96 = or i8 %95, 2
  store i8 5, ptr %16, align 8
  store i8 5, ptr %17, align 1
  %97 = lshr i8 %46, 6
  store i8 %97, ptr %18, align 2
  store i8 %96, ptr %19, align 1
  store i64 17179869184, ptr %20, align 8
  %98 = load i8, ptr %15, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %20, align 8
  store ptr %16, ptr %21, align 8
  %101 = load ptr, ptr %9, align 8
  %102 = tail call i32 @i2c_transfer(ptr noundef %101, ptr noundef %20, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %10) #12
  br label %103

103:                                              ; preds = %94, %92
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = zext i8 %46 to i32
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dib7000p_i2c_enumeration, i32 noundef %34, i32 noundef %107) #13
  br label %109

109:                                              ; preds = %106, %103, %89
  %110 = add i32 %34, -1
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %33, label %22

112:                                              ; preds = %139, %24
  %113 = phi i32 [ 0, %24 ], [ %141, %139 ]
  %114 = getelementptr %struct.dib7000p_config, ptr %3, i32 %113
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %25, ptr noundef align 4 dereferenceable(44) %114, i32 44, i1 false)
  %115 = getelementptr %struct.dib7000p_config, ptr %3, i32 %113, i32 17
  %116 = load i8, ptr %115, align 4
  %117 = icmp eq i8 %116, 0
  %118 = trunc i32 %113 to i8
  %119 = add i8 %116, %118
  %120 = shl i8 %119, 1
  %121 = shl i8 %118, 1
  %122 = xor i8 %121, -128
  %123 = select i1 %117, i8 %122, i8 %120
  store i8 %123, ptr %26, align 4
  %124 = tail call i32 @mutex_lock_interruptible(ptr noundef %10) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %139

131:                                              ; preds = %112
  %132 = shl i8 %123, 2
  store i8 5, ptr %27, align 8
  store i8 5, ptr %28, align 1
  %133 = lshr i8 %123, 6
  store i8 %133, ptr %29, align 2
  store i8 %132, ptr %30, align 1
  store i64 17179869184, ptr %31, align 8
  %134 = load i8, ptr %26, align 4
  %135 = lshr i8 %134, 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %31, align 8
  store ptr %27, ptr %32, align 8
  %137 = load ptr, ptr %9, align 8
  %138 = tail call i32 @i2c_transfer(ptr noundef %137, ptr noundef %31, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %10) #12
  br label %139

139:                                              ; preds = %131, %129, %126
  %140 = tail call fastcc i32 @dib7000p_set_output_mode(ptr noundef nonnull %6, i32 noundef 0)
  %141 = add nuw nsw i32 %113, 1
  %142 = icmp eq i32 %141, %1
  br i1 %142, label %143, label %112

143:                                              ; preds = %139, %83, %80, %22, %8
  %144 = phi i32 [ -5, %83 ], [ -5, %80 ], [ 0, %8 ], [ 0, %22 ], [ 0, %139 ]
  tail call void @kfree(ptr noundef nonnull %6) #12
  br label %145

145:                                              ; preds = %143, %4
  %146 = phi i32 [ -12, %4 ], [ %144, %143 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = zext i8 %1 to i32
  %11 = zext i16 %2 to i32
  %12 = zext i8 %3 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dib7000p_pid_filter, i32 noundef %10, i32 noundef %11, i32 noundef %12) #13
  br label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 22
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %50

23:                                               ; preds = %14
  %24 = icmp eq i8 %3, 0
  %25 = or i16 %2, 8192
  %26 = select i1 %24, i16 0, i16 %25
  %27 = zext i8 %1 to i16
  %28 = add nuw nsw i16 %27, 241
  %29 = lshr i16 %28, 8
  %30 = trunc i16 %29 to i8
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 20
  store i8 %30, ptr %31, align 8
  %32 = trunc i16 %28 to i8
  %33 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 1
  store i8 %32, ptr %33, align 1
  %34 = lshr i16 %26, 8
  %35 = trunc i16 %34 to i8
  %36 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 2
  store i8 %35, ptr %36, align 2
  %37 = trunc i16 %26 to i8
  %38 = getelementptr %struct.dib7000p_state, ptr %6, i32 0, i32 20, i32 3
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19
  store i64 17179869184, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 2
  %41 = load i8, ptr %40, align 4
  %42 = lshr i8 %41, 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %39, align 8
  %44 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 19, i32 0, i32 3
  store ptr %31, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 @i2c_transfer(ptr noundef %46, ptr noundef %39, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 1
  %49 = select i1 %48, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %50

50:                                               ; preds = %23, %21, %18
  %51 = phi i32 [ %49, %23 ], [ -22, %21 ], [ -22, %18 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_pid_filter_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 235)
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = zext i8 %1 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dib7000p_pid_filter_ctrl, i32 noundef %9) #13
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %44

20:                                               ; preds = %11
  %21 = zext i8 %1 to i16
  %22 = shl nuw nsw i16 %21, 4
  %23 = and i16 %22, 16
  %24 = and i16 %5, 239
  %25 = or i16 %24, %23
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %26, align 8
  %27 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -21, ptr %27, align 1
  %28 = lshr i16 %5, 8
  %29 = trunc i16 %28 to i8
  %30 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %29, ptr %30, align 2
  %31 = trunc i16 %25 to i8
  %32 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = lshr i8 %35, 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %33, align 8
  %38 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %26, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 @i2c_transfer(ptr noundef %40, ptr noundef %33, i32 noundef 1) #12
  %42 = icmp eq i32 %41, 1
  %43 = select i1 %42, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %12) #12
  br label %44

44:                                               ; preds = %20, %18, %15
  %45 = phi i32 [ %43, %20 ], [ -22, %18 ], [ -22, %15 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dib7000p_get_i2c_master(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 4
  %7 = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %6, i32 noundef %1, i32 noundef %2) #12
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_update_pll(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1856)
  %6 = lshr i16 %5, 6
  %7 = trunc i16 %6 to i8
  %8 = and i8 %7, 63
  %9 = icmp eq ptr %1, null
  br i1 %9, label %199, label %10

10:                                               ; preds = %2
  %11 = and i16 %5, 63
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  %16 = icmp eq i16 %11, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, %8
  br i1 %20, label %199, label %21

21:                                               ; preds = %17, %10
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = zext i8 %14 to i32
  %26 = zext i8 %8 to i32
  %27 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.dib7000p_update_pll, i32 noundef %12, i32 noundef %25, i32 noundef %26, i32 noundef %29) #13
  br label %31

31:                                               ; preds = %24, %21
  %32 = and i16 %5, -4096
  %33 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1857)
  %34 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %35 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %60

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %43, align 8
  %44 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 65, ptr %44, align 1
  %45 = lshr i16 %33, 8
  %46 = trunc i16 %45 to i8
  %47 = and i8 %46, 127
  %48 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %47, ptr %48, align 2
  %49 = trunc i16 %33 to i8
  %50 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %53 = load i8, ptr %52, align 4
  %54 = lshr i8 %53, 1
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %51, align 8
  %56 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %43, ptr %56, align 8
  %57 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = tail call i32 @i2c_transfer(ptr noundef %58, ptr noundef %51, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %60

60:                                               ; preds = %42, %40, %37
  %61 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1, i32 0, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = load i8, ptr %13, align 4
  %64 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %94

71:                                               ; preds = %60
  %72 = and i8 %62, 63
  %73 = zext i8 %72 to i16
  %74 = shl nuw nsw i16 %73, 6
  %75 = or i16 %74, %32
  %76 = and i8 %63, 63
  %77 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %77, align 8
  %78 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 64, ptr %78, align 1
  %79 = lshr i16 %75, 8
  %80 = trunc i16 %79 to i8
  %81 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %80, ptr %81, align 2
  %82 = trunc i16 %74 to i8
  %83 = or i8 %76, %82
  %84 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %83, ptr %84, align 1
  %85 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %85, align 8
  %86 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %87 = load i8, ptr %86, align 4
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %85, align 8
  %90 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %77, ptr %90, align 8
  %91 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %92 = load ptr, ptr %91, align 8
  %93 = tail call i32 @i2c_transfer(ptr noundef %92, ptr noundef %85, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %94

94:                                               ; preds = %71, %69, %66
  %95 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 18) #12
  %96 = zext i16 %95 to i32
  %97 = shl nuw i32 %96, 16
  %98 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 19) #12
  %99 = zext i16 %98 to i32
  %100 = or i32 %97, %99
  %101 = udiv i32 %100, 1000
  %102 = zext i8 %8 to i32
  %103 = udiv i32 %101, %102
  %104 = mul nuw nsw i32 %103, %12
  %105 = load i8, ptr %13, align 4
  %106 = zext i8 %105 to i32
  %107 = udiv i32 %104, %106
  %108 = mul i32 %107, 1000
  %109 = load i8, ptr %61, align 1
  %110 = zext i8 %109 to i32
  %111 = mul i32 %108, %110
  %112 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %94
  %115 = load i32, ptr @debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %114
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %137

119:                                              ; preds = %94
  %120 = lshr i32 %111, 16
  %121 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %121, align 8
  %122 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 18, ptr %122, align 1
  %123 = lshr i32 %111, 24
  %124 = trunc i32 %123 to i8
  %125 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %124, ptr %125, align 2
  %126 = trunc i32 %120 to i8
  %127 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %126, ptr %127, align 1
  %128 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %128, align 8
  %129 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %130 = load i8, ptr %129, align 4
  %131 = lshr i8 %130, 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %128, align 8
  %133 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %121, ptr %133, align 8
  %134 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %135 = load ptr, ptr %134, align 8
  %136 = tail call i32 @i2c_transfer(ptr noundef %135, ptr noundef %128, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %137

137:                                              ; preds = %119, %117, %114
  %138 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, ptr @debug, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %140
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %162

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %146, align 8
  %147 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 19, ptr %147, align 1
  %148 = lshr i32 %111, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %149, ptr %150, align 2
  %151 = trunc i32 %111 to i8
  %152 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %151, ptr %152, align 1
  %153 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %153, align 8
  %154 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %155 = load i8, ptr %154, align 4
  %156 = lshr i8 %155, 1
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %153, align 8
  %158 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %146, ptr %158, align 8
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %160 = load ptr, ptr %159, align 8
  %161 = tail call i32 @i2c_transfer(ptr noundef %160, ptr noundef %153, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %162

162:                                              ; preds = %145, %143, %140
  %163 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, ptr @debug, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %165
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %188

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %171, align 8
  %172 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 65, ptr %172, align 1
  %173 = lshr i16 %33, 8
  %174 = trunc i16 %173 to i8
  %175 = or i8 %174, -128
  %176 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %175, ptr %176, align 2
  %177 = trunc i16 %33 to i8
  %178 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %177, ptr %178, align 1
  %179 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %179, align 8
  %180 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %181 = load i8, ptr %180, align 4
  %182 = lshr i8 %181, 1
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %179, align 8
  %184 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %171, ptr %184, align 8
  %185 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %186 = load ptr, ptr %185, align 8
  %187 = tail call i32 @i2c_transfer(ptr noundef %186, ptr noundef %179, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %188

188:                                              ; preds = %170, %168, %165
  %189 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1856)
  %190 = icmp slt i16 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %196, %188
  %192 = load i32, ptr @debug, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.dib7000p_update_pll) #13
  br label %196

196:                                              ; preds = %194, %191
  %197 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1856)
  %198 = icmp slt i16 %197, 0
  br i1 %198, label %199, label %191

199:                                              ; preds = %196, %188, %17, %2
  %200 = phi i32 [ -5, %17 ], [ -5, %2 ], [ 0, %188 ], [ 0, %196 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_ctrl_timf(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  switch i8 %1, label %9 [
    i8 0, label %6
    i8 2, label %8
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 9
  store i32 %2, ptr %7, align 4
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @dib7000p_update_timf(ptr noundef %5)
  br label %9

9:                                                ; preds = %8, %6, %3
  %10 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  tail call fastcc void @dib7000p_set_bandwidth(ptr noundef %5, i32 noundef %11)
  %12 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_get_agc_values(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) #1 {
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %7, i16 noundef zeroext 394)
  store i16 %10, ptr %1, align 2
  br label %11

11:                                               ; preds = %9, %5
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %7, i16 noundef zeroext 392)
  store i16 %14, ptr %2, align 2
  br label %15

15:                                               ; preds = %13, %11
  %16 = icmp eq ptr %3, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %7, i16 noundef zeroext 393)
  store i16 %18, ptr %3, align 2
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp eq ptr %4, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %7, i16 noundef zeroext 397)
  store i16 %22, ptr %4, align 2
  br label %23

23:                                               ; preds = %21, %19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_set_wbd_ref(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i16 @llvm.umin.i16(i16 %1, i16 4095)
  %6 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 5
  store i16 %5, ptr %6, align 8
  %7 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 105)
  %8 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %37

16:                                               ; preds = %2
  %17 = and i16 %7, -4096
  %18 = or i16 %17, %5
  %19 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %19, align 8
  %20 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 105, ptr %20, align 1
  %21 = lshr i16 %18, 8
  %22 = trunc i16 %21 to i8
  %23 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %22, ptr %23, align 2
  %24 = trunc i16 %5 to i8
  %25 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %26, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %19, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %26, i32 noundef 1) #12
  %35 = icmp eq i32 %34, 1
  %36 = select i1 %35, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %8) #12
  br label %37

37:                                               ; preds = %16, %14, %11
  %38 = phi i32 [ %36, %16 ], [ -22, %14 ], [ -22, %11 ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_read_word) #13
  br label %47

11:                                               ; preds = %2
  %12 = lshr i16 %1, 8
  %13 = trunc i16 %12 to i8
  %14 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 %13, ptr %14, align 8
  %15 = trunc i16 %1 to i8
  %16 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %17, i8 0, i32 24, i1 false)
  %18 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = lshr i8 %19, 1
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %17, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %14, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 2
  store i16 2, ptr %23, align 4
  %24 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 1
  store i16 %21, ptr %24, align 4
  %25 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 21
  %27 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 1, i32 3
  store ptr %26, ptr %27, align 4
  %28 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 1, i32 2
  store i16 2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @i2c_transfer(ptr noundef %30, ptr noundef %17, i32 noundef 2) #12
  %32 = icmp ne i32 %31, 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %11
  %37 = zext i16 %1 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib7000p_read_word, i32 noundef %37) #13
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i8, ptr %26, align 4
  %41 = zext i8 %40 to i16
  %42 = shl nuw i16 %41, 8
  %43 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 21, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  %46 = or i16 %42, %45
  tail call void @mutex_unlock(ptr noundef %3) #12
  br label %47

47:                                               ; preds = %39, %9, %6
  %48 = phi i16 [ %46, %39 ], [ 0, %9 ], [ 0, %6 ]
  ret i16 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib7000p_write_word(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %35

12:                                               ; preds = %3
  %13 = lshr i16 %1, 8
  %14 = trunc i16 %13 to i8
  %15 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 %14, ptr %15, align 8
  %16 = trunc i16 %1 to i8
  %17 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 %16, ptr %17, align 1
  %18 = lshr i16 %2, 8
  %19 = trunc i16 %18 to i8
  %20 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %19, ptr %20, align 2
  %21 = trunc i16 %2 to i8
  %22 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = lshr i8 %25, 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %23, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %15, ptr %28, align 8
  %29 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 2
  store i16 4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @i2c_transfer(ptr noundef %31, ptr noundef %23, i32 noundef 1) #12
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %35

35:                                               ; preds = %12, %10, %7
  %36 = phi i32 [ %34, %12 ], [ -22, %10 ], [ -22, %7 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib7000p_identify(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dib7000p_identify, i32 noundef %7, i32 noundef %7) #13
  br label %9

9:                                                ; preds = %4, %1
  %10 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 768)
  %11 = zext i16 %10 to i32
  %12 = icmp eq i16 %10, 435
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dib7000p_identify, i32 noundef %11) #13
  br label %27

18:                                               ; preds = %9
  %19 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 769)
  %20 = zext i16 %19 to i32
  %21 = icmp eq i16 %19, 16384
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.dib7000p_identify, i32 noundef %20) #13
  br label %27

27:                                               ; preds = %25, %22, %18, %16, %13
  %28 = phi i32 [ -121, %16 ], [ -121, %13 ], [ -121, %25 ], [ -121, %22 ], [ 0, %18 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_set_output_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1798) #12
  %6 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %33

14:                                               ; preds = %2
  %15 = and i16 %5, -29128
  %16 = or i16 %15, 4161
  %17 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %17, align 8
  %18 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 6, ptr %18, align 1
  %19 = lshr i16 %16, 8
  %20 = trunc i16 %19 to i8
  %21 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %20, ptr %21, align 2
  %22 = trunc i16 %16 to i8
  %23 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %24, align 8
  %25 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %24, align 8
  %29 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %17, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @i2c_transfer(ptr noundef %31, ptr noundef %24, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %33

33:                                               ; preds = %14, %12, %9
  %34 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1799) #12
  %35 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %61

42:                                               ; preds = %33
  %43 = and i16 %34, -1821
  %44 = or i16 %43, 260
  %45 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %45, align 8
  %46 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 7, ptr %46, align 1
  %47 = lshr i16 %44, 8
  %48 = trunc i16 %47 to i8
  %49 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %48, ptr %49, align 2
  %50 = trunc i16 %44 to i8
  %51 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %54 = load i8, ptr %53, align 4
  %55 = lshr i8 %54, 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %52, align 8
  %57 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %45, ptr %57, align 8
  %58 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 @i2c_transfer(ptr noundef %59, ptr noundef %52, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %61

61:                                               ; preds = %42, %40, %37
  %62 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1800) #12
  %63 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, ptr @debug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %89

70:                                               ; preds = %61
  %71 = and i16 %62, -29128
  %72 = or i16 %71, 4161
  %73 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %73, align 8
  %74 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 8, ptr %74, align 1
  %75 = lshr i16 %72, 8
  %76 = trunc i16 %75 to i8
  %77 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %76, ptr %77, align 2
  %78 = trunc i16 %72 to i8
  %79 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %80, align 8
  %81 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %82 = load i8, ptr %81, align 4
  %83 = lshr i8 %82, 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %80, align 8
  %85 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %73, ptr %85, align 8
  %86 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = tail call i32 @i2c_transfer(ptr noundef %87, ptr noundef %80, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %89

89:                                               ; preds = %70, %68, %65
  %90 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1801) #12
  %91 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %93
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %117

98:                                               ; preds = %89
  %99 = and i16 %90, -1821
  %100 = or i16 %99, 260
  %101 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %101, align 8
  %102 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 9, ptr %102, align 1
  %103 = lshr i16 %100, 8
  %104 = trunc i16 %103 to i8
  %105 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %104, ptr %105, align 2
  %106 = trunc i16 %100 to i8
  %107 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %106, ptr %107, align 1
  %108 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %108, align 8
  %109 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %110 = load i8, ptr %109, align 4
  %111 = lshr i8 %110, 1
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %108, align 8
  %113 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %101, ptr %113, align 8
  %114 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8
  %116 = tail call i32 @i2c_transfer(ptr noundef %115, ptr noundef %108, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %117

117:                                              ; preds = %98, %96, %93
  %118 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1802) #12
  %119 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, ptr @debug, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %121
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %145

126:                                              ; preds = %117
  %127 = and i16 %118, -29128
  %128 = or i16 %127, 4161
  %129 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 7, ptr %129, align 8
  %130 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 10, ptr %130, align 1
  %131 = lshr i16 %128, 8
  %132 = trunc i16 %131 to i8
  %133 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %132, ptr %133, align 2
  %134 = trunc i16 %128 to i8
  %135 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %134, ptr %135, align 1
  %136 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %136, align 8
  %137 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %138 = load i8, ptr %137, align 4
  %139 = lshr i8 %138, 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %136, align 8
  %141 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %129, ptr %141, align 8
  %142 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %143 = load ptr, ptr %142, align 8
  %144 = tail call i32 @i2c_transfer(ptr noundef %143, ptr noundef %136, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %145

145:                                              ; preds = %126, %124, %121
  %146 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 235)
  %147 = and i16 %146, 80
  %148 = or i16 %147, 2
  %149 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 1286)
  %150 = and i16 %149, -1475
  switch i32 %1, label %191 [
    i32 0, label %151
    i32 7, label %152
    i32 1, label %158
    i32 2, label %164
    i32 5, label %171
    i32 4, label %179
    i32 6, label %185
  ]

151:                                              ; preds = %145
  br label %191

152:                                              ; preds = %145
  %153 = load i32, ptr @debug, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dib7090_set_output_mode) #13
  br label %157

157:                                              ; preds = %155, %152
  tail call fastcc void @dib7090_configMpegMux(ptr noundef %4, i16 noundef zeroext 3, i16 noundef zeroext 1, i16 noundef zeroext 1)
  tail call fastcc void @dib7090_setHostBusMux(ptr noundef %4, i32 noundef 6)
  br label %191

158:                                              ; preds = %145
  %159 = load i32, ptr @debug, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.dib7090_set_output_mode) #13
  br label %163

163:                                              ; preds = %161, %158
  tail call fastcc void @dib7090_configMpegMux(ptr noundef %4, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 0)
  tail call fastcc void @dib7090_setHostBusMux(ptr noundef %4, i32 noundef 6)
  br label %191

164:                                              ; preds = %145
  %165 = load i32, ptr @debug, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.dib7090_set_output_mode) #13
  br label %169

169:                                              ; preds = %167, %164
  tail call fastcc void @dib7090_setHostBusMux(ptr noundef %4, i32 noundef 4)
  %170 = or i16 %150, 64
  br label %191

171:                                              ; preds = %145
  %172 = load i32, ptr @debug, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.dib7090_set_output_mode) #13
  br label %176

176:                                              ; preds = %174, %171
  tail call fastcc void @dib7090_setHostBusMux(ptr noundef %4, i32 noundef 4)
  %177 = or i16 %150, 320
  %178 = or i16 %147, 6
  br label %191

179:                                              ; preds = %145
  %180 = load i32, ptr @debug, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dib7090_set_output_mode) #13
  br label %184

184:                                              ; preds = %182, %179
  tail call fastcc void @dib7090_setDibTxMux(ptr noundef %4, i32 noundef 2)
  tail call fastcc void @dib7090_setHostBusMux(ptr noundef %4, i32 noundef 5)
  br label %191

185:                                              ; preds = %145
  %186 = load i32, ptr @debug, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.dib7090_set_output_mode) #13
  br label %190

190:                                              ; preds = %188, %185
  tail call fastcc void @dib7090_setDibTxMux(ptr noundef %4, i32 noundef 3)
  tail call fastcc void @dib7090_setHostBusMux(ptr noundef %4, i32 noundef 5)
  br label %191

191:                                              ; preds = %190, %184, %176, %169, %163, %157, %151, %145
  %192 = phi i8 [ 7, %145 ], [ 7, %190 ], [ 7, %184 ], [ 2, %176 ], [ 7, %169 ], [ 7, %163 ], [ 7, %157 ], [ 7, %151 ]
  %193 = phi i16 [ %148, %145 ], [ %148, %190 ], [ %148, %184 ], [ %178, %176 ], [ %148, %169 ], [ %148, %163 ], [ %148, %157 ], [ %148, %151 ]
  %194 = phi i16 [ %150, %145 ], [ %150, %190 ], [ %150, %184 ], [ %177, %176 ], [ %170, %169 ], [ %150, %163 ], [ %150, %157 ], [ 0, %151 ]
  %195 = icmp eq i32 %1, 0
  %196 = or i16 %194, 1024
  %197 = select i1 %195, i16 %194, i16 %196
  %198 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 1
  %199 = load i8, ptr %198, align 8
  %200 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %191
  %203 = load i32, ptr @debug, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %227, label %205

205:                                              ; preds = %202
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %227

207:                                              ; preds = %191
  %208 = icmp eq i8 %199, 0
  %209 = or i16 %193, 32
  %210 = select i1 %208, i16 %193, i16 %209
  %211 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %211, align 8
  %212 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -21, ptr %212, align 1
  %213 = lshr i16 %210, 8
  %214 = trunc i16 %213 to i8
  %215 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %214, ptr %215, align 2
  %216 = trunc i16 %210 to i8
  %217 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %216, ptr %217, align 1
  %218 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %218, align 8
  %219 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %220 = load i8, ptr %219, align 4
  %221 = lshr i8 %220, 1
  %222 = zext i8 %221 to i16
  store i16 %222, ptr %218, align 8
  %223 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %211, ptr %223, align 8
  %224 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %225 = load ptr, ptr %224, align 8
  %226 = tail call i32 @i2c_transfer(ptr noundef %225, ptr noundef %218, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %227

227:                                              ; preds = %207, %205, %202
  %228 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i32, ptr @debug, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %249, label %233

233:                                              ; preds = %230
  %234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %249

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %236, align 8
  %237 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -20, ptr %237, align 1
  %238 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %192, ptr %238, align 2
  %239 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 0, ptr %239, align 1
  %240 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %240, align 8
  %241 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %242 = load i8, ptr %241, align 4
  %243 = lshr i8 %242, 1
  %244 = zext i8 %243 to i16
  store i16 %244, ptr %240, align 8
  %245 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %236, ptr %245, align 8
  %246 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %247 = load ptr, ptr %246, align 8
  %248 = tail call i32 @i2c_transfer(ptr noundef %247, ptr noundef %240, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %249

249:                                              ; preds = %235, %233, %230
  %250 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load i32, ptr @debug, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %274, label %255

255:                                              ; preds = %252
  %256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %274

257:                                              ; preds = %249
  %258 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 5, ptr %258, align 8
  %259 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 6, ptr %259, align 1
  %260 = lshr i16 %197, 8
  %261 = trunc i16 %260 to i8
  %262 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %261, ptr %262, align 2
  %263 = trunc i16 %197 to i8
  %264 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %263, ptr %264, align 1
  %265 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %265, align 8
  %266 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %267 = load i8, ptr %266, align 4
  %268 = lshr i8 %267, 1
  %269 = zext i8 %268 to i16
  store i16 %269, ptr %265, align 8
  %270 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %258, ptr %270, align 8
  %271 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %272 = load ptr, ptr %271, align 8
  %273 = tail call i32 @i2c_transfer(ptr noundef %272, ptr noundef %265, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %274

274:                                              ; preds = %257, %255, %252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_set_diversity_in(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib7090_set_diversity_in, ptr noundef nonnull @__func__.dib7090_set_diversity_in) #13
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.dib7090_cfg_DibRx) #13
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 22
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %35

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %22, align 8
  %23 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 6, ptr %23, align 1
  %24 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %24, align 2
  %25 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %26, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %22, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %26, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %35

35:                                               ; preds = %21, %19, %16
  %36 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %57

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %44, align 8
  %45 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 18, ptr %45, align 1
  %46 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %46, align 2
  %47 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 1, ptr %47, align 1
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %48, align 8
  %49 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %50 = load i8, ptr %49, align 4
  %51 = lshr i8 %50, 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %48, align 8
  %53 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %44, ptr %53, align 8
  %54 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = tail call i32 @i2c_transfer(ptr noundef %55, ptr noundef %48, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %57

57:                                               ; preds = %43, %41, %38
  %58 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %79

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %66, align 8
  %67 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 0, ptr %67, align 1
  %68 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %68, align 2
  %69 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 8, ptr %69, align 1
  %70 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %70, align 8
  %71 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %72 = load i8, ptr %71, align 4
  %73 = lshr i8 %72, 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %70, align 8
  %75 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %66, ptr %75, align 8
  %76 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = tail call i32 @i2c_transfer(ptr noundef %77, ptr noundef %70, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %79

79:                                               ; preds = %65, %63, %60
  %80 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, ptr @debug, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %82
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %101

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %88, align 8
  %89 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 1, ptr %89, align 1
  %90 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %90, align 2
  %91 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 5, ptr %91, align 1
  %92 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %92, align 8
  %93 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %94 = load i8, ptr %93, align 4
  %95 = lshr i8 %94, 1
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %92, align 8
  %97 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %88, ptr %97, align 8
  %98 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = tail call i32 @i2c_transfer(ptr noundef %99, ptr noundef %92, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %101

101:                                              ; preds = %87, %85, %82
  %102 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, ptr @debug, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %104
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %123

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %110, align 8
  %111 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 3, ptr %111, align 1
  %112 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %112, align 2
  %113 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %114, align 8
  %115 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %116 = load i8, ptr %115, align 4
  %117 = lshr i8 %116, 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %114, align 8
  %119 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %110, ptr %119, align 8
  %120 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = tail call i32 @i2c_transfer(ptr noundef %121, ptr noundef %114, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %123

123:                                              ; preds = %109, %107, %104
  %124 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %145

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %132, align 8
  %133 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 4, ptr %133, align 1
  %134 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %134, align 2
  %135 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %135, align 1
  %136 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %136, align 8
  %137 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %138 = load i8, ptr %137, align 4
  %139 = lshr i8 %138, 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %136, align 8
  %141 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %132, ptr %141, align 8
  %142 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %143 = load ptr, ptr %142, align 8
  %144 = tail call i32 @i2c_transfer(ptr noundef %143, ptr noundef %136, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %145

145:                                              ; preds = %131, %129, %126
  %146 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %148
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %167

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %154, align 8
  %155 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 5, ptr %155, align 1
  %156 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %156, align 2
  %157 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %157, align 1
  %158 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %158, align 8
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %160 = load i8, ptr %159, align 4
  %161 = lshr i8 %160, 1
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %158, align 8
  %163 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %154, ptr %163, align 8
  %164 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %165 = load ptr, ptr %164, align 8
  %166 = tail call i32 @i2c_transfer(ptr noundef %165, ptr noundef %158, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %167

167:                                              ; preds = %153, %151, %148
  %168 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32, ptr @debug, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %189, label %173

173:                                              ; preds = %170
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %189

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %176, align 8
  %177 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 7, ptr %177, align 1
  %178 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %178, align 2
  %179 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 8, ptr %179, align 1
  %180 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %180, align 8
  %181 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %182 = load i8, ptr %181, align 4
  %183 = lshr i8 %182, 1
  %184 = zext i8 %183 to i16
  store i16 %184, ptr %180, align 8
  %185 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %176, ptr %185, align 8
  %186 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %187 = load ptr, ptr %186, align 8
  %188 = tail call i32 @i2c_transfer(ptr noundef %187, ptr noundef %180, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %189

189:                                              ; preds = %175, %173, %170
  %190 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, ptr @debug, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %211, label %195

195:                                              ; preds = %192
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %211

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %198, align 8
  %199 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 8, ptr %199, align 1
  %200 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %200, align 2
  %201 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %201, align 1
  %202 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %202, align 8
  %203 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %204 = load i8, ptr %203, align 4
  %205 = lshr i8 %204, 1
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %202, align 8
  %207 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %198, ptr %207, align 8
  %208 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %209 = load ptr, ptr %208, align 8
  %210 = tail call i32 @i2c_transfer(ptr noundef %209, ptr noundef %202, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %211

211:                                              ; preds = %197, %195, %192
  %212 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, ptr @debug, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %214
  %218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %233

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 6, ptr %220, align 8
  %221 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 18, ptr %221, align 1
  %222 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 0, ptr %222, align 2
  %223 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %223, align 1
  %224 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %224, align 8
  %225 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %226 = load i8, ptr %225, align 4
  %227 = lshr i8 %226, 1
  %228 = zext i8 %227 to i16
  store i16 %228, ptr %224, align 8
  %229 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %220, ptr %229, align 8
  %230 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %231 = load ptr, ptr %230, align 8
  %232 = tail call i32 @i2c_transfer(ptr noundef %231, ptr noundef %224, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %233

233:                                              ; preds = %219, %217, %214
  %234 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %3, i16 noundef zeroext 1287)
  %235 = and i16 %234, 1
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %263, label %237

237:                                              ; preds = %233
  %238 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i32, ptr @debug, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %263, label %243

243:                                              ; preds = %240
  %244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %263

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 20
  store i8 5, ptr %246, align 8
  %247 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 1
  store i8 7, ptr %247, align 1
  %248 = lshr i16 %234, 8
  %249 = trunc i16 %248 to i8
  %250 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 2
  store i8 %249, ptr %250, align 2
  %251 = trunc i16 %234 to i8
  %252 = and i8 %251, -2
  %253 = getelementptr %struct.dib7000p_state, ptr %3, i32 0, i32 20, i32 3
  store i8 %252, ptr %253, align 1
  %254 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19
  store i64 17179869184, ptr %254, align 8
  %255 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 2
  %256 = load i8, ptr %255, align 4
  %257 = lshr i8 %256, 1
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %254, align 8
  %259 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 19, i32 0, i32 3
  store ptr %246, ptr %259, align 8
  %260 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 3
  %261 = load ptr, ptr %260, align 8
  %262 = tail call i32 @i2c_transfer(ptr noundef %261, ptr noundef %254, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %263

263:                                              ; preds = %245, %243, %240, %233
  %264 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 23
  store i8 1, ptr %264, align 4
  tail call fastcc void @dib7000p_set_diversity_in(ptr noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib7000p_release(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 4
  tail call void @dibx000_exit_i2c_master(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 18
  tail call void @i2c_del_adapter(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_wakeup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @dib7000p_set_power_mode(ptr noundef %3, i32 noundef 0)
  tail call fastcc void @dib7000p_set_adc_state(ptr noundef %3, i32 noundef 0)
  %4 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 16
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 28816
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @dib7000p_sad_calib(ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_sleep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib7000p_state, ptr %3, i32 0, i32 16
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 28816
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @dib7000p_set_output_mode(ptr noundef %3, i32 noundef 0)
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  tail call fastcc void @dib7000p_set_power_mode(ptr noundef %3, i32 noundef 2)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_set_frontend(ptr noundef %0) #1 {
  %2 = alloca %struct.dtv_frontend_properties, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 16
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 28816
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call fastcc void @dib7090_set_diversity_in(ptr noundef %0)
  br label %13

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @dib7000p_set_output_mode(ptr noundef %6, i32 noundef 0)
  br label %13

13:                                               ; preds = %11, %10
  %14 = load i32, ptr @buggy_sfn_workaround, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 15
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %15, 1
  %19 = and i8 %17, -2
  %20 = or i8 %19, %18
  store i8 %20, ptr %16, align 2
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = tail call i32 %22(ptr noundef %0) #12
  br label %26

26:                                               ; preds = %24, %13
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 12
  store i8 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  br label %29

29:                                               ; preds = %1117, %26
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 12
  %32 = load i8, ptr %31, align 4
  switch i8 %32, label %1119 [
    i8 0, label %33
    i8 1, label %854
    i8 2, label %929
    i8 3, label %990
    i8 4, label %1092
    i8 5, label %1107
  ]

33:                                               ; preds = %29
  call fastcc void @dib7000p_set_power_mode(ptr noundef %30, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 16
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, 28816
  br i1 %36, label %37, label %114

37:                                               ; preds = %33
  %38 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 1947) #12
  %39 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %40 = call i32 @mutex_lock_interruptible(ptr noundef %39) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %61

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 7, ptr %48, align 8
  %49 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 -102, ptr %49, align 1
  %50 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 16, ptr %50, align 2
  %51 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %54 = load i8, ptr %53, align 4
  %55 = lshr i8 %54, 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %52, align 8
  %57 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %48, ptr %57, align 8
  %58 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef %52, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %39) #12
  br label %61

61:                                               ; preds = %47, %45, %42
  %62 = call i32 @mutex_lock_interruptible(ptr noundef %39) #12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %86

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 7, ptr %70, align 8
  %71 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 -101, ptr %71, align 1
  %72 = lshr i16 %38, 8
  %73 = trunc i16 %72 to i8
  %74 = or i8 %73, 64
  %75 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %74, ptr %75, align 2
  %76 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 0, ptr %76, align 1
  %77 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %77, align 8
  %78 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %79 = load i8, ptr %78, align 4
  %80 = lshr i8 %79, 1
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %77, align 8
  %82 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %70, ptr %82, align 8
  %83 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef %77, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %39) #12
  br label %86

86:                                               ; preds = %69, %67, %64
  %87 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 1920) #12
  %88 = call i32 @mutex_lock_interruptible(ptr noundef %39) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, ptr @debug, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %170, label %93

93:                                               ; preds = %90
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %170

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 7, ptr %96, align 8
  %97 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 -128, ptr %97, align 1
  %98 = lshr i16 %87, 8
  %99 = trunc i16 %98 to i8
  %100 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %99, ptr %100, align 2
  %101 = trunc i16 %87 to i8
  %102 = and i8 %101, 124
  %103 = or i8 %102, 3
  %104 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %103, ptr %104, align 1
  %105 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %105, align 8
  %106 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %107 = load i8, ptr %106, align 4
  %108 = lshr i8 %107, 1
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %105, align 8
  %110 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %96, ptr %110, align 8
  %111 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef %105, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %39) #12
  br label %170

114:                                              ; preds = %33
  call fastcc void @dib7000p_set_adc_state(ptr noundef %30, i32 noundef 2) #12
  %115 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 903) #12
  %116 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %117 = call i32 @mutex_lock_interruptible(ptr noundef %116) #12
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, ptr @debug, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %119
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %142

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 3, ptr %125, align 8
  %126 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 -121, ptr %126, align 1
  %127 = lshr i16 %115, 8
  %128 = trunc i16 %127 to i8
  %129 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %128, ptr %129, align 2
  %130 = trunc i16 %115 to i8
  %131 = or i8 %130, 1
  %132 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %131, ptr %132, align 1
  %133 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %133, align 8
  %134 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %135 = load i8, ptr %134, align 4
  %136 = lshr i8 %135, 1
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %133, align 8
  %138 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %125, ptr %138, align 8
  %139 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %140 = load ptr, ptr %139, align 8
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef %133, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %116) #12
  br label %142

142:                                              ; preds = %124, %122, %119
  %143 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 900) #12
  %144 = call i32 @mutex_lock_interruptible(ptr noundef %116) #12
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i32, ptr @debug, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %170, label %149

149:                                              ; preds = %146
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %170

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 3, ptr %152, align 8
  %153 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 -124, ptr %153, align 1
  %154 = lshr i16 %143, 8
  %155 = trunc i16 %154 to i8
  %156 = and i8 %155, 127
  %157 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %156, ptr %157, align 2
  %158 = trunc i16 %143 to i8
  %159 = or i8 %158, 64
  %160 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %159, ptr %160, align 1
  %161 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %161, align 8
  %162 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %163 = load i8, ptr %162, align 4
  %164 = lshr i8 %163, 1
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %161, align 8
  %166 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %152, ptr %166, align 8
  %167 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %168 = load ptr, ptr %167, align 8
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef %161, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %116) #12
  br label %170

170:                                              ; preds = %151, %149, %146, %95, %93, %90
  %171 = load i32, ptr %4, align 4
  %172 = icmp ult i32 %171, 170001000
  br i1 %172, label %180, label %173

173:                                              ; preds = %170
  %174 = icmp ult i32 %171, 250001000
  br i1 %174, label %180, label %175

175:                                              ; preds = %173
  %176 = icmp ult i32 %171, 863001000
  br i1 %176, label %180, label %177

177:                                              ; preds = %175
  %178 = icmp ult i32 %171, 2000001000
  %179 = select i1 %178, i8 1, i8 8
  br label %180

180:                                              ; preds = %177, %175, %173, %170
  %181 = phi i8 [ 32, %170 ], [ 4, %173 ], [ %179, %177 ], [ 2, %175 ]
  %182 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 6
  %183 = load i8, ptr %182, align 2
  %184 = icmp eq i8 %183, %181
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 8
  %187 = load ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %746

189:                                              ; preds = %185, %180
  store i8 %181, ptr %182, align 2
  %190 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 1, i32 4
  %191 = load i8, ptr %190, align 8
  %192 = zext i8 %191 to i32
  %193 = icmp eq i8 %191, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 1, i32 5
  %196 = load ptr, ptr %195, align 4
  br label %197

197:                                              ; preds = %203, %194
  %198 = phi i32 [ 0, %194 ], [ %204, %203 ]
  %199 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198
  %200 = load i8, ptr %199, align 2
  %201 = and i8 %200, %181
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = add nuw nsw i32 %198, 1
  %205 = icmp eq i32 %204, %192
  br i1 %205, label %208, label %197

206:                                              ; preds = %197
  %207 = icmp eq ptr %199, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %206, %203, %189
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %1119, label %211

211:                                              ; preds = %208
  %212 = zext i8 %181 to i32
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dib7000p_set_agc_config, i32 noundef %212) #13
  br label %1119

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 8
  store ptr %199, ptr %215, align 8
  %216 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 1
  %217 = load i16, ptr %216, align 2
  %218 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %219 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = load i32, ptr @debug, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %243, label %224

224:                                              ; preds = %221
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %243

226:                                              ; preds = %214
  %227 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %227, align 8
  %228 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 75, ptr %228, align 1
  %229 = lshr i16 %217, 8
  %230 = trunc i16 %229 to i8
  %231 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %230, ptr %231, align 2
  %232 = trunc i16 %217 to i8
  %233 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %232, ptr %233, align 1
  %234 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %234, align 8
  %235 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %236 = load i8, ptr %235, align 4
  %237 = lshr i8 %236, 1
  %238 = zext i8 %237 to i16
  store i16 %238, ptr %234, align 8
  %239 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %227, ptr %239, align 8
  %240 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %241 = load ptr, ptr %240, align 8
  %242 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef %234, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %243

243:                                              ; preds = %226, %224, %221
  %244 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 2
  %245 = load i16, ptr %244, align 2
  %246 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, ptr @debug, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %270, label %251

251:                                              ; preds = %248
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %270

253:                                              ; preds = %243
  %254 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %254, align 8
  %255 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 76, ptr %255, align 1
  %256 = lshr i16 %245, 8
  %257 = trunc i16 %256 to i8
  %258 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %257, ptr %258, align 2
  %259 = trunc i16 %245 to i8
  %260 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %259, ptr %260, align 1
  %261 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %261, align 8
  %262 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %263 = load i8, ptr %262, align 4
  %264 = lshr i8 %263, 1
  %265 = zext i8 %264 to i16
  store i16 %265, ptr %261, align 8
  %266 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %254, ptr %266, align 8
  %267 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %268 = load ptr, ptr %267, align 8
  %269 = call i32 @i2c_transfer(ptr noundef %268, ptr noundef %261, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %270

270:                                              ; preds = %253, %251, %248
  %271 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 3
  %272 = load i16, ptr %271, align 2
  %273 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load i32, ptr @debug, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %297, label %278

278:                                              ; preds = %275
  %279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %297

280:                                              ; preds = %270
  %281 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %281, align 8
  %282 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 77, ptr %282, align 1
  %283 = lshr i16 %272, 8
  %284 = trunc i16 %283 to i8
  %285 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %284, ptr %285, align 2
  %286 = trunc i16 %272 to i8
  %287 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %286, ptr %287, align 1
  %288 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %288, align 8
  %289 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %290 = load i8, ptr %289, align 4
  %291 = lshr i8 %290, 1
  %292 = zext i8 %291 to i16
  store i16 %292, ptr %288, align 8
  %293 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %281, ptr %293, align 8
  %294 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %295 = load ptr, ptr %294, align 8
  %296 = call i32 @i2c_transfer(ptr noundef %295, ptr noundef %288, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %297

297:                                              ; preds = %280, %278, %275
  %298 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 4
  %299 = load i8, ptr %298, align 2
  %300 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 5
  %301 = load i16, ptr %300, align 2
  %302 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %297
  %305 = load i32, ptr @debug, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %329, label %307

307:                                              ; preds = %304
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %329

309:                                              ; preds = %297
  %310 = zext i8 %299 to i16
  %311 = shl i16 %310, 12
  %312 = or i16 %311, %301
  %313 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %313, align 8
  %314 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 100, ptr %314, align 1
  %315 = lshr i16 %312, 8
  %316 = trunc i16 %315 to i8
  %317 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %316, ptr %317, align 2
  %318 = trunc i16 %301 to i8
  %319 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %318, ptr %319, align 1
  %320 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %320, align 8
  %321 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %322 = load i8, ptr %321, align 4
  %323 = lshr i8 %322, 1
  %324 = zext i8 %323 to i16
  store i16 %324, ptr %320, align 8
  %325 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %313, ptr %325, align 8
  %326 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %327 = load ptr, ptr %326, align 8
  %328 = call i32 @i2c_transfer(ptr noundef %327, ptr noundef %320, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %329

329:                                              ; preds = %309, %307, %304
  %330 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 23
  %331 = load i8, ptr %330, align 1
  %332 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 24
  %333 = load i8, ptr %332, align 2
  %334 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %329
  %337 = load i32, ptr @debug, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %358, label %339

339:                                              ; preds = %336
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %358

341:                                              ; preds = %329
  %342 = shl i8 %331, 5
  %343 = or i8 %342, %333
  %344 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %344, align 8
  %345 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 101, ptr %345, align 1
  %346 = lshr i8 %331, 3
  %347 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %346, ptr %347, align 2
  %348 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %343, ptr %348, align 1
  %349 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %349, align 8
  %350 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %351 = load i8, ptr %350, align 4
  %352 = lshr i8 %351, 1
  %353 = zext i8 %352 to i16
  store i16 %353, ptr %349, align 8
  %354 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %344, ptr %354, align 8
  %355 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %356 = load ptr, ptr %355, align 8
  %357 = call i32 @i2c_transfer(ptr noundef %356, ptr noundef %349, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %358

358:                                              ; preds = %341, %339, %336
  %359 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 25
  %360 = load i8, ptr %359, align 1
  %361 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 26
  %362 = load i8, ptr %361, align 2
  %363 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %358
  %366 = load i32, ptr @debug, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %408, label %368

368:                                              ; preds = %365
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %387

370:                                              ; preds = %358
  %371 = shl i8 %360, 6
  %372 = or i8 %371, %362
  %373 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %373, align 8
  %374 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 102, ptr %374, align 1
  %375 = lshr i8 %360, 2
  %376 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %375, ptr %376, align 2
  %377 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %372, ptr %377, align 1
  %378 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %378, align 8
  %379 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %380 = load i8, ptr %379, align 4
  %381 = lshr i8 %380, 1
  %382 = zext i8 %381 to i16
  store i16 %382, ptr %378, align 8
  %383 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %373, ptr %383, align 8
  %384 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %385 = load ptr, ptr %384, align 8
  %386 = call i32 @i2c_transfer(ptr noundef %385, ptr noundef %378, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %387

387:                                              ; preds = %370, %368
  %388 = load i32, ptr @debug, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %408, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 5
  %392 = load i16, ptr %391, align 8
  %393 = icmp eq i16 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 7
  %396 = load i16, ptr %395, align 2
  br label %397

397:                                              ; preds = %394, %390
  %398 = phi i16 [ %396, %394 ], [ %392, %390 ]
  %399 = zext i16 %398 to i32
  %400 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 8
  %401 = load i8, ptr %400, align 2
  %402 = zext i8 %401 to i32
  %403 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 27
  %404 = load i8, ptr %403, align 1
  %405 = icmp eq i8 %404, 0
  %406 = zext i1 %405 to i32
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dib7000p_set_agc_config, i32 noundef %399, i32 noundef %402, i32 noundef %406, i32 noundef %402) #13
  br label %408

408:                                              ; preds = %397, %387, %365
  %409 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 5
  %410 = load i16, ptr %409, align 8
  %411 = icmp eq i16 %410, 0
  %412 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 6
  %413 = load i8, ptr %412, align 2
  br i1 %411, label %442, label %414

414:                                              ; preds = %408
  %415 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = load i32, ptr @debug, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %472, label %420

420:                                              ; preds = %417
  %421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %472

422:                                              ; preds = %414
  %423 = zext i8 %413 to i16
  %424 = shl i16 %423, 12
  %425 = or i16 %424, %410
  %426 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %426, align 8
  %427 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 105, ptr %427, align 1
  %428 = lshr i16 %425, 8
  %429 = trunc i16 %428 to i8
  %430 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %429, ptr %430, align 2
  %431 = trunc i16 %410 to i8
  %432 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %431, ptr %432, align 1
  %433 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %433, align 8
  %434 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %435 = load i8, ptr %434, align 4
  %436 = lshr i8 %435, 1
  %437 = zext i8 %436 to i16
  store i16 %437, ptr %433, align 8
  %438 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %426, ptr %438, align 8
  %439 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %440 = load ptr, ptr %439, align 8
  %441 = call i32 @i2c_transfer(ptr noundef %440, ptr noundef %433, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %472

442:                                              ; preds = %408
  %443 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 7
  %444 = load i16, ptr %443, align 2
  %445 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %452

447:                                              ; preds = %442
  %448 = load i32, ptr @debug, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %472, label %450

450:                                              ; preds = %447
  %451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %472

452:                                              ; preds = %442
  %453 = zext i8 %413 to i16
  %454 = shl i16 %453, 12
  %455 = or i16 %444, %454
  %456 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %456, align 8
  %457 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 105, ptr %457, align 1
  %458 = lshr i16 %455, 8
  %459 = trunc i16 %458 to i8
  %460 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %459, ptr %460, align 2
  %461 = trunc i16 %444 to i8
  %462 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %461, ptr %462, align 1
  %463 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %463, align 8
  %464 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %465 = load i8, ptr %464, align 4
  %466 = lshr i8 %465, 1
  %467 = zext i8 %466 to i16
  store i16 %467, ptr %463, align 8
  %468 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %456, ptr %468, align 8
  %469 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %470 = load ptr, ptr %469, align 8
  %471 = call i32 @i2c_transfer(ptr noundef %470, ptr noundef %463, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %472

472:                                              ; preds = %452, %450, %447, %422, %420, %417
  %473 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 8
  %474 = load i8, ptr %473, align 2
  %475 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 9
  %476 = load i8, ptr %475, align 1
  %477 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 27
  %478 = load i8, ptr %477, align 1
  %479 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %486

481:                                              ; preds = %472
  %482 = load i32, ptr @debug, align 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %510, label %484

484:                                              ; preds = %481
  %485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %510

486:                                              ; preds = %472
  %487 = zext i8 %474 to i16
  %488 = shl i16 %487, 13
  %489 = zext i8 %476 to i16
  %490 = shl i16 %489, 9
  %491 = or i16 %490, %488
  %492 = zext i8 %478 to i16
  %493 = shl nuw i16 %492, 8
  %494 = or i16 %491, %493
  %495 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %495, align 8
  %496 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 106, ptr %496, align 1
  %497 = lshr exact i16 %494, 8
  %498 = trunc i16 %497 to i8
  %499 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %498, ptr %499, align 2
  %500 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 0, ptr %500, align 1
  %501 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %501, align 8
  %502 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %503 = load i8, ptr %502, align 4
  %504 = lshr i8 %503, 1
  %505 = zext i8 %504 to i16
  store i16 %505, ptr %501, align 8
  %506 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %495, ptr %506, align 8
  %507 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %508 = load ptr, ptr %507, align 8
  %509 = call i32 @i2c_transfer(ptr noundef %508, ptr noundef %501, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %510

510:                                              ; preds = %486, %484, %481
  %511 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 10
  %512 = load i16, ptr %511, align 2
  %513 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %514 = icmp slt i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %510
  %516 = load i32, ptr @debug, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %537, label %518

518:                                              ; preds = %515
  %519 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %537

520:                                              ; preds = %510
  %521 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %521, align 8
  %522 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 107, ptr %522, align 1
  %523 = lshr i16 %512, 8
  %524 = trunc i16 %523 to i8
  %525 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %524, ptr %525, align 2
  %526 = trunc i16 %512 to i8
  %527 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %526, ptr %527, align 1
  %528 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %528, align 8
  %529 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %530 = load i8, ptr %529, align 4
  %531 = lshr i8 %530, 1
  %532 = zext i8 %531 to i16
  store i16 %532, ptr %528, align 8
  %533 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %521, ptr %533, align 8
  %534 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %535 = load ptr, ptr %534, align 8
  %536 = call i32 @i2c_transfer(ptr noundef %535, ptr noundef %528, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %537

537:                                              ; preds = %520, %518, %515
  %538 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 11
  %539 = load i16, ptr %538, align 2
  %540 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %541 = icmp slt i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %537
  %543 = load i32, ptr @debug, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %564, label %545

545:                                              ; preds = %542
  %546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %564

547:                                              ; preds = %537
  %548 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %548, align 8
  %549 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 108, ptr %549, align 1
  %550 = lshr i16 %539, 8
  %551 = trunc i16 %550 to i8
  %552 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %551, ptr %552, align 2
  %553 = trunc i16 %539 to i8
  %554 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %553, ptr %554, align 1
  %555 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %555, align 8
  %556 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %557 = load i8, ptr %556, align 4
  %558 = lshr i8 %557, 1
  %559 = zext i8 %558 to i16
  store i16 %559, ptr %555, align 8
  %560 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %548, ptr %560, align 8
  %561 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %562 = load ptr, ptr %561, align 8
  %563 = call i32 @i2c_transfer(ptr noundef %562, ptr noundef %555, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %564

564:                                              ; preds = %547, %545, %542
  %565 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 12
  %566 = load i16, ptr %565, align 2
  %567 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %568 = icmp slt i32 %567, 0
  br i1 %568, label %569, label %574

569:                                              ; preds = %564
  %570 = load i32, ptr @debug, align 4
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %591, label %572

572:                                              ; preds = %569
  %573 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %591

574:                                              ; preds = %564
  %575 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %575, align 8
  %576 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 109, ptr %576, align 1
  %577 = lshr i16 %566, 8
  %578 = trunc i16 %577 to i8
  %579 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %578, ptr %579, align 2
  %580 = trunc i16 %566 to i8
  %581 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %580, ptr %581, align 1
  %582 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %582, align 8
  %583 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %584 = load i8, ptr %583, align 4
  %585 = lshr i8 %584, 1
  %586 = zext i8 %585 to i16
  store i16 %586, ptr %582, align 8
  %587 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %575, ptr %587, align 8
  %588 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %589 = load ptr, ptr %588, align 8
  %590 = call i32 @i2c_transfer(ptr noundef %589, ptr noundef %582, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %591

591:                                              ; preds = %574, %572, %569
  %592 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 13
  %593 = load i16, ptr %592, align 2
  %594 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %596, label %601

596:                                              ; preds = %591
  %597 = load i32, ptr @debug, align 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %618, label %599

599:                                              ; preds = %596
  %600 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %618

601:                                              ; preds = %591
  %602 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %602, align 8
  %603 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 110, ptr %603, align 1
  %604 = lshr i16 %593, 8
  %605 = trunc i16 %604 to i8
  %606 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %605, ptr %606, align 2
  %607 = trunc i16 %593 to i8
  %608 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %607, ptr %608, align 1
  %609 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %609, align 8
  %610 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %611 = load i8, ptr %610, align 4
  %612 = lshr i8 %611, 1
  %613 = zext i8 %612 to i16
  store i16 %613, ptr %609, align 8
  %614 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %602, ptr %614, align 8
  %615 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %616 = load ptr, ptr %615, align 8
  %617 = call i32 @i2c_transfer(ptr noundef %616, ptr noundef %609, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %618

618:                                              ; preds = %601, %599, %596
  %619 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 14
  %620 = load i8, ptr %619, align 2
  %621 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 15
  %622 = load i8, ptr %621, align 1
  %623 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %624 = icmp slt i32 %623, 0
  br i1 %624, label %625, label %630

625:                                              ; preds = %618
  %626 = load i32, ptr @debug, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %644, label %628

628:                                              ; preds = %625
  %629 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %644

630:                                              ; preds = %618
  %631 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %631, align 8
  %632 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 111, ptr %632, align 1
  %633 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %620, ptr %633, align 2
  %634 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %622, ptr %634, align 1
  %635 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %635, align 8
  %636 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %637 = load i8, ptr %636, align 4
  %638 = lshr i8 %637, 1
  %639 = zext i8 %638 to i16
  store i16 %639, ptr %635, align 8
  %640 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %631, ptr %640, align 8
  %641 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %642 = load ptr, ptr %641, align 8
  %643 = call i32 @i2c_transfer(ptr noundef %642, ptr noundef %635, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %644

644:                                              ; preds = %630, %628, %625
  %645 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 16
  %646 = load i8, ptr %645, align 2
  %647 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %648 = icmp slt i32 %647, 0
  br i1 %648, label %649, label %654

649:                                              ; preds = %644
  %650 = load i32, ptr @debug, align 4
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %668, label %652

652:                                              ; preds = %649
  %653 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %668

654:                                              ; preds = %644
  %655 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %655, align 8
  %656 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 112, ptr %656, align 1
  %657 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 0, ptr %657, align 2
  %658 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %646, ptr %658, align 1
  %659 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %659, align 8
  %660 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %661 = load i8, ptr %660, align 4
  %662 = lshr i8 %661, 1
  %663 = zext i8 %662 to i16
  store i16 %663, ptr %659, align 8
  %664 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %655, ptr %664, align 8
  %665 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %666 = load ptr, ptr %665, align 8
  %667 = call i32 @i2c_transfer(ptr noundef %666, ptr noundef %659, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %668

668:                                              ; preds = %654, %652, %649
  %669 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 17
  %670 = load i8, ptr %669, align 1
  %671 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 18
  %672 = load i8, ptr %671, align 2
  %673 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %674 = icmp slt i32 %673, 0
  br i1 %674, label %675, label %680

675:                                              ; preds = %668
  %676 = load i32, ptr @debug, align 4
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %694, label %678

678:                                              ; preds = %675
  %679 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %694

680:                                              ; preds = %668
  %681 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %681, align 8
  %682 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 113, ptr %682, align 1
  %683 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %670, ptr %683, align 2
  %684 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %672, ptr %684, align 1
  %685 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %685, align 8
  %686 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %687 = load i8, ptr %686, align 4
  %688 = lshr i8 %687, 1
  %689 = zext i8 %688 to i16
  store i16 %689, ptr %685, align 8
  %690 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %681, ptr %690, align 8
  %691 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %692 = load ptr, ptr %691, align 8
  %693 = call i32 @i2c_transfer(ptr noundef %692, ptr noundef %685, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %694

694:                                              ; preds = %680, %678, %675
  %695 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 19
  %696 = load i8, ptr %695, align 1
  %697 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 20
  %698 = load i8, ptr %697, align 2
  %699 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %700 = icmp slt i32 %699, 0
  br i1 %700, label %701, label %706

701:                                              ; preds = %694
  %702 = load i32, ptr @debug, align 4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %720, label %704

704:                                              ; preds = %701
  %705 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %720

706:                                              ; preds = %694
  %707 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %707, align 8
  %708 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 114, ptr %708, align 1
  %709 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %696, ptr %709, align 2
  %710 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %698, ptr %710, align 1
  %711 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %711, align 8
  %712 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %713 = load i8, ptr %712, align 4
  %714 = lshr i8 %713, 1
  %715 = zext i8 %714 to i16
  store i16 %715, ptr %711, align 8
  %716 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %707, ptr %716, align 8
  %717 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %718 = load ptr, ptr %717, align 8
  %719 = call i32 @i2c_transfer(ptr noundef %718, ptr noundef %711, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %720

720:                                              ; preds = %706, %704, %701
  %721 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 21
  %722 = load i8, ptr %721, align 1
  %723 = getelementptr %struct.dibx000_agc_config, ptr %196, i32 %198, i32 22
  %724 = load i8, ptr %723, align 2
  %725 = call i32 @mutex_lock_interruptible(ptr noundef %218) #12
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %727, label %732

727:                                              ; preds = %720
  %728 = load i32, ptr @debug, align 4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %746, label %730

730:                                              ; preds = %727
  %731 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %746

732:                                              ; preds = %720
  %733 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %733, align 8
  %734 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 115, ptr %734, align 1
  %735 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %722, ptr %735, align 2
  %736 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %724, ptr %736, align 1
  %737 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %737, align 8
  %738 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %739 = load i8, ptr %738, align 4
  %740 = lshr i8 %739, 1
  %741 = zext i8 %740 to i16
  store i16 %741, ptr %737, align 8
  %742 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %733, ptr %742, align 8
  %743 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %744 = load ptr, ptr %743, align 8
  %745 = call i32 @i2c_transfer(ptr noundef %744, ptr noundef %737, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %218) #12
  br label %746

746:                                              ; preds = %732, %730, %727, %185
  %747 = load ptr, ptr %28, align 4
  %748 = icmp eq ptr %747, null
  br i1 %748, label %756, label %749

749:                                              ; preds = %746
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %750 = call i32 %747(ptr noundef %0, ptr noundef nonnull %3) #12
  %751 = load i32, ptr %3, align 4
  %752 = sdiv i32 %751, 1000
  %753 = load i32, ptr %4, align 4
  %754 = udiv i32 %753, 1000
  %755 = sub nsw i32 %752, %754
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %756

756:                                              ; preds = %749, %746
  %757 = phi i32 [ %755, %749 ], [ 0, %746 ]
  %758 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 18) #12
  %759 = zext i16 %758 to i32
  %760 = shl nuw i32 %759, 16
  %761 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 19) #12
  %762 = zext i16 %761 to i32
  %763 = or i32 %760, %762
  %764 = udiv i32 %763, 1000
  %765 = icmp slt i32 %757, 0
  %766 = call i32 @llvm.abs.i32(i32 %757, i1 true) #12
  %767 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 1, i32 6
  %768 = load ptr, ptr %767, align 8
  %769 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %768, i32 0, i32 13
  %770 = load i32, ptr %769, align 4
  %771 = and i32 %770, 33554431
  %772 = lshr i32 %770, 25
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = icmp ult i32 %763, 1000
  br i1 %775, label %849, label %776

776:                                              ; preds = %756
  %777 = udiv i32 67108864, %764
  %778 = load i32, ptr @debug, align 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %783, label %780

780:                                              ; preds = %776
  %781 = zext i8 %774 to i32
  %782 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dib7000p_set_dds, i32 noundef %757, i32 noundef %764, i32 noundef %781) #13
  br label %783

783:                                              ; preds = %780, %776
  %784 = sub nsw i32 0, %777
  %785 = select i1 %765, i32 %784, i32 %777
  %786 = icmp eq i8 %774, 0
  %787 = mul i32 %785, %766
  %788 = sub i32 0, %787
  %789 = select i1 %786, i32 %787, i32 %788
  %790 = add i32 %789, %771
  %791 = lshr i32 %764, 1
  %792 = icmp ugt i32 %766, %791
  br i1 %792, label %851, label %793

793:                                              ; preds = %783
  %794 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %795 = call i32 @mutex_lock_interruptible(ptr noundef %794) #12
  %796 = icmp slt i32 %795, 0
  br i1 %796, label %797, label %802

797:                                              ; preds = %793
  %798 = load i32, ptr @debug, align 4
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %824, label %800

800:                                              ; preds = %797
  %801 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %824

802:                                              ; preds = %793
  %803 = lshr i32 %790, 16
  %804 = and i32 %803, 256
  %805 = zext i8 %774 to i32
  %806 = shl nuw nsw i32 %805, 9
  %807 = or i32 %804, %806
  %808 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %808, align 8
  %809 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 21, ptr %809, align 1
  %810 = lshr exact i32 %807, 8
  %811 = trunc i32 %810 to i8
  %812 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %811, ptr %812, align 2
  %813 = trunc i32 %803 to i8
  %814 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %813, ptr %814, align 1
  %815 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %815, align 8
  %816 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %817 = load i8, ptr %816, align 4
  %818 = lshr i8 %817, 1
  %819 = zext i8 %818 to i16
  store i16 %819, ptr %815, align 8
  %820 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %808, ptr %820, align 8
  %821 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %822 = load ptr, ptr %821, align 8
  %823 = call i32 @i2c_transfer(ptr noundef %822, ptr noundef %815, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %794) #12
  br label %824

824:                                              ; preds = %802, %800, %797
  %825 = call i32 @mutex_lock_interruptible(ptr noundef %794) #12
  %826 = icmp slt i32 %825, 0
  br i1 %826, label %827, label %832

827:                                              ; preds = %824
  %828 = load i32, ptr @debug, align 4
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %851, label %830

830:                                              ; preds = %827
  %831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %851

832:                                              ; preds = %824
  %833 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %833, align 8
  %834 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 22, ptr %834, align 1
  %835 = lshr i32 %790, 8
  %836 = trunc i32 %835 to i8
  %837 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %836, ptr %837, align 2
  %838 = trunc i32 %790 to i8
  %839 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %838, ptr %839, align 1
  %840 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %840, align 8
  %841 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %842 = load i8, ptr %841, align 4
  %843 = lshr i8 %842, 1
  %844 = zext i8 %843 to i16
  store i16 %844, ptr %840, align 8
  %845 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %833, ptr %845, align 8
  %846 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %847 = load ptr, ptr %846, align 8
  %848 = call i32 @i2c_transfer(ptr noundef %847, ptr noundef %840, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %794) #12
  br label %851

849:                                              ; preds = %756
  %850 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %1119

851:                                              ; preds = %832, %830, %827, %783
  %852 = load i8, ptr %31, align 1
  %853 = add i8 %852, 1
  store i8 %853, ptr %31, align 1
  br label %1117

854:                                              ; preds = %29
  %855 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 1, i32 13
  %856 = load ptr, ptr %855, align 8
  %857 = icmp eq ptr %856, null
  br i1 %857, label %860, label %858

858:                                              ; preds = %854
  %859 = call i32 %856(ptr noundef %30, i8 noundef zeroext 1) #12
  br label %860

860:                                              ; preds = %858, %854
  %861 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %862 = call i32 @mutex_lock_interruptible(ptr noundef %861) #12
  %863 = icmp slt i32 %862, 0
  br i1 %863, label %864, label %869

864:                                              ; preds = %860
  %865 = load i32, ptr @debug, align 4
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %883, label %867

867:                                              ; preds = %864
  %868 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %883

869:                                              ; preds = %860
  %870 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %870, align 8
  %871 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 78, ptr %871, align 1
  %872 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 -128, ptr %872, align 2
  %873 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 0, ptr %873, align 1
  %874 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %874, align 8
  %875 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %876 = load i8, ptr %875, align 4
  %877 = lshr i8 %876, 1
  %878 = zext i8 %877 to i16
  store i16 %878, ptr %874, align 8
  %879 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %870, ptr %879, align 8
  %880 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %881 = load ptr, ptr %880, align 8
  %882 = call i32 @i2c_transfer(ptr noundef %881, ptr noundef %874, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %861) #12
  br label %883

883:                                              ; preds = %869, %867, %864
  %884 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 8
  %885 = load ptr, ptr %884, align 8
  %886 = getelementptr inbounds %struct.dibx000_agc_config, ptr %885, i32 0, i32 27
  %887 = load i8, ptr %886, align 1
  %888 = icmp eq i8 %887, 0
  br i1 %888, label %889, label %926

889:                                              ; preds = %883
  %890 = getelementptr inbounds %struct.dibx000_agc_config, ptr %885, i32 0, i32 8
  %891 = load i8, ptr %890, align 2
  %892 = getelementptr inbounds %struct.dibx000_agc_config, ptr %885, i32 0, i32 9
  %893 = load i8, ptr %892, align 1
  %894 = call i32 @mutex_lock_interruptible(ptr noundef %861) #12
  %895 = icmp slt i32 %894, 0
  br i1 %895, label %896, label %901

896:                                              ; preds = %889
  %897 = load i32, ptr @debug, align 4
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %923, label %899

899:                                              ; preds = %896
  %900 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %923

901:                                              ; preds = %889
  %902 = zext i8 %891 to i16
  %903 = shl i16 %902, 13
  %904 = zext i8 %893 to i16
  %905 = shl i16 %904, 9
  %906 = or i16 %905, %903
  %907 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %907, align 8
  %908 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 106, ptr %908, align 1
  %909 = lshr exact i16 %906, 8
  %910 = trunc i16 %909 to i8
  %911 = or i8 %910, 1
  %912 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %911, ptr %912, align 2
  %913 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 0, ptr %913, align 1
  %914 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %914, align 8
  %915 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %916 = load i8, ptr %915, align 4
  %917 = lshr i8 %916, 1
  %918 = zext i8 %917 to i16
  store i16 %918, ptr %914, align 8
  %919 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %907, ptr %919, align 8
  %920 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %921 = load ptr, ptr %920, align 8
  %922 = call i32 @i2c_transfer(ptr noundef %921, ptr noundef %914, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %861) #12
  br label %923

923:                                              ; preds = %901, %899, %896
  %924 = load i8, ptr %31, align 1
  %925 = add i8 %924, 1
  br label %926

926:                                              ; preds = %923, %883
  %927 = phi i8 [ %925, %923 ], [ 4, %883 ]
  %928 = phi i32 [ 5, %923 ], [ 7, %883 ]
  store i8 %927, ptr %31, align 1
  call fastcc void @dib7000p_restart_agc(ptr noundef %30) #12
  br label %1117

929:                                              ; preds = %29
  %930 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 8
  %931 = load ptr, ptr %930, align 8
  %932 = getelementptr inbounds %struct.dibx000_agc_config, ptr %931, i32 0, i32 1
  %933 = load i16, ptr %932, align 2
  %934 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %935 = call i32 @mutex_lock_interruptible(ptr noundef %934) #12
  %936 = icmp slt i32 %935, 0
  br i1 %936, label %937, label %942

937:                                              ; preds = %929
  %938 = load i32, ptr @debug, align 4
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %960, label %940

940:                                              ; preds = %937
  %941 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %960

942:                                              ; preds = %929
  %943 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %943, align 8
  %944 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 75, ptr %944, align 1
  %945 = lshr i16 %933, 8
  %946 = trunc i16 %945 to i8
  %947 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %946, ptr %947, align 2
  %948 = trunc i16 %933 to i8
  %949 = or i8 %948, 16
  %950 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %949, ptr %950, align 1
  %951 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %951, align 8
  %952 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %953 = load i8, ptr %952, align 4
  %954 = lshr i8 %953, 1
  %955 = zext i8 %954 to i16
  store i16 %955, ptr %951, align 8
  %956 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %943, ptr %956, align 8
  %957 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %958 = load ptr, ptr %957, align 8
  %959 = call i32 @i2c_transfer(ptr noundef %958, ptr noundef %951, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %934) #12
  br label %960

960:                                              ; preds = %942, %940, %937
  %961 = load ptr, ptr %930, align 8
  %962 = getelementptr inbounds %struct.dibx000_agc_config, ptr %961, i32 0, i32 8
  %963 = load i8, ptr %962, align 2
  %964 = call i32 @mutex_lock_interruptible(ptr noundef %934) #12
  %965 = icmp slt i32 %964, 0
  br i1 %965, label %966, label %971

966:                                              ; preds = %960
  %967 = load i32, ptr @debug, align 4
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %987, label %969

969:                                              ; preds = %966
  %970 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %987

971:                                              ; preds = %960
  %972 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %972, align 8
  %973 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 106, ptr %973, align 1
  %974 = shl i8 %963, 5
  %975 = or i8 %974, 4
  %976 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %975, ptr %976, align 2
  %977 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 0, ptr %977, align 1
  %978 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %978, align 8
  %979 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %980 = load i8, ptr %979, align 4
  %981 = lshr i8 %980, 1
  %982 = zext i8 %981 to i16
  store i16 %982, ptr %978, align 8
  %983 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %972, ptr %983, align 8
  %984 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %985 = load ptr, ptr %984, align 8
  %986 = call i32 @i2c_transfer(ptr noundef %985, ptr noundef %978, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %934) #12
  br label %987

987:                                              ; preds = %971, %969, %966
  %988 = load i8, ptr %31, align 1
  %989 = add i8 %988, 1
  store i8 %989, ptr %31, align 1
  br label %1117

990:                                              ; preds = %29
  %991 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 396) #12
  %992 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 394) #12
  %993 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 22
  %994 = call i32 @mutex_lock_interruptible(ptr noundef %993) #12
  %995 = icmp slt i32 %994, 0
  br i1 %995, label %996, label %1001

996:                                              ; preds = %990
  %997 = load i32, ptr @debug, align 4
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1018, label %999

999:                                              ; preds = %996
  %1000 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1018

1001:                                             ; preds = %990
  %1002 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %1002, align 8
  %1003 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 78, ptr %1003, align 1
  %1004 = lshr i16 %992, 8
  %1005 = trunc i16 %1004 to i8
  %1006 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %1005, ptr %1006, align 2
  %1007 = trunc i16 %992 to i8
  %1008 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %1007, ptr %1008, align 1
  %1009 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %1009, align 8
  %1010 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %1011 = load i8, ptr %1010, align 4
  %1012 = lshr i8 %1011, 1
  %1013 = zext i8 %1012 to i16
  store i16 %1013, ptr %1009, align 8
  %1014 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %1002, ptr %1014, align 8
  %1015 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %1016 = load ptr, ptr %1015, align 8
  %1017 = call i32 @i2c_transfer(ptr noundef %1016, ptr noundef %1009, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %993) #12
  br label %1018

1018:                                             ; preds = %1001, %999, %996
  %1019 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 8
  %1020 = load ptr, ptr %1019, align 8
  %1021 = getelementptr inbounds %struct.dibx000_agc_config, ptr %1020, i32 0, i32 1
  %1022 = load i16, ptr %1021, align 2
  %1023 = call i32 @mutex_lock_interruptible(ptr noundef %993) #12
  %1024 = icmp slt i32 %1023, 0
  br i1 %1024, label %1025, label %1030

1025:                                             ; preds = %1018
  %1026 = load i32, ptr @debug, align 4
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1047, label %1028

1028:                                             ; preds = %1025
  %1029 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1047

1030:                                             ; preds = %1018
  %1031 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %1031, align 8
  %1032 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 75, ptr %1032, align 1
  %1033 = lshr i16 %1022, 8
  %1034 = trunc i16 %1033 to i8
  %1035 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %1034, ptr %1035, align 2
  %1036 = trunc i16 %1022 to i8
  %1037 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %1036, ptr %1037, align 1
  %1038 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %1038, align 8
  %1039 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %1040 = load i8, ptr %1039, align 4
  %1041 = lshr i8 %1040, 1
  %1042 = zext i8 %1041 to i16
  store i16 %1042, ptr %1038, align 8
  %1043 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %1031, ptr %1043, align 8
  %1044 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %1045 = load ptr, ptr %1044, align 8
  %1046 = call i32 @i2c_transfer(ptr noundef %1045, ptr noundef %1038, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %993) #12
  br label %1047

1047:                                             ; preds = %1030, %1028, %1025
  %1048 = load ptr, ptr %1019, align 8
  %1049 = getelementptr inbounds %struct.dibx000_agc_config, ptr %1048, i32 0, i32 8
  %1050 = load i8, ptr %1049, align 2
  %1051 = getelementptr inbounds %struct.dibx000_agc_config, ptr %1048, i32 0, i32 9
  %1052 = load i8, ptr %1051, align 1
  %1053 = and i16 %991, 255
  %1054 = call i32 @mutex_lock_interruptible(ptr noundef %993) #12
  %1055 = icmp slt i32 %1054, 0
  br i1 %1055, label %1056, label %1061

1056:                                             ; preds = %1047
  %1057 = load i32, ptr @debug, align 4
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1083, label %1059

1059:                                             ; preds = %1056
  %1060 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1083

1061:                                             ; preds = %1047
  %1062 = zext i8 %1050 to i16
  %1063 = shl i16 %1062, 13
  %1064 = zext i8 %1052 to i16
  %1065 = shl i16 %1064, 9
  %1066 = or i16 %1065, %1063
  %1067 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 20
  store i8 0, ptr %1067, align 8
  %1068 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 1
  store i8 106, ptr %1068, align 1
  %1069 = lshr exact i16 %1066, 8
  %1070 = trunc i16 %1069 to i8
  %1071 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 2
  store i8 %1070, ptr %1071, align 2
  %1072 = trunc i16 %991 to i8
  %1073 = getelementptr %struct.dib7000p_state, ptr %30, i32 0, i32 20, i32 3
  store i8 %1072, ptr %1073, align 1
  %1074 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19
  store i64 17179869184, ptr %1074, align 8
  %1075 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 2
  %1076 = load i8, ptr %1075, align 4
  %1077 = lshr i8 %1076, 1
  %1078 = zext i8 %1077 to i16
  store i16 %1078, ptr %1074, align 8
  %1079 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 19, i32 0, i32 3
  store ptr %1067, ptr %1079, align 8
  %1080 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 3
  %1081 = load ptr, ptr %1080, align 8
  %1082 = call i32 @i2c_transfer(ptr noundef %1081, ptr noundef %1074, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %993) #12
  br label %1083

1083:                                             ; preds = %1061, %1059, %1056
  call fastcc void @dib7000p_restart_agc(ptr noundef %30) #12
  %1084 = load i32, ptr @debug, align 4
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1089, label %1086

1086:                                             ; preds = %1083
  %1087 = zext i16 %1053 to i32
  %1088 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dib7000p_agc_startup, ptr noundef %0, i32 noundef %1087) #13
  br label %1089

1089:                                             ; preds = %1086, %1083
  %1090 = load i8, ptr %31, align 1
  %1091 = add i8 %1090, 1
  store i8 %1091, ptr %31, align 1
  br label %1117

1092:                                             ; preds = %29
  %1093 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 1, i32 3
  %1094 = load ptr, ptr %1093, align 4
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1105, label %1096

1096:                                             ; preds = %1092
  %1097 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %30, i16 noundef zeroext 394) #12
  %1098 = load ptr, ptr %1093, align 4
  %1099 = call i32 %1098(ptr noundef %30, i16 noundef zeroext %1097) #12
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1104

1101:                                             ; preds = %1096
  %1102 = load i8, ptr %31, align 1
  %1103 = add i8 %1102, 1
  br label %1105

1104:                                             ; preds = %1096
  call fastcc void @dib7000p_restart_agc(ptr noundef %30) #12
  br label %1117

1105:                                             ; preds = %1101, %1092
  %1106 = phi i8 [ %1103, %1101 ], [ 5, %1092 ]
  store i8 %1106, ptr %31, align 1
  br label %1117

1107:                                             ; preds = %29
  %1108 = getelementptr inbounds %struct.dib7000p_state, ptr %30, i32 0, i32 1, i32 13
  %1109 = load ptr, ptr %1108, align 8
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1115, label %1111

1111:                                             ; preds = %1107
  %1112 = call i32 %1109(ptr noundef %30, i8 noundef zeroext 0) #12
  %1113 = load i8, ptr %31, align 1
  %1114 = add i8 %1113, 1
  br label %1115

1115:                                             ; preds = %1111, %1107
  %1116 = phi i8 [ %1114, %1111 ], [ 6, %1107 ]
  store i8 %1116, ptr %31, align 1
  br label %1119

1117:                                             ; preds = %1105, %1104, %1089, %987, %926, %851
  %1118 = phi i32 [ 5, %1104 ], [ 7, %851 ], [ %928, %926 ], [ 14, %987 ], [ 5, %1089 ], [ 7, %1105 ]
  call void @msleep(i32 noundef %1118) #12
  br label %29

1119:                                             ; preds = %1115, %849, %211, %208, %29
  %1120 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %1121 = load i32, ptr %1120, align 4
  %1122 = icmp eq i32 %1121, 2
  br i1 %1122, label %1135, label %1123

1123:                                             ; preds = %1119
  %1124 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %1125 = load i32, ptr %1124, align 4
  %1126 = icmp eq i32 %1125, 4
  br i1 %1126, label %1135, label %1127

1127:                                             ; preds = %1123
  %1128 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %1129 = load i32, ptr %1128, align 4
  %1130 = icmp eq i32 %1129, 6
  br i1 %1130, label %1135, label %1131

1131:                                             ; preds = %1127
  %1132 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %1133 = load i32, ptr %1132, align 4
  %1134 = icmp eq i32 %1133, 9
  br i1 %1134, label %1135, label %1393

1135:                                             ; preds = %1131, %1127, %1123, %1119
  %1136 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %2) #12
  %1137 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1136, i16 noundef zeroext 18) #12
  %1138 = zext i16 %1137 to i32
  %1139 = shl nuw i32 %1138, 16
  %1140 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1136, i16 noundef zeroext 19) #12
  %1141 = zext i16 %1140 to i32
  %1142 = or i32 %1139, %1141
  %1143 = udiv i32 %1142, 1000
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %2, ptr noundef align 4 dereferenceable(456) %4, i32 456, i1 false) #12
  %1144 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 1
  store i32 3, ptr %1144, align 4
  %1145 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 8
  store i32 0, ptr %1145, align 4
  %1146 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 6
  store i32 1, ptr %1146, align 4
  %1147 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 11
  store i32 2, ptr %1147, align 4
  %1148 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 12
  store i32 3, ptr %1148, align 4
  %1149 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %2, i32 0, i32 9
  store i32 0, ptr %1149, align 4
  call fastcc void @dib7000p_set_channel(ptr noundef %1136, ptr noundef nonnull %2, i8 noundef zeroext 7) #12
  %1150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %1151 = load i32, ptr %1150, align 4
  %1152 = icmp ugt i32 %1151, 4999999
  br i1 %1152, label %1153, label %1158

1153:                                             ; preds = %1135
  %1154 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 16
  %1155 = load i16, ptr %1154, align 4
  %1156 = icmp eq i16 %1155, 28816
  %1157 = select i1 %1156, i32 2, i32 1
  br label %1158

1158:                                             ; preds = %1153, %1135
  %1159 = phi i32 [ %1157, %1153 ], [ 6, %1135 ]
  %1160 = mul nuw nsw i32 %1159, %1143
  %1161 = mul nuw nsw i32 %1160, 30
  %1162 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 22
  %1163 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1164 = icmp slt i32 %1163, 0
  br i1 %1164, label %1165, label %1170

1165:                                             ; preds = %1158
  %1166 = load i32, ptr @debug, align 4
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1188, label %1168

1168:                                             ; preds = %1165
  %1169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1188

1170:                                             ; preds = %1158
  %1171 = lshr i32 %1161, 16
  %1172 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1172, align 8
  %1173 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 6, ptr %1173, align 1
  %1174 = lshr i32 %1161, 24
  %1175 = trunc i32 %1174 to i8
  %1176 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1175, ptr %1176, align 2
  %1177 = trunc i32 %1171 to i8
  %1178 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1177, ptr %1178, align 1
  %1179 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1179, align 8
  %1180 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1181 = load i8, ptr %1180, align 4
  %1182 = lshr i8 %1181, 1
  %1183 = zext i8 %1182 to i16
  store i16 %1183, ptr %1179, align 8
  %1184 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1172, ptr %1184, align 8
  %1185 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1186 = load ptr, ptr %1185, align 8
  %1187 = call i32 @i2c_transfer(ptr noundef %1186, ptr noundef %1179, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1188

1188:                                             ; preds = %1170, %1168, %1165
  %1189 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1190 = icmp slt i32 %1189, 0
  br i1 %1190, label %1191, label %1196

1191:                                             ; preds = %1188
  %1192 = load i32, ptr @debug, align 4
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1213, label %1194

1194:                                             ; preds = %1191
  %1195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1213

1196:                                             ; preds = %1188
  %1197 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1197, align 8
  %1198 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 7, ptr %1198, align 1
  %1199 = lshr i32 %1161, 8
  %1200 = trunc i32 %1199 to i8
  %1201 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1200, ptr %1201, align 2
  %1202 = trunc i32 %1161 to i8
  %1203 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1202, ptr %1203, align 1
  %1204 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1204, align 8
  %1205 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1206 = load i8, ptr %1205, align 4
  %1207 = lshr i8 %1206, 1
  %1208 = zext i8 %1207 to i16
  store i16 %1208, ptr %1204, align 8
  %1209 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1197, ptr %1209, align 8
  %1210 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1211 = load ptr, ptr %1210, align 8
  %1212 = call i32 @i2c_transfer(ptr noundef %1211, ptr noundef %1204, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1213

1213:                                             ; preds = %1196, %1194, %1191
  %1214 = mul nuw i32 %1160, 100
  %1215 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1216 = icmp slt i32 %1215, 0
  br i1 %1216, label %1217, label %1222

1217:                                             ; preds = %1213
  %1218 = load i32, ptr @debug, align 4
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1240, label %1220

1220:                                             ; preds = %1217
  %1221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1240

1222:                                             ; preds = %1213
  %1223 = lshr i32 %1214, 16
  %1224 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1224, align 8
  %1225 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 8, ptr %1225, align 1
  %1226 = lshr i32 %1214, 24
  %1227 = trunc i32 %1226 to i8
  %1228 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1227, ptr %1228, align 2
  %1229 = trunc i32 %1223 to i8
  %1230 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1229, ptr %1230, align 1
  %1231 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1231, align 8
  %1232 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1233 = load i8, ptr %1232, align 4
  %1234 = lshr i8 %1233, 1
  %1235 = zext i8 %1234 to i16
  store i16 %1235, ptr %1231, align 8
  %1236 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1224, ptr %1236, align 8
  %1237 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1238 = load ptr, ptr %1237, align 8
  %1239 = call i32 @i2c_transfer(ptr noundef %1238, ptr noundef %1231, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1240

1240:                                             ; preds = %1222, %1220, %1217
  %1241 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1242 = icmp slt i32 %1241, 0
  br i1 %1242, label %1243, label %1248

1243:                                             ; preds = %1240
  %1244 = load i32, ptr @debug, align 4
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1265, label %1246

1246:                                             ; preds = %1243
  %1247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1265

1248:                                             ; preds = %1240
  %1249 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1249, align 8
  %1250 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 9, ptr %1250, align 1
  %1251 = lshr i32 %1214, 8
  %1252 = trunc i32 %1251 to i8
  %1253 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1252, ptr %1253, align 2
  %1254 = trunc i32 %1214 to i8
  %1255 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1254, ptr %1255, align 1
  %1256 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1256, align 8
  %1257 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1258 = load i8, ptr %1257, align 4
  %1259 = lshr i8 %1258, 1
  %1260 = zext i8 %1259 to i16
  store i16 %1260, ptr %1256, align 8
  %1261 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1249, ptr %1261, align 8
  %1262 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1263 = load ptr, ptr %1262, align 8
  %1264 = call i32 @i2c_transfer(ptr noundef %1263, ptr noundef %1256, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1265

1265:                                             ; preds = %1248, %1246, %1243
  %1266 = mul i32 %1160, 500
  %1267 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1268 = icmp slt i32 %1267, 0
  br i1 %1268, label %1269, label %1274

1269:                                             ; preds = %1265
  %1270 = load i32, ptr @debug, align 4
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1292, label %1272

1272:                                             ; preds = %1269
  %1273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1292

1274:                                             ; preds = %1265
  %1275 = lshr i32 %1266, 16
  %1276 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1276, align 8
  %1277 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 10, ptr %1277, align 1
  %1278 = lshr i32 %1266, 24
  %1279 = trunc i32 %1278 to i8
  %1280 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1279, ptr %1280, align 2
  %1281 = trunc i32 %1275 to i8
  %1282 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1281, ptr %1282, align 1
  %1283 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1283, align 8
  %1284 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1285 = load i8, ptr %1284, align 4
  %1286 = lshr i8 %1285, 1
  %1287 = zext i8 %1286 to i16
  store i16 %1287, ptr %1283, align 8
  %1288 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1276, ptr %1288, align 8
  %1289 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1290 = load ptr, ptr %1289, align 8
  %1291 = call i32 @i2c_transfer(ptr noundef %1290, ptr noundef %1283, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1292

1292:                                             ; preds = %1274, %1272, %1269
  %1293 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1294 = icmp slt i32 %1293, 0
  br i1 %1294, label %1295, label %1300

1295:                                             ; preds = %1292
  %1296 = load i32, ptr @debug, align 4
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1317, label %1298

1298:                                             ; preds = %1295
  %1299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1317

1300:                                             ; preds = %1292
  %1301 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1301, align 8
  %1302 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 11, ptr %1302, align 1
  %1303 = lshr i32 %1266, 8
  %1304 = trunc i32 %1303 to i8
  %1305 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1304, ptr %1305, align 2
  %1306 = trunc i32 %1266 to i8
  %1307 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1306, ptr %1307, align 1
  %1308 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1308, align 8
  %1309 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1310 = load i8, ptr %1309, align 4
  %1311 = lshr i8 %1310, 1
  %1312 = zext i8 %1311 to i16
  store i16 %1312, ptr %1308, align 8
  %1313 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1301, ptr %1313, align 8
  %1314 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1315 = load ptr, ptr %1314, align 8
  %1316 = call i32 @i2c_transfer(ptr noundef %1315, ptr noundef %1308, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1317

1317:                                             ; preds = %1300, %1298, %1295
  %1318 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1136, i16 noundef zeroext 0) #12
  %1319 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1320 = icmp slt i32 %1319, 0
  br i1 %1320, label %1321, label %1326

1321:                                             ; preds = %1317
  %1322 = load i32, ptr @debug, align 4
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1344, label %1324

1324:                                             ; preds = %1321
  %1325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1344

1326:                                             ; preds = %1317
  %1327 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1327, align 8
  %1328 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 0, ptr %1328, align 1
  %1329 = lshr i16 %1318, 8
  %1330 = trunc i16 %1329 to i8
  %1331 = or i8 %1330, 2
  %1332 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1331, ptr %1332, align 2
  %1333 = trunc i16 %1318 to i8
  %1334 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1333, ptr %1334, align 1
  %1335 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1335, align 8
  %1336 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1337 = load i8, ptr %1336, align 4
  %1338 = lshr i8 %1337, 1
  %1339 = zext i8 %1338 to i16
  store i16 %1339, ptr %1335, align 8
  %1340 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1327, ptr %1340, align 8
  %1341 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1342 = load ptr, ptr %1341, align 8
  %1343 = call i32 @i2c_transfer(ptr noundef %1342, ptr noundef %1335, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1344

1344:                                             ; preds = %1326, %1324, %1321
  %1345 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1136, i16 noundef zeroext 1284) #12
  %1346 = call i32 @mutex_lock_interruptible(ptr noundef %1162) #12
  %1347 = icmp slt i32 %1346, 0
  br i1 %1347, label %1348, label %1353

1348:                                             ; preds = %1344
  %1349 = load i32, ptr @debug, align 4
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1370, label %1351

1351:                                             ; preds = %1348
  %1352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1370

1353:                                             ; preds = %1344
  %1354 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 20
  store i8 0, ptr %1354, align 8
  %1355 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 1
  store i8 0, ptr %1355, align 1
  %1356 = lshr i16 %1318, 8
  %1357 = trunc i16 %1356 to i8
  %1358 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 2
  store i8 %1357, ptr %1358, align 2
  %1359 = trunc i16 %1318 to i8
  %1360 = getelementptr %struct.dib7000p_state, ptr %1136, i32 0, i32 20, i32 3
  store i8 %1359, ptr %1360, align 1
  %1361 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19
  store i64 17179869184, ptr %1361, align 8
  %1362 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 2
  %1363 = load i8, ptr %1362, align 4
  %1364 = lshr i8 %1363, 1
  %1365 = zext i8 %1364 to i16
  store i16 %1365, ptr %1361, align 8
  %1366 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 19, i32 0, i32 3
  store ptr %1354, ptr %1366, align 8
  %1367 = getelementptr inbounds %struct.dib7000p_state, ptr %1136, i32 0, i32 3
  %1368 = load ptr, ptr %1367, align 8
  %1369 = call i32 @i2c_transfer(ptr noundef %1368, ptr noundef %1361, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1162) #12
  br label %1370

1370:                                             ; preds = %1353, %1351, %1348
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %2) #12
  br label %1371

1371:                                             ; preds = %1371, %1370
  %1372 = phi i32 [ 800, %1370 ], [ %1381, %1371 ]
  call void @msleep(i32 noundef 1) #12
  %1373 = load ptr, ptr %5, align 4
  %1374 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1373, i16 noundef zeroext 1284) #12
  %1375 = zext i16 %1374 to i32
  %1376 = and i32 %1375, 1
  %1377 = icmp eq i32 %1376, 0
  %1378 = and i32 %1375, 2
  %1379 = select i1 %1377, i32 %1378, i32 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = add nsw i32 %1372, -1
  %1382 = icmp eq i32 %1372, 0
  %1383 = select i1 %1380, i1 true, i1 %1382
  br i1 %1383, label %1384, label %1371

1384:                                             ; preds = %1371
  %1385 = load i32, ptr @debug, align 4
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1389, label %1387

1387:                                             ; preds = %1384
  %1388 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dib7000p_set_frontend, i32 noundef %1379) #13
  br label %1389

1389:                                             ; preds = %1387, %1384
  %1390 = icmp ult i32 %1379, 2
  br i1 %1390, label %1932, label %1391

1391:                                             ; preds = %1389
  %1392 = call i32 @dib7000p_get_frontend(ptr noundef %0, ptr noundef %4)
  br label %1393

1393:                                             ; preds = %1391, %1131
  %1394 = load ptr, ptr %5, align 4
  call fastcc void @dib7000p_set_channel(ptr noundef %1394, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  %1395 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 22
  %1396 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1397 = icmp slt i32 %1396, 0
  br i1 %1397, label %1398, label %1403

1398:                                             ; preds = %1393
  %1399 = load i32, ptr @debug, align 4
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1417, label %1401

1401:                                             ; preds = %1398
  %1402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1417

1403:                                             ; preds = %1393
  %1404 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 3, ptr %1404, align 8
  %1405 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 2, ptr %1405, align 1
  %1406 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 64, ptr %1406, align 2
  %1407 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 0, ptr %1407, align 1
  %1408 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1408, align 8
  %1409 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1410 = load i8, ptr %1409, align 4
  %1411 = lshr i8 %1410, 1
  %1412 = zext i8 %1411 to i16
  store i16 %1412, ptr %1408, align 8
  %1413 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1404, ptr %1413, align 8
  %1414 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1415 = load ptr, ptr %1414, align 8
  %1416 = call i32 @i2c_transfer(ptr noundef %1415, ptr noundef %1408, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1417

1417:                                             ; preds = %1403, %1401, %1398
  %1418 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1419 = icmp slt i32 %1418, 0
  br i1 %1419, label %1420, label %1425

1420:                                             ; preds = %1417
  %1421 = load i32, ptr @debug, align 4
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1439, label %1423

1423:                                             ; preds = %1420
  %1424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1439

1425:                                             ; preds = %1417
  %1426 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 3, ptr %1426, align 8
  %1427 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 2, ptr %1427, align 1
  %1428 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 0, ptr %1428, align 2
  %1429 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 0, ptr %1429, align 1
  %1430 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1430, align 8
  %1431 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1432 = load i8, ptr %1431, align 4
  %1433 = lshr i8 %1432, 1
  %1434 = zext i8 %1433 to i16
  store i16 %1434, ptr %1430, align 8
  %1435 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1426, ptr %1435, align 8
  %1436 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1437 = load ptr, ptr %1436, align 8
  %1438 = call i32 @i2c_transfer(ptr noundef %1437, ptr noundef %1430, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1439

1439:                                             ; preds = %1425, %1423, %1420
  call void @msleep(i32 noundef 45) #12
  %1440 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 15
  %1441 = load i8, ptr %1440, align 2
  %1442 = and i8 %1441, 1
  %1443 = icmp eq i8 %1442, 0
  br i1 %1443, label %1471, label %1444

1444:                                             ; preds = %1439
  %1445 = load i32, ptr @debug, align 4
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1449, label %1447

1447:                                             ; preds = %1444
  %1448 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dib7000p_tune) #13
  br label %1449

1449:                                             ; preds = %1447, %1444
  %1450 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1451 = icmp slt i32 %1450, 0
  br i1 %1451, label %1452, label %1457

1452:                                             ; preds = %1449
  %1453 = load i32, ptr @debug, align 4
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1493, label %1455

1455:                                             ; preds = %1452
  %1456 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1493

1457:                                             ; preds = %1449
  %1458 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1458, align 8
  %1459 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 -90, ptr %1459, align 1
  %1460 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 64, ptr %1460, align 2
  %1461 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 0, ptr %1461, align 1
  %1462 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1462, align 8
  %1463 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1464 = load i8, ptr %1463, align 4
  %1465 = lshr i8 %1464, 1
  %1466 = zext i8 %1465 to i16
  store i16 %1466, ptr %1462, align 8
  %1467 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1458, ptr %1467, align 8
  %1468 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1469 = load ptr, ptr %1468, align 8
  %1470 = call i32 @i2c_transfer(ptr noundef %1469, ptr noundef %1462, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1493

1471:                                             ; preds = %1439
  %1472 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1473 = icmp slt i32 %1472, 0
  br i1 %1473, label %1474, label %1479

1474:                                             ; preds = %1471
  %1475 = load i32, ptr @debug, align 4
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1493, label %1477

1477:                                             ; preds = %1474
  %1478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1493

1479:                                             ; preds = %1471
  %1480 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1480, align 8
  %1481 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 -90, ptr %1481, align 1
  %1482 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 0, ptr %1482, align 2
  %1483 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 0, ptr %1483, align 1
  %1484 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1484, align 8
  %1485 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1486 = load i8, ptr %1485, align 4
  %1487 = lshr i8 %1486, 1
  %1488 = zext i8 %1487 to i16
  store i16 %1488, ptr %1484, align 8
  %1489 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1480, ptr %1489, align 8
  %1490 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1491 = load ptr, ptr %1490, align 8
  %1492 = call i32 @i2c_transfer(ptr noundef %1491, ptr noundef %1484, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1493

1493:                                             ; preds = %1479, %1477, %1474, %1457, %1455, %1452
  %1494 = phi i8 [ 18, %1452 ], [ 18, %1455 ], [ 18, %1457 ], [ 16, %1474 ], [ 16, %1477 ], [ 16, %1479 ]
  %1495 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1496 = icmp slt i32 %1495, 0
  br i1 %1496, label %1497, label %1502

1497:                                             ; preds = %1493
  %1498 = load i32, ptr @debug, align 4
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1516, label %1500

1500:                                             ; preds = %1497
  %1501 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1516

1502:                                             ; preds = %1493
  %1503 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1503, align 8
  %1504 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 29, ptr %1504, align 1
  %1505 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 %1494, ptr %1505, align 2
  %1506 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 115, ptr %1506, align 1
  %1507 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1507, align 8
  %1508 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1509 = load i8, ptr %1508, align 4
  %1510 = lshr i8 %1509, 1
  %1511 = zext i8 %1510 to i16
  store i16 %1511, ptr %1507, align 8
  %1512 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1503, ptr %1512, align 8
  %1513 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1514 = load ptr, ptr %1513, align 8
  %1515 = call i32 @i2c_transfer(ptr noundef %1514, ptr noundef %1507, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1516

1516:                                             ; preds = %1502, %1500, %1497
  %1517 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 9
  %1518 = load i32, ptr %1517, align 4
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1520, label %1521

1520:                                             ; preds = %1516
  call void @msleep(i32 noundef 200) #12
  br label %1521

1521:                                             ; preds = %1520, %1516
  %1522 = load i32, ptr %1120, align 4
  %1523 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1524 = icmp slt i32 %1523, 0
  br i1 %1524, label %1525, label %1530

1525:                                             ; preds = %1521
  %1526 = load i32, ptr @debug, align 4
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1548, label %1528

1528:                                             ; preds = %1525
  %1529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1548

1530:                                             ; preds = %1521
  %1531 = icmp eq i32 %1522, 0
  %1532 = icmp eq i32 %1522, 3
  %1533 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1533, align 8
  %1534 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 26, ptr %1534, align 1
  %1535 = select i1 %1532, i8 54, i8 70
  %1536 = select i1 %1531, i8 38, i8 %1535
  %1537 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 %1536, ptr %1537, align 2
  %1538 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 -128, ptr %1538, align 1
  %1539 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1539, align 8
  %1540 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1541 = load i8, ptr %1540, align 4
  %1542 = lshr i8 %1541, 1
  %1543 = zext i8 %1542 to i16
  store i16 %1543, ptr %1539, align 8
  %1544 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1533, ptr %1544, align 8
  %1545 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1546 = load ptr, ptr %1545, align 8
  %1547 = call i32 @i2c_transfer(ptr noundef %1546, ptr noundef %1539, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1548

1548:                                             ; preds = %1530, %1528, %1525
  %1549 = load i32, ptr %1120, align 4
  %1550 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1551 = icmp slt i32 %1550, 0
  br i1 %1551, label %1552, label %1557

1552:                                             ; preds = %1548
  %1553 = load i32, ptr @debug, align 4
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1575, label %1555

1555:                                             ; preds = %1552
  %1556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1575

1557:                                             ; preds = %1548
  %1558 = icmp eq i32 %1549, 0
  %1559 = icmp eq i32 %1549, 3
  %1560 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1560, align 8
  %1561 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 32, ptr %1561, align 1
  %1562 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 0, ptr %1562, align 2
  %1563 = select i1 %1559, i8 7, i8 8
  %1564 = select i1 %1558, i8 6, i8 %1563
  %1565 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 %1564, ptr %1565, align 1
  %1566 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1566, align 8
  %1567 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1568 = load i8, ptr %1567, align 4
  %1569 = lshr i8 %1568, 1
  %1570 = zext i8 %1569 to i16
  store i16 %1570, ptr %1566, align 8
  %1571 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1560, ptr %1571, align 8
  %1572 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1573 = load ptr, ptr %1572, align 8
  %1574 = call i32 @i2c_transfer(ptr noundef %1573, ptr noundef %1566, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1575

1575:                                             ; preds = %1557, %1555, %1552
  %1576 = load i32, ptr %1120, align 4
  %1577 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1578 = icmp slt i32 %1577, 0
  br i1 %1578, label %1579, label %1584

1579:                                             ; preds = %1575
  %1580 = load i32, ptr @debug, align 4
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1602, label %1582

1582:                                             ; preds = %1579
  %1583 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1602

1584:                                             ; preds = %1575
  %1585 = icmp eq i32 %1576, 0
  %1586 = icmp eq i32 %1576, 3
  %1587 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1587, align 8
  %1588 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 33, ptr %1588, align 1
  %1589 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 0, ptr %1589, align 2
  %1590 = select i1 %1586, i8 7, i8 8
  %1591 = select i1 %1585, i8 6, i8 %1590
  %1592 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 %1591, ptr %1592, align 1
  %1593 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1593, align 8
  %1594 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1595 = load i8, ptr %1594, align 4
  %1596 = lshr i8 %1595, 1
  %1597 = zext i8 %1596 to i16
  store i16 %1597, ptr %1593, align 8
  %1598 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1587, ptr %1598, align 8
  %1599 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1600 = load ptr, ptr %1599, align 8
  %1601 = call i32 @i2c_transfer(ptr noundef %1600, ptr noundef %1593, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1602

1602:                                             ; preds = %1584, %1582, %1579
  %1603 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1394, i16 noundef zeroext 509) #12
  %1604 = and i16 %1603, 64
  %1605 = icmp eq i16 %1604, 0
  br i1 %1605, label %1606, label %1662

1606:                                             ; preds = %1602
  %1607 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1394, i16 noundef zeroext 771) #12
  %1608 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1609 = icmp slt i32 %1608, 0
  br i1 %1609, label %1610, label %1615

1610:                                             ; preds = %1606
  %1611 = load i32, ptr @debug, align 4
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1633, label %1613

1613:                                             ; preds = %1610
  %1614 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1633

1615:                                             ; preds = %1606
  %1616 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 3, ptr %1616, align 8
  %1617 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 3, ptr %1617, align 1
  %1618 = lshr i16 %1607, 8
  %1619 = trunc i16 %1618 to i8
  %1620 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 %1619, ptr %1620, align 2
  %1621 = trunc i16 %1607 to i8
  %1622 = or i8 %1621, 2
  %1623 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 %1622, ptr %1623, align 1
  %1624 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1624, align 8
  %1625 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1626 = load i8, ptr %1625, align 4
  %1627 = lshr i8 %1626, 1
  %1628 = zext i8 %1627 to i16
  store i16 %1628, ptr %1624, align 8
  %1629 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1616, ptr %1629, align 8
  %1630 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1631 = load ptr, ptr %1630, align 8
  %1632 = call i32 @i2c_transfer(ptr noundef %1631, ptr noundef %1624, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1633

1633:                                             ; preds = %1615, %1613, %1610
  %1634 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1635 = icmp slt i32 %1634, 0
  br i1 %1635, label %1636, label %1641

1636:                                             ; preds = %1633
  %1637 = load i32, ptr @debug, align 4
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1658, label %1639

1639:                                             ; preds = %1636
  %1640 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1658

1641:                                             ; preds = %1633
  %1642 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 3, ptr %1642, align 8
  %1643 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 3, ptr %1643, align 1
  %1644 = lshr i16 %1607, 8
  %1645 = trunc i16 %1644 to i8
  %1646 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 %1645, ptr %1646, align 2
  %1647 = trunc i16 %1607 to i8
  %1648 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 %1647, ptr %1648, align 1
  %1649 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1649, align 8
  %1650 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1651 = load i8, ptr %1650, align 4
  %1652 = lshr i8 %1651, 1
  %1653 = zext i8 %1652 to i16
  store i16 %1653, ptr %1649, align 8
  %1654 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1642, ptr %1654, align 8
  %1655 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1656 = load ptr, ptr %1655, align 8
  %1657 = call i32 @i2c_transfer(ptr noundef %1656, ptr noundef %1649, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1658

1658:                                             ; preds = %1641, %1639, %1636
  call void @msleep(i32 noundef 40) #12
  %1659 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1394, i16 noundef zeroext 509) #12
  %1660 = and i16 %1659, 64
  %1661 = icmp eq i16 %1660, 0
  br i1 %1661, label %1689, label %1662

1662:                                             ; preds = %1658, %1602
  call fastcc void @dib7000p_update_timf(ptr noundef %1394) #12
  %1663 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1394, i16 noundef zeroext 26) #12
  %1664 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1665 = icmp slt i32 %1664, 0
  br i1 %1665, label %1666, label %1671

1666:                                             ; preds = %1662
  %1667 = load i32, ptr @debug, align 4
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1689, label %1669

1669:                                             ; preds = %1666
  %1670 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1689

1671:                                             ; preds = %1662
  %1672 = add i16 %1663, 20480
  %1673 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1673, align 8
  %1674 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 26, ptr %1674, align 1
  %1675 = lshr i16 %1672, 8
  %1676 = trunc i16 %1675 to i8
  %1677 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 %1676, ptr %1677, align 2
  %1678 = trunc i16 %1672 to i8
  %1679 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 %1678, ptr %1679, align 1
  %1680 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1680, align 8
  %1681 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1682 = load i8, ptr %1681, align 4
  %1683 = lshr i8 %1682, 1
  %1684 = zext i8 %1683 to i16
  store i16 %1684, ptr %1680, align 8
  %1685 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1673, ptr %1685, align 8
  %1686 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1687 = load ptr, ptr %1686, align 8
  %1688 = call i32 @i2c_transfer(ptr noundef %1687, ptr noundef %1680, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1689

1689:                                             ; preds = %1671, %1669, %1666, %1658
  %1690 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 1, i32 12
  %1691 = load i8, ptr %1690, align 1
  %1692 = icmp eq i8 %1691, 0
  br i1 %1692, label %1899, label %1693

1693:                                             ; preds = %1689
  %1694 = load i32, ptr %4, align 4
  %1695 = udiv i32 %1694, 1000
  %1696 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %1697 = load i32, ptr %1696, align 4
  %1698 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 1, i32 6
  %1699 = load ptr, ptr %1698, align 8
  %1700 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %1699, i32 0, i32 15
  %1701 = load i32, ptr %1700, align 4
  %1702 = udiv i32 %1701, 1000
  %1703 = udiv i32 %1701, 2000
  %1704 = add nuw nsw i32 %1703, %1695
  %1705 = urem i32 %1704, %1702
  %1706 = add nuw nsw i32 %1705, %1695
  %1707 = sub nsw i32 %1704, %1706
  %1708 = load i32, ptr @debug, align 4
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1712, label %1710

1710:                                             ; preds = %1693
  %1711 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dib7000p_spur_protect, i32 noundef %1707, i32 noundef %1695, i32 noundef %1702) #13
  br label %1712

1712:                                             ; preds = %1710, %1693
  %1713 = udiv i32 %1697, 2000
  %1714 = sub nsw i32 0, %1713
  %1715 = icmp slt i32 %1707, %1714
  %1716 = icmp sgt i32 %1707, %1713
  %1717 = or i1 %1715, %1716
  br i1 %1717, label %1899, label %1718

1718:                                             ; preds = %1712
  %1719 = udiv i32 %1697, 100000
  %1720 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1721 = icmp slt i32 %1720, 0
  br i1 %1721, label %1722, label %1727

1722:                                             ; preds = %1718
  %1723 = load i32, ptr @debug, align 4
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1741, label %1725

1725:                                             ; preds = %1722
  %1726 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1741

1727:                                             ; preds = %1718
  %1728 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  store i8 0, ptr %1728, align 8
  %1729 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  store i8 -114, ptr %1729, align 1
  %1730 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  store i8 6, ptr %1730, align 2
  %1731 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  store i8 16, ptr %1731, align 1
  %1732 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  store i64 17179869184, ptr %1732, align 8
  %1733 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1734 = load i8, ptr %1733, align 4
  %1735 = lshr i8 %1734, 1
  %1736 = zext i8 %1735 to i16
  store i16 %1736, ptr %1732, align 8
  %1737 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  store ptr %1728, ptr %1737, align 8
  %1738 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  %1739 = load ptr, ptr %1738, align 8
  %1740 = call i32 @i2c_transfer(ptr noundef %1739, ptr noundef %1732, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1741

1741:                                             ; preds = %1727, %1725, %1722
  %1742 = mul i32 %1707, 8960
  %1743 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 20
  %1744 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 1
  %1745 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 2
  %1746 = getelementptr %struct.dib7000p_state, ptr %1394, i32 0, i32 20, i32 3
  %1747 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19
  %1748 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 2
  %1749 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 19, i32 0, i32 3
  %1750 = getelementptr inbounds %struct.dib7000p_state, ptr %1394, i32 0, i32 3
  br label %1751

1751:                                             ; preds = %1883, %1741
  %1752 = phi i32 [ 0, %1741 ], [ %1753, %1883 ]
  %1753 = add nuw nsw i32 %1752, 1
  %1754 = mul i32 %1742, %1753
  %1755 = sdiv i32 %1754, %1719
  %1756 = sdiv i32 %1755, 1000
  %1757 = and i32 %1756, 1023
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1811, label %1759

1759:                                             ; preds = %1751
  %1760 = icmp ult i32 %1757, 256
  br i1 %1760, label %1761, label %1770

1761:                                             ; preds = %1759
  %1762 = and i32 %1756, 255
  %1763 = sub nuw nsw i32 256, %1762
  %1764 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1763
  %1765 = load i8, ptr %1764, align 1
  %1766 = zext i8 %1765 to i32
  %1767 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1762
  %1768 = load i8, ptr %1767, align 1
  %1769 = zext i8 %1768 to i32
  br label %1811

1770:                                             ; preds = %1759
  %1771 = icmp eq i32 %1757, 256
  br i1 %1771, label %1811, label %1772

1772:                                             ; preds = %1770
  %1773 = icmp ult i32 %1757, 512
  br i1 %1773, label %1774, label %1784

1774:                                             ; preds = %1772
  %1775 = and i32 %1756, 255
  %1776 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1775
  %1777 = load i8, ptr %1776, align 1
  %1778 = zext i8 %1777 to i32
  %1779 = sub nsw i32 0, %1778
  %1780 = sub nuw nsw i32 256, %1775
  %1781 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1780
  %1782 = load i8, ptr %1781, align 1
  %1783 = zext i8 %1782 to i32
  br label %1811

1784:                                             ; preds = %1772
  %1785 = icmp eq i32 %1757, 512
  br i1 %1785, label %1811, label %1786

1786:                                             ; preds = %1784
  %1787 = icmp ult i32 %1757, 768
  br i1 %1787, label %1788, label %1799

1788:                                             ; preds = %1786
  %1789 = and i32 %1756, 255
  %1790 = sub nuw nsw i32 256, %1789
  %1791 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1790
  %1792 = load i8, ptr %1791, align 1
  %1793 = zext i8 %1792 to i32
  %1794 = sub nsw i32 0, %1793
  %1795 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1789
  %1796 = load i8, ptr %1795, align 1
  %1797 = zext i8 %1796 to i32
  %1798 = sub nsw i32 0, %1797
  br label %1811

1799:                                             ; preds = %1786
  %1800 = icmp eq i32 %1757, 768
  br i1 %1800, label %1811, label %1801

1801:                                             ; preds = %1799
  %1802 = and i32 %1756, 255
  %1803 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1802
  %1804 = load i8, ptr %1803, align 1
  %1805 = zext i8 %1804 to i32
  %1806 = sub nuw nsw i32 256, %1802
  %1807 = getelementptr [256 x i8], ptr @dib7000p_spur_protect.sine, i32 0, i32 %1806
  %1808 = load i8, ptr %1807, align 1
  %1809 = zext i8 %1808 to i32
  %1810 = sub nsw i32 0, %1809
  br label %1811

1811:                                             ; preds = %1801, %1799, %1788, %1784, %1774, %1770, %1761, %1751
  %1812 = phi i32 [ %1769, %1761 ], [ %1783, %1774 ], [ %1798, %1788 ], [ %1810, %1801 ], [ 0, %1751 ], [ 256, %1770 ], [ 0, %1784 ], [ -256, %1799 ]
  %1813 = phi i32 [ %1766, %1761 ], [ %1779, %1774 ], [ %1794, %1788 ], [ %1805, %1801 ], [ 256, %1751 ], [ 0, %1770 ], [ -256, %1784 ], [ 0, %1799 ]
  %1814 = getelementptr [8 x i16], ptr @dib7000p_spur_protect.notch, i32 0, i32 %1752
  %1815 = load i16, ptr %1814, align 2
  %1816 = sext i16 %1815 to i32
  %1817 = mul nsw i32 %1813, %1816
  %1818 = add nsw i32 %1817, 16384
  %1819 = sdiv i32 %1818, 32768
  %1820 = mul nsw i32 %1812, %1816
  %1821 = add nsw i32 %1820, 16384
  %1822 = sdiv i32 %1821, 32768
  %1823 = load i32, ptr @debug, align 4
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1827, label %1825

1825:                                             ; preds = %1811
  %1826 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dib7000p_spur_protect, i32 noundef %1752, i32 noundef %1819, i32 noundef %1822) #13
  br label %1827

1827:                                             ; preds = %1825, %1811
  %1828 = shl i32 %1752, 10
  %1829 = and i32 %1819, 1023
  %1830 = or i32 %1829, %1828
  %1831 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1832 = icmp slt i32 %1831, 0
  br i1 %1832, label %1833, label %1838

1833:                                             ; preds = %1827
  %1834 = load i32, ptr @debug, align 4
  %1835 = icmp eq i32 %1834, 0
  br i1 %1835, label %1847, label %1836

1836:                                             ; preds = %1833
  %1837 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1847

1838:                                             ; preds = %1827
  store i8 0, ptr %1743, align 8
  store i8 -113, ptr %1744, align 1
  %1839 = lshr i32 %1830, 8
  %1840 = trunc i32 %1839 to i8
  store i8 %1840, ptr %1745, align 2
  %1841 = trunc i32 %1819 to i8
  store i8 %1841, ptr %1746, align 1
  store i64 17179869184, ptr %1747, align 8
  %1842 = load i8, ptr %1748, align 4
  %1843 = lshr i8 %1842, 1
  %1844 = zext i8 %1843 to i16
  store i16 %1844, ptr %1747, align 8
  store ptr %1743, ptr %1749, align 8
  %1845 = load ptr, ptr %1750, align 8
  %1846 = call i32 @i2c_transfer(ptr noundef %1845, ptr noundef %1747, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1847

1847:                                             ; preds = %1838, %1836, %1833
  %1848 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1849 = icmp slt i32 %1848, 0
  br i1 %1849, label %1850, label %1855

1850:                                             ; preds = %1847
  %1851 = load i32, ptr @debug, align 4
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1865, label %1853

1853:                                             ; preds = %1850
  %1854 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1865

1855:                                             ; preds = %1847
  store i8 0, ptr %1743, align 8
  store i8 -112, ptr %1744, align 1
  %1856 = lshr i32 %1822, 8
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 3
  store i8 %1858, ptr %1745, align 2
  %1859 = trunc i32 %1822 to i8
  store i8 %1859, ptr %1746, align 1
  store i64 17179869184, ptr %1747, align 8
  %1860 = load i8, ptr %1748, align 4
  %1861 = lshr i8 %1860, 1
  %1862 = zext i8 %1861 to i16
  store i16 %1862, ptr %1747, align 8
  store ptr %1743, ptr %1749, align 8
  %1863 = load ptr, ptr %1750, align 8
  %1864 = call i32 @i2c_transfer(ptr noundef %1863, ptr noundef %1747, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1865

1865:                                             ; preds = %1855, %1853, %1850
  %1866 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1867 = icmp slt i32 %1866, 0
  br i1 %1867, label %1868, label %1873

1868:                                             ; preds = %1865
  %1869 = load i32, ptr @debug, align 4
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1883, label %1871

1871:                                             ; preds = %1868
  %1872 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1883

1873:                                             ; preds = %1865
  store i8 0, ptr %1743, align 8
  store i8 -113, ptr %1744, align 1
  %1874 = lshr i32 %1830, 8
  %1875 = trunc i32 %1874 to i8
  %1876 = or i8 %1875, 64
  store i8 %1876, ptr %1745, align 2
  %1877 = trunc i32 %1819 to i8
  store i8 %1877, ptr %1746, align 1
  store i64 17179869184, ptr %1747, align 8
  %1878 = load i8, ptr %1748, align 4
  %1879 = lshr i8 %1878, 1
  %1880 = zext i8 %1879 to i16
  store i16 %1880, ptr %1747, align 8
  store ptr %1743, ptr %1749, align 8
  %1881 = load ptr, ptr %1750, align 8
  %1882 = call i32 @i2c_transfer(ptr noundef %1881, ptr noundef %1747, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1883

1883:                                             ; preds = %1873, %1871, %1868
  %1884 = icmp eq i32 %1753, 8
  br i1 %1884, label %1885, label %1751

1885:                                             ; preds = %1883
  %1886 = call i32 @mutex_lock_interruptible(ptr noundef %1395) #12
  %1887 = icmp slt i32 %1886, 0
  br i1 %1887, label %1888, label %1893

1888:                                             ; preds = %1885
  %1889 = load i32, ptr @debug, align 4
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1899, label %1891

1891:                                             ; preds = %1888
  %1892 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %1899

1893:                                             ; preds = %1885
  store i8 0, ptr %1743, align 8
  store i8 -113, ptr %1744, align 1
  store i8 0, ptr %1745, align 2
  store i8 0, ptr %1746, align 1
  store i64 17179869184, ptr %1747, align 8
  %1894 = load i8, ptr %1748, align 4
  %1895 = lshr i8 %1894, 1
  %1896 = zext i8 %1895 to i16
  store i16 %1896, ptr %1747, align 8
  store ptr %1743, ptr %1749, align 8
  %1897 = load ptr, ptr %1750, align 8
  %1898 = call i32 @i2c_transfer(ptr noundef %1897, ptr noundef %1747, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %1395) #12
  br label %1899

1899:                                             ; preds = %1893, %1891, %1888, %1712, %1689
  %1900 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %1901 = load i32, ptr %1900, align 4
  %1902 = udiv i32 %1901, 1000
  call fastcc void @dib7000p_set_bandwidth(ptr noundef %1394, i32 noundef %1902) #12
  %1903 = load ptr, ptr %5, align 4
  %1904 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  %1905 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  %1906 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  %1907 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  %1908 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  %1909 = getelementptr inbounds i8, ptr %1904, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(66) %1909, i8 0, i64 66, i1 false) #12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(111) %1906, i8 0, i64 111, i1 false) #12
  store i8 1, ptr %1904, align 4
  store i8 1, ptr %1905, align 1
  store i8 1, ptr %1908, align 2
  %1910 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %1910, align 1
  store i8 1, ptr %1906, align 4
  store i8 1, ptr %1907, align 1
  %1911 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %1911, align 1
  %1912 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %1912, align 1
  %1913 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %1913, align 1
  %1914 = call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %1903, i16 noundef zeroext 506) #12
  %1915 = zext i16 %1914 to i64
  %1916 = getelementptr inbounds %struct.dib7000p_state, ptr %1903, i32 0, i32 24
  store i64 %1915, ptr %1916, align 8
  %1917 = getelementptr inbounds %struct.dib7000p_state, ptr %1903, i32 0, i32 26
  store i32 0, ptr %1917, align 4
  %1918 = getelementptr inbounds %struct.dib7000p_state, ptr %1903, i32 0, i32 25
  store i32 0, ptr %1918, align 8
  %1919 = load i16, ptr %7, align 4
  %1920 = icmp eq i16 %1919, 28816
  %1921 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 1, i32 14
  %1922 = load i8, ptr %1921, align 4
  %1923 = zext i8 %1922 to i32
  br i1 %1920, label %1924, label %1930

1924:                                             ; preds = %1899
  call fastcc void @dib7090_set_output_mode(ptr noundef %0, i32 noundef %1923)
  %1925 = getelementptr inbounds %struct.dib7000p_state, ptr %6, i32 0, i32 1, i32 18
  %1926 = load i8, ptr %1925, align 1
  %1927 = and i8 %1926, 1
  %1928 = icmp eq i8 %1927, 0
  br i1 %1928, label %1929, label %1932

1929:                                             ; preds = %1924
  call fastcc void @dib7090_setDibTxMux(ptr noundef %6, i32 noundef 1)
  call fastcc void @dib7090_setHostBusMux(ptr noundef %6, i32 noundef 5)
  br label %1932

1930:                                             ; preds = %1899
  %1931 = call fastcc i32 @dib7000p_set_output_mode(ptr noundef %6, i32 noundef %1923)
  br label %1932

1932:                                             ; preds = %1930, %1929, %1924, %1389
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib7000p_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 463)
  %6 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
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
  %32 = getelementptr inbounds [5 x i32], ptr @switch.table.dib7000p_get_frontend.62, i32 0, i32 %29
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
  %42 = getelementptr inbounds [5 x i32], ptr @switch.table.dib7000p_get_frontend.62, i32 0, i32 %39
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %43, %41 ], [ 7, %34 ]
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %45, ptr %46, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_read_status(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 509)
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
  %18 = and i32 %6, 56
  %19 = icmp eq i32 %18, 56
  %20 = or i32 %17, 16
  %21 = select i1 %19, i32 %20, i32 %17
  store i32 %21, ptr %1, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %22, i16 noundef zeroext 394) #12
  %24 = xor i16 %23, -1
  %25 = zext i16 %24 to i32
  %26 = icmp ugt i16 %23, 1905
  br i1 %26, label %27, label %67

27:                                               ; preds = %37, %2
  %28 = phi i32 [ %38, %37 ], [ 1, %2 ]
  %29 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %25
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %28, i32 1
  %34 = load i32, ptr %33, align 4
  br label %67

35:                                               ; preds = %27
  %36 = icmp ult i32 %30, %25
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %27

40:                                               ; preds = %37, %35
  %41 = phi i32 [ 0, %37 ], [ %30, %35 ]
  %42 = phi i32 [ 32, %37 ], [ %28, %35 ]
  %43 = add nsw i32 %42, -1
  %44 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %43
  %45 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %43, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.linear_segments, ptr @strength_to_db_table, i32 %42, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %46, %48
  %50 = load i32, ptr %44, align 4
  %51 = sub i32 %50, %41
  %52 = sub i32 %25, %41
  %53 = zext i32 %52 to i64
  %54 = sext i32 %49 to i64
  %55 = mul nsw i64 %54, %53
  %56 = icmp ult i64 %55, 4294967296
  br i1 %56, label %57, label %60, !prof !9

57:                                               ; preds = %40
  %58 = trunc i64 %55 to i32
  %59 = udiv i32 %58, %51
  br label %64

60:                                               ; preds = %40
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %51, i64 %55) #15, !srcloc !10
  %62 = extractvalue { i64, i64 } %61, 1
  %63 = trunc i64 %62 to i32
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i32 [ %59, %57 ], [ %63, %60 ]
  %66 = add i32 %65, %48
  br label %67

67:                                               ; preds = %64, %32, %2
  %68 = phi i32 [ %34, %32 ], [ %66, %64 ], [ 110500, %2 ]
  %69 = add i32 %68, -131000
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %70, ptr %71, align 1
  %72 = and i32 %21, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %75, align 1
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %76, align 1
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %77, align 2
  %78 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %80, align 1
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %81, align 1
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %82, align 1
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %83, align 1
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %84, align 1
  br label %176

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.dib7000p_state, ptr %22, i32 0, i32 25
  %87 = load i32, ptr %86, align 8
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = sub i32 %87, %88
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %85
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %92, 100
  store i32 %93, ptr %86, align 8
  %94 = tail call fastcc i32 @dib7000p_get_snr(ptr noundef %0) #12
  %95 = icmp eq i32 %94, 0
  %96 = mul i32 %94, 1000
  %97 = lshr i32 %96, 24
  %98 = select i1 %95, i32 0, i32 %97
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %101 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %99, ptr %101, align 1
  store i8 1, ptr %100, align 1
  %102 = load ptr, ptr %3, align 4
  %103 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %102, i16 noundef zeroext 506) #12
  %104 = zext i16 %103 to i64
  %105 = getelementptr inbounds %struct.dib7000p_state, ptr %22, i32 0, i32 24
  %106 = load i64, ptr %105, align 8
  %107 = sub i64 %104, %106
  %108 = icmp sgt i64 %106, %104
  %109 = add i64 %107, 4294967296
  %110 = select i1 %108, i64 %109, i64 %107
  %111 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %111, align 1
  %112 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %110, ptr %112, align 1
  %113 = tail call fastcc i32 @dib7000p_get_time_us(ptr noundef %0) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %91
  %116 = mul i32 %113, 1632
  %117 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %116, i64 1250000000000) #15, !srcloc !10
  %118 = extractvalue { i64, i64 } %117, 1
  %119 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %119, align 1
  %120 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %121 = load i64, ptr %120, align 1
  %122 = add i64 %121, %118
  store i64 %122, ptr %120, align 1
  br label %123

123:                                              ; preds = %115, %91, %85
  %124 = getelementptr inbounds %struct.dib7000p_state, ptr %22, i32 0, i32 26
  %125 = load i32, ptr %124, align 4
  %126 = load volatile i32, ptr @jiffies, align 64
  %127 = sub i32 %125, %126
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %157

129:                                              ; preds = %123
  %130 = tail call fastcc i32 @dib7000p_get_time_us(ptr noundef %0) #12
  %131 = load volatile i32, ptr @jiffies, align 64
  %132 = add i32 %130, 500
  %133 = udiv i32 %132, 1000
  %134 = tail call i32 @__msecs_to_jiffies(i32 noundef %133) #12
  %135 = add i32 %134, %131
  store i32 %135, ptr %124, align 4
  %136 = load i32, ptr @debug, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %129
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dib7000p_get_stats, i32 noundef %130) #13
  br label %140

140:                                              ; preds = %138, %129
  %141 = load ptr, ptr %3, align 4
  %142 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %141, i16 noundef zeroext 500) #12
  %143 = zext i16 %142 to i32
  %144 = shl nuw i32 %143, 16
  %145 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %141, i16 noundef zeroext 501) #12
  %146 = zext i16 %145 to i32
  %147 = or i32 %144, %146
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %148, align 1
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %151 = load i64, ptr %150, align 1
  %152 = add i64 %151, %149
  store i64 %152, ptr %150, align 1
  %153 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %153, align 1
  %154 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %155 = load i64, ptr %154, align 1
  %156 = add i64 %155, 100000000
  store i64 %156, ptr %154, align 1
  br label %157

157:                                              ; preds = %140, %123
  br i1 %90, label %158, label %176

158:                                              ; preds = %157
  %159 = load ptr, ptr %3, align 4
  %160 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %159, i16 noundef zeroext 506) #12
  %161 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %161, align 1
  %162 = zext i16 %160 to i64
  %163 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %164 = load i64, ptr %163, align 1
  %165 = add i64 %164, %162
  store i64 %165, ptr %163, align 1
  %166 = tail call fastcc i32 @dib7000p_get_time_us(ptr noundef %0) #12
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %158
  %169 = mul i32 %166, 1632
  %170 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %169, i64 1250000000000) #15, !srcloc !10
  %171 = extractvalue { i64, i64 } %170, 1
  %172 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %172, align 1
  %173 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %174 = load i64, ptr %173, align 1
  %175 = add i64 %174, %171
  store i64 %175, ptr %173, align 1
  br label %176

176:                                              ; preds = %168, %158, %157, %74
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 500)
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 501)
  %9 = zext i16 %8 to i32
  %10 = or i32 %7, %9
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 394)
  %6 = xor i16 %5, -1
  store i16 %6, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = tail call fastcc i32 @dib7000p_get_snr(ptr noundef %0)
  %4 = udiv i32 %3, 1677721
  %5 = trunc i32 %4 to i16
  store i16 %5, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7000p_read_unc_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %4, i16 noundef zeroext 506)
  %6 = zext i16 %5 to i32
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_set_power_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1280)
  %4 = or i16 %3, -512
  %5 = trunc i16 %3 to i8
  %6 = lshr i16 %4, 8
  %7 = trunc i16 %6 to i8
  switch i32 %1, label %42 [
    i32 0, label %11
    i32 1, label %21
    i32 2, label %8
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %10 = load i16, ptr %9, align 4
  br label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 28816
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = and i8 %5, 31
  br label %42

17:                                               ; preds = %11
  %18 = lshr i16 %3, 8
  %19 = trunc i16 %18 to i8
  %20 = and i8 %19, 1
  br label %42

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 28816
  %25 = and i16 %4, -2113
  %26 = select i1 %24, i16 %4, i16 %25
  %27 = trunc i16 %26 to i8
  %28 = and i8 %27, -65
  %29 = lshr i16 %26, 8
  %30 = trunc i16 %29 to i8
  br label %31

31:                                               ; preds = %21, %8
  %32 = phi i16 [ %10, %8 ], [ %23, %21 ]
  %33 = phi i8 [ 63, %8 ], [ 49, %21 ]
  %34 = phi i8 [ 7, %8 ], [ 6, %21 ]
  %35 = phi i8 [ %5, %8 ], [ %28, %21 ]
  %36 = phi i8 [ %7, %8 ], [ %30, %21 ]
  %37 = icmp eq i16 %32, 28816
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = and i8 %35, 95
  br label %42

40:                                               ; preds = %31
  %41 = and i8 %36, -117
  br label %42

42:                                               ; preds = %40, %38, %17, %15, %2
  %43 = phi i8 [ 63, %2 ], [ %33, %38 ], [ %33, %40 ], [ 0, %15 ], [ 0, %17 ]
  %44 = phi i8 [ -1, %2 ], [ -1, %38 ], [ -1, %40 ], [ 0, %15 ], [ 0, %17 ]
  %45 = phi i8 [ 7, %2 ], [ %34, %38 ], [ %34, %40 ], [ 0, %15 ], [ 0, %17 ]
  %46 = phi i8 [ 3, %2 ], [ 3, %38 ], [ 3, %40 ], [ 0, %15 ], [ 0, %17 ]
  %47 = phi i8 [ %5, %2 ], [ %39, %38 ], [ %35, %40 ], [ %16, %15 ], [ %5, %17 ]
  %48 = phi i8 [ %7, %2 ], [ %36, %38 ], [ %41, %40 ], [ 0, %15 ], [ %20, %17 ]
  %49 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %50 = tail call i32 @mutex_lock_interruptible(ptr noundef %49) #12
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i32, ptr @debug, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %71

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %58, align 8
  %59 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 6, ptr %59, align 1
  %60 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %43, ptr %60, align 2
  %61 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %44, ptr %61, align 1
  %62 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %62, align 8
  %63 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %64 = load i8, ptr %63, align 4
  %65 = lshr i8 %64, 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %62, align 8
  %67 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %58, ptr %67, align 8
  %68 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = tail call i32 @i2c_transfer(ptr noundef %69, ptr noundef %62, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %49) #12
  br label %71

71:                                               ; preds = %57, %55, %52
  %72 = tail call i32 @mutex_lock_interruptible(ptr noundef %49) #12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, ptr @debug, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %93

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %80, align 8
  %81 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 7, ptr %81, align 1
  %82 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %44, ptr %82, align 2
  %83 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %44, ptr %83, align 1
  %84 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %84, align 8
  %85 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %86 = load i8, ptr %85, align 4
  %87 = lshr i8 %86, 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %84, align 8
  %89 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %80, ptr %89, align 8
  %90 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call i32 @i2c_transfer(ptr noundef %91, ptr noundef %84, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %49) #12
  br label %93

93:                                               ; preds = %79, %77, %74
  %94 = tail call i32 @mutex_lock_interruptible(ptr noundef %49) #12
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, ptr @debug, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %115

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %102, align 8
  %103 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 8, ptr %103, align 1
  %104 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %104, align 2
  %105 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %45, ptr %105, align 1
  %106 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %106, align 8
  %107 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %108 = load i8, ptr %107, align 4
  %109 = lshr i8 %108, 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %106, align 8
  %111 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %102, ptr %111, align 8
  %112 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %113 = load ptr, ptr %112, align 8
  %114 = tail call i32 @i2c_transfer(ptr noundef %113, ptr noundef %106, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %49) #12
  br label %115

115:                                              ; preds = %101, %99, %96
  %116 = tail call i32 @mutex_lock_interruptible(ptr noundef %49) #12
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, ptr @debug, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %118
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %137

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 5, ptr %124, align 8
  %125 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 0, ptr %125, align 1
  %126 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %48, ptr %126, align 2
  %127 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %47, ptr %127, align 1
  %128 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %128, align 8
  %129 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %130 = load i8, ptr %129, align 4
  %131 = lshr i8 %130, 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %128, align 8
  %133 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %124, ptr %133, align 8
  %134 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %135 = load ptr, ptr %134, align 8
  %136 = tail call i32 @i2c_transfer(ptr noundef %135, ptr noundef %128, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %49) #12
  br label %137

137:                                              ; preds = %123, %121, %118
  %138 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %139 = load i16, ptr %138, align 4
  %140 = icmp eq i16 %139, 28816
  br i1 %140, label %163, label %141

141:                                              ; preds = %137
  %142 = tail call i32 @mutex_lock_interruptible(ptr noundef %49) #12
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, ptr @debug, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %144
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %163

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %150, align 8
  %151 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -125, ptr %151, align 1
  %152 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %152, align 2
  %153 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %46, ptr %153, align 1
  %154 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %154, align 8
  %155 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %154, align 8
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %150, ptr %159, align 8
  %160 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = tail call i32 @i2c_transfer(ptr noundef %161, ptr noundef %154, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %49) #12
  br label %163

163:                                              ; preds = %149, %147, %144, %137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_set_adc_state(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 28816
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 908)
  %8 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 909)
  %9 = trunc i16 %7 to i8
  %10 = lshr i16 %7, 8
  %11 = trunc i16 %10 to i8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ %9, %6 ], [ 0, %2 ]
  %14 = phi i8 [ %11, %6 ], [ 0, %2 ]
  %15 = phi i16 [ %8, %6 ], [ 0, %2 ]
  %16 = trunc i16 %15 to i8
  %17 = lshr i16 %15, 8
  %18 = trunc i16 %17 to i8
  switch i32 %1, label %175 [
    i32 0, label %19
    i32 1, label %133
    i32 2, label %167
    i32 3, label %170
    i32 4, label %173
  ]

19:                                               ; preds = %12
  %20 = load i16, ptr %3, align 4
  %21 = icmp eq i16 %20, 28816
  br i1 %21, label %22, label %105

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1925)
  %24 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %25 = tail call i32 @mutex_lock_interruptible(ptr noundef %24) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %50

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 7, ptr %33, align 8
  %34 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -123, ptr %34, align 1
  %35 = lshr i16 %23, 8
  %36 = trunc i16 %35 to i8
  %37 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %36, ptr %37, align 2
  %38 = trunc i16 %23 to i8
  %39 = or i8 %38, 20
  %40 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = lshr i8 %43, 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %41, align 8
  %46 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %33, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @i2c_transfer(ptr noundef %48, ptr noundef %41, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %24) #12
  br label %50

50:                                               ; preds = %32, %30, %27
  %51 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1925)
  tail call void @msleep(i32 noundef 200) #12
  %52 = tail call i32 @mutex_lock_interruptible(ptr noundef %24) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %77

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 7, ptr %60, align 8
  %61 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -123, ptr %61, align 1
  %62 = lshr i16 %51, 8
  %63 = trunc i16 %62 to i8
  %64 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %63, ptr %64, align 2
  %65 = trunc i16 %51 to i8
  %66 = and i8 %65, -17
  %67 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %68, align 8
  %69 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = lshr i8 %70, 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %68, align 8
  %73 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %60, ptr %73, align 8
  %74 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = tail call i32 @i2c_transfer(ptr noundef %75, ptr noundef %68, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %24) #12
  br label %77

77:                                               ; preds = %59, %57, %54
  %78 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 72)
  %79 = tail call i32 @mutex_lock_interruptible(ptr noundef %24) #12
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %175, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %175

86:                                               ; preds = %77
  %87 = and i16 %78, 3571
  %88 = or i16 %87, 29196
  %89 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %89, align 8
  %90 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 72, ptr %90, align 1
  %91 = lshr i16 %88, 8
  %92 = trunc i16 %91 to i8
  %93 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %92, ptr %93, align 2
  %94 = trunc i16 %88 to i8
  %95 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %94, ptr %95, align 1
  %96 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %96, align 8
  %97 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %98 = load i8, ptr %97, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %96, align 8
  %101 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %89, ptr %101, align 8
  %102 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %103 = load ptr, ptr %102, align 8
  %104 = tail call i32 @i2c_transfer(ptr noundef %103, ptr noundef %96, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %24) #12
  br label %175

105:                                              ; preds = %19
  %106 = or i16 %15, 3
  %107 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %108 = tail call i32 @mutex_lock_interruptible(ptr noundef %107) #12
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, ptr @debug, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %110
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %130

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %116, align 8
  %117 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -115, ptr %117, align 1
  %118 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %18, ptr %118, align 2
  %119 = trunc i16 %106 to i8
  %120 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %119, ptr %120, align 1
  %121 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %121, align 8
  %122 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %123 = load i8, ptr %122, align 4
  %124 = lshr i8 %123, 1
  %125 = zext i8 %124 to i16
  store i16 %125, ptr %121, align 8
  %126 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %116, ptr %126, align 8
  %127 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %128 = load ptr, ptr %127, align 8
  %129 = tail call i32 @i2c_transfer(ptr noundef %128, ptr noundef %121, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %107) #12
  br label %130

130:                                              ; preds = %115, %113, %110
  %131 = trunc i16 %106 to i8
  %132 = and i8 %131, -3
  br label %175

133:                                              ; preds = %12
  %134 = load i16, ptr %3, align 4
  %135 = icmp eq i16 %134, 28816
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1925)
  %138 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %139 = tail call i32 @mutex_lock_interruptible(ptr noundef %138) #12
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32, ptr @debug, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %175, label %144

144:                                              ; preds = %141
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %175

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 7, ptr %147, align 8
  %148 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -123, ptr %148, align 1
  %149 = lshr i16 %137, 8
  %150 = trunc i16 %149 to i8
  %151 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %150, ptr %151, align 2
  %152 = trunc i16 %137 to i8
  %153 = and i8 %152, -21
  %154 = or i8 %153, 16
  %155 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %154, ptr %155, align 1
  %156 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %156, align 8
  %157 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %158 = load i8, ptr %157, align 4
  %159 = lshr i8 %158, 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %156, align 8
  %161 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %147, ptr %161, align 8
  %162 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %163 = load ptr, ptr %162, align 8
  %164 = tail call i32 @i2c_transfer(ptr noundef %163, ptr noundef %156, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %138) #12
  br label %175

165:                                              ; preds = %133
  %166 = or i8 %16, 3
  br label %181

167:                                              ; preds = %12
  %168 = and i8 %14, 15
  %169 = and i8 %16, 3
  br label %175

170:                                              ; preds = %12
  %171 = or i8 %14, 112
  %172 = or i8 %16, 60
  br label %175

173:                                              ; preds = %12
  %174 = and i8 %14, 127
  br label %175

175:                                              ; preds = %173, %170, %167, %146, %144, %141, %130, %86, %84, %81, %12
  %176 = phi i8 [ %14, %146 ], [ %14, %144 ], [ %14, %141 ], [ %14, %86 ], [ %14, %84 ], [ %14, %81 ], [ %14, %130 ], [ %168, %167 ], [ %171, %170 ], [ %174, %173 ], [ %14, %12 ]
  %177 = phi i8 [ %16, %146 ], [ %16, %144 ], [ %16, %141 ], [ %16, %86 ], [ %16, %84 ], [ %16, %81 ], [ %132, %130 ], [ %169, %167 ], [ %172, %170 ], [ %16, %173 ], [ %16, %12 ]
  %178 = phi i8 [ %18, %146 ], [ %18, %144 ], [ %18, %141 ], [ %18, %86 ], [ %18, %84 ], [ %18, %81 ], [ %18, %130 ], [ 0, %167 ], [ %18, %170 ], [ %18, %173 ], [ %18, %12 ]
  %179 = load i16, ptr %3, align 4
  %180 = icmp eq i16 %179, 28816
  br i1 %180, label %237, label %181

181:                                              ; preds = %175, %165
  %182 = phi i8 [ %166, %165 ], [ %177, %175 ]
  %183 = phi i8 [ %18, %165 ], [ %178, %175 ]
  %184 = phi i8 [ %14, %165 ], [ %176, %175 ]
  %185 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 1, i32 15
  %186 = load i8, ptr %185, align 1
  %187 = shl i8 %186, 4
  %188 = and i8 %187, 16
  %189 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %190 = tail call i32 @mutex_lock_interruptible(ptr noundef %189) #12
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %181
  %193 = load i32, ptr @debug, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %214, label %195

195:                                              ; preds = %192
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %214

197:                                              ; preds = %181
  %198 = shl i8 %186, 6
  %199 = and i8 %198, -128
  %200 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %200, align 8
  %201 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -116, ptr %201, align 1
  %202 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %184, ptr %202, align 2
  %203 = or i8 %199, %13
  %204 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %203, ptr %204, align 1
  %205 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %205, align 8
  %206 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %207 = load i8, ptr %206, align 4
  %208 = lshr i8 %207, 1
  %209 = zext i8 %208 to i16
  store i16 %209, ptr %205, align 8
  %210 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %200, ptr %210, align 8
  %211 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %212 = load ptr, ptr %211, align 8
  %213 = tail call i32 @i2c_transfer(ptr noundef %212, ptr noundef %205, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %189) #12
  br label %214

214:                                              ; preds = %197, %195, %192
  %215 = tail call i32 @mutex_lock_interruptible(ptr noundef %189) #12
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32, ptr @debug, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %237, label %220

220:                                              ; preds = %217
  %221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %237

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %223, align 8
  %224 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -115, ptr %224, align 1
  %225 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %183, ptr %225, align 2
  %226 = or i8 %188, %182
  %227 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %226, ptr %227, align 1
  %228 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %228, align 8
  %229 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %230 = load i8, ptr %229, align 4
  %231 = lshr i8 %230, 1
  %232 = zext i8 %231 to i16
  store i16 %232, ptr %228, align 8
  %233 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %223, ptr %233, align 8
  %234 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %235 = load ptr, ptr %234, align 8
  %236 = tail call i32 @i2c_transfer(ptr noundef %235, ptr noundef %228, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %189) #12
  br label %237

237:                                              ; preds = %222, %220, %217, %175
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_sad_calib(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %11, align 8
  %12 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 73, ptr %12, align 1
  %13 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %13, align 2
  %14 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = lshr i8 %17, 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %15, align 8
  %20 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %11, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @i2c_transfer(ptr noundef %22, ptr noundef %15, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %24

24:                                               ; preds = %10, %8, %5
  %25 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 28816
  %28 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #12
  %29 = icmp slt i32 %28, 0
  br i1 %27, label %30, label %50

30:                                               ; preds = %24
  br i1 %29, label %31, label %36

31:                                               ; preds = %30
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %70

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %37, align 8
  %38 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 74, ptr %38, align 1
  %39 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 8, ptr %39, align 2
  %40 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = lshr i8 %43, 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %41, align 8
  %46 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %37, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @i2c_transfer(ptr noundef %48, ptr noundef %41, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %70

50:                                               ; preds = %24
  br i1 %29, label %51, label %56

51:                                               ; preds = %50
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %70

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %57, align 8
  %58 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 74, ptr %58, align 1
  %59 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 3, ptr %59, align 2
  %60 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 8, ptr %60, align 1
  %61 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %61, align 8
  %62 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %63 = load i8, ptr %62, align 4
  %64 = lshr i8 %63, 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %61, align 8
  %66 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %57, ptr %66, align 8
  %67 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = tail call i32 @i2c_transfer(ptr noundef %68, ptr noundef %61, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %70

70:                                               ; preds = %56, %54, %51, %36, %34, %31
  %71 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #12
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %92

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %79, align 8
  %80 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 73, ptr %80, align 1
  %81 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %81, align 2
  %82 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 1, ptr %82, align 1
  %83 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %83, align 8
  %84 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %85 = load i8, ptr %84, align 4
  %86 = lshr i8 %85, 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %83, align 8
  %88 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %79, ptr %88, align 8
  %89 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8
  %91 = tail call i32 @i2c_transfer(ptr noundef %90, ptr noundef %83, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %92

92:                                               ; preds = %78, %76, %73
  %93 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #12
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %114

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %101, align 8
  %102 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 73, ptr %102, align 1
  %103 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %103, align 2
  %104 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %104, align 1
  %105 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %105, align 8
  %106 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %107 = load i8, ptr %106, align 4
  %108 = lshr i8 %107, 1
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %105, align 8
  %110 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %101, ptr %110, align 8
  %111 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = tail call i32 @i2c_transfer(ptr noundef %112, ptr noundef %105, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %114

114:                                              ; preds = %100, %98, %95
  tail call void @msleep(i32 noundef 1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib7000p_set_output_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 235)
  %4 = and i16 %3, 80
  %5 = or i16 %4, 2
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dib7000p_set_output_mode, ptr noundef %0, i32 noundef %1) #13
  br label %10

10:                                               ; preds = %8, %2
  switch i32 %1, label %22 [
    i32 1, label %27
    i32 2, label %11
    i32 7, label %12
    i32 4, label %13
    i32 5, label %18
    i32 6, label %20
    i32 0, label %21
  ]

11:                                               ; preds = %10
  br label %27

12:                                               ; preds = %10
  br label %27

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i8 8, i8 5
  br label %27

18:                                               ; preds = %10
  %19 = or i16 %4, 6
  br label %27

20:                                               ; preds = %10
  br label %27

21:                                               ; preds = %10
  br label %27

22:                                               ; preds = %10
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dib7000p_set_output_mode, ptr noundef %0) #13
  br label %27

27:                                               ; preds = %25, %22, %21, %20, %18, %13, %12, %11, %10
  %28 = phi i8 [ 7, %25 ], [ 7, %22 ], [ 7, %21 ], [ 7, %20 ], [ 2, %18 ], [ 7, %12 ], [ 7, %11 ], [ 7, %10 ], [ 7, %13 ]
  %29 = phi i16 [ %5, %25 ], [ %5, %22 ], [ %5, %21 ], [ %5, %20 ], [ %19, %18 ], [ %5, %12 ], [ %5, %11 ], [ %5, %10 ], [ %5, %13 ]
  %30 = phi i8 [ 0, %25 ], [ 0, %22 ], [ 0, %21 ], [ -64, %20 ], [ 64, %18 ], [ -128, %12 ], [ 64, %11 ], [ 0, %10 ], [ 0, %13 ]
  %31 = phi i8 [ 0, %25 ], [ 0, %22 ], [ 0, %21 ], [ 4, %20 ], [ 5, %18 ], [ 4, %12 ], [ 4, %11 ], [ 4, %10 ], [ %17, %13 ]
  %32 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 1
  %33 = load i8, ptr %32, align 8
  %34 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %35 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %64

42:                                               ; preds = %27
  %43 = icmp eq i8 %33, 0
  %44 = or i16 %29, 32
  %45 = select i1 %43, i16 %29, i16 %44
  %46 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %46, align 8
  %47 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -21, ptr %47, align 1
  %48 = lshr i16 %45, 8
  %49 = trunc i16 %48 to i8
  %50 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %49, ptr %50, align 2
  %51 = trunc i16 %45 to i8
  %52 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %53, align 8
  %54 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = lshr i8 %55, 1
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %53, align 8
  %58 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %46, ptr %58, align 8
  %59 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @i2c_transfer(ptr noundef %60, ptr noundef %53, i32 noundef 1) #12
  %62 = icmp eq i32 %61, 1
  %63 = select i1 %62, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %64

64:                                               ; preds = %42, %40, %37
  %65 = phi i32 [ %63, %42 ], [ -22, %40 ], [ -22, %37 ]
  %66 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, ptr @debug, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %89

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %74, align 8
  %75 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -20, ptr %75, align 1
  %76 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %28, ptr %76, align 2
  %77 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %77, align 1
  %78 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %78, align 8
  %79 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %80 = load i8, ptr %79, align 4
  %81 = lshr i8 %80, 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %78, align 8
  %83 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %74, ptr %83, align 8
  %84 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8
  %86 = tail call i32 @i2c_transfer(ptr noundef %85, ptr noundef %78, i32 noundef 1) #12
  %87 = icmp eq i32 %86, 1
  %88 = select i1 %87, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %89

89:                                               ; preds = %73, %71, %68
  %90 = phi i32 [ %88, %73 ], [ -22, %71 ], [ -22, %68 ]
  %91 = or i32 %90, %65
  %92 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 16
  %93 = load i16, ptr %92, align 4
  %94 = icmp eq i16 %93, 28816
  br i1 %94, label %122, label %95

95:                                               ; preds = %89
  %96 = tail call i32 @mutex_lock_interruptible(ptr noundef %34) #12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, ptr @debug, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %119

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 5, ptr %104, align 8
  %105 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 6, ptr %105, align 1
  %106 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %31, ptr %106, align 2
  %107 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %30, ptr %107, align 1
  %108 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %108, align 8
  %109 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %110 = load i8, ptr %109, align 4
  %111 = lshr i8 %110, 1
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %108, align 8
  %113 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %104, ptr %113, align 8
  %114 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8
  %116 = tail call i32 @i2c_transfer(ptr noundef %115, ptr noundef %108, i32 noundef 1) #12
  %117 = icmp eq i32 %116, 1
  %118 = select i1 %117, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %34) #12
  br label %119

119:                                              ; preds = %103, %101, %98
  %120 = phi i32 [ %118, %103 ], [ -22, %101 ], [ -22, %98 ]
  %121 = or i32 %120, %91
  br label %122

122:                                              ; preds = %119, %89
  %123 = phi i32 [ %121, %119 ], [ %91, %89 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_setDibTxMux(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1288)
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
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dib7090_setDibTxMux) #13
  br label %13

13:                                               ; preds = %11, %8
  tail call fastcc void @dib7090_cfg_DibTx(ptr noundef %0, i32 noundef 8, i32 noundef 0)
  %14 = or i8 %7, 2
  br label %30

15:                                               ; preds = %2
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dib7090_setDibTxMux) #13
  br label %20

20:                                               ; preds = %18, %15
  tail call fastcc void @dib7090_cfg_DibTx(ptr noundef %0, i32 noundef 5, i32 noundef 0)
  %21 = or i8 %7, 1
  br label %30

22:                                               ; preds = %2
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dib7090_setDibTxMux) #13
  br label %27

27:                                               ; preds = %25, %22
  tail call fastcc void @dib7090_cfg_DibTx(ptr noundef %0, i32 noundef 20, i32 noundef 10)
  %28 = trunc i16 %3 to i8
  %29 = or i8 %28, -128
  br label %30

30:                                               ; preds = %27, %20, %13, %2
  %31 = phi i8 [ %5, %2 ], [ %29, %27 ], [ %5, %20 ], [ %5, %13 ]
  %32 = phi i8 [ %7, %2 ], [ %7, %27 ], [ %21, %20 ], [ %14, %13 ]
  %33 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %34 = tail call i32 @mutex_lock_interruptible(ptr noundef %33) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %55

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 5, ptr %42, align 8
  %43 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 8, ptr %43, align 1
  %44 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %32, ptr %44, align 2
  %45 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %31, ptr %45, align 1
  %46 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = lshr i8 %48, 1
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %46, align 8
  %51 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %42, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = tail call i32 @i2c_transfer(ptr noundef %53, ptr noundef %46, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %33) #12
  br label %55

55:                                               ; preds = %41, %39, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_setHostBusMux(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1288)
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
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dib7090_setHostBusMux) #13
  br label %13

13:                                               ; preds = %11, %8
  tail call fastcc void @dib7090_enMpegMux(ptr noundef %0, i32 noundef 0)
  %14 = or i8 %5, 64
  br label %29

15:                                               ; preds = %2
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dib7090_setHostBusMux) #13
  br label %20

20:                                               ; preds = %18, %15
  tail call fastcc void @dib7090_enMpegMux(ptr noundef %0, i32 noundef 0)
  %21 = or i8 %5, 32
  br label %29

22:                                               ; preds = %2
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dib7090_setHostBusMux) #13
  br label %27

27:                                               ; preds = %25, %22
  %28 = or i8 %5, 16
  br label %29

29:                                               ; preds = %27, %20, %13, %2
  %30 = phi i8 [ %5, %2 ], [ %28, %27 ], [ %21, %20 ], [ %14, %13 ]
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %32 = tail call i32 @mutex_lock_interruptible(ptr noundef %31) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %53

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 5, ptr %40, align 8
  %41 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 8, ptr %41, align 1
  %42 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %7, ptr %42, align 2
  %43 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %30, ptr %43, align 1
  %44 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %46 = load i8, ptr %45, align 4
  %47 = lshr i8 %46, 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %44, align 8
  %49 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %40, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = tail call i32 @i2c_transfer(ptr noundef %51, ptr noundef %44, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %31) #12
  br label %53

53:                                               ; preds = %39, %37, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_restart_agc(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %11, align 8
  %12 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 2, ptr %12, align 1
  %13 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 10, ptr %13, align 2
  %14 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = lshr i8 %17, 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %15, align 8
  %20 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %11, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @i2c_transfer(ptr noundef %22, ptr noundef %15, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %24

24:                                               ; preds = %10, %8, %5
  %25 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %46

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 3, ptr %33, align 8
  %34 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 2, ptr %34, align 1
  %35 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %35, align 2
  %36 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = lshr i8 %39, 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %37, align 8
  %42 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %33, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 @i2c_transfer(ptr noundef %44, ptr noundef %37, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %46

46:                                               ; preds = %32, %30, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_set_channel(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %6, 1000
  tail call fastcc void @dib7000p_set_bandwidth(ptr noundef %0, i32 noundef %7)
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
  %35 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %36 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %58

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %44, align 8
  %45 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 0, ptr %45, align 1
  %46 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %18, ptr %46, align 2
  %47 = or i8 %34, 1
  %48 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %51 = load i8, ptr %50, align 4
  %52 = lshr i8 %51, 1
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %49, align 8
  %54 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %44, ptr %54, align 8
  %55 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 @i2c_transfer(ptr noundef %56, ptr noundef %49, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %58

58:                                               ; preds = %43, %41, %38
  %59 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %83

66:                                               ; preds = %58
  %67 = shl i8 %2, 4
  %68 = or i8 %67, 1
  %69 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %69, align 8
  %70 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 5, ptr %70, align 1
  %71 = lshr i8 %2, 4
  %72 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %71, ptr %72, align 2
  %73 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %68, ptr %73, align 1
  %74 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %74, align 8
  %75 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %76 = load i8, ptr %75, align 4
  %77 = lshr i8 %76, 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %74, align 8
  %79 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %69, ptr %79, align 8
  %80 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8
  %82 = tail call i32 @i2c_transfer(ptr noundef %81, ptr noundef %74, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %83

83:                                               ; preds = %66, %64, %61
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 1
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, -2
  %90 = icmp ult i32 %89, 6
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = getelementptr inbounds [6 x i8], ptr @switch.table.dib7000p_set_channel, i32 0, i32 %89
  %93 = load i8, ptr %92, align 1
  br label %94

94:                                               ; preds = %91, %83
  %95 = phi i8 [ %93, %91 ], [ 2, %83 ]
  %96 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, ptr @debug, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %119

103:                                              ; preds = %94
  %104 = select i1 %86, i8 81, i8 65
  %105 = or i8 %104, %95
  %106 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %106, align 8
  %107 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 -48, ptr %107, align 1
  %108 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %108, align 2
  %109 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %105, ptr %109, align 1
  %110 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %110, align 8
  %111 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %112 = load i8, ptr %111, align 4
  %113 = lshr i8 %112, 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %110, align 8
  %115 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %106, ptr %115, align 8
  %116 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8
  %118 = tail call i32 @i2c_transfer(ptr noundef %117, ptr noundef %110, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %119

119:                                              ; preds = %103, %101, %98
  %120 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, ptr @debug, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %141

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %128, align 8
  %129 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 26, ptr %129, align 1
  %130 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 102, ptr %130, align 2
  %131 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 -128, ptr %131, align 1
  %132 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %132, align 8
  %133 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %134 = load i8, ptr %133, align 4
  %135 = lshr i8 %134, 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %132, align 8
  %137 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %128, ptr %137, align 8
  %138 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = tail call i32 @i2c_transfer(ptr noundef %139, ptr noundef %132, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %141

141:                                              ; preds = %127, %125, %122
  %142 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, ptr @debug, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %144
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %163

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %150, align 8
  %151 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 32, ptr %151, align 1
  %152 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %152, align 2
  %153 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 3, ptr %153, align 1
  %154 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %154, align 8
  %155 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %154, align 8
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %150, ptr %159, align 8
  %160 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = tail call i32 @i2c_transfer(ptr noundef %161, ptr noundef %154, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %163

163:                                              ; preds = %149, %147, %144
  %164 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i32, ptr @debug, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %166
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %185

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %172, align 8
  %173 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 29, ptr %173, align 1
  %174 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 18, ptr %174, align 2
  %175 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 115, ptr %175, align 1
  %176 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %176, align 8
  %177 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %178 = load i8, ptr %177, align 4
  %179 = lshr i8 %178, 1
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %176, align 8
  %181 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %172, ptr %181, align 8
  %182 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %183 = load ptr, ptr %182, align 8
  %184 = tail call i32 @i2c_transfer(ptr noundef %183, ptr noundef %176, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %185

185:                                              ; preds = %171, %169, %166
  %186 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, ptr @debug, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %188
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %207

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %194, align 8
  %195 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 33, ptr %195, align 1
  %196 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %196, align 2
  %197 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 5, ptr %197, align 1
  %198 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %198, align 8
  %199 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %200 = load i8, ptr %199, align 4
  %201 = lshr i8 %200, 1
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %198, align 8
  %203 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %194, ptr %203, align 8
  %204 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %205 = load ptr, ptr %204, align 8
  %206 = tail call i32 @i2c_transfer(ptr noundef %205, ptr noundef %198, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %207

207:                                              ; preds = %193, %191, %188
  %208 = load i32, ptr %8, align 4
  %209 = icmp eq i32 %208, 3
  %210 = select i1 %209, i16 128, i16 64
  %211 = icmp eq i32 %208, 1
  %212 = select i1 %211, i16 256, i16 %210
  %213 = load i32, ptr %14, align 4
  switch i32 %213, label %220 [
    i32 1, label %214
    i32 2, label %216
    i32 3, label %218
  ]

214:                                              ; preds = %207
  %215 = shl nuw nsw i16 %212, 1
  br label %220

216:                                              ; preds = %207
  %217 = shl nuw nsw i16 %212, 2
  br label %220

218:                                              ; preds = %207
  %219 = shl nuw nsw i16 %212, 3
  br label %220

220:                                              ; preds = %218, %216, %214, %207
  %221 = phi i16 [ %219, %218 ], [ %217, %216 ], [ %215, %214 ], [ %212, %207 ]
  %222 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 1, i32 16
  %223 = load i16, ptr %222, align 2
  %224 = icmp eq i16 %223, 0
  %225 = zext i16 %221 to i32
  %226 = mul nuw nsw i32 %225, 3
  %227 = lshr i32 %226, 1
  %228 = trunc i32 %227 to i16
  %229 = select i1 %224, i16 48, i16 %223
  %230 = add i16 %229, %228
  %231 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 11
  store i16 %230, ptr %231, align 2
  %232 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 10
  %233 = load i8, ptr %232, align 8
  %234 = and i8 %233, -2
  store i8 %234, ptr %232, align 8
  %235 = lshr i8 %233, 1
  %236 = and i8 %235, 1
  %237 = zext i8 %236 to i32
  tail call fastcc void @dib7000p_set_diversity_in(ptr noundef %0, i32 noundef %237)
  %238 = load i32, ptr %27, align 4
  switch i32 %238, label %241 [
    i32 3, label %239
    i32 1, label %240
  ]

239:                                              ; preds = %220
  store i16 328, ptr %4, align 8
  br label %242

240:                                              ; preds = %220
  store i16 573, ptr %4, align 8
  br label %242

241:                                              ; preds = %220
  store i16 2458, ptr %4, align 8
  br label %242

242:                                              ; preds = %241, %240, %239
  %243 = phi i16 [ -82, %241 ], [ -33, %240 ], [ -16, %239 ]
  %244 = phi i16 [ 819, %241 ], [ 164, %240 ], [ 164, %239 ]
  %245 = phi i16 [ -8, %241 ], [ -16, %240 ], [ -8, %239 ]
  %246 = phi i8 [ -102, %241 ], [ 61, %240 ], [ 72, %239 ]
  %247 = phi i8 [ 9, %241 ], [ 2, %240 ], [ 1, %239 ]
  %248 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 1
  store i16 %243, ptr %248, align 2
  %249 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 2
  store i16 %244, ptr %249, align 4
  %250 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 3
  store i16 %245, ptr %250, align 2
  %251 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  %252 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  %253 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  %254 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  %255 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  %256 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %257 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  %258 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  br label %259

259:                                              ; preds = %286, %242
  %260 = phi i8 [ %246, %242 ], [ %290, %286 ]
  %261 = phi i8 [ %247, %242 ], [ %292, %286 ]
  %262 = phi i32 [ 0, %242 ], [ %284, %286 ]
  %263 = phi i16 [ 0, %242 ], [ %287, %286 ]
  %264 = tail call i32 @mutex_lock_interruptible(ptr noundef %35) #12
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %259
  %267 = load i32, ptr @debug, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %283, label %269

269:                                              ; preds = %266
  %270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %283

271:                                              ; preds = %259
  %272 = trunc i32 %262 to i16
  %273 = add i16 %272, 187
  %274 = lshr i16 %273, 8
  %275 = trunc i16 %274 to i8
  store i8 %275, ptr %251, align 8
  %276 = trunc i16 %263 to i8
  %277 = add i8 %276, -69
  store i8 %277, ptr %252, align 1
  store i8 %261, ptr %253, align 2
  store i8 %260, ptr %254, align 1
  store i64 17179869184, ptr %255, align 8
  %278 = load i8, ptr %256, align 4
  %279 = lshr i8 %278, 1
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %255, align 8
  store ptr %251, ptr %257, align 8
  %281 = load ptr, ptr %258, align 8
  %282 = tail call i32 @i2c_transfer(ptr noundef %281, ptr noundef %255, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %283

283:                                              ; preds = %271, %269, %266
  %284 = add nuw nsw i32 %262, 1
  %285 = icmp eq i32 %284, 4
  br i1 %285, label %293, label %286

286:                                              ; preds = %283
  %287 = add nuw nsw i16 %263, 1
  %288 = getelementptr [4 x i16], ptr %4, i32 0, i32 %284
  %289 = load i16, ptr %288, align 2
  %290 = trunc i16 %289 to i8
  %291 = lshr i16 %289, 8
  %292 = trunc i16 %291 to i8
  br label %259

293:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_set_bandwidth(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %16

9:                                                ; preds = %2
  br i1 %8, label %12, label %10

10:                                               ; preds = %9
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dib7000p_set_bandwidth) #13
  br label %12

12:                                               ; preds = %10, %9
  %13 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 1, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %14, i32 0, i32 14
  br label %19

16:                                               ; preds = %2
  br i1 %8, label %19, label %17

17:                                               ; preds = %16
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dib7000p_set_bandwidth) #13
  br label %19

19:                                               ; preds = %17, %16, %12
  %20 = phi ptr [ %15, %12 ], [ %4, %17 ], [ %4, %16 ]
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %1, 50
  %23 = mul i32 %21, %22
  %24 = udiv i32 %23, 160
  %25 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %26 = tail call i32 @mutex_lock_interruptible(ptr noundef %25) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %51

33:                                               ; preds = %19
  %34 = lshr i32 %24, 16
  %35 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %35, align 8
  %36 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 23, ptr %36, align 1
  %37 = lshr i32 %24, 24
  %38 = trunc i32 %37 to i8
  %39 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %38, ptr %39, align 2
  %40 = trunc i32 %34 to i8
  %41 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = lshr i8 %44, 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %42, align 8
  %47 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %35, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = tail call i32 @i2c_transfer(ptr noundef %49, ptr noundef %42, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %25) #12
  br label %51

51:                                               ; preds = %33, %31, %28
  %52 = tail call i32 @mutex_lock_interruptible(ptr noundef %25) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %76

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %60, align 8
  %61 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 24, ptr %61, align 1
  %62 = lshr i32 %24, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %63, ptr %64, align 2
  %65 = trunc i32 %24 to i8
  %66 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %67, align 8
  %68 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %69 = load i8, ptr %68, align 4
  %70 = lshr i8 %69, 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %67, align 8
  %72 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %60, ptr %72, align 8
  %73 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = tail call i32 @i2c_transfer(ptr noundef %74, ptr noundef %67, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %25) #12
  br label %76

76:                                               ; preds = %59, %57, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_set_diversity_in(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 10
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dib7000p_set_diversity_in) #13
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %67

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %24, align 8
  %25 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -49, ptr %25, align 1
  %26 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 0, ptr %26, align 2
  %27 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %28, align 8
  %29 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = lshr i8 %30, 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %28, align 8
  %33 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %24, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @i2c_transfer(ptr noundef %35, ptr noundef %28, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %67

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 11
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %41 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %70

48:                                               ; preds = %37
  %49 = shl i16 %39, 4
  %50 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %50, align 8
  %51 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -49, ptr %51, align 1
  %52 = lshr i16 %49, 8
  %53 = trunc i16 %52 to i8
  %54 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 %53, ptr %54, align 2
  %55 = trunc i16 %49 to i8
  %56 = or i8 %55, 6
  %57 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %58, align 8
  %59 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %60 = load i8, ptr %59, align 4
  %61 = lshr i8 %60, 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %58, align 8
  %63 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %50, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = tail call i32 @i2c_transfer(ptr noundef %65, ptr noundef %58, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %40) #12
  br label %70

67:                                               ; preds = %23, %21, %18
  %68 = load i8, ptr %5, align 8
  %69 = and i8 %68, -3
  store i8 %69, ptr %5, align 8
  br label %122

70:                                               ; preds = %48, %46, %43
  %71 = trunc i32 %1 to i8
  %72 = load i8, ptr %5, align 8
  %73 = shl i8 %71, 1
  %74 = and i8 %73, 2
  %75 = and i8 %72, -3
  %76 = or i8 %75, %74
  store i8 %76, ptr %5, align 8
  %77 = icmp eq i32 %1, 0
  br i1 %77, label %122, label %78

78:                                               ; preds = %70
  %79 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #12
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %100

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %87, align 8
  %88 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -52, ptr %88, align 1
  %89 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 0, ptr %89, align 2
  %90 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 6, ptr %90, align 1
  %91 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %91, align 8
  %92 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %93 = load i8, ptr %92, align 4
  %94 = lshr i8 %93, 1
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %91, align 8
  %96 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %87, ptr %96, align 8
  %97 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %98 = load ptr, ptr %97, align 8
  %99 = tail call i32 @i2c_transfer(ptr noundef %98, ptr noundef %91, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %40) #12
  br label %100

100:                                              ; preds = %86, %84, %81
  %101 = tail call i32 @mutex_lock_interruptible(ptr noundef %40) #12
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %167, label %106

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %167

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %109, align 8
  %110 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -51, ptr %110, align 1
  %111 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 0, ptr %111, align 2
  %112 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 16, ptr %112, align 1
  %113 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %113, align 8
  %114 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %115 = load i8, ptr %114, align 4
  %116 = lshr i8 %115, 1
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %113, align 8
  %118 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %109, ptr %118, align 8
  %119 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %120 = load ptr, ptr %119, align 8
  %121 = tail call i32 @i2c_transfer(ptr noundef %120, ptr noundef %113, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %40) #12
  br label %167

122:                                              ; preds = %70, %67
  %123 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 22
  %124 = tail call i32 @mutex_lock_interruptible(ptr noundef %123) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %145

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %132, align 8
  %133 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -52, ptr %133, align 1
  %134 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 0, ptr %134, align 2
  %135 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 1, ptr %135, align 1
  %136 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %136, align 8
  %137 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %138 = load i8, ptr %137, align 4
  %139 = lshr i8 %138, 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %136, align 8
  %141 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %132, ptr %141, align 8
  %142 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %143 = load ptr, ptr %142, align 8
  %144 = tail call i32 @i2c_transfer(ptr noundef %143, ptr noundef %136, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %123) #12
  br label %145

145:                                              ; preds = %131, %129, %126
  %146 = tail call i32 @mutex_lock_interruptible(ptr noundef %123) #12
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %148
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %167

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 20
  store i8 0, ptr %154, align 8
  %155 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 1
  store i8 -51, ptr %155, align 1
  %156 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 2
  store i8 0, ptr %156, align 2
  %157 = getelementptr %struct.dib7000p_state, ptr %4, i32 0, i32 20, i32 3
  store i8 0, ptr %157, align 1
  %158 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19
  store i64 17179869184, ptr %158, align 8
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 2
  %160 = load i8, ptr %159, align 4
  %161 = lshr i8 %160, 1
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %158, align 8
  %163 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 19, i32 0, i32 3
  store ptr %154, ptr %163, align 8
  %164 = getelementptr inbounds %struct.dib7000p_state, ptr %4, i32 0, i32 3
  %165 = load ptr, ptr %164, align 8
  %166 = tail call i32 @i2c_transfer(ptr noundef %165, ptr noundef %158, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %123) #12
  br label %167

167:                                              ; preds = %153, %151, %148, %108, %106, %103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7000p_update_timf(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 427)
  %3 = zext i16 %2 to i32
  %4 = shl nuw i32 %3, 16
  %5 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 428)
  %6 = zext i16 %5 to i32
  %7 = or i32 %4, %6
  %8 = mul i32 %7, 160
  %9 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = udiv i32 %10, 50
  %12 = udiv i32 %8, %11
  %13 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 9
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %15 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %39

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %23, align 8
  %24 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 23, ptr %24, align 1
  %25 = lshr i16 %2, 8
  %26 = trunc i16 %25 to i8
  %27 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %26, ptr %27, align 2
  %28 = trunc i16 %2 to i8
  %29 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %30, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = lshr i8 %32, 1
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %30, align 8
  %35 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %23, ptr %35, align 8
  %36 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @i2c_transfer(ptr noundef %37, ptr noundef %30, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %14) #12
  br label %39

39:                                               ; preds = %22, %20, %17
  %40 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %64

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 0, ptr %48, align 8
  %49 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 24, ptr %49, align 1
  %50 = lshr i16 %5, 8
  %51 = trunc i16 %50 to i8
  %52 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %51, ptr %52, align 2
  %53 = trunc i16 %5 to i8
  %54 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %57 = load i8, ptr %56, align 4
  %58 = lshr i8 %57, 1
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %55, align 8
  %60 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %48, ptr %60, align 8
  %61 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = tail call i32 @i2c_transfer(ptr noundef %62, ptr noundef %55, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %14) #12
  br label %64

64:                                               ; preds = %47, %45
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %13, align 4
  %69 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 1, i32 6
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.dibx000_bandwidth_config, ptr %70, i32 0, i32 14
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib7000p_update_timf, i32 noundef %68, i32 noundef %72) #13
  br label %74

74:                                               ; preds = %67, %64, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_cfg_DibTx(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dib7090_cfg_DibTx) #13
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %31

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %18, align 8
  %19 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 79, ptr %19, align 1
  %20 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %20, align 2
  %21 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = lshr i8 %24, 1
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %22, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %18, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @i2c_transfer(ptr noundef %29, ptr noundef %22, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %31

31:                                               ; preds = %17, %15, %12
  %32 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %56

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %40, align 8
  %41 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 67, ptr %41, align 1
  %42 = lshr i32 %1, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %43, ptr %44, align 2
  %45 = trunc i32 %1 to i8
  %46 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %49 = load i8, ptr %48, align 4
  %50 = lshr i8 %49, 1
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %47, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %40, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 @i2c_transfer(ptr noundef %54, ptr noundef %47, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %56

56:                                               ; preds = %39, %37, %34
  %57 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %78

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %65, align 8
  %66 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 69, ptr %66, align 1
  %67 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %67, align 2
  %68 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 5, ptr %68, align 1
  %69 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %69, align 8
  %70 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %71 = load i8, ptr %70, align 4
  %72 = lshr i8 %71, 1
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %69, align 8
  %74 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %65, ptr %74, align 8
  %75 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = tail call i32 @i2c_transfer(ptr noundef %76, ptr noundef %69, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %78

78:                                               ; preds = %64, %62, %59
  %79 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %103

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %87, align 8
  %88 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 70, ptr %88, align 1
  %89 = lshr i32 %2, 8
  %90 = trunc i32 %89 to i8
  %91 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %90, ptr %91, align 2
  %92 = trunc i32 %2 to i8
  %93 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %94, align 8
  %95 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %96 = load i8, ptr %95, align 4
  %97 = lshr i8 %96, 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %94, align 8
  %99 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %87, ptr %99, align 8
  %100 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8
  %102 = tail call i32 @i2c_transfer(ptr noundef %101, ptr noundef %94, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %103

103:                                              ; preds = %86, %84, %81
  %104 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, ptr @debug, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %125

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %112, align 8
  %113 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 72, ptr %113, align 1
  %114 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %114, align 2
  %115 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %116, align 8
  %117 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %118 = load i8, ptr %117, align 4
  %119 = lshr i8 %118, 1
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %116, align 8
  %121 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %112, ptr %121, align 8
  %122 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %123 = load ptr, ptr %122, align 8
  %124 = tail call i32 @i2c_transfer(ptr noundef %123, ptr noundef %116, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %125

125:                                              ; preds = %111, %109, %106
  %126 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, ptr @debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %147

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %134, align 8
  %135 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 73, ptr %135, align 1
  %136 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %136, align 2
  %137 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %137, align 1
  %138 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %138, align 8
  %139 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %140 = load i8, ptr %139, align 4
  %141 = lshr i8 %140, 1
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %138, align 8
  %143 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %134, ptr %143, align 8
  %144 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %145 = load ptr, ptr %144, align 8
  %146 = tail call i32 @i2c_transfer(ptr noundef %145, ptr noundef %138, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %147

147:                                              ; preds = %133, %131, %128
  %148 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, ptr @debug, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %150
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %169

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %156, align 8
  %157 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 74, ptr %157, align 1
  %158 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %158, align 2
  %159 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %159, align 1
  %160 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %160, align 8
  %161 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %162 = load i8, ptr %161, align 4
  %163 = lshr i8 %162, 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %160, align 8
  %165 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %156, ptr %165, align 8
  %166 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = tail call i32 @i2c_transfer(ptr noundef %167, ptr noundef %160, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %169

169:                                              ; preds = %155, %153, %150
  %170 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, ptr @debug, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %172
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %191

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %178, align 8
  %179 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 76, ptr %179, align 1
  %180 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %180, align 2
  %181 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %181, align 1
  %182 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %182, align 8
  %183 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %184 = load i8, ptr %183, align 4
  %185 = lshr i8 %184, 1
  %186 = zext i8 %185 to i16
  store i16 %186, ptr %182, align 8
  %187 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %178, ptr %187, align 8
  %188 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %189 = load ptr, ptr %188, align 8
  %190 = tail call i32 @i2c_transfer(ptr noundef %189, ptr noundef %182, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %191

191:                                              ; preds = %177, %175, %172
  %192 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #12
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, ptr @debug, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %194
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %213

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 6, ptr %200, align 8
  %201 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 79, ptr %201, align 1
  %202 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %202, align 2
  %203 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %203, align 1
  %204 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %204, align 8
  %205 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %206 = load i8, ptr %205, align 4
  %207 = lshr i8 %206, 1
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %204, align 8
  %209 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %200, ptr %209, align 8
  %210 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %211 = load ptr, ptr %210, align 8
  %212 = tail call i32 @i2c_transfer(ptr noundef %211, ptr noundef %204, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %213

213:                                              ; preds = %199, %197, %194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_enMpegMux(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %0, i16 noundef zeroext 1287)
  %4 = trunc i16 %3 to i8
  %5 = lshr i16 %3, 8
  %6 = trunc i16 %5 to i8
  switch i32 %1, label %11 [
    i32 1, label %7
    i32 0, label %9
  ]

7:                                                ; preds = %2
  %8 = and i8 %4, 127
  br label %11

9:                                                ; preds = %2
  %10 = or i8 %4, -128
  br label %11

11:                                               ; preds = %9, %7, %2
  %12 = phi i8 [ %4, %2 ], [ %10, %9 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %35

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 5, ptr %22, align 8
  %23 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 7, ptr %23, align 1
  %24 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 %6, ptr %24, align 2
  %25 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %12, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %26, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %22, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @i2c_transfer(ptr noundef %33, ptr noundef %26, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %35

35:                                               ; preds = %21, %19, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib7000p_get_snr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %3, i16 noundef zeroext 479)
  %5 = zext i16 %4 to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 255
  %8 = shl nuw nsw i32 %5, 2
  %9 = and i32 %8, 60
  %10 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %3, i16 noundef zeroext 480)
  %11 = zext i16 %10 to i32
  %12 = lshr i32 %11, 14
  %13 = or i32 %9, %12
  %14 = and i32 %5, 8
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %13, -64
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = lshr i32 %11, 6
  %19 = and i32 %18, 255
  %20 = and i32 %11, 63
  %21 = and i32 %11, 32
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 -64
  %24 = or i32 %23, %20
  %25 = icmp eq i32 %19, 0
  %26 = tail call i32 @intlog10(i32 noundef 2) #12
  br i1 %25, label %32, label %27

27:                                               ; preds = %1
  %28 = mul i32 %26, %24
  %29 = tail call i32 @intlog10(i32 noundef %19) #12
  %30 = add i32 %28, %29
  %31 = mul i32 %30, 10
  br label %36

32:                                               ; preds = %1
  %33 = mul nsw i32 %24, 10
  %34 = mul i32 %33, %26
  %35 = add i32 %34, -100
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i32 [ %31, %27 ], [ %35, %32 ]
  %38 = icmp eq i32 %7, 0
  %39 = tail call i32 @intlog10(i32 noundef 2) #12
  br i1 %38, label %45, label %40

40:                                               ; preds = %36
  %41 = mul i32 %39, %17
  %42 = tail call i32 @intlog10(i32 noundef %7) #12
  %43 = add i32 %41, %42
  %44 = mul i32 %43, -10
  br label %49

45:                                               ; preds = %36
  %46 = mul nsw i32 %17, -10
  %47 = mul i32 %46, %39
  %48 = add i32 %47, 100
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i32 [ %44, %40 ], [ %48, %45 ]
  %51 = add i32 %50, %37
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @dib7000p_get_time_us(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [3 x i32], ptr @switch.table.dib7000p_get_time_us, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 32, %1 ]
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  %14 = select i1 %13, i32 2, i32 1
  %15 = icmp eq i32 %12, 0
  %16 = select i1 %15, i32 4, i32 %14
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %20 [
    i32 12, label %21
    i32 0, label %21
    i32 1, label %19
  ]

19:                                               ; preds = %9
  br label %21

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %19, %9, %9
  %22 = phi i32 [ 6, %20 ], [ 4, %19 ], [ 2, %9 ], [ 2, %9 ]
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %28 [
    i32 1, label %29
    i32 2, label %25
    i32 3, label %26
    i32 5, label %27
  ]

25:                                               ; preds = %21
  br label %29

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %21
  %30 = phi i32 [ 7, %28 ], [ %24, %27 ], [ %24, %26 ], [ %24, %25 ], [ %24, %21 ]
  %31 = phi i1 [ false, %28 ], [ true, %27 ], [ true, %26 ], [ true, %25 ], [ false, %21 ]
  %32 = phi i32 [ -284901888, %28 ], [ 860065408, %27 ], [ 2005032704, %26 ], [ 430032704, %25 ], [ -1144967296, %21 ]
  %33 = mul nuw nsw i32 %22, %16
  %34 = mul nuw nsw i32 %33, %30
  %35 = mul nuw nsw i32 %34, 384
  %36 = sext i32 %32 to i64
  br i1 %31, label %37, label %40, !prof !9

37:                                               ; preds = %29
  %38 = udiv i32 %32, %10
  %39 = zext i32 %38 to i64
  br label %43

40:                                               ; preds = %29
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %36) #15, !srcloc !10
  %42 = extractvalue { i64, i64 } %41, 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i64 [ %39, %37 ], [ %42, %40 ]
  %45 = mul nuw nsw i32 %34, 192
  %46 = zext i32 %45 to i64
  %47 = add nuw nsw i64 %46, %36
  %48 = add i64 %47, %44
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %53, !prof !9

50:                                               ; preds = %43
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %35
  br label %57

53:                                               ; preds = %43
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %48) #15, !srcloc !10
  %55 = extractvalue { i64, i64 } %54, 1
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i32 [ %52, %50 ], [ %56, %53 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib7090_tuner_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %103 [
    i8 18, label %61
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
    i8 31, label %49
  ]

9:                                                ; preds = %3
  br label %61

10:                                               ; preds = %3
  br label %61

11:                                               ; preds = %3
  br label %61

12:                                               ; preds = %3
  br label %61

13:                                               ; preds = %3
  br label %61

14:                                               ; preds = %3
  br label %61

15:                                               ; preds = %3
  br label %61

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  br label %61

18:                                               ; preds = %3
  br label %61

19:                                               ; preds = %3
  br label %61

20:                                               ; preds = %3
  br label %61

21:                                               ; preds = %3
  br label %61

22:                                               ; preds = %3
  br label %61

23:                                               ; preds = %3
  br label %61

24:                                               ; preds = %3
  br label %61

25:                                               ; preds = %3
  br label %61

26:                                               ; preds = %3
  br label %61

27:                                               ; preds = %3
  br label %61

28:                                               ; preds = %3
  br label %61

29:                                               ; preds = %3
  br label %61

30:                                               ; preds = %3
  br label %61

31:                                               ; preds = %3
  br label %61

32:                                               ; preds = %3
  br label %61

33:                                               ; preds = %3
  br label %61

34:                                               ; preds = %3
  br label %61

35:                                               ; preds = %3
  br label %61

36:                                               ; preds = %3
  %37 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext 72)
  %38 = lshr i16 %37, 12
  %39 = and i16 %38, 3
  %40 = or i16 %39, 384
  %41 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext %40)
  %42 = lshr i16 %41, 8
  %43 = trunc i16 %42 to i8
  %44 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %45 = load ptr, ptr %44, align 4
  store i8 %43, ptr %45, align 1
  %46 = trunc i16 %41 to i8
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr i8, ptr %47, i32 1
  store i8 %46, ptr %48, align 1
  br label %254

49:                                               ; preds = %3
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %51, label %254

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %7, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 3
  %55 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext 72)
  %56 = and i16 %55, -12289
  %57 = zext i8 %54 to i16
  %58 = shl nuw nsw i16 %57, 12
  %59 = or i16 %58, %56
  %60 = tail call fastcc i32 @dib7000p_write_word(ptr noundef %5, i16 noundef zeroext 72, i16 noundef zeroext %59)
  br label %254

61:                                               ; preds = %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %3
  %62 = phi i16 [ 1921, %9 ], [ 1922, %10 ], [ 1923, %11 ], [ 1924, %12 ], [ 1926, %13 ], [ 1927, %14 ], [ 1928, %15 ], [ 1929, %16 ], [ 1930, %17 ], [ 1931, %18 ], [ 1932, %19 ], [ 1935, %20 ], [ 1936, %21 ], [ 1937, %22 ], [ 1938, %23 ], [ 1939, %24 ], [ 1940, %25 ], [ 1941, %26 ], [ 1942, %27 ], [ 1943, %28 ], [ 1944, %29 ], [ 1945, %30 ], [ 1948, %31 ], [ 914, %32 ], [ 915, %33 ], [ 917, %34 ], [ 916, %35 ], [ 1920, %3 ]
  %63 = icmp eq i32 %2, 1
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %7, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %7, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 22
  %70 = tail call i32 @mutex_lock_interruptible(ptr noundef %69) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, ptr @debug, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %254, label %75

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %254

77:                                               ; preds = %64
  %78 = lshr i16 %62, 8
  %79 = trunc i16 %78 to i8
  %80 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 20
  store i8 %79, ptr %80, align 8
  %81 = trunc i16 %62 to i8
  %82 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 1
  store i8 %81, ptr %82, align 1
  %83 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 2
  store i8 %66, ptr %83, align 2
  %84 = getelementptr %struct.dib7000p_state, ptr %5, i32 0, i32 20, i32 3
  store i8 %68, ptr %84, align 1
  %85 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19
  store i64 17179869184, ptr %85, align 8
  %86 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 2
  %87 = load i8, ptr %86, align 4
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %85, align 8
  %90 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 19, i32 0, i32 3
  store ptr %80, ptr %90, align 8
  %91 = getelementptr inbounds %struct.dib7000p_state, ptr %5, i32 0, i32 3
  %92 = load ptr, ptr %91, align 8
  %93 = tail call i32 @i2c_transfer(ptr noundef %92, ptr noundef %85, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %69) #12
  br label %254

94:                                               ; preds = %61
  %95 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %5, i16 noundef zeroext %62) #12
  %96 = lshr i16 %95, 8
  %97 = trunc i16 %96 to i8
  %98 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %99 = load ptr, ptr %98, align 4
  store i8 %97, ptr %99, align 1
  %100 = trunc i16 %95 to i8
  %101 = load ptr, ptr %98, align 4
  %102 = getelementptr i8, ptr %101, i32 1
  store i8 %100, ptr %102, align 1
  br label %254

103:                                              ; preds = %3
  %104 = icmp ult i8 %8, 16
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = add nsw i8 %8, -1
  br label %117

107:                                              ; preds = %103
  switch i8 %8, label %110 [
    i8 17, label %117
    i8 16, label %108
    i8 19, label %109
  ]

108:                                              ; preds = %107
  br label %117

109:                                              ; preds = %107
  br label %117

110:                                              ; preds = %107
  %111 = add i8 %8, -21
  %112 = icmp ult i8 %111, 5
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = add nsw i8 %8, -3
  br label %117

115:                                              ; preds = %110
  %116 = icmp eq i8 %8, 28
  br i1 %116, label %117, label %254

117:                                              ; preds = %115, %113, %109, %108, %107, %105
  %118 = phi i8 [ %106, %105 ], [ 17, %108 ], [ %114, %113 ], [ 16, %109 ], [ 15, %107 ], [ 23, %115 ]
  store i8 %118, ptr %7, align 1
  %119 = icmp eq i32 %2, 1
  %120 = load ptr, ptr %4, align 8
  %121 = load ptr, ptr %6, align 4
  %122 = load i8, ptr %121, align 1
  br i1 %119, label %123, label %190

123:                                              ; preds = %133, %117
  %124 = phi i16 [ %126, %133 ], [ 1000, %117 ]
  %125 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %120, i16 noundef zeroext 1984) #12
  %126 = add nsw i16 %124, -1
  %127 = icmp eq i16 %126, 0
  %128 = load i32, ptr @debug, align 4
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.w7090p_tuner_write_serpar) #13
  br label %138

133:                                              ; preds = %123
  %134 = and i16 %125, 2
  %135 = icmp ne i16 %134, 0
  %136 = icmp ne i16 %126, 0
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %123, label %138

138:                                              ; preds = %133, %131
  %139 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 22
  %140 = tail call i32 @mutex_lock_interruptible(ptr noundef %139) #12
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32, ptr @debug, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %142
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %163

147:                                              ; preds = %138
  %148 = and i8 %122, 63
  %149 = or i8 %148, 64
  %150 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 20
  store i8 7, ptr %150, align 8
  %151 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 1
  store i8 -63, ptr %151, align 1
  %152 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 2
  store i8 0, ptr %152, align 2
  %153 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 3
  store i8 %149, ptr %153, align 1
  %154 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 19
  store i64 17179869184, ptr %154, align 8
  %155 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 2
  %156 = load i8, ptr %155, align 4
  %157 = lshr i8 %156, 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %154, align 8
  %159 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 19, i32 0, i32 3
  store ptr %150, ptr %159, align 8
  %160 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = tail call i32 @i2c_transfer(ptr noundef %161, ptr noundef %154, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %139) #12
  br label %163

163:                                              ; preds = %147, %145, %142
  %164 = load ptr, ptr %6, align 4
  %165 = getelementptr i8, ptr %164, i32 1
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr i8, ptr %164, i32 2
  %168 = load i8, ptr %167, align 1
  %169 = tail call i32 @mutex_lock_interruptible(ptr noundef %139) #12
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load i32, ptr @debug, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %254, label %174

174:                                              ; preds = %171
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %254

176:                                              ; preds = %163
  %177 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 20
  store i8 7, ptr %177, align 8
  %178 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 1
  store i8 -62, ptr %178, align 1
  %179 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 2
  store i8 %166, ptr %179, align 2
  %180 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 3
  store i8 %168, ptr %180, align 1
  %181 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 19
  store i64 17179869184, ptr %181, align 8
  %182 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 2
  %183 = load i8, ptr %182, align 4
  %184 = lshr i8 %183, 1
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %181, align 8
  %186 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 19, i32 0, i32 3
  store ptr %177, ptr %186, align 8
  %187 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 3
  %188 = load ptr, ptr %187, align 8
  %189 = tail call i32 @i2c_transfer(ptr noundef %188, ptr noundef %181, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %139) #12
  br label %254

190:                                              ; preds = %200, %117
  %191 = phi i16 [ %193, %200 ], [ 1000, %117 ]
  %192 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %120, i16 noundef zeroext 1984) #12
  %193 = add nsw i16 %191, -1
  %194 = icmp eq i16 %193, 0
  %195 = load i32, ptr @debug, align 4
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.w7090p_tuner_read_serpar) #13
  br label %205

200:                                              ; preds = %190
  %201 = and i16 %192, 2
  %202 = icmp ne i16 %201, 0
  %203 = icmp ne i16 %193, 0
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %190, label %205

205:                                              ; preds = %200, %198
  %206 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 22
  %207 = tail call i32 @mutex_lock_interruptible(ptr noundef %206) #12
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32, ptr @debug, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %229, label %212

212:                                              ; preds = %209
  %213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %229

214:                                              ; preds = %205
  %215 = and i8 %122, 63
  %216 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 20
  store i8 7, ptr %216, align 8
  %217 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 1
  store i8 -63, ptr %217, align 1
  %218 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 2
  store i8 0, ptr %218, align 2
  %219 = getelementptr %struct.dib7000p_state, ptr %120, i32 0, i32 20, i32 3
  store i8 %215, ptr %219, align 1
  %220 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 19
  store i64 17179869184, ptr %220, align 8
  %221 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 2
  %222 = load i8, ptr %221, align 4
  %223 = lshr i8 %222, 1
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %220, align 8
  %225 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 19, i32 0, i32 3
  store ptr %216, ptr %225, align 8
  %226 = getelementptr inbounds %struct.dib7000p_state, ptr %120, i32 0, i32 3
  %227 = load ptr, ptr %226, align 8
  %228 = tail call i32 @i2c_transfer(ptr noundef %227, ptr noundef %220, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %206) #12
  br label %229

229:                                              ; preds = %214, %212, %209
  br label %230

230:                                              ; preds = %240, %229
  %231 = phi i16 [ %233, %240 ], [ 1000, %229 ]
  %232 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %120, i16 noundef zeroext 1984) #12
  %233 = add nsw i16 %231, -1
  %234 = icmp eq i16 %233, 0
  %235 = load i32, ptr @debug, align 4
  %236 = icmp ne i32 %235, 0
  %237 = select i1 %234, i1 %236, i1 false
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.w7090p_tuner_read_serpar) #13
  br label %245

240:                                              ; preds = %230
  %241 = and i16 %232, 1
  %242 = icmp ne i16 %241, 0
  %243 = icmp ne i16 %233, 0
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %230, label %245

245:                                              ; preds = %240, %238
  %246 = tail call fastcc zeroext i16 @dib7000p_read_word(ptr noundef %120, i16 noundef zeroext 1987) #12
  %247 = lshr i16 %246, 8
  %248 = trunc i16 %247 to i8
  %249 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 3
  %250 = load ptr, ptr %249, align 4
  store i8 %248, ptr %250, align 1
  %251 = trunc i16 %246 to i8
  %252 = load ptr, ptr %249, align 4
  %253 = getelementptr i8, ptr %252, i32 1
  store i8 %251, ptr %253, align 1
  br label %254

254:                                              ; preds = %245, %176, %174, %171, %115, %94, %77, %75, %72, %51, %49, %36
  %255 = phi i32 [ 1, %51 ], [ %2, %36 ], [ 1, %72 ], [ 1, %75 ], [ 1, %77 ], [ %2, %94 ], [ 2, %245 ], [ %2, %115 ], [ 1, %171 ], [ 1, %174 ], [ 1, %176 ], [ %2, %49 ]
  ret i32 %255
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dib7000p_i2c_func(ptr nocapture noundef readnone %0) #10 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_reset_i2c_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib7090_configMpegMux(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #1 {
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.dib7090_configMpegMux) #13
  br label %9

9:                                                ; preds = %7, %4
  tail call fastcc void @dib7090_enMpegMux(ptr noundef %0, i32 noundef 0)
  %10 = icmp eq i16 %2, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 23
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  %15 = select i1 %14, i16 0, i16 %3
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i16 [ %3, %9 ], [ %15, %11 ]
  %18 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 22
  %19 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib7000p_write_word) #13
  br label %48

26:                                               ; preds = %16
  %27 = shl i16 %1, 2
  %28 = and i16 %27, 124
  %29 = shl i16 %2, 1
  %30 = and i16 %29, 2
  %31 = or i16 %30, %28
  %32 = and i16 %17, 1
  %33 = or i16 %31, %32
  %34 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 20
  store i8 5, ptr %34, align 8
  %35 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 1
  store i8 7, ptr %35, align 1
  %36 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 2
  store i8 0, ptr %36, align 2
  %37 = trunc i16 %33 to i8
  %38 = getelementptr %struct.dib7000p_state, ptr %0, i32 0, i32 20, i32 3
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19
  store i64 17179869184, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 2
  %41 = load i8, ptr %40, align 4
  %42 = lshr i8 %41, 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %39, align 8
  %44 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 19, i32 0, i32 3
  store ptr %34, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 @i2c_transfer(ptr noundef %46, ptr noundef %39, i32 noundef 1) #12
  tail call void @mutex_unlock(ptr noundef %18) #12
  br label %48

48:                                               ; preds = %26, %24, %21
  tail call fastcc void @dib7090_enMpegMux(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

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
!10 = !{i64 2148399520, i64 2148399800, i64 2148400134, i64 2148400468}
