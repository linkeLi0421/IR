; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lgdt3305.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgdt3305.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgdt3305_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgdt3305_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgdt3305_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lgdt3305_reg = type { i16, i8 }
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
%struct.lgdt3305_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.lgdt3305_config = type { i8, i16, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [53 x i8] c"parm=debug:set debug level (info=1, reg=2 (or-able))\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"\017%s: (%d-%04x)\0A\00", align 1
@__func__.lgdt3305_attach = private unnamed_addr constant [16 x i8] c"lgdt3305_attach\00", align 1
@lgdt3304_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3304 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt3305_release, ptr null, ptr @lgdt3305_init, ptr @lgdt3305_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3304_set_parameters, ptr @lgdt3305_get_tune_settings, ptr @lgdt3305_get_frontend, ptr @lgdt3305_read_status, ptr @lgdt3305_read_ber, ptr @lgdt3305_read_signal_strength, ptr @lgdt3305_read_snr, ptr @lgdt3305_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3305_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@lgdt3305_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3305 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt3305_release, ptr null, ptr @lgdt3305_init, ptr @lgdt3305_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3305_set_parameters, ptr @lgdt3305_get_tune_settings, ptr @lgdt3305_get_frontend, ptr @lgdt3305_read_status, ptr @lgdt3305_read_ber, ptr @lgdt3305_read_signal_strength, ptr @lgdt3305_read_snr, ptr @lgdt3305_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3305_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\013%s: error %d on line %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\014%s: unable to detect %s hardware\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LGDT3304\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"LGDT3305\00", align 1
@__kstrtab_lgdt3305_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgdt3305_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgdt3305_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgdt3305_attach to i32), ptr @__kstrtab_lgdt3305_attach, ptr @__kstrtabns_lgdt3305_attach }, section "___ksymtab+lgdt3305_attach", align 4
@__UNIQUE_ID_description251 = internal constant [68 x i8] c"description=LG Electronics LGDT3304/5 ATSC/QAM-B Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [44 x i8] c"author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version254 = internal constant [12 x i8] c"version=0.2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"\017%s: reg: 0x%04x\0A\00", align 1
@__func__.lgdt3305_read_reg = private unnamed_addr constant [18 x i8] c"lgdt3305_read_reg\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\013%s: error (addr %02x reg %04x error (ret == %i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\017%s: reg: 0x%04x, val: 0x%02x\0A\00", align 1
@__func__.lgdt3305_write_reg = private unnamed_addr constant [19 x i8] c"lgdt3305_write_reg\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"\013%s: error (addr %02x %02x <- %02x, err = %i)\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\017%s: \0A\00", align 1
@__func__.lgdt3305_release = private unnamed_addr constant [17 x i8] c"lgdt3305_release\00", align 1
@lgdt3305_init.lgdt3304_init_data = internal unnamed_addr constant [29 x %struct.lgdt3305_reg] [%struct.lgdt3305_reg { i16 0, i8 3 }, %struct.lgdt3305_reg { i16 13, i8 2 }, %struct.lgdt3305_reg { i16 14, i8 2 }, %struct.lgdt3305_reg { i16 18, i8 50 }, %struct.lgdt3305_reg { i16 19, i8 -60 }, %struct.lgdt3305_reg { i16 262, i8 0 }, %struct.lgdt3305_reg { i16 263, i8 0 }, %struct.lgdt3305_reg { i16 264, i8 0 }, %struct.lgdt3305_reg { i16 265, i8 0 }, %struct.lgdt3305_reg { i16 294, i8 -7 }, %struct.lgdt3305_reg { i16 274, i8 23 }, %struct.lgdt3305_reg { i16 275, i8 21 }, %struct.lgdt3305_reg { i16 276, i8 24 }, %struct.lgdt3305_reg { i16 277, i8 -1 }, %struct.lgdt3305_reg { i16 278, i8 60 }, %struct.lgdt3305_reg { i16 532, i8 103 }, %struct.lgdt3305_reg { i16 1060, i8 -115 }, %struct.lgdt3305_reg { i16 1063, i8 18 }, %struct.lgdt3305_reg { i16 1064, i8 79 }, %struct.lgdt3305_reg { i16 776, i8 -128 }, %struct.lgdt3305_reg { i16 777, i8 0 }, %struct.lgdt3305_reg { i16 778, i8 8 }, %struct.lgdt3305_reg { i16 779, i8 -101 }, %struct.lgdt3305_reg { i16 781, i8 0 }, %struct.lgdt3305_reg { i16 782, i8 28 }, %struct.lgdt3305_reg { i16 788, i8 -31 }, %struct.lgdt3305_reg { i16 13, i8 -126 }, %struct.lgdt3305_reg { i16 1294, i8 91 }, %struct.lgdt3305_reg { i16 1294, i8 91 }], align 2
@lgdt3305_init.lgdt3305_init_data = internal unnamed_addr constant [24 x %struct.lgdt3305_reg] [%struct.lgdt3305_reg { i16 0, i8 3 }, %struct.lgdt3305_reg { i16 1, i8 -80 }, %struct.lgdt3305_reg { i16 2, i8 1 }, %struct.lgdt3305_reg { i16 7, i8 111 }, %struct.lgdt3305_reg { i16 10, i8 3 }, %struct.lgdt3305_reg { i16 18, i8 50 }, %struct.lgdt3305_reg { i16 19, i8 -60 }, %struct.lgdt3305_reg { i16 262, i8 0 }, %struct.lgdt3305_reg { i16 263, i8 0 }, %struct.lgdt3305_reg { i16 264, i8 0 }, %struct.lgdt3305_reg { i16 265, i8 0 }, %struct.lgdt3305_reg { i16 294, i8 121 }, %struct.lgdt3305_reg { i16 768, i8 50 }, %struct.lgdt3305_reg { i16 769, i8 -60 }, %struct.lgdt3305_reg { i16 770, i8 13 }, %struct.lgdt3305_reg { i16 771, i8 48 }, %struct.lgdt3305_reg { i16 774, i8 -128 }, %struct.lgdt3305_reg { i16 775, i8 0 }, %struct.lgdt3305_reg { i16 776, i8 -128 }, %struct.lgdt3305_reg { i16 777, i8 0 }, %struct.lgdt3305_reg { i16 780, i8 48 }, %struct.lgdt3305_reg { i16 788, i8 97 }, %struct.lgdt3305_reg { i16 1284, i8 -1 }, %struct.lgdt3305_reg { i16 1294, i8 27 }], align 2
@__func__.lgdt3305_init = private unnamed_addr constant [14 x i8] c"lgdt3305_init\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\017%s: writing %d registers...\0A\00", align 1
@__func__.lgdt3305_write_regs = private unnamed_addr constant [20 x i8] c"lgdt3305_write_regs\00", align 1
@__func__.lgdt3305_soft_reset = private unnamed_addr constant [20 x i8] c"lgdt3305_soft_reset\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\017%s: reg: 0x%04x, bit: %d, level: %d\0A\00", align 1
@__func__.lgdt3305_set_reg_bit = private unnamed_addr constant [21 x i8] c"lgdt3305_set_reg_bit\00", align 1
@__func__.lgdt3305_sleep = private unnamed_addr constant [15 x i8] c"lgdt3305_sleep\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\017%s: (%d, %d)\0A\00", align 1
@__func__.lgdt3304_set_parameters = private unnamed_addr constant [24 x i8] c"lgdt3304_set_parameters\00", align 1
@__func__.lgdt3305_set_modulation = private unnamed_addr constant [24 x i8] c"lgdt3305_set_modulation\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\017%s: agc ref: 0x%04x\0A\00", align 1
@__func__.lgdt3305_passband_digital_agc = private unnamed_addr constant [30 x i8] c"lgdt3305_passband_digital_agc\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\017%s: lockdten = %d, acqen = %d\0A\00", align 1
@__func__.lgdt3305_agc_setup = private unnamed_addr constant [19 x i8] c"lgdt3305_agc_setup\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\017%s: agcdelay: 0x%04x, rfbw: 0x%04x\0A\00", align 1
@__func__.lgdt3305_rfagc_loop = private unnamed_addr constant [20 x i8] c"lgdt3305_rfagc_loop\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\017%s: ifbw: 0x%04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\017%s: %d KHz -> [%02x%02x%02x%02x]\0A\00", align 1
@__func__.lgdt3305_set_if = private unnamed_addr constant [16 x i8] c"lgdt3305_set_if\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"\017%s: (%d)\0A\00", align 1
@__func__.lgdt3305_spectral_inversion = private unnamed_addr constant [28 x i8] c"lgdt3305_spectral_inversion\00", align 1
@__func__.lgdt3305_mpeg_mode = private unnamed_addr constant [19 x i8] c"lgdt3305_mpeg_mode\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"\017%s: edge = %d, valid = %d\0A\00", align 1
@__func__.lgdt3305_mpeg_mode_polarity = private unnamed_addr constant [28 x i8] c"lgdt3305_mpeg_mode_polarity\00", align 1
@__func__.lgdt3305_get_tune_settings = private unnamed_addr constant [27 x i8] c"lgdt3305_get_tune_settings\00", align 1
@__func__.lgdt3305_get_frontend = private unnamed_addr constant [22 x i8] c"lgdt3305_get_frontend\00", align 1
@__func__.lgdt3305_read_status = private unnamed_addr constant [21 x i8] c"lgdt3305_read_status\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\017%s: %s%s%s%s%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"SIGNALEXIST \00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"INLOCK \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"SYNCLOCK \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"NOFECERR \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"SNRGOOD \00", align 1
@__func__.lgdt3305_read_cr_lock_status = private unnamed_addr constant [29 x i8] c"lgdt3305_read_cr_lock_status\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"QAM UNLOCK\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"QAM 1stLock\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"QAM 2ndLock\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"QAM FinalLock\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"CLOCKQAM-INVALID!\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"CLOCKVSB\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\017%s: (%d) %s\0A\00", align 1
@__func__.lgdt3305_read_fec_lock_status = private unnamed_addr constant [30 x i8] c"lgdt3305_read_fec_lock_status\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"\017%s: (%d) %s%s%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"mpeg lock  \00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"fec lock  \00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"viterbi lock\00", align 1
@__func__.lgdt3305_read_signal_strength = private unnamed_addr constant [30 x i8] c"lgdt3305_read_signal_strength\00", align 1
@__func__.lgdt3305_read_snr = private unnamed_addr constant [18 x i8] c"lgdt3305_read_snr\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"\017%s: noise = 0x%08x, snr = %d.%02d dB\0A\00", align 1
@__func__.lgdt3305_read_ucblocks = private unnamed_addr constant [23 x i8] c"lgdt3305_read_ucblocks\00", align 1
@__func__.lgdt3305_i2c_gate_ctrl = private unnamed_addr constant [23 x i8] c"lgdt3305_i2c_gate_ctrl\00", align 1
@__func__.lgdt3305_set_parameters = private unnamed_addr constant [24 x i8] c"lgdt3305_set_parameters\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\017%s: set manual mode: 0x%04x\0A\00", align 1
@__func__.lgdt3305_set_agc_power_ref = private unnamed_addr constant [27 x i8] c"lgdt3305_set_agc_power_ref\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"\017%s: val = %d\0A\00", align 1
@__func__.lgdt3305_set_filter_extension = private unnamed_addr constant [30 x i8] c"lgdt3305_set_filter_extension\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_version254, ptr @__ksymtab_lgdt3305_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lgdt3305_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %11, %9 ], [ 0, %7 ]
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %0, align 4
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %17, %15 ], [ 0, %12 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgdt3305_attach, i32 noundef %13, i32 noundef %19) #9
  br label %21

21:                                               ; preds = %18, %2
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 1060) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %72, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  store ptr %1, ptr %23, align 8
  %27 = getelementptr inbounds %struct.lgdt3305_config, ptr %0, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %72 [
    i32 1, label %29
    i32 0, label %31
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %30, ptr noundef nonnull align 4 dereferenceable(544) @lgdt3304_ops, i32 544, i1 false)
  br label %33

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %32, ptr noundef nonnull align 4 dereferenceable(544) @lgdt3305_ops, i32 544, i1 false)
  br label %33

33:                                               ; preds = %31, %29
  %34 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 2
  %35 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 2, i32 3
  store ptr %23, ptr %35, align 8
  %36 = call fastcc i32 @lgdt3305_read_reg(ptr noundef nonnull %23, i16 noundef zeroext 1, ptr noundef nonnull %3)
  %37 = icmp slt i32 %36, 0
  %38 = lshr i32 %36, 31
  br i1 %37, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_attach, i32 noundef %36, i32 noundef 1129) #9
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i8, ptr %3, align 1
  %43 = icmp eq i8 %42, 0
  %44 = zext i1 %43 to i32
  %45 = or i32 %38, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = call fastcc i32 @lgdt3305_write_reg(ptr noundef nonnull %23, i16 noundef zeroext 2056, i8 noundef zeroext -128)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_attach, i32 noundef %48, i32 noundef 1132) #9
  br label %72

52:                                               ; preds = %47
  %53 = call fastcc i32 @lgdt3305_read_reg(ptr noundef nonnull %23, i16 noundef zeroext 2056, ptr noundef nonnull %3)
  %54 = icmp slt i32 %53, 0
  %55 = lshr i32 %53, 31
  br i1 %54, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_attach, i32 noundef %53, i32 noundef 1135) #9
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8, ptr %3, align 1
  %60 = icmp ne i8 %59, -128
  %61 = zext i1 %60 to i32
  %62 = or i32 %55, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = call fastcc i32 @lgdt3305_write_reg(ptr noundef nonnull %23, i16 noundef zeroext 2056, i8 noundef zeroext 0)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_attach, i32 noundef %65, i32 noundef 1138) #9
  br label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 4
  store i32 -1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.lgdt3305_state, ptr %23, i32 0, i32 3
  store i32 -1, ptr %71, align 8
  br label %78

72:                                               ; preds = %67, %58, %50, %41, %25, %21
  %73 = getelementptr inbounds %struct.lgdt3305_config, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr @.str.4, ptr @.str.3
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lgdt3305_attach, ptr noundef nonnull %76) #9
  call void @kfree(ptr noundef %23) #8
  br label %78

78:                                               ; preds = %72, %69
  %79 = phi ptr [ null, %72 ], [ %34, %69 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret ptr %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_read_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  %6 = zext i16 %1 to i32
  %7 = lshr i16 %1, 8
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %4, align 2
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.lgdt3305_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %20 = load i8, ptr %13, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %2, ptr %24, align 4
  %25 = load i32, ptr @debug, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgdt3305_read_reg, i32 noundef %6) #9
  br label %30

30:                                               ; preds = %28, %3
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 2) #8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.lgdt3305_read_reg, i32 noundef %37, i32 noundef %6, i32 noundef %32) #9
  %39 = icmp slt i32 %32, 0
  %40 = select i1 %39, i32 %32, i32 -121
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ %40, %34 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #8
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  store i8 %7, ptr %4, align 1
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  %9 = trunc i16 %1 to i8
  store i8 %9, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.lgdt3305_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = zext i16 %1 to i32
  %24 = zext i8 %2 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgdt3305_write_reg, i32 noundef %23, i32 noundef %24) #9
  br label %26

26:                                               ; preds = %22, %3
  %27 = load ptr, ptr %0, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 1) #8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %18, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %31, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.lgdt3305_write_reg, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %28) #9
  %41 = icmp slt i32 %28, 0
  %42 = select i1 %41, i32 %28, i32 -121
  br label %43

43:                                               ; preds = %30, %26
  %44 = phi i32 [ %42, %30 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lgdt3305_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_release) #9
  br label %9

9:                                                ; preds = %7, %1
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_init) #9
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.lgdt3305_state, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.lgdt3305_config, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %53 [
    i32 1, label %14
    i32 0, label %32
  ]

14:                                               ; preds = %9
  %15 = load i32, ptr @debug, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.lgdt3305_write_regs, i32 noundef 29) #9
  br label %20

20:                                               ; preds = %18, %14
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, 28
  br i1 %23, label %56, label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ %22, %21 ], [ 0, %20 ]
  %26 = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3304_init_data, i32 %25
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3304_init_data, i32 %25, i32 1
  %29 = load i8, ptr %28, align 2
  %30 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %3, i16 noundef zeroext %27, i8 noundef zeroext %29) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %50, label %21

32:                                               ; preds = %9
  %33 = load i32, ptr @debug, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.lgdt3305_write_regs, i32 noundef 24) #9
  br label %38

38:                                               ; preds = %36, %32
  br label %42

39:                                               ; preds = %42
  %40 = add nuw nsw i32 %43, 1
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %56, label %42

42:                                               ; preds = %39, %38
  %43 = phi i32 [ %40, %39 ], [ 0, %38 ]
  %44 = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3305_init_data, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr %struct.lgdt3305_reg, ptr @lgdt3305_init.lgdt3305_init_data, i32 %43, i32 1
  %47 = load i8, ptr %46, align 2
  %48 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %3, i16 noundef zeroext %45, i8 noundef zeroext %47) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %39

50:                                               ; preds = %42, %24
  %51 = phi i32 [ %30, %24 ], [ %48, %42 ]
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_write_regs, i32 noundef %51, i32 noundef 194) #9
  br label %53

53:                                               ; preds = %50, %9
  %54 = phi i32 [ -22, %9 ], [ %51, %50 ]
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_init, i32 noundef %54, i32 noundef 661) #9
  br label %58

56:                                               ; preds = %39, %21
  %57 = tail call fastcc i32 @lgdt3305_soft_reset(ptr noundef %3)
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ %54, %53 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_sleep) #9
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %12 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %5, i16 noundef zeroext 2, ptr noundef nonnull %2)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %2, align 1
  %16 = and i8 %15, -8
  %17 = or i8 %16, 6
  br label %20

18:                                               ; preds = %11
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_sleep, i32 noundef %12, i32 noundef 562) #9
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i8 [ %17, %14 ], [ 6, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %22 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %5, i16 noundef zeroext 10, ptr noundef nonnull %3)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %3, align 1
  %26 = and i8 %25, -4
  br label %29

27:                                               ; preds = %20
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_sleep, i32 noundef %22, i32 noundef 563) #9
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i8 [ %26, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %31 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 2, i8 noundef zeroext %21)
  %32 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 10, i8 noundef zeroext %30)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3304_set_parameters(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %10, i32 noundef %12) #9
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #8
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 %21(ptr noundef %0, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %23, %18
  %26 = icmp slt i32 %19, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %19, i32 noundef 681) #9
  br label %141

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.lgdt3305_state, ptr %5, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %14
  %33 = tail call fastcc i32 @lgdt3305_set_modulation(ptr noundef %5, ptr noundef %3)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %33, i32 noundef 687) #9
  br label %141

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %49 [
    i32 7, label %42
    i32 3, label %40
    i32 5, label %41
  ]

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %40, %37
  %43 = phi i32 [ 10880, %41 ], [ 10752, %40 ], [ 12996, %37 ]
  %44 = load i32, ptr @debug, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.lgdt3305_passband_digital_agc, i32 noundef %43) #9
  br label %51

49:                                               ; preds = %37
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef -22, i32 noundef 691) #9
  br label %141

51:                                               ; preds = %47, %42
  %52 = lshr i32 %43, 8
  %53 = trunc i32 %52 to i8
  %54 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 18, i8 noundef zeroext %53) #8
  %55 = trunc i32 %43 to i8
  %56 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 19, i8 noundef zeroext %55) #8
  %57 = tail call fastcc i32 @lgdt3305_agc_setup(ptr noundef %5, ptr noundef %3)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %57, i32 noundef 695) #9
  br label %141

61:                                               ; preds = %51
  %62 = load i32, ptr %38, align 4
  switch i32 %62, label %141 [
    i32 7, label %63
    i32 3, label %69
    i32 5, label %69
  ]

63:                                               ; preds = %61
  %64 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 781, i8 noundef zeroext 0)
  %65 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 262, i8 noundef zeroext 79)
  %66 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 263, i8 noundef zeroext 12)
  %67 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 264, i8 noundef zeroext -84)
  %68 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 265, i8 noundef zeroext -70)
  br label %75

69:                                               ; preds = %61, %61
  %70 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 781, i8 noundef zeroext 20)
  %71 = tail call fastcc i32 @lgdt3305_set_if(ptr noundef %5, ptr noundef %3)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %71, i32 noundef 711) #9
  br label %141

75:                                               ; preds = %69, %63
  %76 = getelementptr inbounds %struct.lgdt3305_state, ptr %5, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.lgdt3305_config, ptr %77, i32 0, i32 6
  %79 = load i8, ptr %78, align 4
  %80 = lshr i8 %79, 1
  %81 = and i8 %80, 1
  %82 = load i32, ptr @debug, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = zext i8 %81 to i32
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.lgdt3305_spectral_inversion, i32 noundef %86) #9
  br label %88

88:                                               ; preds = %85, %75
  %89 = load i32, ptr %38, align 4
  switch i32 %89, label %101 [
    i32 7, label %90
    i32 3, label %94
    i32 5, label %94
  ]

90:                                               ; preds = %88
  %91 = icmp eq i8 %81, 0
  %92 = select i1 %91, i8 121, i8 -7
  %93 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 294, i8 noundef zeroext %92) #8
  br label %98

94:                                               ; preds = %88, %88
  %95 = icmp eq i8 %81, 0
  %96 = select i1 %95, i8 -1, i8 -3
  %97 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 1284, i8 noundef zeroext %96) #8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %97, %94 ], [ %93, %90 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %88
  %102 = phi i32 [ %99, %98 ], [ -22, %88 ]
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %102, i32 noundef 722) #9
  br label %141

104:                                              ; preds = %98
  %105 = load i32, ptr %38, align 4
  %106 = getelementptr inbounds %struct.lgdt3305_state, ptr %5, i32 0, i32 3
  store i32 %105, ptr %106, align 4
  %107 = load ptr, ptr %76, align 4
  %108 = getelementptr inbounds %struct.lgdt3305_config, ptr %107, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr @debug, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.lgdt3305_mpeg_mode, i32 noundef %109) #9
  %115 = load i32, ptr @debug, align 4
  br label %116

116:                                              ; preds = %113, %104
  %117 = phi i32 [ %115, %113 ], [ %110, %104 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 1294, i32 noundef 5, i32 noundef %109) #9
  br label %122

122:                                              ; preds = %120, %116
  %123 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %5, i16 noundef zeroext 1294, ptr noundef nonnull %2) #8
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %123, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %136

127:                                              ; preds = %122
  %128 = load i8, ptr %2, align 1
  %129 = and i8 %128, -33
  %130 = trunc i32 %109 to i8
  %131 = shl i8 %130, 5
  %132 = and i8 %131, 32
  %133 = or i8 %129, %132
  store i8 %133, ptr %2, align 1
  %134 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 1294, i8 noundef zeroext %133) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127, %125
  %137 = phi i32 [ %123, %125 ], [ %134, %127 ]
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3304_set_parameters, i32 noundef %137, i32 noundef 728) #9
  br label %141

139:                                              ; preds = %127
  %140 = call fastcc i32 @lgdt3305_mpeg_mode_polarity(ptr noundef %5)
  br label %141

141:                                              ; preds = %139, %136, %101, %73, %61, %59, %49, %35, %27
  %142 = phi i32 [ -22, %61 ], [ %140, %139 ], [ %19, %27 ], [ %33, %35 ], [ -22, %49 ], [ %57, %59 ], [ %71, %73 ], [ %102, %101 ], [ %137, %136 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  store i32 500, ptr %1, align 4
  %3 = load i32, ptr @debug, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_get_tune_settings) #9
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_get_frontend) #9
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.lgdt3305_state, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.lgdt3305_state, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  store i32 0, ptr %1, align 4
  %8 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %7, i16 noundef zeroext 3, ptr noundef nonnull %5)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_status, i32 noundef %8, i32 noundef 911) #9
  br label %148

12:                                               ; preds = %2
  %13 = load i8, ptr %5, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  %17 = lshr i32 %14, 3
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = and i32 %14, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %14, 2
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr @debug, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %12
  %28 = and i32 %14, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %16, ptr @.str.22, ptr @.str.21
  %31 = icmp eq i32 %19, 0
  %32 = select i1 %31, ptr @.str.22, ptr @.str.23
  %33 = select i1 %21, ptr @.str.22, ptr @.str.24
  %34 = select i1 %23, ptr @.str.22, ptr @.str.25
  %35 = select i1 %29, ptr @.str.22, ptr @.str.26
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.lgdt3305_read_status, ptr noundef nonnull %30, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #9
  br label %37

37:                                               ; preds = %27, %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %38 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %7, i16 noundef zeroext 285, ptr noundef nonnull %4) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_cr_lock_status, i32 noundef %38, i32 noundef 825) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %73

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.lgdt3305_state, ptr %7, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %62 [
    i32 5, label %45
    i32 3, label %45
    i32 7, label %56
  ]

45:                                               ; preds = %42, %42
  %46 = load i8, ptr %4, align 1
  %47 = lshr i8 %46, 1
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  %50 = and i8 %46, 7
  %51 = zext i8 %50 to i32
  switch i32 %51, label %55 [
    i32 0, label %62
    i32 4, label %52
    i32 6, label %53
    i32 7, label %54
  ]

52:                                               ; preds = %45
  br label %62

53:                                               ; preds = %45
  br label %62

54:                                               ; preds = %45
  br label %62

55:                                               ; preds = %45
  br label %62

56:                                               ; preds = %42
  %57 = load i8, ptr %4, align 1
  %58 = icmp sgt i8 %57, -1
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = select i1 %58, ptr @.str.22, ptr @.str.32
  br label %62

62:                                               ; preds = %56, %55, %54, %53, %52, %45, %42
  %63 = phi i32 [ 0, %42 ], [ %49, %55 ], [ %49, %54 ], [ %49, %53 ], [ %49, %52 ], [ %49, %45 ], [ %60, %56 ]
  %64 = phi ptr [ @.str.22, %42 ], [ @.str.31, %55 ], [ @.str.30, %54 ], [ @.str.29, %53 ], [ @.str.28, %52 ], [ @.str.27, %45 ], [ %61, %56 ]
  %65 = phi i1 [ true, %42 ], [ false, %55 ], [ false, %54 ], [ false, %53 ], [ false, %52 ], [ false, %45 ], [ false, %56 ]
  %66 = phi i32 [ -22, %42 ], [ 0, %55 ], [ 0, %54 ], [ 0, %53 ], [ 0, %52 ], [ %51, %45 ], [ 0, %56 ]
  %67 = load i32, ptr @debug, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.lgdt3305_read_cr_lock_status, i32 noundef %63, ptr noundef nonnull %64) #9
  br label %72

72:                                               ; preds = %70, %62
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br i1 %65, label %73, label %76

73:                                               ; preds = %72, %40
  %74 = phi i32 [ %38, %40 ], [ %66, %72 ]
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_status, i32 noundef %74, i32 noundef 928) #9
  br label %148

76:                                               ; preds = %72
  br i1 %16, label %80, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %1, align 4
  %79 = or i32 %78, 1
  store i32 %79, ptr %1, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = icmp eq i32 %63, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %1, align 4
  %84 = or i32 %83, 2
  store i32 %84, ptr %1, align 4
  br label %85

85:                                               ; preds = %82, %80
  br i1 %23, label %89, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %1, align 4
  %88 = or i32 %87, 4
  store i32 %88, ptr %1, align 4
  br label %89

89:                                               ; preds = %86, %85
  br i1 %21, label %93, label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %1, align 4
  %92 = or i32 %91, 8
  store i32 %92, ptr %1, align 4
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32, ptr %43, align 4
  switch i32 %94, label %148 [
    i32 5, label %95
    i32 3, label %95
    i32 7, label %143
  ]

95:                                               ; preds = %93, %93
  %96 = getelementptr inbounds %struct.lgdt3305_state, ptr %7, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.lgdt3305_config, ptr %97, i32 0, i32 11
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 1
  %101 = icmp ne i32 %63, 0
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, ptr %1, align 4
  %105 = or i32 %104, 1
  store i32 %105, ptr %1, align 4
  %106 = load i32, ptr %43, align 4
  br label %107

107:                                              ; preds = %103, %95
  %108 = phi i32 [ %106, %103 ], [ %94, %95 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  switch i32 %108, label %135 [
    i32 5, label %109
    i32 3, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %7, i16 noundef zeroext 1290, ptr noundef nonnull %3) #8
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_fec_lock_status, i32 noundef %110, i32 noundef 879) #9
  br label %135

114:                                              ; preds = %109
  %115 = load i8, ptr %3, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 8
  %118 = and i32 %116, 5
  %119 = icmp eq i32 %118, 5
  %120 = lshr exact i32 %117, 3
  %121 = select i1 %119, i32 %120, i32 0
  %122 = load i32, ptr @debug, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %114
  %126 = icmp eq i32 %117, 0
  %127 = and i32 %116, 4
  %128 = icmp eq i32 %127, 0
  %129 = and i32 %116, 1
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, ptr @.str.22, ptr @.str.35
  %132 = select i1 %128, ptr @.str.22, ptr @.str.36
  %133 = select i1 %126, ptr @.str.22, ptr @.str.37
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.lgdt3305_read_fec_lock_status, i32 noundef %121, ptr noundef nonnull %131, ptr noundef nonnull %132, ptr noundef nonnull %133) #9
  br label %138

135:                                              ; preds = %112, %107
  %136 = phi i32 [ -22, %107 ], [ %110, %112 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_status, i32 noundef %136, i32 noundef 948) #9
  br label %148

138:                                              ; preds = %125, %114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %139 = icmp eq i32 %121, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %138
  %141 = load i32, ptr %1, align 4
  %142 = or i32 %141, 16
  store i32 %142, ptr %1, align 4
  br label %148

143:                                              ; preds = %93
  %144 = icmp eq i32 %19, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = load i32, ptr %1, align 4
  %147 = or i32 %146, 16
  store i32 %147, ptr %1, align 4
  br label %148

148:                                              ; preds = %145, %143, %140, %138, %135, %93, %73, %10
  %149 = phi i32 [ 0, %145 ], [ 0, %143 ], [ 0, %140 ], [ 0, %138 ], [ %8, %10 ], [ %74, %73 ], [ -22, %93 ], [ %136, %135 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %149
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgdt3305_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_signal_strength(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  store i16 0, ptr %1, align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_signal_strength, i32 noundef %8, i32 noundef 1045) #9
  br label %20

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.lgdt3305_state, ptr %5, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 587202559
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i16 -1, ptr %1, align 2
  br label %20

17:                                               ; preds = %12
  %18 = udiv i32 %14, 8960
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %1, align 2
  br label %20

20:                                               ; preds = %17, %16, %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lgdt3305_state, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %95 [
    i32 7, label %12
    i32 3, label %45
    i32 5, label %45
  ]

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %13 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %9, i16 noundef zeroext 1043, ptr noundef nonnull %3)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %3, align 1
  %17 = and i8 %16, 15
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  br label %22

20:                                               ; preds = %12
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_snr, i32 noundef %13, i32 noundef 1001) #9
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %19, %15 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %24 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %9, i16 noundef zeroext 1044, ptr noundef nonnull %4)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr %4, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  br label %32

30:                                               ; preds = %22
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_snr, i32 noundef %24, i32 noundef 1002) #9
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %34 = or i32 %33, %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %35 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %9, i16 noundef zeroext 1045, ptr noundef nonnull %5)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i8, ptr %5, align 1
  %39 = zext i8 %38 to i32
  br label %42

40:                                               ; preds = %32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_snr, i32 noundef %35, i32 noundef 1003) #9
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %44 = or i32 %34, %43
  br label %69

45:                                               ; preds = %2, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %46 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %9, i16 noundef zeroext 283, ptr noundef nonnull %6)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr %6, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  br label %54

52:                                               ; preds = %45
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_snr, i32 noundef %46, i32 noundef 1009) #9
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !8
  %56 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %9, i16 noundef zeroext 284, ptr noundef nonnull %7)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i8, ptr %7, align 1
  %60 = zext i8 %59 to i32
  br label %63

61:                                               ; preds = %54
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_snr, i32 noundef %56, i32 noundef 1010) #9
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %60, %58 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %65 = or i32 %55, %64
  %66 = load i32, ptr %10, align 4
  %67 = icmp eq i32 %66, 3
  %68 = select i1 %67, i32 97939837, i32 98026066
  br label %69

69:                                               ; preds = %63, %42
  %70 = phi i32 [ %68, %63 ], [ 73957994, %42 ]
  %71 = phi i32 [ %65, %63 ], [ %44, %42 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = call i32 @intlog10(i32 noundef %71) #8
  %75 = icmp ult i32 %70, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = sub i32 %70, %74
  %78 = mul i32 %77, 10
  br label %79

79:                                               ; preds = %76, %73, %69
  %80 = phi i32 [ %78, %76 ], [ 0, %69 ], [ 0, %73 ]
  %81 = getelementptr inbounds %struct.lgdt3305_state, ptr %9, i32 0, i32 5
  store i32 %80, ptr %81, align 4
  %82 = udiv i32 %80, 1677721
  %83 = trunc i32 %82 to i16
  store i16 %83, ptr %1, align 2
  %84 = load i32, ptr @debug, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load i32, ptr %81, align 4
  %89 = lshr i32 %88, 24
  %90 = lshr i32 %88, 8
  %91 = and i32 %90, 65535
  %92 = mul nuw nsw i32 %91, 100
  %93 = lshr i32 %92, 16
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.lgdt3305_read_snr, i32 noundef %71, i32 noundef %89, i32 noundef %93) #9
  br label %95

95:                                               ; preds = %87, %79, %2
  %96 = phi i32 [ -22, %2 ], [ 0, %87 ], [ 0, %79 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %7 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %6, i16 noundef zeroext 1292, ptr noundef nonnull %3)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %3, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  br label %15

13:                                               ; preds = %2
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_ucblocks, i32 noundef %7, i32 noundef 1070) #9
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %12, %9 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %17 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %6, i16 noundef zeroext 1293, ptr noundef nonnull %4)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %4, align 1
  %21 = zext i8 %20 to i32
  br label %24

22:                                               ; preds = %15
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_read_ucblocks, i32 noundef %17, i32 noundef 1071) #9
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %26 = or i32 %16, %25
  store i32 %26, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.lgdt3305_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.lgdt3305_config, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i32, ptr @debug, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.lgdt3305_i2c_gate_ctrl, i32 noundef %1) #9
  %18 = load i32, ptr @debug, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %18, %16 ], [ %13, %12 ]
  %21 = icmp eq i32 %1, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %22 = and i32 %20, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = zext i1 %21 to i32
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 1, i32 noundef 5, i32 noundef %25) #9
  br label %27

27:                                               ; preds = %24, %19
  %28 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %5, i16 noundef zeroext 1, ptr noundef nonnull %3) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %28, i32 noundef 169) #9
  br label %38

32:                                               ; preds = %27
  %33 = load i8, ptr %3, align 1
  %34 = and i8 %33, -33
  %35 = select i1 %21, i8 32, i8 0
  %36 = or i8 %34, %35
  store i8 %36, ptr %3, align 1
  %37 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %5, i16 noundef zeroext 1, i8 noundef zeroext %36) #8
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi i32 [ %37, %32 ], [ %28, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi i32 [ %39, %38 ], [ 0, %2 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_soft_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_soft_reset) #9
  %9 = load i32, ptr @debug, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %4, %1 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  br label %16

16:                                               ; preds = %14, %10
  %17 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %0, i16 noundef zeroext 2, ptr noundef nonnull %3) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %17, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %26

21:                                               ; preds = %16
  %22 = load i8, ptr %3, align 1
  %23 = and i8 %22, -2
  store i8 %23, ptr %3, align 1
  %24 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 2, i8 noundef zeroext %23) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %17, %19 ], [ %24, %21 ]
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_soft_reset, i32 noundef %27, i32 noundef 209) #9
  br label %46

29:                                               ; preds = %21
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %30 = load i32, ptr @debug, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 2, i32 noundef 0, i32 noundef 1) #9
  br label %35

35:                                               ; preds = %33, %29
  %36 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %0, i16 noundef zeroext 2, ptr noundef nonnull %2) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %36, i32 noundef 169) #9
  br label %44

40:                                               ; preds = %35
  %41 = load i8, ptr %2, align 1
  %42 = or i8 %41, 1
  store i8 %42, ptr %2, align 1
  %43 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 2, i8 noundef zeroext %42) #8
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i32 [ %43, %40 ], [ %36, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %46

46:                                               ; preds = %44, %26
  %47 = phi i32 [ %45, %44 ], [ %27, %26 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_set_modulation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lgdt3305_set_modulation) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %0, i16 noundef zeroext 0, ptr noundef nonnull %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_modulation, i32 noundef %10, i32 noundef 266) #9
  br label %27

14:                                               ; preds = %9
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, -4
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %27 [
    i32 7, label %19
    i32 3, label %21
    i32 5, label %22
  ]

19:                                               ; preds = %14
  %20 = or i8 %15, 3
  store i8 %20, ptr %3, align 1
  br label %24

21:                                               ; preds = %14
  store i8 %16, ptr %3, align 1
  br label %24

22:                                               ; preds = %14
  %23 = or i8 %16, 1
  store i8 %23, ptr %3, align 1
  br label %24

24:                                               ; preds = %22, %21, %19
  %25 = phi i8 [ %23, %22 ], [ %16, %21 ], [ %20, %19 ]
  %26 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 0, i8 noundef zeroext %25)
  br label %27

27:                                               ; preds = %24, %14, %12
  %28 = phi i32 [ -22, %14 ], [ %26, %24 ], [ %10, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_agc_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %105 [
    i32 7, label %8
    i32 3, label %7
    i32 5, label %7
  ]

7:                                                ; preds = %2, %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 1, %7 ], [ 0, %2 ]
  %10 = load i32, ptr @debug, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.lgdt3305_agc_setup, i32 noundef %9, i32 noundef %9) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds %struct.lgdt3305_state, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.lgdt3305_config, ptr %17, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %105 [
    i32 1, label %20
    i32 0, label %42
  ]

20:                                               ; preds = %15
  %21 = trunc i32 %9 to i8
  %22 = shl nuw nsw i8 %21, 1
  %23 = or i8 %22, -31
  %24 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 788, i8 noundef zeroext %23)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %25 = load i32, ptr @debug, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 782, i32 noundef 2, i32 noundef %9) #9
  br label %30

30:                                               ; preds = %28, %20
  %31 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %0, i16 noundef zeroext 782, ptr noundef nonnull %4) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %31, i32 noundef 169) #9
  br label %41

35:                                               ; preds = %30
  %36 = load i8, ptr %4, align 1
  %37 = and i8 %36, -5
  %38 = shl nuw nsw i8 %21, 2
  %39 = or i8 %37, %38
  store i8 %39, ptr %4, align 1
  %40 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 782, i8 noundef zeroext %39) #8
  br label %41

41:                                               ; preds = %35, %33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %64

42:                                               ; preds = %15
  %43 = trunc i32 %9 to i8
  %44 = shl nuw nsw i8 %43, 1
  %45 = or i8 %44, -31
  %46 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 788, i8 noundef zeroext %45)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %47 = load i32, ptr @debug, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 780, i32 noundef 2, i32 noundef %9) #9
  br label %52

52:                                               ; preds = %50, %42
  %53 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %0, i16 noundef zeroext 780, ptr noundef nonnull %3) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %53, i32 noundef 169) #9
  br label %63

57:                                               ; preds = %52
  %58 = load i8, ptr %3, align 1
  %59 = and i8 %58, -5
  %60 = shl nuw nsw i8 %43, 2
  %61 = or i8 %59, %60
  store i8 %61, ptr %3, align 1
  %62 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 780, i8 noundef zeroext %61) #8
  br label %63

63:                                               ; preds = %57, %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, ptr %5, align 4
  switch i32 %65, label %105 [
    i32 7, label %66
    i32 3, label %68
    i32 5, label %68
  ]

66:                                               ; preds = %64
  %67 = load ptr, ptr %16, align 4
  br label %74

68:                                               ; preds = %64, %64
  %69 = load ptr, ptr %16, align 4
  %70 = getelementptr inbounds %struct.lgdt3305_config, ptr %69, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 1
  %73 = select i1 %72, i32 26214, i32 34952
  br label %74

74:                                               ; preds = %68, %66
  %75 = phi ptr [ %67, %66 ], [ %69, %68 ]
  %76 = phi i32 [ 32768, %66 ], [ 34953, %68 ]
  %77 = phi i32 [ 1216, %66 ], [ 1131, %68 ]
  %78 = phi i32 [ 32768, %66 ], [ %73, %68 ]
  %79 = getelementptr inbounds %struct.lgdt3305_config, ptr %75, i32 0, i32 6
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 4
  %82 = icmp eq i8 %81, 0
  %83 = load i32, ptr @debug, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %82, label %93, label %86

86:                                               ; preds = %74
  br i1 %85, label %89, label %87

87:                                               ; preds = %86
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.lgdt3305_rfagc_loop, i32 noundef %77, i32 noundef %76) #9
  br label %89

89:                                               ; preds = %87, %86
  %90 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 770, i8 noundef zeroext 4) #8
  %91 = trunc i32 %77 to i8
  %92 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 771, i8 noundef zeroext %91) #8
  br label %96

93:                                               ; preds = %74
  br i1 %85, label %96, label %94

94:                                               ; preds = %93
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.lgdt3305_rfagc_loop, i32 noundef %78) #9
  br label %96

96:                                               ; preds = %94, %93, %89
  %97 = phi i32 [ %76, %89 ], [ %78, %94 ], [ %78, %93 ]
  %98 = phi i16 [ 774, %89 ], [ 776, %94 ], [ 776, %93 ]
  %99 = phi i16 [ 775, %89 ], [ 777, %94 ], [ 777, %93 ]
  %100 = lshr i32 %97, 8
  %101 = trunc i32 %100 to i8
  %102 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext %98, i8 noundef zeroext %101) #8
  %103 = trunc i32 %97 to i8
  %104 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext %99, i8 noundef zeroext %103) #8
  br label %105

105:                                              ; preds = %96, %64, %15, %2
  %106 = phi i32 [ -22, %2 ], [ -22, %15 ], [ -22, %64 ], [ 0, %96 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_set_if(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %63 [
    i32 7, label %5
    i32 5, label %23
    i32 3, label %23
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lgdt3305_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.lgdt3305_config, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = udiv i16 %9, 10
  %11 = zext i16 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %12) #11, !srcloc !9
  %14 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %12, i64 %13) #11, !srcloc !10
  %15 = lshr i64 %14, 7
  %16 = trunc i64 %15 to i8
  %17 = lshr i64 %14, 15
  %18 = trunc i64 %17 to i8
  %19 = lshr i64 %14, 23
  %20 = trunc i64 %19 to i8
  %21 = lshr i64 %14, 31
  %22 = trunc i64 %21 to i8
  br label %41

23:                                               ; preds = %2, %2
  %24 = getelementptr inbounds %struct.lgdt3305_state, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.lgdt3305_config, ptr %25, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = udiv i16 %27, 10
  %29 = zext i16 %28 to i64
  %30 = shl nuw nsw i64 %29, 28
  %31 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %30) #11, !srcloc !9
  %32 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %30, i64 %31) #11, !srcloc !10
  %33 = lshr i64 %32, 7
  %34 = trunc i64 %33 to i8
  %35 = lshr i64 %32, 15
  %36 = trunc i64 %35 to i8
  %37 = lshr i64 %32, 23
  %38 = trunc i64 %37 to i8
  %39 = lshr i64 %32, 31
  %40 = trunc i64 %39 to i8
  br label %41

41:                                               ; preds = %23, %5
  %42 = phi i8 [ %34, %23 ], [ %16, %5 ]
  %43 = phi i8 [ %36, %23 ], [ %18, %5 ]
  %44 = phi i8 [ %38, %23 ], [ %20, %5 ]
  %45 = phi i8 [ %40, %23 ], [ %22, %5 ]
  %46 = phi i16 [ %27, %23 ], [ %9, %5 ]
  %47 = and i8 %45, 63
  %48 = or i8 %47, 64
  %49 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 262, i8 noundef zeroext %48)
  %50 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 263, i8 noundef zeroext %44)
  %51 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 264, i8 noundef zeroext %43)
  %52 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 265, i8 noundef zeroext %42)
  %53 = load i32, ptr @debug, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %41
  %57 = zext i16 %46 to i32
  %58 = zext i8 %48 to i32
  %59 = zext i8 %44 to i32
  %60 = zext i8 %43 to i32
  %61 = zext i8 %42 to i32
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.lgdt3305_set_if, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61) #9
  br label %63

63:                                               ; preds = %56, %41, %2
  %64 = phi i32 [ -22, %2 ], [ 0, %56 ], [ 0, %41 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3305_mpeg_mode_polarity(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.lgdt3305_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lgdt3305_config, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lgdt3305_config, ptr %4, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lgdt3305_config, ptr %4, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.lgdt3305_mpeg_mode_polarity, i32 noundef %6, i32 noundef %10) #9
  br label %16

16:                                               ; preds = %14, %1
  %17 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %0, i16 noundef zeroext 1294, ptr noundef nonnull %2)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_mpeg_mode_polarity, i32 noundef %17, i32 noundef 236) #9
  br label %39

21:                                               ; preds = %16
  %22 = load i8, ptr %2, align 1
  %23 = and i8 %22, -10
  %24 = icmp eq i32 %6, 0
  %25 = or i8 %23, 8
  %26 = select i1 %24, i8 %23, i8 %25
  %27 = icmp eq i32 %8, 0
  %28 = or i8 %26, 64
  %29 = select i1 %27, i8 %26, i8 %28
  %30 = icmp ne i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = or i8 %29, %31
  store i8 %32, ptr %2, align 1
  %33 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %0, i16 noundef zeroext 1294, i8 noundef zeroext %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_mpeg_mode_polarity, i32 noundef %33, i32 noundef 249) #9
  br label %39

37:                                               ; preds = %21
  %38 = call fastcc i32 @lgdt3305_soft_reset(ptr noundef %0)
  br label %39

39:                                               ; preds = %37, %35, %19
  %40 = phi i32 [ %38, %37 ], [ %17, %19 ], [ %33, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3305_set_parameters(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, ptr %6, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %13, i32 noundef %15) #9
  br label %17

17:                                               ; preds = %12, %1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %0) #8
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef %0, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %26, %21
  %29 = icmp slt i32 %22, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %22, i32 noundef 749) #9
  br label %241

32:                                               ; preds = %28
  %33 = load i32, ptr %6, align 4
  %34 = getelementptr inbounds %struct.lgdt3305_state, ptr %8, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %17
  %36 = tail call fastcc i32 @lgdt3305_set_modulation(ptr noundef %8, ptr noundef %6)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %36, i32 noundef 755) #9
  br label %241

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %52 [
    i32 7, label %45
    i32 3, label %43
    i32 5, label %44
  ]

43:                                               ; preds = %40
  br label %45

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %43, %40
  %46 = phi i32 [ 10880, %44 ], [ 10752, %43 ], [ 12996, %40 ]
  %47 = load i32, ptr @debug, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.lgdt3305_passband_digital_agc, i32 noundef %46) #9
  br label %54

52:                                               ; preds = %40
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef -22, i32 noundef 759) #9
  br label %241

54:                                               ; preds = %50, %45
  %55 = lshr i32 %46, 8
  %56 = trunc i32 %55 to i8
  %57 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 18, i8 noundef zeroext %56) #8
  %58 = trunc i32 %46 to i8
  %59 = tail call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 19, i8 noundef zeroext %58) #8
  %60 = load i32, ptr %41, align 4
  switch i32 %60, label %106 [
    i32 7, label %61
    i32 3, label %65
    i32 5, label %69
  ]

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.lgdt3305_state, ptr %8, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.lgdt3305_config, ptr %63, i32 0, i32 3
  br label %73

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.lgdt3305_state, ptr %8, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.lgdt3305_config, ptr %67, i32 0, i32 4
  br label %73

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.lgdt3305_state, ptr %8, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.lgdt3305_config, ptr %71, i32 0, i32 5
  br label %73

73:                                               ; preds = %69, %65, %61
  %74 = phi ptr [ %64, %61 ], [ %68, %65 ], [ %72, %69 ]
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr @debug, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = zext i16 %75 to i32
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.lgdt3305_set_agc_power_ref, i32 noundef %82) #9
  %84 = load i32, ptr @debug, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %84, %81 ], [ %78, %77 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 780, i32 noundef 3, i32 noundef 1) #9
  br label %91

91:                                               ; preds = %89, %85
  %92 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %8, i16 noundef zeroext 780, ptr noundef nonnull %5) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %92, i32 noundef 169) #9
  br label %100

96:                                               ; preds = %91
  %97 = load i8, ptr %5, align 1
  %98 = or i8 %97, 8
  store i8 %98, ptr %5, align 1
  %99 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 780, i8 noundef zeroext %98) #8
  br label %100

100:                                              ; preds = %96, %94
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %101 = lshr i16 %75, 8
  %102 = trunc i16 %101 to i8
  %103 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 768, i8 noundef zeroext %102) #8
  %104 = trunc i16 %75 to i8
  %105 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 769, i8 noundef zeroext %104) #8
  br label %108

106:                                              ; preds = %54
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef -22, i32 noundef 762) #9
  br label %241

108:                                              ; preds = %100, %73
  %109 = call fastcc i32 @lgdt3305_agc_setup(ptr noundef %8, ptr noundef %6)
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %109, i32 noundef 765) #9
  br label %241

113:                                              ; preds = %108
  %114 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 7, i8 noundef zeroext 47)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %114, i32 noundef 770) #9
  br label %241

118:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %119 = load i32, ptr @debug, align 4
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 262, i32 noundef 6, i32 noundef 1) #9
  br label %124

124:                                              ; preds = %122, %118
  %125 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %8, i16 noundef zeroext 262, ptr noundef nonnull %4) #8
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %125, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %134

129:                                              ; preds = %124
  %130 = load i8, ptr %4, align 1
  %131 = or i8 %130, 64
  store i8 %131, ptr %4, align 1
  %132 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 262, i8 noundef zeroext %131) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %127
  %135 = phi i32 [ %125, %127 ], [ %132, %129 ]
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %135, i32 noundef 773) #9
  br label %241

137:                                              ; preds = %129
  %138 = call fastcc i32 @lgdt3305_set_if(ptr noundef %8, ptr noundef %6)
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %138, i32 noundef 777) #9
  br label %241

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.lgdt3305_state, ptr %8, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.lgdt3305_config, ptr %144, i32 0, i32 6
  %146 = load i8, ptr %145, align 4
  %147 = lshr i8 %146, 1
  %148 = and i8 %147, 1
  %149 = load i32, ptr @debug, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %142
  %153 = zext i8 %148 to i32
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.lgdt3305_spectral_inversion, i32 noundef %153) #9
  br label %155

155:                                              ; preds = %152, %142
  %156 = load i32, ptr %41, align 4
  switch i32 %156, label %168 [
    i32 7, label %157
    i32 3, label %161
    i32 5, label %161
  ]

157:                                              ; preds = %155
  %158 = icmp eq i8 %148, 0
  %159 = select i1 %158, i8 121, i8 -7
  %160 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 294, i8 noundef zeroext %159) #8
  br label %165

161:                                              ; preds = %155, %155
  %162 = icmp eq i8 %148, 0
  %163 = select i1 %162, i8 -1, i8 -3
  %164 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 1284, i8 noundef zeroext %163) #8
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i32 [ %164, %161 ], [ %160, %157 ]
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165, %155
  %169 = phi i32 [ %166, %165 ], [ -22, %155 ]
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %169, i32 noundef 782) #9
  br label %241

171:                                              ; preds = %165
  %172 = load i32, ptr %41, align 4
  switch i32 %172, label %201 [
    i32 7, label %174
    i32 3, label %173
    i32 5, label %173
  ]

173:                                              ; preds = %171, %171
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ 1, %173 ], [ 0, %171 ]
  %176 = load i32, ptr @debug, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.lgdt3305_set_filter_extension, i32 noundef %175) #9
  %181 = load i32, ptr @debug, align 4
  br label %182

182:                                              ; preds = %179, %174
  %183 = phi i32 [ %181, %179 ], [ %176, %174 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %184 = and i32 %183, 2
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 1087, i32 noundef 2, i32 noundef %175) #9
  br label %188

188:                                              ; preds = %186, %182
  %189 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %8, i16 noundef zeroext 1087, ptr noundef nonnull %3) #8
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %189, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %201

193:                                              ; preds = %188
  %194 = load i8, ptr %3, align 1
  %195 = and i8 %194, -5
  %196 = trunc i32 %175 to i8
  %197 = shl nuw nsw i8 %196, 2
  %198 = or i8 %195, %197
  store i8 %198, ptr %3, align 1
  %199 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 1087, i8 noundef zeroext %198) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %193, %191, %171
  %202 = phi i32 [ %199, %193 ], [ %189, %191 ], [ -22, %171 ]
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %202, i32 noundef 786) #9
  br label %241

204:                                              ; preds = %193
  %205 = load i32, ptr %41, align 4
  %206 = getelementptr inbounds %struct.lgdt3305_state, ptr %8, i32 0, i32 3
  store i32 %205, ptr %206, align 4
  %207 = load ptr, ptr %143, align 4
  %208 = getelementptr inbounds %struct.lgdt3305_config, ptr %207, i32 0, i32 7
  %209 = load i32, ptr %208, align 4
  %210 = load i32, ptr @debug, align 4
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %204
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.lgdt3305_mpeg_mode, i32 noundef %209) #9
  %215 = load i32, ptr @debug, align 4
  br label %216

216:                                              ; preds = %213, %204
  %217 = phi i32 [ %215, %213 ], [ %210, %204 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %218 = and i32 %217, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef 1294, i32 noundef 5, i32 noundef %209) #9
  br label %222

222:                                              ; preds = %220, %216
  %223 = call fastcc i32 @lgdt3305_read_reg(ptr noundef %8, i16 noundef zeroext 1294, ptr noundef nonnull %2) #8
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_reg_bit, i32 noundef %223, i32 noundef 169) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %236

227:                                              ; preds = %222
  %228 = load i8, ptr %2, align 1
  %229 = and i8 %228, -33
  %230 = trunc i32 %209 to i8
  %231 = shl i8 %230, 5
  %232 = and i8 %231, 32
  %233 = or i8 %229, %232
  store i8 %233, ptr %2, align 1
  %234 = call fastcc i32 @lgdt3305_write_reg(ptr noundef %8, i16 noundef zeroext 1294, i8 noundef zeroext %233) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %227, %225
  %237 = phi i32 [ %223, %225 ], [ %234, %227 ]
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgdt3305_set_parameters, i32 noundef %237, i32 noundef 792) #9
  br label %241

239:                                              ; preds = %227
  %240 = call fastcc i32 @lgdt3305_mpeg_mode_polarity(ptr noundef %8)
  br label %241

241:                                              ; preds = %239, %236, %201, %168, %140, %134, %116, %111, %106, %52, %38, %30
  %242 = phi i32 [ %240, %239 ], [ %22, %30 ], [ %36, %38 ], [ -22, %52 ], [ -22, %106 ], [ %109, %111 ], [ %114, %116 ], [ %135, %134 ], [ %138, %140 ], [ %169, %168 ], [ %202, %201 ], [ %237, %236 ]
  ret i32 %242
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 198541, i64 198568}
!10 = !{i64 199051, i64 199078, i64 199112, i64 199133}
