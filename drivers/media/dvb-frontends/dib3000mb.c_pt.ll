; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib3000mb.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib3000mb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mb_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mb_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mb_attach:\09\09\09\09\09"
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
%struct.dib3000_state = type { ptr, %struct.dib3000_config, %struct.dvb_frontend, i32, i32, i32, i32 }
%struct.dib3000_config = type { i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib_fe_xfer_ops = type { ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [73 x i8] c"parm=debug:set debugging level (1=info,2=xfer,4=setfe,8=getfe (|-able)).\00", section ".modinfo", align 1
@dib3000mb_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 3000M-B DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib3000mb_release, ptr null, ptr @dib3000mb_fe_init_nonmobile, ptr @dib3000mb_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib3000mb_set_frontend_and_tuner, ptr @dib3000mb_fe_get_tune_settings, ptr @dib3000mb_get_frontend, ptr @dib3000mb_read_status, ptr @dib3000mb_read_ber, ptr @dib3000mb_read_signal_strength, ptr @dib3000mb_read_snr, ptr @dib3000mb_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__UNIQUE_ID_author251 = internal constant [54 x i8] c"author=Patrick Boettcher, patrick.boettcher@posteo.de\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [45 x i8] c"description=DiBcom 3000M-B DVB-T demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_dib3000mb_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mb_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mb_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mb_attach to i32), ptr @__kstrtab_dib3000mb_attach, ptr @__kstrtabns_dib3000mb_attach }, section "___ksymtab+dib3000mb_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [33 x i8] c"\017dib3000mb: %s: i2c read error\0A\00", align 1
@__func__.dib3000_read_reg = private unnamed_addr constant [17 x i8] c"dib3000_read_reg\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"\017dib3000mb: %s: reading i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\017dib3000mb: %s: %s pid parsing\0A\00", align 1
@__func__.dib3000mb_pid_parse = private unnamed_addr constant [20 x i8] c"dib3000mb_pid_parse\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\013dib3000mb: while sending 0x%04x to 0x%04x.\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"\017dib3000mb: %s: writing i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\0A\00", align 1
@__func__.dib3000_write_reg = private unnamed_addr constant [18 x i8] c"dib3000_write_reg\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: %s fifo\0A\00", align 1
@__func__.dib3000mb_fifo_control = private unnamed_addr constant [23 x i8] c"dib3000mb_fifo_control\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\017dib3000mb: %s: dib3000mb is getting up.\0A\00", align 1
@__func__.dib3000mb_fe_init = private unnamed_addr constant [18 x i8] c"dib3000mb_fe_init\00", align 1
@dib3000mb_reg_impulse_noise = internal unnamed_addr constant [5 x i16] [i16 10, i16 11, i16 12, i16 15, i16 36], align 2
@dib3000mb_impulse_noise_values = internal unnamed_addr constant [4 x [5 x i16]] [[5 x i16] [i16 0, i16 4, i16 20, i16 511, i16 921], [5 x i16] [i16 1, i16 4, i16 20, i16 511, i16 891], [5 x i16] [i16 1, i16 4, i16 32, i16 445, i16 921], [5 x i16] [i16 0, i16 2, i16 10, i16 511, i16 921]], align 2
@dib3000mb_reg_agc_gain = internal unnamed_addr constant [14 x i16] [i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32], align 2
@dib3000mb_default_agc_gain = internal unnamed_addr constant [14 x i16] [i16 1, i16 -13107, i16 623, i16 128, i16 166, i16 195, i16 61, i16 1, i16 -11770, i16 -27525, i16 0, i16 90, i16 33, i16 23], align 2
@dib3000mb_reg_phase_noise = internal unnamed_addr constant [5 x i16] [i16 33, i16 34, i16 35, i16 37, i16 38], align 2
@dib3000mb_default_noise_phase = internal unnamed_addr constant [5 x i16] [i16 2, i16 544, i16 0, i16 5, i16 4], align 2
@dib3000mb_reg_agc_bandwidth = internal unnamed_addr constant [8 x i16] [i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50], align 2
@dib3000mb_agc_bandwidth_low = internal unnamed_addr constant [8 x i16] [i16 2088, i16 10, i16 2088, i16 10, i16 3448, i16 5, i16 3448, i16 5], align 2
@dib3000_seq = internal unnamed_addr constant [2 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 0, i16 1], [2 x i16] [i16 3, i16 9]], [2 x [2 x i16]] [[2 x i16] [i16 2, i16 5], [2 x i16] [i16 6, i16 11]]], align 2
@dib3000mb_reg_bandwidth = internal unnamed_addr constant [13 x i16] [i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67], align 2
@dib3000mb_bandwidth_8mhz = internal unnamed_addr constant [13 x i16] [i16 0, i16 25, i16 23600, i16 84, i16 -30560, i16 422, i16 -21728, i16 0, i16 1000, i16 0, i16 1010, i16 1, i16 -20272], align 2
@dib3000mb_reg_filter_coeffs = internal unnamed_addr constant [22 x i16] [i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 188, i16 189, i16 190, i16 191, i16 192, i16 194], align 2
@dib3000mb_filter_coeffs = internal unnamed_addr constant [22 x i16] [i16 226, i16 160, i16 29, i16 979, i16 998, i16 19, i16 22, i16 1019, i16 1006, i16 1022, i16 12, i16 6, i16 1017, i16 1017, i16 3, i16 6, i16 1019, i16 1021, i16 2, i16 3, i16 1, i16 0], align 2
@.str.9 = private unnamed_addr constant [45 x i8] c"\017dib3000mb: %s: dib3000mb is going to bed.\0A\00", align 1
@__func__.dib3000mb_sleep = private unnamed_addr constant [16 x i8] c"dib3000mb_sleep\00", align 1
@dib3000mb_bandwidth_7mhz = internal unnamed_addr constant [13 x i16] [i16 0, i16 28, i16 -1115, i16 96, i16 -25563, i16 483, i16 3255, i16 0, i16 1000, i16 0, i16 1010, i16 1, i16 -20272], align 2
@dib3000mb_bandwidth_6mhz = internal unnamed_addr constant [13 x i16] [i16 0, i16 33, i16 -12224, i16 112, i16 -18901, i16 563, i16 -28971, i16 0, i16 1000, i16 0, i16 1010, i16 1, i16 -20272], align 2
@.str.10 = private unnamed_addr constant [39 x i8] c"\013dib3000mb: unknown bandwidth value.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\017dib3000mb: %s: bandwidth: %d MHZ\0A\00", align 1
@__func__.dib3000mb_set_frontend = private unnamed_addr constant [23 x i8] c"dib3000mb_set_frontend\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\017dib3000mb: %s: transmission mode: 2k\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"\017dib3000mb: %s: transmission mode: 8k\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\017dib3000mb: %s: transmission mode: auto\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\017dib3000mb: %s: guard 1_32\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"\017dib3000mb: %s: guard 1_16\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\017dib3000mb: %s: guard 1_8\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\017dib3000mb: %s: guard 1_4\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"\017dib3000mb: %s: guard auto\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"\017dib3000mb: %s: inversion off\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"\017dib3000mb: %s: inversion auto\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\017dib3000mb: %s: inversion on\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\017dib3000mb: %s: modulation: qpsk\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"\017dib3000mb: %s: modulation: qam16\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"\017dib3000mb: %s: modulation: qam64\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"\017dib3000mb: %s: hierarchy: none\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: hierarchy: alpha=1\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: hierarchy: alpha=2\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: hierarchy: alpha=4\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\017dib3000mb: %s: hierarchy: alpha=auto\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"\017dib3000mb: %s: fec: 1_2\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"\017dib3000mb: %s: fec: 2_3\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"\017dib3000mb: %s: fec: 3_4\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"\017dib3000mb: %s: fec: 5_6\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"\017dib3000mb: %s: fec: 7_8\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"\017dib3000mb: %s: fec: none\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"\017dib3000mb: %s: fec: auto\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: seq? %d\0A\00", align 1
@dib3000mb_agc_bandwidth_high = internal unnamed_addr constant [8 x i16] [i16 2349, i16 5, i16 2349, i16 5, i16 2586, i16 2, i16 2586, i16 2], align 2
@.str.39 = private unnamed_addr constant [38 x i8] c"\017dib3000mb: %s: autosearch enabled.\0A\00", align 1
@.str.40 = private unnamed_addr constant [67 x i8] c"\017dib3000mb: %s: search_state after autosearch %d after %d checks\0A\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"\017dib3000mb: %s: reading tuning data from frontend succeeded.\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"\017dib3000mb: %s: auto search succeeded\0A\00", align 1
@__func__.dib3000_search_status = private unnamed_addr constant [22 x i8] c"dib3000_search_status\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"\017dib3000mb: %s: auto search not successful\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: auto search failed\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"\017dib3000mb: %s: DDS_VAL: %x %x %x\0A\00", align 1
@__func__.dib3000mb_get_frontend = private unnamed_addr constant [23 x i8] c"dib3000mb_get_frontend\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: DDS_FREQ: %x %x %x\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"\017dib3000mb: %s: inversion %d %d, %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"\017dib3000mb: %s: QPSK\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"\017dib3000mb: %s: QAM16\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"\017dib3000mb: %s: QAM64\0A\00", align 1
@.str.51 = private unnamed_addr constant [60 x i8] c"\013dib3000mb: Unexpected constellation returned by TPS (%d)\0A\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: TPS: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: HRCH ON\0A\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"\017dib3000mb: %s: HIERARCHY_NONE\0A\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"\017dib3000mb: %s: HIERARCHY_1\0A\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"\017dib3000mb: %s: HIERARCHY_2\0A\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"\017dib3000mb: %s: HIERARCHY_4\0A\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"\013dib3000mb: Unexpected ALPHA value returned by TPS (%d)\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"\017dib3000mb: %s: HRCH OFF\0A\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: FEC_1_2\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: FEC_2_3\0A\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: FEC_3_4\0A\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: FEC_5_6\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"\017dib3000mb: %s: FEC_7_8\0A\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"\013dib3000mb: Unexpected FEC returned by TPS (%d)\0A\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_32\0A\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_16\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_8\0A\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_4\0A\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"\013dib3000mb: Unexpected Guard Time returned by TPS (%d)\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"\017dib3000mb: %s: TRANSMISSION_MODE_2K\0A\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"\017dib3000mb: %s: TRANSMISSION_MODE_8K\0A\00", align 1
@.str.73 = private unnamed_addr constant [62 x i8] c"\013dib3000mb: unexpected transmission mode return by TPS (%d)\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"\017dib3000mb: %s: actual status is %2x\0A\00", align 1
@__func__.dib3000mb_read_status = private unnamed_addr constant [22 x i8] c"dib3000mb_read_status\00", align 1
@.str.75 = private unnamed_addr constant [110 x i8] c"\017dib3000mb: %s: autoval: tps: %d, qam: %d, hrch: %d, alpha: %d, hp: %d, lp: %d, guard: %d, fft: %d cell: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_dib3000mb_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib3000mb_attach(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1064) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  store ptr %1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.dib3000_state, ptr %5, i32 0, i32 1
  %9 = load i8, ptr %0, align 1
  store i8 %9, ptr %8, align 4
  %10 = tail call fastcc i32 @dib3000_read_reg(ptr noundef nonnull %5, i16 noundef zeroext 1025)
  %11 = icmp eq i32 %10, 435
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @dib3000_read_reg(ptr noundef nonnull %5, i16 noundef zeroext 1026)
  %14 = icmp eq i32 %13, 12288
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dib3000_state, ptr %5, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dib3000_state, ptr %5, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %17, ptr noundef nonnull align 4 dereferenceable(544) @dib3000mb_ops, i32 544, i1 false)
  %18 = getelementptr inbounds %struct.dib3000_state, ptr %5, i32 0, i32 2, i32 3
  store ptr %5, ptr %18, align 8
  store ptr @dib3000mb_pid_parse, ptr %2, align 4
  %19 = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %2, i32 0, i32 1
  store ptr @dib3000mb_fifo_control, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %2, i32 0, i32 2
  store ptr @dib3000mb_pid_control, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %2, i32 0, i32 3
  store ptr @dib3000mb_tuner_pass_ctrl, ptr %21, align 4
  br label %23

22:                                               ; preds = %12, %7, %3
  tail call void @kfree(ptr noundef %5) #10
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi ptr [ null, %22 ], [ %16, %15 ]
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib3000_read_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  %6 = zext i16 %1 to i32
  %7 = lshr i16 %1, 8
  %8 = trunc i16 %7 to i8
  %9 = or i8 %8, -128
  store i8 %9, ptr %3, align 2
  %10 = getelementptr inbounds i8, ptr %3, i32 1
  %11 = trunc i16 %1 to i8
  store i8 %11, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.dib3000_state, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %15, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr @debug, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib3000_read_reg) #11
  br label %32

32:                                               ; preds = %30, %26, %2
  %33 = load i32, ptr @debug, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load i8, ptr %4, align 2
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib3000_read_reg, i32 noundef %6, i32 noundef %6, i32 noundef %43, i32 noundef %43) #11
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i8, ptr %4, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_pid_parse(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, ptr @.str.4, ptr @.str.3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dib3000mb_pid_parse, ptr noundef nonnull %12) #11
  %14 = load i32, ptr @debug, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ %16, %10 ], [ true, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i8 0, ptr %3, align 4
  %19 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -112, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %3, i32 2
  %21 = lshr i32 %1, 8
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %20, align 2
  %23 = getelementptr inbounds i8, ptr %3, i32 3
  %24 = trunc i32 %1 to i8
  store i8 %24, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %25, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.dib3000_state, ptr %6, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %30, align 4
  br i1 %18, label %34, label %31

31:                                               ; preds = %17
  %32 = and i32 %1, 65535
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 144, i32 noundef 144, i32 noundef %32, i32 noundef %32) #11
  br label %34

34:                                               ; preds = %31, %17
  %35 = load ptr, ptr %6, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %4, i32 noundef 1) #10
  %37 = icmp eq i32 %36, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef 144) #11
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ -121, %38 ], [ 0, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_fifo_control(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, ptr @.str.4, ptr @.str.3
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dib3000mb_fifo_control, ptr noundef nonnull %14) #11
  br label %16

16:                                               ; preds = %12, %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i8 0, ptr %5, align 4
  %19 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -111, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %20, align 2
  %21 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %22 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %22, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.dib3000_state, ptr %8, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  %28 = load i32, ptr @debug, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 145, i32 noundef 145, i32 noundef 0, i32 noundef 0) #11
  br label %33

33:                                               ; preds = %31, %18
  %34 = load ptr, ptr %8, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br i1 %36, label %59, label %56

37:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i8 0, ptr %3, align 4
  %38 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -111, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %39, align 2
  %40 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 1, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %41 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %41, align 4, !annotation !8
  %42 = getelementptr inbounds %struct.dib3000_state, ptr %8, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %4, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %46, align 4
  %47 = load i32, ptr @debug, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 145, i32 noundef 145, i32 noundef 1, i32 noundef 1) #11
  br label %52

52:                                               ; preds = %50, %37
  %53 = load ptr, ptr %8, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %4, i32 noundef 1) #10
  %55 = icmp eq i32 %54, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %55, label %59, label %56

56:                                               ; preds = %52, %33
  %57 = phi i32 [ 0, %33 ], [ 1, %52 ]
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %57, i32 noundef 145) #11
  br label %59

59:                                               ; preds = %56, %52, %33
  %60 = phi i32 [ 0, %52 ], [ 0, %33 ], [ -121, %56 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_pid_control(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %3, 0
  %10 = or i32 %2, 8192
  %11 = select i1 %9, i32 0, i32 %10
  %12 = add i32 %1, 153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %13 = lshr i32 %12, 8
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %5, align 4
  %15 = getelementptr inbounds i8, ptr %5, i32 1
  %16 = trunc i32 %12 to i8
  store i8 %16, ptr %15, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 2
  %18 = lshr i32 %11, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %17, align 2
  %20 = getelementptr inbounds i8, ptr %5, i32 3
  %21 = trunc i32 %11 to i8
  store i8 %21, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %22 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %22, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.dib3000_state, ptr %8, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  %28 = load i32, ptr @debug, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = and i32 %11, 65535
  %33 = and i32 %12, 65535
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %33, i32 noundef %33, i32 noundef %32, i32 noundef %32) #11
  br label %35

35:                                               ; preds = %31, %4
  %36 = load ptr, ptr %8, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %6, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %12) #11
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ -121, %39 ], [ 0, %35 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_tuner_pass_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %1, 0
  %11 = zext i8 %2 to i32
  %12 = shl nuw nsw i32 %11, 8
  br i1 %10, label %32, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 4, ptr %6, align 4
  %14 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 65, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %2, ptr %15, align 2
  %16 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %17 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.dib3000_state, ptr %9, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %7, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %22, align 4
  %23 = load i32, ptr @debug, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1089, i32 noundef 1089, i32 noundef %12, i32 noundef %12) #11
  br label %28

28:                                               ; preds = %26, %13
  %29 = load ptr, ptr %9, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %7, i32 noundef 1) #10
  %31 = icmp eq i32 %30, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br i1 %31, label %55, label %52

32:                                               ; preds = %3
  %33 = or i32 %12, 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 4, ptr %4, align 4
  %34 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 65, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %35, align 2
  %36 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 -128, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %37, align 4, !annotation !8
  %38 = getelementptr inbounds %struct.dib3000_state, ptr %9, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %5, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %42, align 4
  %43 = load i32, ptr @debug, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1089, i32 noundef 1089, i32 noundef %33, i32 noundef %33) #11
  br label %48

48:                                               ; preds = %46, %32
  %49 = load ptr, ptr %9, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 1) #10
  %51 = icmp eq i32 %50, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %28
  %53 = phi i32 [ %12, %28 ], [ %33, %48 ]
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %53, i32 noundef 1089) #11
  br label %55

55:                                               ; preds = %52, %48, %28
  %56 = phi i32 [ 0, %48 ], [ 0, %28 ], [ -121, %52 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib3000_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  store i8 %7, ptr %4, align 4
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  %9 = trunc i16 %1 to i8
  store i8 %9, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %4, i32 2
  %11 = lshr i16 %2, 8
  %12 = trunc i16 %11 to i8
  store i8 %12, ptr %10, align 2
  %13 = getelementptr inbounds i8, ptr %4, i32 3
  %14 = trunc i16 %2 to i8
  store i8 %14, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.dib3000_state, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load i32, ptr @debug, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = zext i16 %2 to i32
  %27 = zext i16 %1 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %27, i32 noundef %27, i32 noundef %26, i32 noundef %26) #11
  br label %29

29:                                               ; preds = %25, %3
  %30 = load ptr, ptr %0, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 1) #10
  %32 = icmp eq i32 %31, 1
  %33 = select i1 %32, i32 0, i32 -121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib3000mb_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_fe_init_nonmobile(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [4 x i8], align 4
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [4 x i8], align 4
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [4 x i8], align 4
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = alloca [4 x i8], align 4
  %19 = alloca [1 x %struct.i2c_msg], align 4
  %20 = alloca [4 x i8], align 4
  %21 = alloca [1 x %struct.i2c_msg], align 4
  %22 = alloca [4 x i8], align 4
  %23 = alloca [1 x %struct.i2c_msg], align 4
  %24 = alloca [4 x i8], align 4
  %25 = alloca [1 x %struct.i2c_msg], align 4
  %26 = alloca [4 x i8], align 4
  %27 = alloca [1 x %struct.i2c_msg], align 4
  %28 = alloca [4 x i8], align 4
  %29 = alloca [1 x %struct.i2c_msg], align 4
  %30 = alloca [4 x i8], align 4
  %31 = alloca [1 x %struct.i2c_msg], align 4
  %32 = alloca [4 x i8], align 4
  %33 = alloca [1 x %struct.i2c_msg], align 4
  %34 = alloca [4 x i8], align 4
  %35 = alloca [1 x %struct.i2c_msg], align 4
  %36 = alloca [4 x i8], align 4
  %37 = alloca [1 x %struct.i2c_msg], align 4
  %38 = alloca [4 x i8], align 4
  %39 = alloca [1 x %struct.i2c_msg], align 4
  %40 = alloca [4 x i8], align 4
  %41 = alloca [1 x %struct.i2c_msg], align 4
  %42 = alloca [4 x i8], align 4
  %43 = alloca [1 x %struct.i2c_msg], align 4
  %44 = alloca [4 x i8], align 4
  %45 = alloca [1 x %struct.i2c_msg], align 4
  %46 = alloca [4 x i8], align 4
  %47 = alloca [1 x %struct.i2c_msg], align 4
  %48 = alloca [4 x i8], align 4
  %49 = alloca [1 x %struct.i2c_msg], align 4
  %50 = alloca [4 x i8], align 4
  %51 = alloca [1 x %struct.i2c_msg], align 4
  %52 = alloca [4 x i8], align 4
  %53 = alloca [1 x %struct.i2c_msg], align 4
  %54 = alloca [4 x i8], align 4
  %55 = alloca [1 x %struct.i2c_msg], align 4
  %56 = alloca [4 x i8], align 4
  %57 = alloca [1 x %struct.i2c_msg], align 4
  %58 = alloca [4 x i8], align 4
  %59 = alloca [1 x %struct.i2c_msg], align 4
  %60 = alloca [4 x i8], align 4
  %61 = alloca [1 x %struct.i2c_msg], align 4
  %62 = alloca [4 x i8], align 4
  %63 = alloca [1 x %struct.i2c_msg], align 4
  %64 = alloca [4 x i8], align 4
  %65 = alloca [1 x %struct.i2c_msg], align 4
  %66 = alloca [4 x i8], align 4
  %67 = alloca [1 x %struct.i2c_msg], align 4
  %68 = alloca [4 x i8], align 4
  %69 = alloca [1 x %struct.i2c_msg], align 4
  %70 = alloca [4 x i8], align 4
  %71 = alloca [1 x %struct.i2c_msg], align 4
  %72 = alloca [4 x i8], align 4
  %73 = alloca [1 x %struct.i2c_msg], align 4
  %74 = alloca [4 x i8], align 4
  %75 = alloca [1 x %struct.i2c_msg], align 4
  %76 = alloca [4 x i8], align 4
  %77 = alloca [1 x %struct.i2c_msg], align 4
  %78 = alloca [4 x i8], align 4
  %79 = alloca [1 x %struct.i2c_msg], align 4
  %80 = alloca [4 x i8], align 4
  %81 = alloca [1 x %struct.i2c_msg], align 4
  %82 = alloca [4 x i8], align 4
  %83 = alloca [1 x %struct.i2c_msg], align 4
  %84 = alloca [4 x i8], align 4
  %85 = alloca [1 x %struct.i2c_msg], align 4
  %86 = alloca [4 x i8], align 4
  %87 = alloca [1 x %struct.i2c_msg], align 4
  %88 = alloca [4 x i8], align 4
  %89 = alloca [1 x %struct.i2c_msg], align 4
  %90 = alloca [4 x i8], align 4
  %91 = alloca [1 x %struct.i2c_msg], align 4
  %92 = alloca [4 x i8], align 4
  %93 = alloca [1 x %struct.i2c_msg], align 4
  %94 = alloca [4 x i8], align 4
  %95 = alloca [1 x %struct.i2c_msg], align 4
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr @debug, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %1
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib3000mb_fe_init) #11
  %103 = load i32, ptr @debug, align 4
  br label %104

104:                                              ; preds = %101, %1
  %105 = phi i32 [ %103, %101 ], [ %98, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %94) #10
  store i8 4, ptr %94, align 4
  %106 = getelementptr inbounds i8, ptr %94, i32 1
  store i8 4, ptr %106, align 1
  %107 = getelementptr inbounds i8, ptr %94, i32 2
  store i8 0, ptr %107, align 2
  %108 = getelementptr inbounds i8, ptr %94, i32 3
  store i8 0, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %95) #10
  %109 = getelementptr inbounds i8, ptr %95, i32 4
  store i32 4, ptr %109, align 4, !annotation !8
  %110 = getelementptr inbounds %struct.dib3000_state, ptr %97, i32 0, i32 1
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %95, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 3
  store ptr %94, ptr %114, align 4
  %115 = and i32 %105, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %104
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1028, i32 noundef 1028, i32 noundef 0, i32 noundef 0) #11
  br label %119

119:                                              ; preds = %117, %104
  %120 = load ptr, ptr %97, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %95, i32 noundef 1) #10
  %122 = icmp eq i32 %121, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %95) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %94) #10
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1028) #11
  br label %1186

125:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %92) #10
  store i8 0, ptr %92, align 4
  %126 = getelementptr inbounds i8, ptr %92, i32 1
  store i8 0, ptr %126, align 1
  %127 = getelementptr inbounds i8, ptr %92, i32 2
  store i8 0, ptr %127, align 2
  %128 = getelementptr inbounds i8, ptr %92, i32 3
  store i8 8, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %93) #10
  %129 = getelementptr inbounds i8, ptr %93, i32 4
  store i32 4, ptr %129, align 4, !annotation !8
  %130 = load i8, ptr %110, align 4
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %93, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 1
  store i16 0, ptr %132, align 2
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 3
  store ptr %92, ptr %133, align 4
  %134 = load i32, ptr @debug, align 4
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 8) #11
  br label %139

139:                                              ; preds = %137, %125
  %140 = load ptr, ptr %97, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %93, i32 noundef 1) #10
  %142 = icmp eq i32 %141, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %93) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %92) #10
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef 0) #11
  br label %1186

145:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %90) #10
  store i8 4, ptr %90, align 4
  %146 = getelementptr inbounds i8, ptr %90, i32 1
  store i8 0, ptr %146, align 1
  %147 = getelementptr inbounds i8, ptr %90, i32 2
  store i8 -127, ptr %147, align 2
  %148 = getelementptr inbounds i8, ptr %90, i32 3
  store i8 44, ptr %148, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %91) #10
  %149 = getelementptr inbounds i8, ptr %91, i32 4
  store i32 4, ptr %149, align 4, !annotation !8
  %150 = load i8, ptr %110, align 4
  %151 = zext i8 %150 to i16
  store i16 %151, ptr %91, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 1
  store i16 0, ptr %152, align 2
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 3
  store ptr %90, ptr %153, align 4
  %154 = load i32, ptr @debug, align 4
  %155 = and i32 %154, 2
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %145
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1024, i32 noundef 1024, i32 noundef 33068, i32 noundef 33068) #11
  br label %159

159:                                              ; preds = %157, %145
  %160 = load ptr, ptr %97, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %91, i32 noundef 1) #10
  %162 = icmp eq i32 %161, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %91) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %90) #10
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 33068, i32 noundef 1024) #11
  br label %1186

165:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %88) #10
  store i8 4, ptr %88, align 4
  %166 = getelementptr inbounds i8, ptr %88, i32 1
  store i8 0, ptr %166, align 1
  %167 = getelementptr inbounds i8, ptr %88, i32 2
  store i8 0, ptr %167, align 2
  %168 = getelementptr inbounds i8, ptr %88, i32 3
  store i8 0, ptr %168, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %89) #10
  %169 = getelementptr inbounds i8, ptr %89, i32 4
  store i32 4, ptr %169, align 4, !annotation !8
  %170 = load i8, ptr %110, align 4
  %171 = zext i8 %170 to i16
  store i16 %171, ptr %89, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  store i16 0, ptr %172, align 2
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  store ptr %88, ptr %173, align 4
  %174 = load i32, ptr @debug, align 4
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %165
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1024, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  br label %179

179:                                              ; preds = %177, %165
  %180 = load ptr, ptr %97, align 4
  %181 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %89, i32 noundef 1) #10
  %182 = icmp eq i32 %181, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %89) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %88) #10
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1024) #11
  br label %1186

185:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %86) #10
  store i8 4, ptr %86, align 4
  %186 = getelementptr inbounds i8, ptr %86, i32 1
  store i8 3, ptr %186, align 1
  %187 = getelementptr inbounds i8, ptr %86, i32 2
  store i8 -112, ptr %187, align 2
  %188 = getelementptr inbounds i8, ptr %86, i32 3
  store i8 0, ptr %188, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %87) #10
  %189 = getelementptr inbounds i8, ptr %87, i32 4
  store i32 4, ptr %189, align 4, !annotation !8
  %190 = load i8, ptr %110, align 4
  %191 = zext i8 %190 to i16
  store i16 %191, ptr %87, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  store i16 0, ptr %192, align 2
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 3
  store ptr %86, ptr %193, align 4
  %194 = load i32, ptr @debug, align 4
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %185
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1027, i32 noundef 1027, i32 noundef 36864, i32 noundef 36864) #11
  br label %199

199:                                              ; preds = %197, %185
  %200 = load ptr, ptr %97, align 4
  %201 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %87, i32 noundef 1) #10
  %202 = icmp eq i32 %201, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %86) #10
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 36864, i32 noundef 1027) #11
  br label %1186

205:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %84) #10
  store i8 4, ptr %84, align 4
  %206 = getelementptr inbounds i8, ptr %84, i32 1
  store i8 5, ptr %206, align 1
  %207 = getelementptr inbounds i8, ptr %84, i32 2
  store i8 0, ptr %207, align 2
  %208 = getelementptr inbounds i8, ptr %84, i32 3
  store i8 1, ptr %208, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #10
  %209 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 4, ptr %209, align 4, !annotation !8
  %210 = load i8, ptr %110, align 4
  %211 = zext i8 %210 to i16
  store i16 %211, ptr %85, align 4
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %212, align 2
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %84, ptr %213, align 4
  %214 = load i32, ptr @debug, align 4
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %205
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1029, i32 noundef 1029, i32 noundef 1, i32 noundef 1) #11
  br label %219

219:                                              ; preds = %217, %205
  %220 = load ptr, ptr %97, align 4
  %221 = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %85, i32 noundef 1) #10
  %222 = icmp eq i32 %221, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %84) #10
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1029) #11
  br label %1186

225:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %82) #10
  store i8 0, ptr %82, align 4
  %226 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 6, ptr %226, align 1
  %227 = getelementptr inbounds i8, ptr %82, i32 2
  store i8 0, ptr %227, align 2
  %228 = getelementptr inbounds i8, ptr %82, i32 3
  store i8 -78, ptr %228, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #10
  %229 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 4, ptr %229, align 4, !annotation !8
  %230 = load i8, ptr %110, align 4
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %83, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %232, align 2
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %82, ptr %233, align 4
  %234 = load i32, ptr @debug, align 4
  %235 = and i32 %234, 2
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %225
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 6, i32 noundef 6, i32 noundef 178, i32 noundef 178) #11
  br label %239

239:                                              ; preds = %237, %225
  %240 = load ptr, ptr %97, align 4
  %241 = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %83, i32 noundef 1) #10
  %242 = icmp eq i32 %241, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %82) #10
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 178, i32 noundef 6) #11
  br label %1186

245:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %80) #10
  store i8 0, ptr %80, align 4
  %246 = getelementptr inbounds i8, ptr %80, i32 1
  store i8 7, ptr %246, align 1
  %247 = getelementptr inbounds i8, ptr %80, i32 2
  store i8 35, ptr %247, align 2
  %248 = getelementptr inbounds i8, ptr %80, i32 3
  store i8 30, ptr %248, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #10
  %249 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 4, ptr %249, align 4, !annotation !8
  %250 = load i8, ptr %110, align 4
  %251 = zext i8 %250 to i16
  store i16 %251, ptr %81, align 4
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %252, align 2
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %253, align 4
  %254 = load i32, ptr @debug, align 4
  %255 = and i32 %254, 2
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %245
  %258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 7, i32 noundef 7, i32 noundef 8990, i32 noundef 8990) #11
  br label %259

259:                                              ; preds = %257, %245
  %260 = load ptr, ptr %97, align 4
  %261 = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %81, i32 noundef 1) #10
  %262 = icmp eq i32 %261, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %80) #10
  br i1 %262, label %263, label %275

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, ptr %78, i32 1
  %265 = getelementptr inbounds i8, ptr %78, i32 2
  %266 = getelementptr inbounds i8, ptr %78, i32 3
  %267 = getelementptr inbounds i8, ptr %79, i32 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  %269 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %78) #10
  store i8 0, ptr %78, align 4
  store i8 8, ptr %264, align 1
  store i8 0, ptr %265, align 2
  store i8 -88, ptr %266, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #10
  store i32 4, ptr %267, align 4, !annotation !8
  %270 = load i8, ptr %110, align 4
  %271 = zext i8 %270 to i16
  store i16 %271, ptr %79, align 4
  store i16 0, ptr %268, align 2
  store ptr %78, ptr %269, align 4
  %272 = load i32, ptr @debug, align 4
  %273 = and i32 %272, 2
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %298, label %296

275:                                              ; preds = %259
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 8990, i32 noundef 7) #11
  br label %1186

277:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %78) #10
  store i8 0, ptr %78, align 4
  store i8 9, ptr %264, align 1
  store i8 -2, ptr %265, align 2
  store i8 -116, ptr %266, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #10
  store i32 4, ptr %267, align 4, !annotation !8
  %278 = load i8, ptr %110, align 4
  %279 = zext i8 %278 to i16
  store i16 %279, ptr %79, align 4
  store i16 0, ptr %268, align 2
  store ptr %78, ptr %269, align 4
  %280 = load i32, ptr @debug, align 4
  %281 = and i32 %280, 2
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %277
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 9, i32 noundef 9, i32 noundef 65164, i32 noundef 65164) #11
  br label %285

285:                                              ; preds = %283, %277
  %286 = load ptr, ptr %97, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %79, i32 noundef 1) #10
  %288 = icmp eq i32 %287, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %78) #10
  br i1 %288, label %289, label %302

289:                                              ; preds = %285
  %290 = getelementptr inbounds i8, ptr %76, i32 1
  %291 = getelementptr inbounds i8, ptr %76, i32 2
  %292 = getelementptr inbounds i8, ptr %76, i32 3
  %293 = getelementptr inbounds i8, ptr %77, i32 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  br label %316

296:                                              ; preds = %263
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 8, i32 noundef 8, i32 noundef 168, i32 noundef 168) #11
  br label %298

298:                                              ; preds = %296, %263
  %299 = load ptr, ptr %97, align 4
  %300 = call i32 @i2c_transfer(ptr noundef %299, ptr noundef nonnull %79, i32 noundef 1) #10
  %301 = icmp eq i32 %300, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %78) #10
  br i1 %301, label %277, label %302

302:                                              ; preds = %298, %285
  %303 = phi i32 [ 8, %298 ], [ 9, %285 ]
  %304 = phi i32 [ 168, %298 ], [ 65164, %285 ]
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %304, i32 noundef %303) #11
  br label %1186

306:                                              ; preds = %337
  %307 = add nuw nsw i32 %317, 1
  %308 = icmp eq i32 %307, 5
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = getelementptr inbounds i8, ptr %74, i32 1
  %311 = getelementptr inbounds i8, ptr %74, i32 2
  %312 = getelementptr inbounds i8, ptr %74, i32 3
  %313 = getelementptr inbounds i8, ptr %75, i32 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  br label %348

316:                                              ; preds = %306, %289
  %317 = phi i32 [ 0, %289 ], [ %307, %306 ]
  %318 = getelementptr [5 x i16], ptr @dib3000mb_reg_impulse_noise, i32 0, i32 %317
  %319 = load i16, ptr %318, align 2
  %320 = getelementptr [5 x i16], ptr @dib3000mb_impulse_noise_values, i32 0, i32 %317
  %321 = load i16, ptr %320, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %76) #10
  %322 = lshr i16 %319, 8
  %323 = trunc i16 %322 to i8
  store i8 %323, ptr %76, align 4
  %324 = trunc i16 %319 to i8
  store i8 %324, ptr %290, align 1
  %325 = lshr i16 %321, 8
  %326 = trunc i16 %325 to i8
  store i8 %326, ptr %291, align 2
  %327 = trunc i16 %321 to i8
  store i8 %327, ptr %292, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %77) #10
  store i32 4, ptr %293, align 4, !annotation !8
  %328 = load i8, ptr %110, align 4
  %329 = zext i8 %328 to i16
  store i16 %329, ptr %77, align 4
  store i16 0, ptr %294, align 2
  store ptr %76, ptr %295, align 4
  %330 = load i32, ptr @debug, align 4
  %331 = and i32 %330, 2
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %316
  %334 = zext i16 %321 to i32
  %335 = zext i16 %319 to i32
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %335, i32 noundef %335, i32 noundef %334, i32 noundef %334) #11
  br label %337

337:                                              ; preds = %333, %316
  %338 = load ptr, ptr %97, align 4
  %339 = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %77, i32 noundef 1) #10
  %340 = icmp eq i32 %339, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %77) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %76) #10
  br i1 %340, label %306, label %341

341:                                              ; preds = %337
  %342 = zext i16 %321 to i32
  %343 = zext i16 %319 to i32
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %342, i32 noundef %343) #11
  br label %1186

345:                                              ; preds = %369
  %346 = add nuw nsw i32 %349, 1
  %347 = icmp eq i32 %346, 14
  br i1 %347, label %377, label %348

348:                                              ; preds = %345, %309
  %349 = phi i32 [ 0, %309 ], [ %346, %345 ]
  %350 = getelementptr [14 x i16], ptr @dib3000mb_reg_agc_gain, i32 0, i32 %349
  %351 = load i16, ptr %350, align 2
  %352 = getelementptr [14 x i16], ptr @dib3000mb_default_agc_gain, i32 0, i32 %349
  %353 = load i16, ptr %352, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %74) #10
  %354 = lshr i16 %351, 8
  %355 = trunc i16 %354 to i8
  store i8 %355, ptr %74, align 4
  %356 = trunc i16 %351 to i8
  store i8 %356, ptr %310, align 1
  %357 = lshr i16 %353, 8
  %358 = trunc i16 %357 to i8
  store i8 %358, ptr %311, align 2
  %359 = trunc i16 %353 to i8
  store i8 %359, ptr %312, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #10
  store i32 4, ptr %313, align 4, !annotation !8
  %360 = load i8, ptr %110, align 4
  %361 = zext i8 %360 to i16
  store i16 %361, ptr %75, align 4
  store i16 0, ptr %314, align 2
  store ptr %74, ptr %315, align 4
  %362 = load i32, ptr @debug, align 4
  %363 = and i32 %362, 2
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %369, label %365

365:                                              ; preds = %348
  %366 = zext i16 %353 to i32
  %367 = zext i16 %351 to i32
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %367, i32 noundef %367, i32 noundef %366, i32 noundef %366) #11
  br label %369

369:                                              ; preds = %365, %348
  %370 = load ptr, ptr %97, align 4
  %371 = call i32 @i2c_transfer(ptr noundef %370, ptr noundef nonnull %75, i32 noundef 1) #10
  %372 = icmp eq i32 %371, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %74) #10
  br i1 %372, label %345, label %373

373:                                              ; preds = %369
  %374 = zext i16 %353 to i32
  %375 = zext i16 %351 to i32
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %374, i32 noundef %375) #11
  br label %1186

377:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %72) #10
  store i8 0, ptr %72, align 4
  %378 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 87, ptr %378, align 1
  %379 = getelementptr inbounds i8, ptr %72, i32 2
  store i8 0, ptr %379, align 2
  %380 = getelementptr inbounds i8, ptr %72, i32 3
  store i8 0, ptr %380, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #10
  %381 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 4, ptr %381, align 4, !annotation !8
  %382 = load i8, ptr %110, align 4
  %383 = zext i8 %382 to i16
  store i16 %383, ptr %73, align 4
  %384 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %384, align 2
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %385, align 4
  %386 = load i32, ptr @debug, align 4
  %387 = and i32 %386, 2
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %377
  %390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 87, i32 noundef 87, i32 noundef 0, i32 noundef 0) #11
  br label %391

391:                                              ; preds = %389, %377
  %392 = load ptr, ptr %97, align 4
  %393 = call i32 @i2c_transfer(ptr noundef %392, ptr noundef nonnull %73, i32 noundef 1) #10
  %394 = icmp eq i32 %393, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %72) #10
  br i1 %394, label %395, label %402

395:                                              ; preds = %391
  %396 = getelementptr inbounds i8, ptr %70, i32 1
  %397 = getelementptr inbounds i8, ptr %70, i32 2
  %398 = getelementptr inbounds i8, ptr %70, i32 3
  %399 = getelementptr inbounds i8, ptr %71, i32 4
  %400 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  %401 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  br label %419

402:                                              ; preds = %391
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 87) #11
  br label %1186

404:                                              ; preds = %440
  %405 = add nuw nsw i32 %420, 1
  %406 = icmp eq i32 %405, 5
  br i1 %406, label %407, label %419

407:                                              ; preds = %404
  %408 = getelementptr inbounds i8, ptr %68, i32 1
  %409 = getelementptr inbounds i8, ptr %68, i32 2
  %410 = getelementptr inbounds i8, ptr %68, i32 3
  %411 = getelementptr inbounds i8, ptr %69, i32 4
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %68) #10
  store i8 0, ptr %68, align 4
  store i8 39, ptr %408, align 1
  store i8 0, ptr %409, align 2
  store i8 -121, ptr %410, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #10
  store i32 4, ptr %411, align 4, !annotation !8
  %414 = load i8, ptr %110, align 4
  %415 = zext i8 %414 to i16
  store i16 %415, ptr %69, align 4
  store i16 0, ptr %412, align 2
  store ptr %68, ptr %413, align 4
  %416 = load i32, ptr @debug, align 4
  %417 = and i32 %416, 2
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %469, label %467

419:                                              ; preds = %404, %395
  %420 = phi i32 [ 0, %395 ], [ %405, %404 ]
  %421 = getelementptr [5 x i16], ptr @dib3000mb_reg_phase_noise, i32 0, i32 %420
  %422 = load i16, ptr %421, align 2
  %423 = getelementptr [5 x i16], ptr @dib3000mb_default_noise_phase, i32 0, i32 %420
  %424 = load i16, ptr %423, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %70) #10
  %425 = lshr i16 %422, 8
  %426 = trunc i16 %425 to i8
  store i8 %426, ptr %70, align 4
  %427 = trunc i16 %422 to i8
  store i8 %427, ptr %396, align 1
  %428 = lshr i16 %424, 8
  %429 = trunc i16 %428 to i8
  store i8 %429, ptr %397, align 2
  %430 = trunc i16 %424 to i8
  store i8 %430, ptr %398, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #10
  store i32 4, ptr %399, align 4, !annotation !8
  %431 = load i8, ptr %110, align 4
  %432 = zext i8 %431 to i16
  store i16 %432, ptr %71, align 4
  store i16 0, ptr %400, align 2
  store ptr %70, ptr %401, align 4
  %433 = load i32, ptr @debug, align 4
  %434 = and i32 %433, 2
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %440, label %436

436:                                              ; preds = %419
  %437 = zext i16 %424 to i32
  %438 = zext i16 %422 to i32
  %439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %438, i32 noundef %438, i32 noundef %437, i32 noundef %437) #11
  br label %440

440:                                              ; preds = %436, %419
  %441 = load ptr, ptr %97, align 4
  %442 = call i32 @i2c_transfer(ptr noundef %441, ptr noundef nonnull %71, i32 noundef 1) #10
  %443 = icmp eq i32 %442, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %70) #10
  br i1 %443, label %404, label %444

444:                                              ; preds = %440
  %445 = zext i16 %424 to i32
  %446 = zext i16 %422 to i32
  %447 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %445, i32 noundef %446) #11
  br label %1186

448:                                              ; preds = %469
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %68) #10
  store i8 0, ptr %68, align 4
  store i8 40, ptr %408, align 1
  store i8 0, ptr %409, align 2
  store i8 -121, ptr %410, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #10
  store i32 4, ptr %411, align 4, !annotation !8
  %449 = load i8, ptr %110, align 4
  %450 = zext i8 %449 to i16
  store i16 %450, ptr %69, align 4
  store i16 0, ptr %412, align 2
  store ptr %68, ptr %413, align 4
  %451 = load i32, ptr @debug, align 4
  %452 = and i32 %451, 2
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %456, label %454

454:                                              ; preds = %448
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 40, i32 noundef 40, i32 noundef 135, i32 noundef 135) #11
  br label %456

456:                                              ; preds = %454, %448
  %457 = load ptr, ptr %97, align 4
  %458 = call i32 @i2c_transfer(ptr noundef %457, ptr noundef nonnull %69, i32 noundef 1) #10
  %459 = icmp eq i32 %458, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %68) #10
  br i1 %459, label %460, label %473

460:                                              ; preds = %456
  %461 = getelementptr inbounds i8, ptr %66, i32 1
  %462 = getelementptr inbounds i8, ptr %66, i32 2
  %463 = getelementptr inbounds i8, ptr %66, i32 3
  %464 = getelementptr inbounds i8, ptr %67, i32 4
  %465 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  %466 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  br label %479

467:                                              ; preds = %407
  %468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 39, i32 noundef 39, i32 noundef 135, i32 noundef 135) #11
  br label %469

469:                                              ; preds = %467, %407
  %470 = load ptr, ptr %97, align 4
  %471 = call i32 @i2c_transfer(ptr noundef %470, ptr noundef nonnull %69, i32 noundef 1) #10
  %472 = icmp eq i32 %471, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %68) #10
  br i1 %472, label %448, label %473

473:                                              ; preds = %469, %456
  %474 = phi i32 [ 39, %469 ], [ 40, %456 ]
  %475 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 135, i32 noundef %474) #11
  br label %1186

476:                                              ; preds = %500
  %477 = add nuw nsw i32 %480, 1
  %478 = icmp eq i32 %477, 8
  br i1 %478, label %508, label %479

479:                                              ; preds = %476, %460
  %480 = phi i32 [ 0, %460 ], [ %477, %476 ]
  %481 = getelementptr [8 x i16], ptr @dib3000mb_reg_agc_bandwidth, i32 0, i32 %480
  %482 = load i16, ptr %481, align 2
  %483 = getelementptr [8 x i16], ptr @dib3000mb_agc_bandwidth_low, i32 0, i32 %480
  %484 = load i16, ptr %483, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %66) #10
  %485 = lshr i16 %482, 8
  %486 = trunc i16 %485 to i8
  store i8 %486, ptr %66, align 4
  %487 = trunc i16 %482 to i8
  store i8 %487, ptr %461, align 1
  %488 = lshr i16 %484, 8
  %489 = trunc i16 %488 to i8
  store i8 %489, ptr %462, align 2
  %490 = trunc i16 %484 to i8
  store i8 %490, ptr %463, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #10
  store i32 4, ptr %464, align 4, !annotation !8
  %491 = load i8, ptr %110, align 4
  %492 = zext i8 %491 to i16
  store i16 %492, ptr %67, align 4
  store i16 0, ptr %465, align 2
  store ptr %66, ptr %466, align 4
  %493 = load i32, ptr @debug, align 4
  %494 = and i32 %493, 2
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %500, label %496

496:                                              ; preds = %479
  %497 = zext i16 %484 to i32
  %498 = zext i16 %482 to i32
  %499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %498, i32 noundef %498, i32 noundef %497, i32 noundef %497) #11
  br label %500

500:                                              ; preds = %496, %479
  %501 = load ptr, ptr %97, align 4
  %502 = call i32 @i2c_transfer(ptr noundef %501, ptr noundef nonnull %67, i32 noundef 1) #10
  %503 = icmp eq i32 %502, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %66) #10
  br i1 %503, label %476, label %504

504:                                              ; preds = %500
  %505 = zext i16 %484 to i32
  %506 = zext i16 %482 to i32
  %507 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %505, i32 noundef %506) #11
  br label %1186

508:                                              ; preds = %476
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %64) #10
  store i8 0, ptr %64, align 4
  %509 = getelementptr inbounds i8, ptr %64, i32 1
  store i8 51, ptr %509, align 1
  %510 = getelementptr inbounds i8, ptr %64, i32 2
  store i8 0, ptr %510, align 2
  %511 = getelementptr inbounds i8, ptr %64, i32 3
  store i8 4, ptr %511, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #10
  %512 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 4, ptr %512, align 4, !annotation !8
  %513 = load i8, ptr %110, align 4
  %514 = zext i8 %513 to i16
  store i16 %514, ptr %65, align 4
  %515 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %515, align 2
  %516 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %516, align 4
  %517 = load i32, ptr @debug, align 4
  %518 = and i32 %517, 2
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %508
  %521 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 51, i32 noundef 51, i32 noundef 4, i32 noundef 4) #11
  br label %522

522:                                              ; preds = %520, %508
  %523 = load ptr, ptr %97, align 4
  %524 = call i32 @i2c_transfer(ptr noundef %523, ptr noundef nonnull %65, i32 noundef 1) #10
  %525 = icmp eq i32 %524, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %64) #10
  br i1 %525, label %528, label %526

526:                                              ; preds = %522
  %527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 51) #11
  br label %1186

528:                                              ; preds = %522
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %62) #10
  store i8 0, ptr %62, align 4
  %529 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 52, ptr %529, align 1
  %530 = getelementptr inbounds i8, ptr %62, i32 2
  store i8 0, ptr %530, align 2
  %531 = getelementptr inbounds i8, ptr %62, i32 3
  store i8 4, ptr %531, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #10
  %532 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 4, ptr %532, align 4, !annotation !8
  %533 = load i8, ptr %110, align 4
  %534 = zext i8 %533 to i16
  store i16 %534, ptr %63, align 4
  %535 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %535, align 2
  %536 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %536, align 4
  %537 = load i32, ptr @debug, align 4
  %538 = and i32 %537, 2
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %542, label %540

540:                                              ; preds = %528
  %541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 52, i32 noundef 52, i32 noundef 4, i32 noundef 4) #11
  br label %542

542:                                              ; preds = %540, %528
  %543 = load ptr, ptr %97, align 4
  %544 = call i32 @i2c_transfer(ptr noundef %543, ptr noundef nonnull %63, i32 noundef 1) #10
  %545 = icmp eq i32 %544, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %62) #10
  br i1 %545, label %548, label %546

546:                                              ; preds = %542
  %547 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 52) #11
  br label %1186

548:                                              ; preds = %542
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %60) #10
  store i8 0, ptr %60, align 4
  %549 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 53, ptr %549, align 1
  %550 = getelementptr inbounds i8, ptr %60, i32 2
  store i8 0, ptr %550, align 2
  %551 = getelementptr inbounds i8, ptr %60, i32 3
  store i8 -128, ptr %551, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #10
  %552 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 4, ptr %552, align 4, !annotation !8
  %553 = load i8, ptr %110, align 4
  %554 = zext i8 %553 to i16
  store i16 %554, ptr %61, align 4
  %555 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %555, align 2
  %556 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %556, align 4
  %557 = load i32, ptr @debug, align 4
  %558 = and i32 %557, 2
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %562, label %560

560:                                              ; preds = %548
  %561 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 53, i32 noundef 53, i32 noundef 128, i32 noundef 128) #11
  br label %562

562:                                              ; preds = %560, %548
  %563 = load ptr, ptr %97, align 4
  %564 = call i32 @i2c_transfer(ptr noundef %563, ptr noundef nonnull %61, i32 noundef 1) #10
  %565 = icmp eq i32 %564, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %60) #10
  br i1 %565, label %568, label %566

566:                                              ; preds = %562
  %567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 53) #11
  br label %1186

568:                                              ; preds = %562
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %58) #10
  store i8 0, ptr %58, align 4
  %569 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 54, ptr %569, align 1
  %570 = getelementptr inbounds i8, ptr %58, i32 2
  store i8 0, ptr %570, align 2
  %571 = getelementptr inbounds i8, ptr %58, i32 3
  store i8 11, ptr %571, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %572 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 4, ptr %572, align 4, !annotation !8
  %573 = load i8, ptr %110, align 4
  %574 = zext i8 %573 to i16
  store i16 %574, ptr %59, align 4
  %575 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %575, align 2
  %576 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %576, align 4
  %577 = load i32, ptr @debug, align 4
  %578 = and i32 %577, 2
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %582, label %580

580:                                              ; preds = %568
  %581 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 54, i32 noundef 54, i32 noundef 11, i32 noundef 11) #11
  br label %582

582:                                              ; preds = %580, %568
  %583 = load ptr, ptr %97, align 4
  %584 = call i32 @i2c_transfer(ptr noundef %583, ptr noundef nonnull %59, i32 noundef 1) #10
  %585 = icmp eq i32 %584, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %58) #10
  br i1 %585, label %586, label %593

586:                                              ; preds = %582
  %587 = getelementptr inbounds i8, ptr %56, i32 1
  %588 = getelementptr inbounds i8, ptr %56, i32 2
  %589 = getelementptr inbounds i8, ptr %56, i32 3
  %590 = getelementptr inbounds i8, ptr %57, i32 4
  %591 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  %592 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  br label %598

593:                                              ; preds = %582
  %594 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 11, i32 noundef 54) #11
  br label %1186

595:                                              ; preds = %619
  %596 = add nuw nsw i32 %599, 1
  %597 = icmp eq i32 %596, 13
  br i1 %597, label %627, label %598

598:                                              ; preds = %595, %586
  %599 = phi i32 [ 0, %586 ], [ %596, %595 ]
  %600 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %599
  %601 = load i16, ptr %600, align 2
  %602 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_8mhz, i32 0, i32 %599
  %603 = load i16, ptr %602, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %56) #10
  %604 = lshr i16 %601, 8
  %605 = trunc i16 %604 to i8
  store i8 %605, ptr %56, align 4
  %606 = trunc i16 %601 to i8
  store i8 %606, ptr %587, align 1
  %607 = lshr i16 %603, 8
  %608 = trunc i16 %607 to i8
  store i8 %608, ptr %588, align 2
  %609 = trunc i16 %603 to i8
  store i8 %609, ptr %589, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  store i32 4, ptr %590, align 4, !annotation !8
  %610 = load i8, ptr %110, align 4
  %611 = zext i8 %610 to i16
  store i16 %611, ptr %57, align 4
  store i16 0, ptr %591, align 2
  store ptr %56, ptr %592, align 4
  %612 = load i32, ptr @debug, align 4
  %613 = and i32 %612, 2
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %619, label %615

615:                                              ; preds = %598
  %616 = zext i16 %603 to i32
  %617 = zext i16 %601 to i32
  %618 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %617, i32 noundef %617, i32 noundef %616, i32 noundef %616) #11
  br label %619

619:                                              ; preds = %615, %598
  %620 = load ptr, ptr %97, align 4
  %621 = call i32 @i2c_transfer(ptr noundef %620, ptr noundef nonnull %57, i32 noundef 1) #10
  %622 = icmp eq i32 %621, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %56) #10
  br i1 %622, label %595, label %623

623:                                              ; preds = %619
  %624 = zext i16 %603 to i32
  %625 = zext i16 %601 to i32
  %626 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %624, i32 noundef %625) #11
  br label %1186

627:                                              ; preds = %595
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %54) #10
  store i8 0, ptr %54, align 4
  %628 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 68, ptr %628, align 1
  %629 = getelementptr inbounds i8, ptr %54, i32 2
  store i8 0, ptr %629, align 2
  %630 = getelementptr inbounds i8, ptr %54, i32 3
  store i8 0, ptr %630, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %631 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 4, ptr %631, align 4, !annotation !8
  %632 = load i8, ptr %110, align 4
  %633 = zext i8 %632 to i16
  store i16 %633, ptr %55, align 4
  %634 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %634, align 2
  %635 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %635, align 4
  %636 = load i32, ptr @debug, align 4
  %637 = and i32 %636, 2
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %641, label %639

639:                                              ; preds = %627
  %640 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 68, i32 noundef 68, i32 noundef 0, i32 noundef 0) #11
  br label %641

641:                                              ; preds = %639, %627
  %642 = load ptr, ptr %97, align 4
  %643 = call i32 @i2c_transfer(ptr noundef %642, ptr noundef nonnull %55, i32 noundef 1) #10
  %644 = icmp eq i32 %643, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %54) #10
  br i1 %644, label %647, label %645

645:                                              ; preds = %641
  %646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 68) #11
  br label %1186

647:                                              ; preds = %641
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %52) #10
  store i8 0, ptr %52, align 4
  %648 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 69, ptr %648, align 1
  %649 = getelementptr inbounds i8, ptr %52, i32 2
  store i8 0, ptr %649, align 2
  %650 = getelementptr inbounds i8, ptr %52, i32 3
  store i8 0, ptr %650, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  %651 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 4, ptr %651, align 4, !annotation !8
  %652 = load i8, ptr %110, align 4
  %653 = zext i8 %652 to i16
  store i16 %653, ptr %53, align 4
  %654 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %654, align 2
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %655, align 4
  %656 = load i32, ptr @debug, align 4
  %657 = and i32 %656, 2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %661, label %659

659:                                              ; preds = %647
  %660 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 69, i32 noundef 69, i32 noundef 0, i32 noundef 0) #11
  br label %661

661:                                              ; preds = %659, %647
  %662 = load ptr, ptr %97, align 4
  %663 = call i32 @i2c_transfer(ptr noundef %662, ptr noundef nonnull %53, i32 noundef 1) #10
  %664 = icmp eq i32 %663, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %52) #10
  br i1 %664, label %667, label %665

665:                                              ; preds = %661
  %666 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 69) #11
  br label %1186

667:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #10
  store i8 0, ptr %50, align 4
  %668 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 71, ptr %668, align 1
  %669 = getelementptr inbounds i8, ptr %50, i32 2
  store i8 0, ptr %669, align 2
  %670 = getelementptr inbounds i8, ptr %50, i32 3
  store i8 0, ptr %670, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %671 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 4, ptr %671, align 4, !annotation !8
  %672 = load i8, ptr %110, align 4
  %673 = zext i8 %672 to i16
  store i16 %673, ptr %51, align 4
  %674 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %674, align 2
  %675 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %675, align 4
  %676 = load i32, ptr @debug, align 4
  %677 = and i32 %676, 2
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %667
  %680 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 71, i32 noundef 71, i32 noundef 0, i32 noundef 0) #11
  br label %681

681:                                              ; preds = %679, %667
  %682 = load ptr, ptr %97, align 4
  %683 = call i32 @i2c_transfer(ptr noundef %682, ptr noundef nonnull %51, i32 noundef 1) #10
  %684 = icmp eq i32 %683, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #10
  br i1 %684, label %687, label %685

685:                                              ; preds = %681
  %686 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 71) #11
  br label %1186

687:                                              ; preds = %681
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48) #10
  store i8 0, ptr %48, align 4
  %688 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 77, ptr %688, align 1
  %689 = getelementptr inbounds i8, ptr %48, i32 2
  store i8 0, ptr %689, align 2
  %690 = getelementptr inbounds i8, ptr %48, i32 3
  store i8 6, ptr %690, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %691 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 4, ptr %691, align 4, !annotation !8
  %692 = load i8, ptr %110, align 4
  %693 = zext i8 %692 to i16
  store i16 %693, ptr %49, align 4
  %694 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %694, align 2
  %695 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %695, align 4
  %696 = load i32, ptr @debug, align 4
  %697 = and i32 %696, 2
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %701, label %699

699:                                              ; preds = %687
  %700 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 77, i32 noundef 77, i32 noundef 6, i32 noundef 6) #11
  br label %701

701:                                              ; preds = %699, %687
  %702 = load ptr, ptr %97, align 4
  %703 = call i32 @i2c_transfer(ptr noundef %702, ptr noundef nonnull %49, i32 noundef 1) #10
  %704 = icmp eq i32 %703, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #10
  br i1 %704, label %707, label %705

705:                                              ; preds = %701
  %706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 77) #11
  br label %1186

707:                                              ; preds = %701
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #10
  store i8 0, ptr %46, align 4
  %708 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 78, ptr %708, align 1
  %709 = getelementptr inbounds i8, ptr %46, i32 2
  store i8 0, ptr %709, align 2
  %710 = getelementptr inbounds i8, ptr %46, i32 3
  store i8 -128, ptr %710, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %711 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 4, ptr %711, align 4, !annotation !8
  %712 = load i8, ptr %110, align 4
  %713 = zext i8 %712 to i16
  store i16 %713, ptr %47, align 4
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %714, align 2
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %715, align 4
  %716 = load i32, ptr @debug, align 4
  %717 = and i32 %716, 2
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %721, label %719

719:                                              ; preds = %707
  %720 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 78, i32 noundef 78, i32 noundef 128, i32 noundef 128) #11
  br label %721

721:                                              ; preds = %719, %707
  %722 = load ptr, ptr %97, align 4
  %723 = call i32 @i2c_transfer(ptr noundef %722, ptr noundef nonnull %47, i32 noundef 1) #10
  %724 = icmp eq i32 %723, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #10
  br i1 %724, label %727, label %725

725:                                              ; preds = %721
  %726 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 78) #11
  br label %1186

727:                                              ; preds = %721
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #10
  store i8 0, ptr %44, align 4
  %728 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 79, ptr %728, align 1
  %729 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 0, ptr %729, align 2
  %730 = getelementptr inbounds i8, ptr %44, i32 3
  store i8 1, ptr %730, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %731 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 4, ptr %731, align 4, !annotation !8
  %732 = load i8, ptr %110, align 4
  %733 = zext i8 %732 to i16
  store i16 %733, ptr %45, align 4
  %734 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %734, align 2
  %735 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %735, align 4
  %736 = load i32, ptr @debug, align 4
  %737 = and i32 %736, 2
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %741, label %739

739:                                              ; preds = %727
  %740 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 79, i32 noundef 79, i32 noundef 1, i32 noundef 1) #11
  br label %741

741:                                              ; preds = %739, %727
  %742 = load ptr, ptr %97, align 4
  %743 = call i32 @i2c_transfer(ptr noundef %742, ptr noundef nonnull %45, i32 noundef 1) #10
  %744 = icmp eq i32 %743, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #10
  br i1 %744, label %747, label %745

745:                                              ; preds = %741
  %746 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 79) #11
  br label %1186

747:                                              ; preds = %741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #10
  store i8 0, ptr %42, align 4
  %748 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 92, ptr %748, align 1
  %749 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 0, ptr %749, align 2
  %750 = getelementptr inbounds i8, ptr %42, i32 3
  store i8 -128, ptr %750, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %751 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 4, ptr %751, align 4, !annotation !8
  %752 = load i8, ptr %110, align 4
  %753 = zext i8 %752 to i16
  store i16 %753, ptr %43, align 4
  %754 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %754, align 2
  %755 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %755, align 4
  %756 = load i32, ptr @debug, align 4
  %757 = and i32 %756, 2
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %761, label %759

759:                                              ; preds = %747
  %760 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 92, i32 noundef 92, i32 noundef 128, i32 noundef 128) #11
  br label %761

761:                                              ; preds = %759, %747
  %762 = load ptr, ptr %97, align 4
  %763 = call i32 @i2c_transfer(ptr noundef %762, ptr noundef nonnull %43, i32 noundef 1) #10
  %764 = icmp eq i32 %763, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #10
  br i1 %764, label %767, label %765

765:                                              ; preds = %761
  %766 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 92) #11
  br label %1186

767:                                              ; preds = %761
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #10
  store i8 0, ptr %40, align 4
  %768 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 96, ptr %768, align 1
  %769 = getelementptr inbounds i8, ptr %40, i32 2
  store i8 0, ptr %769, align 2
  %770 = getelementptr inbounds i8, ptr %40, i32 3
  store i8 16, ptr %770, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %771 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 4, ptr %771, align 4, !annotation !8
  %772 = load i8, ptr %110, align 4
  %773 = zext i8 %772 to i16
  store i16 %773, ptr %41, align 4
  %774 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %774, align 2
  %775 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %775, align 4
  %776 = load i32, ptr @debug, align 4
  %777 = and i32 %776, 2
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %781, label %779

779:                                              ; preds = %767
  %780 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 96, i32 noundef 96, i32 noundef 16, i32 noundef 16) #11
  br label %781

781:                                              ; preds = %779, %767
  %782 = load ptr, ptr %97, align 4
  %783 = call i32 @i2c_transfer(ptr noundef %782, ptr noundef nonnull %41, i32 noundef 1) #10
  %784 = icmp eq i32 %783, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #10
  br i1 %784, label %787, label %785

785:                                              ; preds = %781
  %786 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 16, i32 noundef 96) #11
  br label %1186

787:                                              ; preds = %781
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #10
  store i8 0, ptr %38, align 4
  %788 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 97, ptr %788, align 1
  %789 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 0, ptr %789, align 2
  %790 = getelementptr inbounds i8, ptr %38, i32 3
  store i8 9, ptr %790, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %791 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 4, ptr %791, align 4, !annotation !8
  %792 = load i8, ptr %110, align 4
  %793 = zext i8 %792 to i16
  store i16 %793, ptr %39, align 4
  %794 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %794, align 2
  %795 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %795, align 4
  %796 = load i32, ptr @debug, align 4
  %797 = and i32 %796, 2
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %801, label %799

799:                                              ; preds = %787
  %800 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 97, i32 noundef 97, i32 noundef 9, i32 noundef 9) #11
  br label %801

801:                                              ; preds = %799, %787
  %802 = load ptr, ptr %97, align 4
  %803 = call i32 @i2c_transfer(ptr noundef %802, ptr noundef nonnull %39, i32 noundef 1) #10
  %804 = icmp eq i32 %803, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #10
  br i1 %804, label %807, label %805

805:                                              ; preds = %801
  %806 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 9, i32 noundef 97) #11
  br label %1186

807:                                              ; preds = %801
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #10
  store i8 0, ptr %36, align 4
  %808 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 106, ptr %808, align 1
  %809 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 0, ptr %809, align 2
  %810 = getelementptr inbounds i8, ptr %36, i32 3
  store i8 -128, ptr %810, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %811 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 4, ptr %811, align 4, !annotation !8
  %812 = load i8, ptr %110, align 4
  %813 = zext i8 %812 to i16
  store i16 %813, ptr %37, align 4
  %814 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %814, align 2
  %815 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %815, align 4
  %816 = load i32, ptr @debug, align 4
  %817 = and i32 %816, 2
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %821, label %819

819:                                              ; preds = %807
  %820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 106, i32 noundef 106, i32 noundef 128, i32 noundef 128) #11
  br label %821

821:                                              ; preds = %819, %807
  %822 = load ptr, ptr %97, align 4
  %823 = call i32 @i2c_transfer(ptr noundef %822, ptr noundef nonnull %37, i32 noundef 1) #10
  %824 = icmp eq i32 %823, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #10
  br i1 %824, label %827, label %825

825:                                              ; preds = %821
  %826 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 106) #11
  br label %1186

827:                                              ; preds = %821
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #10
  store i8 0, ptr %34, align 4
  %828 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 107, ptr %828, align 1
  %829 = getelementptr inbounds i8, ptr %34, i32 2
  store i8 0, ptr %829, align 2
  %830 = getelementptr inbounds i8, ptr %34, i32 3
  store i8 -128, ptr %830, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %831 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 4, ptr %831, align 4, !annotation !8
  %832 = load i8, ptr %110, align 4
  %833 = zext i8 %832 to i16
  store i16 %833, ptr %35, align 4
  %834 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %834, align 2
  %835 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %835, align 4
  %836 = load i32, ptr @debug, align 4
  %837 = and i32 %836, 2
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %841, label %839

839:                                              ; preds = %827
  %840 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 107, i32 noundef 107, i32 noundef 128, i32 noundef 128) #11
  br label %841

841:                                              ; preds = %839, %827
  %842 = load ptr, ptr %97, align 4
  %843 = call i32 @i2c_transfer(ptr noundef %842, ptr noundef nonnull %35, i32 noundef 1) #10
  %844 = icmp eq i32 %843, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #10
  br i1 %844, label %847, label %845

845:                                              ; preds = %841
  %846 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 107) #11
  br label %1186

847:                                              ; preds = %841
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #10
  store i8 0, ptr %32, align 4
  %848 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 108, ptr %848, align 1
  %849 = getelementptr inbounds i8, ptr %32, i32 2
  store i8 0, ptr %849, align 2
  %850 = getelementptr inbounds i8, ptr %32, i32 3
  store i8 -128, ptr %850, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %851 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 4, ptr %851, align 4, !annotation !8
  %852 = load i8, ptr %110, align 4
  %853 = zext i8 %852 to i16
  store i16 %853, ptr %33, align 4
  %854 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %854, align 2
  %855 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %855, align 4
  %856 = load i32, ptr @debug, align 4
  %857 = and i32 %856, 2
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %861, label %859

859:                                              ; preds = %847
  %860 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 108, i32 noundef 108, i32 noundef 128, i32 noundef 128) #11
  br label %861

861:                                              ; preds = %859, %847
  %862 = load ptr, ptr %97, align 4
  %863 = call i32 @i2c_transfer(ptr noundef %862, ptr noundef nonnull %33, i32 noundef 1) #10
  %864 = icmp eq i32 %863, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #10
  br i1 %864, label %867, label %865

865:                                              ; preds = %861
  %866 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 108) #11
  br label %1186

867:                                              ; preds = %861
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #10
  store i8 0, ptr %30, align 4
  %868 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 122, ptr %868, align 1
  %869 = getelementptr inbounds i8, ptr %30, i32 2
  store i8 11, ptr %869, align 2
  %870 = getelementptr inbounds i8, ptr %30, i32 3
  store i8 51, ptr %870, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %871 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 4, ptr %871, align 4, !annotation !8
  %872 = load i8, ptr %110, align 4
  %873 = zext i8 %872 to i16
  store i16 %873, ptr %31, align 4
  %874 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %874, align 2
  %875 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %875, align 4
  %876 = load i32, ptr @debug, align 4
  %877 = and i32 %876, 2
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %881, label %879

879:                                              ; preds = %867
  %880 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 122, i32 noundef 122, i32 noundef 2867, i32 noundef 2867) #11
  br label %881

881:                                              ; preds = %879, %867
  %882 = load ptr, ptr %97, align 4
  %883 = call i32 @i2c_transfer(ptr noundef %882, ptr noundef nonnull %31, i32 noundef 1) #10
  %884 = icmp eq i32 %883, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #10
  br i1 %884, label %887, label %885

885:                                              ; preds = %881
  %886 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2867, i32 noundef 122) #11
  br label %1186

887:                                              ; preds = %881
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #10
  store i8 0, ptr %28, align 4
  %888 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 126, ptr %888, align 1
  %889 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 0, ptr %889, align 2
  %890 = getelementptr inbounds i8, ptr %28, i32 3
  store i8 0, ptr %890, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %891 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 4, ptr %891, align 4, !annotation !8
  %892 = load i8, ptr %110, align 4
  %893 = zext i8 %892 to i16
  store i16 %893, ptr %29, align 4
  %894 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %894, align 2
  %895 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %895, align 4
  %896 = load i32, ptr @debug, align 4
  %897 = and i32 %896, 2
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %887
  %900 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 126, i32 noundef 126, i32 noundef 0, i32 noundef 0) #11
  br label %901

901:                                              ; preds = %899, %887
  %902 = load ptr, ptr %97, align 4
  %903 = call i32 @i2c_transfer(ptr noundef %902, ptr noundef nonnull %29, i32 noundef 1) #10
  %904 = icmp eq i32 %903, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #10
  br i1 %904, label %907, label %905

905:                                              ; preds = %901
  %906 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 126) #11
  br label %1186

907:                                              ; preds = %901
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #10
  store i8 0, ptr %26, align 4
  %908 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 -121, ptr %908, align 1
  %909 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 0, ptr %909, align 2
  %910 = getelementptr inbounds i8, ptr %26, i32 3
  store i8 1, ptr %910, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %911 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 4, ptr %911, align 4, !annotation !8
  %912 = load i8, ptr %110, align 4
  %913 = zext i8 %912 to i16
  store i16 %913, ptr %27, align 4
  %914 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %914, align 2
  %915 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %915, align 4
  %916 = load i32, ptr @debug, align 4
  %917 = and i32 %916, 2
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %921, label %919

919:                                              ; preds = %907
  %920 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 135, i32 noundef 135, i32 noundef 1, i32 noundef 1) #11
  br label %921

921:                                              ; preds = %919, %907
  %922 = load ptr, ptr %97, align 4
  %923 = call i32 @i2c_transfer(ptr noundef %922, ptr noundef nonnull %27, i32 noundef 1) #10
  %924 = icmp eq i32 %923, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #10
  br i1 %924, label %925, label %932

925:                                              ; preds = %921
  %926 = getelementptr inbounds i8, ptr %24, i32 1
  %927 = getelementptr inbounds i8, ptr %24, i32 2
  %928 = getelementptr inbounds i8, ptr %24, i32 3
  %929 = getelementptr inbounds i8, ptr %25, i32 4
  %930 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %931 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  br label %937

932:                                              ; preds = %921
  %933 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 135) #11
  br label %1186

934:                                              ; preds = %958
  %935 = add nuw nsw i32 %938, 1
  %936 = icmp eq i32 %935, 22
  br i1 %936, label %966, label %937

937:                                              ; preds = %934, %925
  %938 = phi i32 [ 0, %925 ], [ %935, %934 ]
  %939 = getelementptr [22 x i16], ptr @dib3000mb_reg_filter_coeffs, i32 0, i32 %938
  %940 = load i16, ptr %939, align 2
  %941 = getelementptr [22 x i16], ptr @dib3000mb_filter_coeffs, i32 0, i32 %938
  %942 = load i16, ptr %941, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #10
  %943 = lshr i16 %940, 8
  %944 = trunc i16 %943 to i8
  store i8 %944, ptr %24, align 4
  %945 = trunc i16 %940 to i8
  store i8 %945, ptr %926, align 1
  %946 = lshr i16 %942, 8
  %947 = trunc i16 %946 to i8
  store i8 %947, ptr %927, align 2
  %948 = trunc i16 %942 to i8
  store i8 %948, ptr %928, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  store i32 4, ptr %929, align 4, !annotation !8
  %949 = load i8, ptr %110, align 4
  %950 = zext i8 %949 to i16
  store i16 %950, ptr %25, align 4
  store i16 0, ptr %930, align 2
  store ptr %24, ptr %931, align 4
  %951 = load i32, ptr @debug, align 4
  %952 = and i32 %951, 2
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %958, label %954

954:                                              ; preds = %937
  %955 = zext i16 %942 to i32
  %956 = zext i16 %940 to i32
  %957 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %956, i32 noundef %956, i32 noundef %955, i32 noundef %955) #11
  br label %958

958:                                              ; preds = %954, %937
  %959 = load ptr, ptr %97, align 4
  %960 = call i32 @i2c_transfer(ptr noundef %959, ptr noundef nonnull %25, i32 noundef 1) #10
  %961 = icmp eq i32 %960, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #10
  br i1 %961, label %934, label %962

962:                                              ; preds = %958
  %963 = zext i16 %942 to i32
  %964 = zext i16 %940 to i32
  %965 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %963, i32 noundef %964) #11
  br label %1186

966:                                              ; preds = %934
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #10
  store i8 0, ptr %22, align 4
  %967 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 -61, ptr %967, align 1
  %968 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 0, ptr %968, align 2
  %969 = getelementptr inbounds i8, ptr %22, i32 3
  store i8 0, ptr %969, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %970 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 4, ptr %970, align 4, !annotation !8
  %971 = load i8, ptr %110, align 4
  %972 = zext i8 %971 to i16
  store i16 %972, ptr %23, align 4
  %973 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %973, align 2
  %974 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %974, align 4
  %975 = load i32, ptr @debug, align 4
  %976 = and i32 %975, 2
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %980, label %978

978:                                              ; preds = %966
  %979 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 195, i32 noundef 195, i32 noundef 0, i32 noundef 0) #11
  br label %980

980:                                              ; preds = %978, %966
  %981 = load ptr, ptr %97, align 4
  %982 = call i32 @i2c_transfer(ptr noundef %981, ptr noundef nonnull %23, i32 noundef 1) #10
  %983 = icmp eq i32 %982, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #10
  br i1 %983, label %986, label %984

984:                                              ; preds = %980
  %985 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 195) #11
  br label %1186

986:                                              ; preds = %980
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #10
  store i8 0, ptr %20, align 4
  %987 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 -50, ptr %987, align 1
  %988 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 127, ptr %988, align 2
  %989 = getelementptr inbounds i8, ptr %20, i32 3
  store i8 -1, ptr %989, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %990 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 4, ptr %990, align 4, !annotation !8
  %991 = load i8, ptr %110, align 4
  %992 = zext i8 %991 to i16
  store i16 %992, ptr %21, align 4
  %993 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %993, align 2
  %994 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %994, align 4
  %995 = load i32, ptr @debug, align 4
  %996 = and i32 %995, 2
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1000, label %998

998:                                              ; preds = %986
  %999 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 206, i32 noundef 206, i32 noundef 32767, i32 noundef 32767) #11
  br label %1000

1000:                                             ; preds = %998, %986
  %1001 = load ptr, ptr %97, align 4
  %1002 = call i32 @i2c_transfer(ptr noundef %1001, ptr noundef nonnull %21, i32 noundef 1) #10
  %1003 = icmp eq i32 %1002, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #10
  br i1 %1003, label %1006, label %1004

1004:                                             ; preds = %1000
  %1005 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 32767, i32 noundef 206) #11
  br label %1186

1006:                                             ; preds = %1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i8 0, ptr %18, align 4
  %1007 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 -49, ptr %1007, align 1
  %1008 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 15, ptr %1008, align 2
  %1009 = getelementptr inbounds i8, ptr %18, i32 3
  store i8 -1, ptr %1009, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %1010 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 4, ptr %1010, align 4, !annotation !8
  %1011 = load i8, ptr %110, align 4
  %1012 = zext i8 %1011 to i16
  store i16 %1012, ptr %19, align 4
  %1013 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %1013, align 2
  %1014 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %1014, align 4
  %1015 = load i32, ptr @debug, align 4
  %1016 = and i32 %1015, 2
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1020, label %1018

1018:                                             ; preds = %1006
  %1019 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 207, i32 noundef 207, i32 noundef 4095, i32 noundef 4095) #11
  br label %1020

1020:                                             ; preds = %1018, %1006
  %1021 = load ptr, ptr %97, align 4
  %1022 = call i32 @i2c_transfer(ptr noundef %1021, ptr noundef nonnull %19, i32 noundef 1) #10
  %1023 = icmp eq i32 %1022, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  br i1 %1023, label %1026, label %1024

1024:                                             ; preds = %1020
  %1025 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4095, i32 noundef 207) #11
  br label %1186

1026:                                             ; preds = %1020
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i8 0, ptr %16, align 4
  %1027 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -87, ptr %1027, align 1
  %1028 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 0, ptr %1028, align 2
  %1029 = getelementptr inbounds i8, ptr %16, i32 3
  store i8 6, ptr %1029, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %1030 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %1030, align 4, !annotation !8
  %1031 = load i8, ptr %110, align 4
  %1032 = zext i8 %1031 to i16
  store i16 %1032, ptr %17, align 4
  %1033 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %1033, align 2
  %1034 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %1034, align 4
  %1035 = load i32, ptr @debug, align 4
  %1036 = and i32 %1035, 2
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1040, label %1038

1038:                                             ; preds = %1026
  %1039 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 169, i32 noundef 169, i32 noundef 6, i32 noundef 6) #11
  br label %1040

1040:                                             ; preds = %1038, %1026
  %1041 = load ptr, ptr %97, align 4
  %1042 = call i32 @i2c_transfer(ptr noundef %1041, ptr noundef nonnull %17, i32 noundef 1) #10
  %1043 = icmp eq i32 %1042, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  br i1 %1043, label %1046, label %1044

1044:                                             ; preds = %1040
  %1045 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 169) #11
  br label %1186

1046:                                             ; preds = %1040
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i8 0, ptr %14, align 4
  %1047 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -114, ptr %1047, align 1
  %1048 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 0, ptr %1048, align 2
  %1049 = getelementptr inbounds i8, ptr %14, i32 3
  store i8 0, ptr %1049, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %1050 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %1050, align 4, !annotation !8
  %1051 = load i8, ptr %110, align 4
  %1052 = zext i8 %1051 to i16
  store i16 %1052, ptr %15, align 4
  %1053 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1053, align 2
  %1054 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %1054, align 4
  %1055 = load i32, ptr @debug, align 4
  %1056 = and i32 %1055, 2
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1060, label %1058

1058:                                             ; preds = %1046
  %1059 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 142, i32 noundef 142, i32 noundef 0, i32 noundef 0) #11
  br label %1060

1060:                                             ; preds = %1058, %1046
  %1061 = load ptr, ptr %97, align 4
  %1062 = call i32 @i2c_transfer(ptr noundef %1061, ptr noundef nonnull %15, i32 noundef 1) #10
  %1063 = icmp eq i32 %1062, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  br i1 %1063, label %1066, label %1064

1064:                                             ; preds = %1060
  %1065 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 142) #11
  br label %1186

1066:                                             ; preds = %1060
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i8 0, ptr %12, align 4
  %1067 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 -113, ptr %1067, align 1
  %1068 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 0, ptr %1068, align 2
  %1069 = getelementptr inbounds i8, ptr %12, i32 3
  store i8 1, ptr %1069, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %1070 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 4, ptr %1070, align 4, !annotation !8
  %1071 = load i8, ptr %110, align 4
  %1072 = zext i8 %1071 to i16
  store i16 %1072, ptr %13, align 4
  %1073 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %1073, align 2
  %1074 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %1074, align 4
  %1075 = load i32, ptr @debug, align 4
  %1076 = and i32 %1075, 2
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1080, label %1078

1078:                                             ; preds = %1066
  %1079 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 143, i32 noundef 143, i32 noundef 1, i32 noundef 1) #11
  br label %1080

1080:                                             ; preds = %1078, %1066
  %1081 = load ptr, ptr %97, align 4
  %1082 = call i32 @i2c_transfer(ptr noundef %1081, ptr noundef nonnull %13, i32 noundef 1) #10
  %1083 = icmp eq i32 %1082, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br i1 %1083, label %1086, label %1084

1084:                                             ; preds = %1080
  %1085 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 143) #11
  br label %1186

1086:                                             ; preds = %1080
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i8 0, ptr %10, align 4
  %1087 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -112, ptr %1087, align 1
  %1088 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %1088, align 2
  %1089 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 1, ptr %1089, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %1090 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %1090, align 4, !annotation !8
  %1091 = load i8, ptr %110, align 4
  %1092 = zext i8 %1091 to i16
  store i16 %1092, ptr %11, align 4
  %1093 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %1093, align 2
  %1094 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %1094, align 4
  %1095 = load i32, ptr @debug, align 4
  %1096 = and i32 %1095, 2
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1100, label %1098

1098:                                             ; preds = %1086
  %1099 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 144, i32 noundef 144, i32 noundef 1, i32 noundef 1) #11
  br label %1100

1100:                                             ; preds = %1098, %1086
  %1101 = load ptr, ptr %97, align 4
  %1102 = call i32 @i2c_transfer(ptr noundef %1101, ptr noundef nonnull %11, i32 noundef 1) #10
  %1103 = icmp eq i32 %1102, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br i1 %1103, label %1106, label %1104

1104:                                             ; preds = %1100
  %1105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 144) #11
  br label %1186

1106:                                             ; preds = %1100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i8 0, ptr %8, align 4
  %1107 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 -111, ptr %1107, align 1
  %1108 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %1108, align 2
  %1109 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 1, ptr %1109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %1110 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %1110, align 4, !annotation !8
  %1111 = load i8, ptr %110, align 4
  %1112 = zext i8 %1111 to i16
  store i16 %1112, ptr %9, align 4
  %1113 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %1113, align 2
  %1114 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %1114, align 4
  %1115 = load i32, ptr @debug, align 4
  %1116 = and i32 %1115, 2
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1120, label %1118

1118:                                             ; preds = %1106
  %1119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 145, i32 noundef 145, i32 noundef 1, i32 noundef 1) #11
  br label %1120

1120:                                             ; preds = %1118, %1106
  %1121 = load ptr, ptr %97, align 4
  %1122 = call i32 @i2c_transfer(ptr noundef %1121, ptr noundef nonnull %9, i32 noundef 1) #10
  %1123 = icmp eq i32 %1122, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br i1 %1123, label %1126, label %1124

1124:                                             ; preds = %1120
  %1125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 145) #11
  br label %1186

1126:                                             ; preds = %1120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i8 0, ptr %6, align 4
  %1127 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -110, ptr %1127, align 1
  %1128 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %1128, align 2
  %1129 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 3, ptr %1129, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %1130 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %1130, align 4, !annotation !8
  %1131 = load i8, ptr %110, align 4
  %1132 = zext i8 %1131 to i16
  store i16 %1132, ptr %7, align 4
  %1133 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %1133, align 2
  %1134 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %1134, align 4
  %1135 = load i32, ptr @debug, align 4
  %1136 = and i32 %1135, 2
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1140, label %1138

1138:                                             ; preds = %1126
  %1139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 146, i32 noundef 146, i32 noundef 3, i32 noundef 3) #11
  br label %1140

1140:                                             ; preds = %1138, %1126
  %1141 = load ptr, ptr %97, align 4
  %1142 = call i32 @i2c_transfer(ptr noundef %1141, ptr noundef nonnull %7, i32 noundef 1) #10
  %1143 = icmp eq i32 %1142, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br i1 %1143, label %1146, label %1144

1144:                                             ; preds = %1140
  %1145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef 146) #11
  br label %1186

1146:                                             ; preds = %1140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i8 0, ptr %4, align 4
  %1147 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -109, ptr %1147, align 1
  %1148 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 1, ptr %1148, align 2
  %1149 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 0, ptr %1149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %1150 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %1150, align 4, !annotation !8
  %1151 = load i8, ptr %110, align 4
  %1152 = zext i8 %1151 to i16
  store i16 %1152, ptr %5, align 4
  %1153 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1153, align 2
  %1154 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1154, align 4
  %1155 = load i32, ptr @debug, align 4
  %1156 = and i32 %1155, 2
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1160, label %1158

1158:                                             ; preds = %1146
  %1159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 147, i32 noundef 147, i32 noundef 256, i32 noundef 256) #11
  br label %1160

1160:                                             ; preds = %1158, %1146
  %1161 = load ptr, ptr %97, align 4
  %1162 = call i32 @i2c_transfer(ptr noundef %1161, ptr noundef nonnull %5, i32 noundef 1) #10
  %1163 = icmp eq i32 %1162, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br i1 %1163, label %1166, label %1164

1164:                                             ; preds = %1160
  %1165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 256, i32 noundef 147) #11
  br label %1186

1166:                                             ; preds = %1160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i8 0, ptr %2, align 4
  %1167 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 127, ptr %1167, align 1
  %1168 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %1168, align 2
  %1169 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 0, ptr %1169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %1170 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %1170, align 4, !annotation !8
  %1171 = load i8, ptr %110, align 4
  %1172 = zext i8 %1171 to i16
  store i16 %1172, ptr %3, align 4
  %1173 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1173, align 2
  %1174 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %1174, align 4
  %1175 = load i32, ptr @debug, align 4
  %1176 = and i32 %1175, 2
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1180, label %1178

1178:                                             ; preds = %1166
  %1179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 127, i32 noundef 127, i32 noundef 0, i32 noundef 0) #11
  br label %1180

1180:                                             ; preds = %1178, %1166
  %1181 = load ptr, ptr %97, align 4
  %1182 = call i32 @i2c_transfer(ptr noundef %1181, ptr noundef nonnull %3, i32 noundef 1) #10
  %1183 = icmp eq i32 %1182, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br i1 %1183, label %1186, label %1184

1184:                                             ; preds = %1180
  %1185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 127) #11
  br label %1186

1186:                                             ; preds = %1184, %1180, %1164, %1144, %1124, %1104, %1084, %1064, %1044, %1024, %1004, %984, %962, %932, %905, %885, %865, %845, %825, %805, %785, %765, %745, %725, %705, %685, %665, %645, %623, %593, %566, %546, %526, %504, %473, %444, %402, %373, %341, %302, %275, %243, %223, %203, %183, %163, %143, %123
  %1187 = phi i32 [ -121, %123 ], [ -121, %143 ], [ -121, %163 ], [ -121, %183 ], [ -121, %203 ], [ -121, %223 ], [ -121, %243 ], [ -121, %275 ], [ -121, %402 ], [ -121, %526 ], [ -121, %546 ], [ -121, %566 ], [ -121, %593 ], [ -121, %645 ], [ -121, %665 ], [ -121, %685 ], [ -121, %705 ], [ -121, %725 ], [ -121, %745 ], [ -121, %765 ], [ -121, %785 ], [ -121, %805 ], [ -121, %825 ], [ -121, %845 ], [ -121, %865 ], [ -121, %885 ], [ -121, %905 ], [ -121, %932 ], [ -121, %984 ], [ -121, %1004 ], [ -121, %1024 ], [ -121, %1044 ], [ -121, %1064 ], [ -121, %1084 ], [ -121, %1104 ], [ -121, %1124 ], [ -121, %1144 ], [ -121, %1164 ], [ -121, %1184 ], [ -121, %302 ], [ -121, %341 ], [ -121, %373 ], [ -121, %444 ], [ -121, %473 ], [ -121, %504 ], [ -121, %623 ], [ -121, %962 ], [ 0, %1180 ]
  ret i32 %1187
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dib3000mb_sleep) #11
  %11 = load i32, ptr @debug, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ %6, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i8 4, ptr %2, align 4
  %14 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 4, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %15, align 2
  %16 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 1, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.dib3000_state, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %22, align 4
  %23 = and i32 %13, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %12
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1028, i32 noundef 1028, i32 noundef 1, i32 noundef 1) #11
  br label %27

27:                                               ; preds = %25, %12
  %28 = load ptr, ptr %5, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 1) #10
  %30 = icmp eq i32 %29, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1028) #11
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ -121, %31 ], [ 0, %27 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_set_frontend_and_tuner(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @dib3000mb_set_frontend(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib3000mb_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 800, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 394)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %278, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 339)
  %9 = shl i32 %8, 16
  %10 = and i32 %9, 16711680
  %11 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 340)
  %12 = add i32 %10, %11
  %13 = load i32, ptr @debug, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 339)
  %18 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 340)
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %12, i32 noundef %17, i32 noundef %18) #11
  br label %20

20:                                               ; preds = %16, %7
  %21 = icmp ult i32 %12, 8388608
  %22 = icmp eq i32 %12, 8388608
  %23 = select i1 %22, i32 1, i32 2
  %24 = select i1 %21, i32 0, i32 %23
  %25 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 6)
  %26 = shl i32 %25, 16
  %27 = and i32 %26, 16711680
  %28 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 7)
  %29 = add i32 %27, %28
  %30 = load i32, ptr @debug, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 6)
  %35 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 7)
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %29, i32 noundef %34, i32 noundef %35) #11
  br label %37

37:                                               ; preds = %33, %20
  %38 = icmp ult i32 %29, 8388608
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = icmp eq i32 %29, 8388608
  %41 = xor i1 %40, true
  %42 = select i1 %40, i32 1, i32 2
  %43 = icmp ult i32 %12, 8388609
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %49, label %45

45:                                               ; preds = %39, %37
  %46 = phi i32 [ %42, %39 ], [ 0, %37 ]
  %47 = icmp ugt i32 %12, 8388607
  %48 = select i1 %38, i1 %47, i1 false
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ %42, %39 ], [ %46, %45 ]
  %51 = phi i1 [ true, %39 ], [ %48, %45 ]
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr @debug, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %50, i32 noundef %24, i32 noundef %52) #11
  br label %59

59:                                               ; preds = %57, %49
  %60 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 398)
  %61 = and i32 %60, 65535
  %62 = trunc i32 %60 to i16
  switch i16 %62, label %87 [
    i16 0, label %63
    i16 1, label %71
    i16 2, label %79
  ]

63:                                               ; preds = %59
  %64 = load i32, ptr @debug, align 4
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 0, ptr %70, align 4
  br label %89

71:                                               ; preds = %59
  %72 = load i32, ptr @debug, align 4
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 1, ptr %78, align 4
  br label %89

79:                                               ; preds = %59
  %80 = load i32, ptr @debug, align 4
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 3, ptr %86, align 4
  br label %89

87:                                               ; preds = %59
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %61) #11
  br label %89

89:                                               ; preds = %87, %85, %77, %69
  %90 = load i32, ptr @debug, align 4
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %61) #11
  br label %95

95:                                               ; preds = %93, %89
  %96 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 399)
  %97 = icmp eq i32 %96, 0
  %98 = load i32, ptr @debug, align 4
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %97, label %150, label %101

101:                                              ; preds = %95
  br i1 %100, label %104, label %102

102:                                              ; preds = %101
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %104

104:                                              ; preds = %102, %101
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 0, ptr %106, align 4
  %107 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 400)
  %108 = and i32 %107, 65535
  %109 = trunc i32 %107 to i16
  switch i16 %109, label %142 [
    i16 0, label %110
    i16 1, label %118
    i16 2, label %126
    i16 4, label %134
  ]

110:                                              ; preds = %104
  %111 = load i32, ptr @debug, align 4
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %116

116:                                              ; preds = %114, %110
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %117, align 4
  br label %144

118:                                              ; preds = %104
  %119 = load i32, ptr @debug, align 4
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %124

124:                                              ; preds = %122, %118
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 1, ptr %125, align 4
  br label %144

126:                                              ; preds = %104
  %127 = load i32, ptr @debug, align 4
  %128 = and i32 %127, 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %132

132:                                              ; preds = %130, %126
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 2, ptr %133, align 4
  br label %144

134:                                              ; preds = %104
  %135 = load i32, ptr @debug, align 4
  %136 = and i32 %135, 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %140

140:                                              ; preds = %138, %134
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 3, ptr %141, align 4
  br label %144

142:                                              ; preds = %104
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %108) #11
  br label %144

144:                                              ; preds = %142, %140, %132, %124, %116
  %145 = load i32, ptr @debug, align 4
  %146 = and i32 %145, 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %144
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %108) #11
  br label %157

150:                                              ; preds = %95
  br i1 %100, label %153, label %151

151:                                              ; preds = %150
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %153

153:                                              ; preds = %151, %150
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  %155 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %156, align 4
  br label %157

157:                                              ; preds = %153, %148, %144
  %158 = phi i16 [ 401, %153 ], [ 402, %148 ], [ 402, %144 ]
  %159 = phi ptr [ %154, %153 ], [ %105, %148 ], [ %105, %144 ]
  %160 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext %158)
  %161 = and i32 %160, 65535
  %162 = trunc i32 %160 to i16
  switch i16 %162, label %198 [
    i16 1, label %163
    i16 2, label %170
    i16 3, label %177
    i16 5, label %184
    i16 7, label %191
  ]

163:                                              ; preds = %157
  %164 = load i32, ptr @debug, align 4
  %165 = and i32 %164, 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %169

169:                                              ; preds = %167, %163
  store i32 1, ptr %159, align 4
  br label %200

170:                                              ; preds = %157
  %171 = load i32, ptr @debug, align 4
  %172 = and i32 %171, 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %176

176:                                              ; preds = %174, %170
  store i32 2, ptr %159, align 4
  br label %200

177:                                              ; preds = %157
  %178 = load i32, ptr @debug, align 4
  %179 = and i32 %178, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %183

183:                                              ; preds = %181, %177
  store i32 3, ptr %159, align 4
  br label %200

184:                                              ; preds = %157
  %185 = load i32, ptr @debug, align 4
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %190

190:                                              ; preds = %188, %184
  store i32 4, ptr %159, align 4
  br label %200

191:                                              ; preds = %157
  %192 = load i32, ptr @debug, align 4
  %193 = and i32 %192, 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %197

197:                                              ; preds = %195, %191
  store i32 7, ptr %159, align 4
  br label %200

198:                                              ; preds = %157
  %199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %161) #11
  br label %200

200:                                              ; preds = %198, %197, %190, %183, %176, %169
  %201 = load i32, ptr @debug, align 4
  %202 = and i32 %201, 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %161) #11
  br label %206

206:                                              ; preds = %204, %200
  %207 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 403)
  %208 = and i32 %207, 65535
  %209 = trunc i32 %207 to i16
  switch i16 %209, label %242 [
    i16 0, label %210
    i16 1, label %218
    i16 2, label %226
    i16 3, label %234
  ]

210:                                              ; preds = %206
  %211 = load i32, ptr @debug, align 4
  %212 = and i32 %211, 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %216

216:                                              ; preds = %214, %210
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 0, ptr %217, align 4
  br label %244

218:                                              ; preds = %206
  %219 = load i32, ptr @debug, align 4
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %218
  %223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %224

224:                                              ; preds = %222, %218
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 1, ptr %225, align 4
  br label %244

226:                                              ; preds = %206
  %227 = load i32, ptr @debug, align 4
  %228 = and i32 %227, 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %232

232:                                              ; preds = %230, %226
  %233 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 2, ptr %233, align 4
  br label %244

234:                                              ; preds = %206
  %235 = load i32, ptr @debug, align 4
  %236 = and i32 %235, 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %240

240:                                              ; preds = %238, %234
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 3, ptr %241, align 4
  br label %244

242:                                              ; preds = %206
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %208) #11
  br label %244

244:                                              ; preds = %242, %240, %232, %224, %216
  %245 = load i32, ptr @debug, align 4
  %246 = and i32 %245, 8
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %208) #11
  br label %250

250:                                              ; preds = %248, %244
  %251 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 404)
  %252 = and i32 %251, 65535
  %253 = trunc i32 %251 to i16
  switch i16 %253, label %270 [
    i16 0, label %254
    i16 1, label %262
  ]

254:                                              ; preds = %250
  %255 = load i32, ptr @debug, align 4
  %256 = and i32 %255, 8
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  %259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %260

260:                                              ; preds = %258, %254
  %261 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %261, align 4
  br label %272

262:                                              ; preds = %250
  %263 = load i32, ptr @debug, align 4
  %264 = and i32 %263, 8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.dib3000mb_get_frontend) #11
  br label %268

268:                                              ; preds = %266, %262
  %269 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 1, ptr %269, align 4
  br label %272

270:                                              ; preds = %250
  %271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %252) #11
  br label %272

272:                                              ; preds = %270, %268, %260
  %273 = load i32, ptr @debug, align 4
  %274 = and i32 %273, 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %272
  %277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dib3000mb_get_frontend, i32 noundef %252) #11
  br label %278

278:                                              ; preds = %276, %272, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %5 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 324)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 355)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %1, align 4
  %15 = or i32 %14, 2
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 421)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 4
  %21 = or i32 %20, 4
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 423)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %1, align 4
  %27 = or i32 %26, 24
  store i32 %27, ptr %1, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, ptr @debug, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %1, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.dib3000mb_read_status, i32 noundef %33) #11
  %35 = load i32, ptr @debug, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 394)
  %40 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 398)
  %41 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 399)
  %42 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 400)
  %43 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 401)
  %44 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 402)
  %45 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 403)
  %46 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 404)
  %47 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 406)
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.dib3000mb_read_status, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47) #11
  br label %49

49:                                               ; preds = %38, %32, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 414)
  %6 = shl i32 %5, 16
  %7 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 415)
  %8 = or i32 %6, %7
  store i32 %8, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 380)
  %6 = mul i32 %5, 65535
  %7 = sdiv i32 %6, 368
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 380)
  %6 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 372)
  %7 = shl i32 %6, 16
  %8 = and i32 %7, 16711680
  %9 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 373)
  %10 = or i32 %8, %9
  %11 = shl i32 %5, 16
  %12 = ashr exact i32 %11, 8
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %14 = sdiv i32 %12, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_unc_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %4, i16 noundef zeroext 417)
  store i32 %5, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib3000mb_set_frontend(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = alloca [4 x i8], align 4
  %8 = alloca [1 x %struct.i2c_msg], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [1 x %struct.i2c_msg], align 4
  %11 = alloca [4 x i8], align 4
  %12 = alloca [1 x %struct.i2c_msg], align 4
  %13 = alloca [4 x i8], align 4
  %14 = alloca [1 x %struct.i2c_msg], align 4
  %15 = alloca [4 x i8], align 4
  %16 = alloca [1 x %struct.i2c_msg], align 4
  %17 = alloca [4 x i8], align 4
  %18 = alloca [1 x %struct.i2c_msg], align 4
  %19 = alloca [4 x i8], align 4
  %20 = alloca [1 x %struct.i2c_msg], align 4
  %21 = alloca [4 x i8], align 4
  %22 = alloca [1 x %struct.i2c_msg], align 4
  %23 = alloca [4 x i8], align 4
  %24 = alloca [1 x %struct.i2c_msg], align 4
  %25 = alloca [4 x i8], align 4
  %26 = alloca [1 x %struct.i2c_msg], align 4
  %27 = alloca [4 x i8], align 4
  %28 = alloca [1 x %struct.i2c_msg], align 4
  %29 = alloca [4 x i8], align 4
  %30 = alloca [1 x %struct.i2c_msg], align 4
  %31 = alloca [4 x i8], align 4
  %32 = alloca [1 x %struct.i2c_msg], align 4
  %33 = alloca [4 x i8], align 4
  %34 = alloca [1 x %struct.i2c_msg], align 4
  %35 = alloca [4 x i8], align 4
  %36 = alloca [1 x %struct.i2c_msg], align 4
  %37 = alloca [4 x i8], align 4
  %38 = alloca [1 x %struct.i2c_msg], align 4
  %39 = alloca [4 x i8], align 4
  %40 = alloca [1 x %struct.i2c_msg], align 4
  %41 = alloca [4 x i8], align 4
  %42 = alloca [1 x %struct.i2c_msg], align 4
  %43 = alloca [4 x i8], align 4
  %44 = alloca [1 x %struct.i2c_msg], align 4
  %45 = alloca [4 x i8], align 4
  %46 = alloca [1 x %struct.i2c_msg], align 4
  %47 = alloca [4 x i8], align 4
  %48 = alloca [1 x %struct.i2c_msg], align 4
  %49 = alloca [4 x i8], align 4
  %50 = alloca [1 x %struct.i2c_msg], align 4
  %51 = alloca [4 x i8], align 4
  %52 = alloca [1 x %struct.i2c_msg], align 4
  %53 = alloca [4 x i8], align 4
  %54 = alloca [1 x %struct.i2c_msg], align 4
  %55 = alloca [4 x i8], align 4
  %56 = alloca [1 x %struct.i2c_msg], align 4
  %57 = alloca [4 x i8], align 4
  %58 = alloca [1 x %struct.i2c_msg], align 4
  %59 = alloca [4 x i8], align 4
  %60 = alloca [1 x %struct.i2c_msg], align 4
  %61 = alloca [4 x i8], align 4
  %62 = alloca [1 x %struct.i2c_msg], align 4
  %63 = alloca [4 x i8], align 4
  %64 = alloca [1 x %struct.i2c_msg], align 4
  %65 = alloca [4 x i8], align 4
  %66 = alloca [1 x %struct.i2c_msg], align 4
  %67 = alloca [4 x i8], align 4
  %68 = alloca [1 x %struct.i2c_msg], align 4
  %69 = alloca [4 x i8], align 4
  %70 = alloca [1 x %struct.i2c_msg], align 4
  %71 = alloca [4 x i8], align 4
  %72 = alloca [1 x %struct.i2c_msg], align 4
  %73 = alloca [4 x i8], align 4
  %74 = alloca [1 x %struct.i2c_msg], align 4
  %75 = alloca [4 x i8], align 4
  %76 = alloca [1 x %struct.i2c_msg], align 4
  %77 = alloca [4 x i8], align 4
  %78 = alloca [1 x %struct.i2c_msg], align 4
  %79 = alloca [4 x i8], align 4
  %80 = alloca [1 x %struct.i2c_msg], align 4
  %81 = alloca [4 x i8], align 4
  %82 = alloca [1 x %struct.i2c_msg], align 4
  %83 = alloca [4 x i8], align 4
  %84 = alloca [1 x %struct.i2c_msg], align 4
  %85 = alloca [4 x i8], align 4
  %86 = alloca [1 x %struct.i2c_msg], align 4
  %87 = alloca [4 x i8], align 4
  %88 = alloca [1 x %struct.i2c_msg], align 4
  %89 = alloca [4 x i8], align 4
  %90 = alloca [1 x %struct.i2c_msg], align 4
  %91 = alloca [4 x i8], align 4
  %92 = alloca [1 x %struct.i2c_msg], align 4
  %93 = alloca [4 x i8], align 4
  %94 = alloca [1 x %struct.i2c_msg], align 4
  %95 = alloca [4 x i8], align 4
  %96 = alloca [1 x %struct.i2c_msg], align 4
  %97 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %100 = icmp eq i32 %1, 0
  br i1 %100, label %347, label %101

101:                                              ; preds = %2
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %347, label %105

105:                                              ; preds = %101
  %106 = tail call i32 %103(ptr noundef %0) #10
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = tail call i32 %108(ptr noundef %0, i32 noundef 0) #10
  br label %112

112:                                              ; preds = %110, %105
  %113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %114 = load i32, ptr %113, align 4
  switch i32 %114, label %337 [
    i32 8000000, label %141
    i32 7000000, label %128
    i32 6000000, label %115
    i32 0, label %1516
  ]

115:                                              ; preds = %112
  %116 = getelementptr inbounds i8, ptr %87, i32 1
  %117 = getelementptr inbounds i8, ptr %87, i32 2
  %118 = getelementptr inbounds i8, ptr %87, i32 3
  %119 = getelementptr inbounds i8, ptr %88, i32 4
  %120 = getelementptr inbounds %struct.dib3000_state, ptr %98, i32 0, i32 1
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %87) #10
  store i8 0, ptr %87, align 4
  store i8 8, ptr %116, align 1
  store i8 0, ptr %117, align 2
  store i8 126, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #10
  store i32 4, ptr %119, align 4, !annotation !8
  %123 = load i8, ptr %120, align 4
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %88, align 4
  store i16 0, ptr %121, align 2
  store ptr %87, ptr %122, align 4
  %125 = load i32, ptr @debug, align 4
  %126 = and i32 %125, 2
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %297, label %295

128:                                              ; preds = %112
  %129 = getelementptr inbounds i8, ptr %91, i32 1
  %130 = getelementptr inbounds i8, ptr %91, i32 2
  %131 = getelementptr inbounds i8, ptr %91, i32 3
  %132 = getelementptr inbounds i8, ptr %92, i32 4
  %133 = getelementptr inbounds %struct.dib3000_state, ptr %98, i32 0, i32 1
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %91) #10
  store i8 0, ptr %91, align 4
  store i8 8, ptr %129, align 1
  store i8 0, ptr %130, align 2
  store i8 -109, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #10
  store i32 4, ptr %132, align 4, !annotation !8
  %136 = load i8, ptr %133, align 4
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %92, align 4
  store i16 0, ptr %134, align 2
  store ptr %91, ptr %135, align 4
  %138 = load i32, ptr @debug, align 4
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %236, label %234

141:                                              ; preds = %112
  %142 = getelementptr inbounds i8, ptr %95, i32 1
  %143 = getelementptr inbounds i8, ptr %95, i32 2
  %144 = getelementptr inbounds i8, ptr %95, i32 3
  %145 = getelementptr inbounds i8, ptr %96, i32 4
  %146 = getelementptr inbounds %struct.dib3000_state, ptr %98, i32 0, i32 1
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %95) #10
  store i8 0, ptr %95, align 4
  store i8 8, ptr %142, align 1
  store i8 0, ptr %143, align 2
  store i8 -88, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %96) #10
  store i32 4, ptr %145, align 4, !annotation !8
  %149 = load i8, ptr %146, align 4
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %96, align 4
  store i16 0, ptr %147, align 2
  store ptr %95, ptr %148, align 4
  %151 = load i32, ptr @debug, align 4
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %175, label %173

154:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %95) #10
  store i8 0, ptr %95, align 4
  store i8 9, ptr %142, align 1
  store i8 -2, ptr %143, align 2
  store i8 -116, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %96) #10
  store i32 4, ptr %145, align 4, !annotation !8
  %155 = load i8, ptr %146, align 4
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %96, align 4
  store i16 0, ptr %147, align 2
  store ptr %95, ptr %148, align 4
  %157 = load i32, ptr @debug, align 4
  %158 = and i32 %157, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 9, i32 noundef 9, i32 noundef 65164, i32 noundef 65164) #11
  br label %162

162:                                              ; preds = %160, %154
  %163 = load ptr, ptr %98, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %96, i32 noundef 1) #10
  %165 = icmp eq i32 %164, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %95) #10
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %93, i32 1
  %168 = getelementptr inbounds i8, ptr %93, i32 2
  %169 = getelementptr inbounds i8, ptr %93, i32 3
  %170 = getelementptr inbounds i8, ptr %94, i32 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  br label %186

173:                                              ; preds = %141
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 8, i32 noundef 8, i32 noundef 168, i32 noundef 168) #11
  br label %175

175:                                              ; preds = %173, %141
  %176 = load ptr, ptr %98, align 4
  %177 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %96, i32 noundef 1) #10
  %178 = icmp eq i32 %177, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %95) #10
  br i1 %178, label %154, label %179

179:                                              ; preds = %175, %162
  %180 = phi i32 [ 8, %175 ], [ 9, %162 ]
  %181 = phi i32 [ 168, %175 ], [ 65164, %162 ]
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %181, i32 noundef %180) #11
  br label %1516

183:                                              ; preds = %207
  %184 = add nuw nsw i32 %187, 1
  %185 = icmp eq i32 %184, 13
  br i1 %185, label %339, label %186

186:                                              ; preds = %183, %166
  %187 = phi i32 [ 0, %166 ], [ %184, %183 ]
  %188 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %187
  %189 = load i16, ptr %188, align 2
  %190 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_8mhz, i32 0, i32 %187
  %191 = load i16, ptr %190, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %93) #10
  %192 = lshr i16 %189, 8
  %193 = trunc i16 %192 to i8
  store i8 %193, ptr %93, align 4
  %194 = trunc i16 %189 to i8
  store i8 %194, ptr %167, align 1
  %195 = lshr i16 %191, 8
  %196 = trunc i16 %195 to i8
  store i8 %196, ptr %168, align 2
  %197 = trunc i16 %191 to i8
  store i8 %197, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #10
  store i32 4, ptr %170, align 4, !annotation !8
  %198 = load i8, ptr %146, align 4
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %94, align 4
  store i16 0, ptr %171, align 2
  store ptr %93, ptr %172, align 4
  %200 = load i32, ptr @debug, align 4
  %201 = and i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %186
  %204 = zext i16 %191 to i32
  %205 = zext i16 %189 to i32
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %205, i32 noundef %205, i32 noundef %204, i32 noundef %204) #11
  br label %207

207:                                              ; preds = %203, %186
  %208 = load ptr, ptr %98, align 4
  %209 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %94, i32 noundef 1) #10
  %210 = icmp eq i32 %209, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %93) #10
  br i1 %210, label %183, label %211

211:                                              ; preds = %207
  %212 = zext i16 %191 to i32
  %213 = zext i16 %189 to i32
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %212, i32 noundef %213) #11
  br label %1516

215:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %91) #10
  store i8 0, ptr %91, align 4
  store i8 9, ptr %129, align 1
  store i8 -34, ptr %130, align 2
  store i8 -69, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #10
  store i32 4, ptr %132, align 4, !annotation !8
  %216 = load i8, ptr %133, align 4
  %217 = zext i8 %216 to i16
  store i16 %217, ptr %92, align 4
  store i16 0, ptr %134, align 2
  store ptr %91, ptr %135, align 4
  %218 = load i32, ptr @debug, align 4
  %219 = and i32 %218, 2
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %215
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 9, i32 noundef 9, i32 noundef 57019, i32 noundef 57019) #11
  br label %223

223:                                              ; preds = %221, %215
  %224 = load ptr, ptr %98, align 4
  %225 = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %92, i32 noundef 1) #10
  %226 = icmp eq i32 %225, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %91) #10
  br i1 %226, label %227, label %240

227:                                              ; preds = %223
  %228 = getelementptr inbounds i8, ptr %89, i32 1
  %229 = getelementptr inbounds i8, ptr %89, i32 2
  %230 = getelementptr inbounds i8, ptr %89, i32 3
  %231 = getelementptr inbounds i8, ptr %90, i32 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 1
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 3
  br label %247

234:                                              ; preds = %128
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 8, i32 noundef 8, i32 noundef 147, i32 noundef 147) #11
  br label %236

236:                                              ; preds = %234, %128
  %237 = load ptr, ptr %98, align 4
  %238 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %92, i32 noundef 1) #10
  %239 = icmp eq i32 %238, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %91) #10
  br i1 %239, label %215, label %240

240:                                              ; preds = %236, %223
  %241 = phi i32 [ 8, %236 ], [ 9, %223 ]
  %242 = phi i32 [ 147, %236 ], [ 57019, %223 ]
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %242, i32 noundef %241) #11
  br label %1516

244:                                              ; preds = %268
  %245 = add nuw nsw i32 %248, 1
  %246 = icmp eq i32 %245, 13
  br i1 %246, label %339, label %247

247:                                              ; preds = %244, %227
  %248 = phi i32 [ 0, %227 ], [ %245, %244 ]
  %249 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %248
  %250 = load i16, ptr %249, align 2
  %251 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_7mhz, i32 0, i32 %248
  %252 = load i16, ptr %251, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %89) #10
  %253 = lshr i16 %250, 8
  %254 = trunc i16 %253 to i8
  store i8 %254, ptr %89, align 4
  %255 = trunc i16 %250 to i8
  store i8 %255, ptr %228, align 1
  %256 = lshr i16 %252, 8
  %257 = trunc i16 %256 to i8
  store i8 %257, ptr %229, align 2
  %258 = trunc i16 %252 to i8
  store i8 %258, ptr %230, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %90) #10
  store i32 4, ptr %231, align 4, !annotation !8
  %259 = load i8, ptr %133, align 4
  %260 = zext i8 %259 to i16
  store i16 %260, ptr %90, align 4
  store i16 0, ptr %232, align 2
  store ptr %89, ptr %233, align 4
  %261 = load i32, ptr @debug, align 4
  %262 = and i32 %261, 2
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %247
  %265 = zext i16 %252 to i32
  %266 = zext i16 %250 to i32
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %266, i32 noundef %266, i32 noundef %265, i32 noundef %265) #11
  br label %268

268:                                              ; preds = %264, %247
  %269 = load ptr, ptr %98, align 4
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %90, i32 noundef 1) #10
  %271 = icmp eq i32 %270, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %90) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %89) #10
  br i1 %271, label %244, label %272

272:                                              ; preds = %268
  %273 = zext i16 %252 to i32
  %274 = zext i16 %250 to i32
  %275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %273, i32 noundef %274) #11
  br label %1516

276:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %87) #10
  store i8 0, ptr %87, align 4
  store i8 9, ptr %116, align 1
  store i8 -66, ptr %117, align 2
  store i8 -23, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #10
  store i32 4, ptr %119, align 4, !annotation !8
  %277 = load i8, ptr %120, align 4
  %278 = zext i8 %277 to i16
  store i16 %278, ptr %88, align 4
  store i16 0, ptr %121, align 2
  store ptr %87, ptr %122, align 4
  %279 = load i32, ptr @debug, align 4
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %276
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 9, i32 noundef 9, i32 noundef 48873, i32 noundef 48873) #11
  br label %284

284:                                              ; preds = %282, %276
  %285 = load ptr, ptr %98, align 4
  %286 = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %88, i32 noundef 1) #10
  %287 = icmp eq i32 %286, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %87) #10
  br i1 %287, label %288, label %301

288:                                              ; preds = %284
  %289 = getelementptr inbounds i8, ptr %85, i32 1
  %290 = getelementptr inbounds i8, ptr %85, i32 2
  %291 = getelementptr inbounds i8, ptr %85, i32 3
  %292 = getelementptr inbounds i8, ptr %86, i32 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 1
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 3
  br label %308

295:                                              ; preds = %115
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 8, i32 noundef 8, i32 noundef 126, i32 noundef 126) #11
  br label %297

297:                                              ; preds = %295, %115
  %298 = load ptr, ptr %98, align 4
  %299 = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %88, i32 noundef 1) #10
  %300 = icmp eq i32 %299, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %87) #10
  br i1 %300, label %276, label %301

301:                                              ; preds = %297, %284
  %302 = phi i32 [ 8, %297 ], [ 9, %284 ]
  %303 = phi i32 [ 126, %297 ], [ 48873, %284 ]
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %303, i32 noundef %302) #11
  br label %1516

305:                                              ; preds = %329
  %306 = add nuw nsw i32 %309, 1
  %307 = icmp eq i32 %306, 13
  br i1 %307, label %339, label %308

308:                                              ; preds = %305, %288
  %309 = phi i32 [ 0, %288 ], [ %306, %305 ]
  %310 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %309
  %311 = load i16, ptr %310, align 2
  %312 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_6mhz, i32 0, i32 %309
  %313 = load i16, ptr %312, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %85) #10
  %314 = lshr i16 %311, 8
  %315 = trunc i16 %314 to i8
  store i8 %315, ptr %85, align 4
  %316 = trunc i16 %311 to i8
  store i8 %316, ptr %289, align 1
  %317 = lshr i16 %313, 8
  %318 = trunc i16 %317 to i8
  store i8 %318, ptr %290, align 2
  %319 = trunc i16 %313 to i8
  store i8 %319, ptr %291, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %86) #10
  store i32 4, ptr %292, align 4, !annotation !8
  %320 = load i8, ptr %120, align 4
  %321 = zext i8 %320 to i16
  store i16 %321, ptr %86, align 4
  store i16 0, ptr %293, align 2
  store ptr %85, ptr %294, align 4
  %322 = load i32, ptr @debug, align 4
  %323 = and i32 %322, 2
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %308
  %326 = zext i16 %313 to i32
  %327 = zext i16 %311 to i32
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %327, i32 noundef %327, i32 noundef %326, i32 noundef %326) #11
  br label %329

329:                                              ; preds = %325, %308
  %330 = load ptr, ptr %98, align 4
  %331 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %86, i32 noundef 1) #10
  %332 = icmp eq i32 %331, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %86) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %85) #10
  br i1 %332, label %305, label %333

333:                                              ; preds = %329
  %334 = zext i16 %313 to i32
  %335 = zext i16 %311 to i32
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %334, i32 noundef %335) #11
  br label %1516

337:                                              ; preds = %112
  %338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %1516

339:                                              ; preds = %305, %244, %183
  %340 = load i32, ptr @debug, align 4
  %341 = and i32 %340, 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %339
  %344 = load i32, ptr %113, align 4
  %345 = udiv i32 %344, 1000000
  %346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dib3000mb_set_frontend, i32 noundef %345) #11
  br label %347

347:                                              ; preds = %343, %339, %101, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %83) #10
  store i8 0, ptr %83, align 4
  %348 = getelementptr inbounds i8, ptr %83, i32 1
  store i8 52, ptr %348, align 1
  %349 = getelementptr inbounds i8, ptr %83, i32 2
  store i8 0, ptr %349, align 2
  %350 = getelementptr inbounds i8, ptr %83, i32 3
  store i8 4, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %84) #10
  %351 = getelementptr inbounds i8, ptr %84, i32 4
  store i32 4, ptr %351, align 4, !annotation !8
  %352 = getelementptr inbounds %struct.dib3000_state, ptr %98, i32 0, i32 1
  %353 = load i8, ptr %352, align 4
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %84, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 1
  store i16 0, ptr %355, align 2
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 3
  store ptr %83, ptr %356, align 4
  %357 = load i32, ptr @debug, align 4
  %358 = and i32 %357, 2
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %347
  %361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 52, i32 noundef 52, i32 noundef 4, i32 noundef 4) #11
  br label %362

362:                                              ; preds = %360, %347
  %363 = load ptr, ptr %98, align 4
  %364 = call i32 @i2c_transfer(ptr noundef %363, ptr noundef nonnull %84, i32 noundef 1) #10
  %365 = icmp eq i32 %364, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %84) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %83) #10
  br i1 %365, label %368, label %366

366:                                              ; preds = %362
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 52) #11
  br label %1516

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %370 = load i32, ptr %369, align 4
  switch i32 %370, label %1516 [
    i32 0, label %371
    i32 1, label %398
    i32 2, label %425
  ]

371:                                              ; preds = %368
  %372 = load i32, ptr @debug, align 4
  %373 = and i32 %372, 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %371
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %377 = load i32, ptr @debug, align 4
  br label %378

378:                                              ; preds = %375, %371
  %379 = phi i32 [ %377, %375 ], [ %372, %371 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %81) #10
  store i8 0, ptr %81, align 4
  %380 = getelementptr inbounds i8, ptr %81, i32 1
  store i8 1, ptr %380, align 1
  %381 = getelementptr inbounds i8, ptr %81, i32 2
  store i8 0, ptr %381, align 2
  %382 = getelementptr inbounds i8, ptr %81, i32 3
  store i8 0, ptr %382, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %82) #10
  %383 = getelementptr inbounds i8, ptr %82, i32 4
  store i32 4, ptr %383, align 4, !annotation !8
  %384 = load i8, ptr %352, align 4
  %385 = zext i8 %384 to i16
  store i16 %385, ptr %82, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 1
  store i16 0, ptr %386, align 2
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 3
  store ptr %81, ptr %387, align 4
  %388 = and i32 %379, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %378
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  br label %392

392:                                              ; preds = %390, %378
  %393 = load ptr, ptr %98, align 4
  %394 = call i32 @i2c_transfer(ptr noundef %393, ptr noundef nonnull %82, i32 noundef 1) #10
  %395 = icmp eq i32 %394, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %82) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %81) #10
  br i1 %395, label %431, label %396

396:                                              ; preds = %392
  %397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1) #11
  br label %1516

398:                                              ; preds = %368
  %399 = load i32, ptr @debug, align 4
  %400 = and i32 %399, 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %398
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %404 = load i32, ptr @debug, align 4
  br label %405

405:                                              ; preds = %402, %398
  %406 = phi i32 [ %404, %402 ], [ %399, %398 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %79) #10
  store i8 0, ptr %79, align 4
  %407 = getelementptr inbounds i8, ptr %79, i32 1
  store i8 1, ptr %407, align 1
  %408 = getelementptr inbounds i8, ptr %79, i32 2
  store i8 0, ptr %408, align 2
  %409 = getelementptr inbounds i8, ptr %79, i32 3
  store i8 1, ptr %409, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %80) #10
  %410 = getelementptr inbounds i8, ptr %80, i32 4
  store i32 4, ptr %410, align 4, !annotation !8
  %411 = load i8, ptr %352, align 4
  %412 = zext i8 %411 to i16
  store i16 %412, ptr %80, align 4
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 1
  store i16 0, ptr %413, align 2
  %414 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 3
  store ptr %79, ptr %414, align 4
  %415 = and i32 %406, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %405
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #11
  br label %419

419:                                              ; preds = %417, %405
  %420 = load ptr, ptr %98, align 4
  %421 = call i32 @i2c_transfer(ptr noundef %420, ptr noundef nonnull %80, i32 noundef 1) #10
  %422 = icmp eq i32 %421, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %80) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %79) #10
  br i1 %422, label %431, label %423

423:                                              ; preds = %419
  %424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1) #11
  br label %1516

425:                                              ; preds = %368
  %426 = load i32, ptr @debug, align 4
  %427 = and i32 %426, 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %425
  %430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %431

431:                                              ; preds = %429, %425, %419, %392
  %432 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %433 = load i32, ptr %432, align 4
  switch i32 %433, label %1516 [
    i32 0, label %434
    i32 1, label %461
    i32 2, label %488
    i32 3, label %515
    i32 4, label %542
  ]

434:                                              ; preds = %431
  %435 = load i32, ptr @debug, align 4
  %436 = and i32 %435, 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %434
  %439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %440 = load i32, ptr @debug, align 4
  br label %441

441:                                              ; preds = %438, %434
  %442 = phi i32 [ %440, %438 ], [ %435, %434 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %77) #10
  store i8 0, ptr %77, align 4
  %443 = getelementptr inbounds i8, ptr %77, i32 1
  store i8 2, ptr %443, align 1
  %444 = getelementptr inbounds i8, ptr %77, i32 2
  store i8 0, ptr %444, align 2
  %445 = getelementptr inbounds i8, ptr %77, i32 3
  store i8 0, ptr %445, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %78) #10
  %446 = getelementptr inbounds i8, ptr %78, i32 4
  store i32 4, ptr %446, align 4, !annotation !8
  %447 = load i8, ptr %352, align 4
  %448 = zext i8 %447 to i16
  store i16 %448, ptr %78, align 4
  %449 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 1
  store i16 0, ptr %449, align 2
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 3
  store ptr %77, ptr %450, align 4
  %451 = and i32 %442, 2
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %455, label %453

453:                                              ; preds = %441
  %454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  br label %455

455:                                              ; preds = %453, %441
  %456 = load ptr, ptr %98, align 4
  %457 = call i32 @i2c_transfer(ptr noundef %456, ptr noundef nonnull %78, i32 noundef 1) #10
  %458 = icmp eq i32 %457, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %78) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %77) #10
  br i1 %458, label %548, label %459

459:                                              ; preds = %455
  %460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2) #11
  br label %1516

461:                                              ; preds = %431
  %462 = load i32, ptr @debug, align 4
  %463 = and i32 %462, 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %461
  %466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %467 = load i32, ptr @debug, align 4
  br label %468

468:                                              ; preds = %465, %461
  %469 = phi i32 [ %467, %465 ], [ %462, %461 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %75) #10
  store i8 0, ptr %75, align 4
  %470 = getelementptr inbounds i8, ptr %75, i32 1
  store i8 2, ptr %470, align 1
  %471 = getelementptr inbounds i8, ptr %75, i32 2
  store i8 0, ptr %471, align 2
  %472 = getelementptr inbounds i8, ptr %75, i32 3
  store i8 1, ptr %472, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %76) #10
  %473 = getelementptr inbounds i8, ptr %76, i32 4
  store i32 4, ptr %473, align 4, !annotation !8
  %474 = load i8, ptr %352, align 4
  %475 = zext i8 %474 to i16
  store i16 %475, ptr %76, align 4
  %476 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  store i16 0, ptr %476, align 2
  %477 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  store ptr %75, ptr %477, align 4
  %478 = and i32 %469, 2
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %482, label %480

480:                                              ; preds = %468
  %481 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 1) #11
  br label %482

482:                                              ; preds = %480, %468
  %483 = load ptr, ptr %98, align 4
  %484 = call i32 @i2c_transfer(ptr noundef %483, ptr noundef nonnull %76, i32 noundef 1) #10
  %485 = icmp eq i32 %484, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %76) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %75) #10
  br i1 %485, label %548, label %486

486:                                              ; preds = %482
  %487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 2) #11
  br label %1516

488:                                              ; preds = %431
  %489 = load i32, ptr @debug, align 4
  %490 = and i32 %489, 4
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %488
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %494 = load i32, ptr @debug, align 4
  br label %495

495:                                              ; preds = %492, %488
  %496 = phi i32 [ %494, %492 ], [ %489, %488 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %73) #10
  store i8 0, ptr %73, align 4
  %497 = getelementptr inbounds i8, ptr %73, i32 1
  store i8 2, ptr %497, align 1
  %498 = getelementptr inbounds i8, ptr %73, i32 2
  store i8 0, ptr %498, align 2
  %499 = getelementptr inbounds i8, ptr %73, i32 3
  store i8 2, ptr %499, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #10
  %500 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 4, ptr %500, align 4, !annotation !8
  %501 = load i8, ptr %352, align 4
  %502 = zext i8 %501 to i16
  store i16 %502, ptr %74, align 4
  %503 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %503, align 2
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %73, ptr %504, align 4
  %505 = and i32 %496, 2
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %495
  %508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 2) #11
  br label %509

509:                                              ; preds = %507, %495
  %510 = load ptr, ptr %98, align 4
  %511 = call i32 @i2c_transfer(ptr noundef %510, ptr noundef nonnull %74, i32 noundef 1) #10
  %512 = icmp eq i32 %511, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %73) #10
  br i1 %512, label %548, label %513

513:                                              ; preds = %509
  %514 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 2) #11
  br label %1516

515:                                              ; preds = %431
  %516 = load i32, ptr @debug, align 4
  %517 = and i32 %516, 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %521 = load i32, ptr @debug, align 4
  br label %522

522:                                              ; preds = %519, %515
  %523 = phi i32 [ %521, %519 ], [ %516, %515 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %71) #10
  store i8 0, ptr %71, align 4
  %524 = getelementptr inbounds i8, ptr %71, i32 1
  store i8 2, ptr %524, align 1
  %525 = getelementptr inbounds i8, ptr %71, i32 2
  store i8 0, ptr %525, align 2
  %526 = getelementptr inbounds i8, ptr %71, i32 3
  store i8 3, ptr %526, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #10
  %527 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 4, ptr %527, align 4, !annotation !8
  %528 = load i8, ptr %352, align 4
  %529 = zext i8 %528 to i16
  store i16 %529, ptr %72, align 4
  %530 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %530, align 2
  %531 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %71, ptr %531, align 4
  %532 = and i32 %523, 2
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %522
  %535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 2, i32 noundef 2, i32 noundef 3, i32 noundef 3) #11
  br label %536

536:                                              ; preds = %534, %522
  %537 = load ptr, ptr %98, align 4
  %538 = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %72, i32 noundef 1) #10
  %539 = icmp eq i32 %538, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %71) #10
  br i1 %539, label %548, label %540

540:                                              ; preds = %536
  %541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef 2) #11
  br label %1516

542:                                              ; preds = %431
  %543 = load i32, ptr @debug, align 4
  %544 = and i32 %543, 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %548, label %546

546:                                              ; preds = %542
  %547 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %548

548:                                              ; preds = %546, %542, %536, %509, %482, %455
  %549 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %550 = load i32, ptr %549, align 4
  switch i32 %550, label %1516 [
    i32 0, label %551
    i32 2, label %578
    i32 1, label %584
  ]

551:                                              ; preds = %548
  %552 = load i32, ptr @debug, align 4
  %553 = and i32 %552, 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %558, label %555

555:                                              ; preds = %551
  %556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %557 = load i32, ptr @debug, align 4
  br label %558

558:                                              ; preds = %555, %551
  %559 = phi i32 [ %557, %555 ], [ %552, %551 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %69) #10
  store i8 0, ptr %69, align 4
  %560 = getelementptr inbounds i8, ptr %69, i32 1
  store i8 5, ptr %560, align 1
  %561 = getelementptr inbounds i8, ptr %69, i32 2
  store i8 0, ptr %561, align 2
  %562 = getelementptr inbounds i8, ptr %69, i32 3
  store i8 0, ptr %562, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #10
  %563 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 4, ptr %563, align 4, !annotation !8
  %564 = load i8, ptr %352, align 4
  %565 = zext i8 %564 to i16
  store i16 %565, ptr %70, align 4
  %566 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %566, align 2
  %567 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %567, align 4
  %568 = and i32 %559, 2
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %572, label %570

570:                                              ; preds = %558
  %571 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 5, i32 noundef 5, i32 noundef 0, i32 noundef 0) #11
  br label %572

572:                                              ; preds = %570, %558
  %573 = load ptr, ptr %98, align 4
  %574 = call i32 @i2c_transfer(ptr noundef %573, ptr noundef nonnull %70, i32 noundef 1) #10
  %575 = icmp eq i32 %574, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %69) #10
  br i1 %575, label %611, label %576

576:                                              ; preds = %572
  %577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 5) #11
  br label %1516

578:                                              ; preds = %548
  %579 = load i32, ptr @debug, align 4
  %580 = and i32 %579, 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %611, label %582

582:                                              ; preds = %578
  %583 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %611

584:                                              ; preds = %548
  %585 = load i32, ptr @debug, align 4
  %586 = and i32 %585, 4
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %584
  %589 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %590 = load i32, ptr @debug, align 4
  br label %591

591:                                              ; preds = %588, %584
  %592 = phi i32 [ %590, %588 ], [ %585, %584 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %67) #10
  store i8 0, ptr %67, align 4
  %593 = getelementptr inbounds i8, ptr %67, i32 1
  store i8 5, ptr %593, align 1
  %594 = getelementptr inbounds i8, ptr %67, i32 2
  store i8 0, ptr %594, align 2
  %595 = getelementptr inbounds i8, ptr %67, i32 3
  store i8 1, ptr %595, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #10
  %596 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 4, ptr %596, align 4, !annotation !8
  %597 = load i8, ptr %352, align 4
  %598 = zext i8 %597 to i16
  store i16 %598, ptr %68, align 4
  %599 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %599, align 2
  %600 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %67, ptr %600, align 4
  %601 = and i32 %592, 2
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %591
  %604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1) #11
  br label %605

605:                                              ; preds = %603, %591
  %606 = load ptr, ptr %98, align 4
  %607 = call i32 @i2c_transfer(ptr noundef %606, ptr noundef nonnull %68, i32 noundef 1) #10
  %608 = icmp eq i32 %607, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %67) #10
  br i1 %608, label %611, label %609

609:                                              ; preds = %605
  %610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 5) #11
  br label %1516

611:                                              ; preds = %605, %582, %578, %572
  %612 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %613 = load i32, ptr %612, align 4
  switch i32 %613, label %1516 [
    i32 0, label %614
    i32 1, label %641
    i32 3, label %668
    i32 6, label %695
  ]

614:                                              ; preds = %611
  %615 = load i32, ptr @debug, align 4
  %616 = and i32 %615, 4
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %614
  %619 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %620 = load i32, ptr @debug, align 4
  br label %621

621:                                              ; preds = %618, %614
  %622 = phi i32 [ %620, %618 ], [ %615, %614 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %65) #10
  store i8 0, ptr %65, align 4
  %623 = getelementptr inbounds i8, ptr %65, i32 1
  store i8 3, ptr %623, align 1
  %624 = getelementptr inbounds i8, ptr %65, i32 2
  store i8 0, ptr %624, align 2
  %625 = getelementptr inbounds i8, ptr %65, i32 3
  store i8 0, ptr %625, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %66) #10
  %626 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 4, ptr %626, align 4, !annotation !8
  %627 = load i8, ptr %352, align 4
  %628 = zext i8 %627 to i16
  store i16 %628, ptr %66, align 4
  %629 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 1
  store i16 0, ptr %629, align 2
  %630 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  store ptr %65, ptr %630, align 4
  %631 = and i32 %622, 2
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %635, label %633

633:                                              ; preds = %621
  %634 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0) #11
  br label %635

635:                                              ; preds = %633, %621
  %636 = load ptr, ptr %98, align 4
  %637 = call i32 @i2c_transfer(ptr noundef %636, ptr noundef nonnull %66, i32 noundef 1) #10
  %638 = icmp eq i32 %637, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %66) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %65) #10
  br i1 %638, label %695, label %639

639:                                              ; preds = %635
  %640 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 3) #11
  br label %1516

641:                                              ; preds = %611
  %642 = load i32, ptr @debug, align 4
  %643 = and i32 %642, 4
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %648, label %645

645:                                              ; preds = %641
  %646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %647 = load i32, ptr @debug, align 4
  br label %648

648:                                              ; preds = %645, %641
  %649 = phi i32 [ %647, %645 ], [ %642, %641 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %63) #10
  store i8 0, ptr %63, align 4
  %650 = getelementptr inbounds i8, ptr %63, i32 1
  store i8 3, ptr %650, align 1
  %651 = getelementptr inbounds i8, ptr %63, i32 2
  store i8 0, ptr %651, align 2
  %652 = getelementptr inbounds i8, ptr %63, i32 3
  store i8 1, ptr %652, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #10
  %653 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 4, ptr %653, align 4, !annotation !8
  %654 = load i8, ptr %352, align 4
  %655 = zext i8 %654 to i16
  store i16 %655, ptr %64, align 4
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %656, align 2
  %657 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %63, ptr %657, align 4
  %658 = and i32 %649, 2
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %648
  %661 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1) #11
  br label %662

662:                                              ; preds = %660, %648
  %663 = load ptr, ptr %98, align 4
  %664 = call i32 @i2c_transfer(ptr noundef %663, ptr noundef nonnull %64, i32 noundef 1) #10
  %665 = icmp eq i32 %664, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %63) #10
  br i1 %665, label %695, label %666

666:                                              ; preds = %662
  %667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 3) #11
  br label %1516

668:                                              ; preds = %611
  %669 = load i32, ptr @debug, align 4
  %670 = and i32 %669, 4
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %675, label %672

672:                                              ; preds = %668
  %673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %674 = load i32, ptr @debug, align 4
  br label %675

675:                                              ; preds = %672, %668
  %676 = phi i32 [ %674, %672 ], [ %669, %668 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %61) #10
  store i8 0, ptr %61, align 4
  %677 = getelementptr inbounds i8, ptr %61, i32 1
  store i8 3, ptr %677, align 1
  %678 = getelementptr inbounds i8, ptr %61, i32 2
  store i8 0, ptr %678, align 2
  %679 = getelementptr inbounds i8, ptr %61, i32 3
  store i8 2, ptr %679, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #10
  %680 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 4, ptr %680, align 4, !annotation !8
  %681 = load i8, ptr %352, align 4
  %682 = zext i8 %681 to i16
  store i16 %682, ptr %62, align 4
  %683 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %683, align 2
  %684 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %61, ptr %684, align 4
  %685 = and i32 %676, 2
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %689, label %687

687:                                              ; preds = %675
  %688 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 2) #11
  br label %689

689:                                              ; preds = %687, %675
  %690 = load ptr, ptr %98, align 4
  %691 = call i32 @i2c_transfer(ptr noundef %690, ptr noundef nonnull %62, i32 noundef 1) #10
  %692 = icmp eq i32 %691, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %61) #10
  br i1 %692, label %695, label %693

693:                                              ; preds = %689
  %694 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 3) #11
  br label %1516

695:                                              ; preds = %689, %662, %635, %611
  %696 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %697 = load i32, ptr %696, align 4
  switch i32 %697, label %1516 [
    i32 0, label %698
    i32 1, label %704
    i32 2, label %731
    i32 3, label %758
    i32 4, label %785
  ]

698:                                              ; preds = %695
  %699 = load i32, ptr @debug, align 4
  %700 = and i32 %699, 4
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %704, label %702

702:                                              ; preds = %698
  %703 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %704

704:                                              ; preds = %702, %698, %695
  %705 = load i32, ptr @debug, align 4
  %706 = and i32 %705, 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %711, label %708

708:                                              ; preds = %704
  %709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %710 = load i32, ptr @debug, align 4
  br label %711

711:                                              ; preds = %708, %704
  %712 = phi i32 [ %710, %708 ], [ %705, %704 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %59) #10
  store i8 0, ptr %59, align 4
  %713 = getelementptr inbounds i8, ptr %59, i32 1
  store i8 4, ptr %713, align 1
  %714 = getelementptr inbounds i8, ptr %59, i32 2
  store i8 0, ptr %714, align 2
  %715 = getelementptr inbounds i8, ptr %59, i32 3
  store i8 1, ptr %715, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #10
  %716 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 4, ptr %716, align 4, !annotation !8
  %717 = load i8, ptr %352, align 4
  %718 = zext i8 %717 to i16
  store i16 %718, ptr %60, align 4
  %719 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %719, align 2
  %720 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %59, ptr %720, align 4
  %721 = and i32 %712, 2
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %725, label %723

723:                                              ; preds = %711
  %724 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 4, i32 noundef 4, i32 noundef 1, i32 noundef 1) #11
  br label %725

725:                                              ; preds = %723, %711
  %726 = load ptr, ptr %98, align 4
  %727 = call i32 @i2c_transfer(ptr noundef %726, ptr noundef nonnull %60, i32 noundef 1) #10
  %728 = icmp eq i32 %727, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %59) #10
  br i1 %728, label %791, label %729

729:                                              ; preds = %725
  %730 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 4) #11
  br label %1516

731:                                              ; preds = %695
  %732 = load i32, ptr @debug, align 4
  %733 = and i32 %732, 4
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %738, label %735

735:                                              ; preds = %731
  %736 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %737 = load i32, ptr @debug, align 4
  br label %738

738:                                              ; preds = %735, %731
  %739 = phi i32 [ %737, %735 ], [ %732, %731 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %57) #10
  store i8 0, ptr %57, align 4
  %740 = getelementptr inbounds i8, ptr %57, i32 1
  store i8 4, ptr %740, align 1
  %741 = getelementptr inbounds i8, ptr %57, i32 2
  store i8 0, ptr %741, align 2
  %742 = getelementptr inbounds i8, ptr %57, i32 3
  store i8 2, ptr %742, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #10
  %743 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 4, ptr %743, align 4, !annotation !8
  %744 = load i8, ptr %352, align 4
  %745 = zext i8 %744 to i16
  store i16 %745, ptr %58, align 4
  %746 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %746, align 2
  %747 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %747, align 4
  %748 = and i32 %739, 2
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %752, label %750

750:                                              ; preds = %738
  %751 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 4, i32 noundef 4, i32 noundef 2, i32 noundef 2) #11
  br label %752

752:                                              ; preds = %750, %738
  %753 = load ptr, ptr %98, align 4
  %754 = call i32 @i2c_transfer(ptr noundef %753, ptr noundef nonnull %58, i32 noundef 1) #10
  %755 = icmp eq i32 %754, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %57) #10
  br i1 %755, label %791, label %756

756:                                              ; preds = %752
  %757 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 4) #11
  br label %1516

758:                                              ; preds = %695
  %759 = load i32, ptr @debug, align 4
  %760 = and i32 %759, 4
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %765, label %762

762:                                              ; preds = %758
  %763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %764 = load i32, ptr @debug, align 4
  br label %765

765:                                              ; preds = %762, %758
  %766 = phi i32 [ %764, %762 ], [ %759, %758 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %55) #10
  store i8 0, ptr %55, align 4
  %767 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 4, ptr %767, align 1
  %768 = getelementptr inbounds i8, ptr %55, i32 2
  store i8 0, ptr %768, align 2
  %769 = getelementptr inbounds i8, ptr %55, i32 3
  store i8 4, ptr %769, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #10
  %770 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 4, ptr %770, align 4, !annotation !8
  %771 = load i8, ptr %352, align 4
  %772 = zext i8 %771 to i16
  store i16 %772, ptr %56, align 4
  %773 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %773, align 2
  %774 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %774, align 4
  %775 = and i32 %766, 2
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %779, label %777

777:                                              ; preds = %765
  %778 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 4, i32 noundef 4, i32 noundef 4, i32 noundef 4) #11
  br label %779

779:                                              ; preds = %777, %765
  %780 = load ptr, ptr %98, align 4
  %781 = call i32 @i2c_transfer(ptr noundef %780, ptr noundef nonnull %56, i32 noundef 1) #10
  %782 = icmp eq i32 %781, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #10
  br i1 %782, label %791, label %783

783:                                              ; preds = %779
  %784 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 4) #11
  br label %1516

785:                                              ; preds = %695
  %786 = load i32, ptr @debug, align 4
  %787 = and i32 %786, 4
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %1015, label %789

789:                                              ; preds = %785
  %790 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %791

791:                                              ; preds = %789, %779, %752, %725
  %792 = load i32, ptr %696, align 4
  switch i32 %792, label %835 [
    i32 0, label %793
    i32 4, label %1015
  ]

793:                                              ; preds = %791
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %53) #10
  store i8 0, ptr %53, align 4
  %794 = getelementptr inbounds i8, ptr %53, i32 1
  store i8 -128, ptr %794, align 1
  %795 = getelementptr inbounds i8, ptr %53, i32 2
  store i8 0, ptr %795, align 2
  %796 = getelementptr inbounds i8, ptr %53, i32 3
  store i8 0, ptr %796, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %797 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 4, ptr %797, align 4, !annotation !8
  %798 = load i8, ptr %352, align 4
  %799 = zext i8 %798 to i16
  store i16 %799, ptr %54, align 4
  %800 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %800, align 2
  %801 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %801, align 4
  %802 = load i32, ptr @debug, align 4
  %803 = and i32 %802, 2
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %807, label %805

805:                                              ; preds = %793
  %806 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 128, i32 noundef 128, i32 noundef 0, i32 noundef 0) #11
  br label %807

807:                                              ; preds = %805, %793
  %808 = load ptr, ptr %98, align 4
  %809 = call i32 @i2c_transfer(ptr noundef %808, ptr noundef nonnull %54, i32 noundef 1) #10
  %810 = icmp eq i32 %809, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %53) #10
  br i1 %810, label %813, label %811

811:                                              ; preds = %807
  %812 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 128) #11
  br label %1516

813:                                              ; preds = %807
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #10
  store i8 0, ptr %51, align 4
  %814 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 -126, ptr %814, align 1
  %815 = getelementptr inbounds i8, ptr %51, i32 2
  store i8 0, ptr %815, align 2
  %816 = getelementptr inbounds i8, ptr %51, i32 3
  store i8 1, ptr %816, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %817 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 4, ptr %817, align 4, !annotation !8
  %818 = load i8, ptr %352, align 4
  %819 = zext i8 %818 to i16
  store i16 %819, ptr %52, align 4
  %820 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %820, align 2
  %821 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %821, align 4
  %822 = load i32, ptr @debug, align 4
  %823 = and i32 %822, 2
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %813
  %826 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 130, i32 noundef 130, i32 noundef 1, i32 noundef 1) #11
  br label %827

827:                                              ; preds = %825, %813
  %828 = load ptr, ptr %98, align 4
  %829 = call i32 @i2c_transfer(ptr noundef %828, ptr noundef nonnull %52, i32 noundef 1) #10
  %830 = icmp eq i32 %829, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #10
  br i1 %830, label %833, label %831

831:                                              ; preds = %827
  %832 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 130) #11
  br label %1516

833:                                              ; preds = %827
  %834 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  br label %877

835:                                              ; preds = %791
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #10
  store i8 0, ptr %49, align 4
  %836 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 -128, ptr %836, align 1
  %837 = getelementptr inbounds i8, ptr %49, i32 2
  store i8 0, ptr %837, align 2
  %838 = getelementptr inbounds i8, ptr %49, i32 3
  store i8 1, ptr %838, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %839 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 4, ptr %839, align 4, !annotation !8
  %840 = load i8, ptr %352, align 4
  %841 = zext i8 %840 to i16
  store i16 %841, ptr %50, align 4
  %842 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %842, align 2
  %843 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %843, align 4
  %844 = load i32, ptr @debug, align 4
  %845 = and i32 %844, 2
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %849, label %847

847:                                              ; preds = %835
  %848 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 128, i32 noundef 128, i32 noundef 1, i32 noundef 1) #11
  br label %849

849:                                              ; preds = %847, %835
  %850 = load ptr, ptr %98, align 4
  %851 = call i32 @i2c_transfer(ptr noundef %850, ptr noundef nonnull %50, i32 noundef 1) #10
  %852 = icmp eq i32 %851, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #10
  br i1 %852, label %855, label %853

853:                                              ; preds = %849
  %854 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 128) #11
  br label %1516

855:                                              ; preds = %849
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #10
  store i8 0, ptr %47, align 4
  %856 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 -126, ptr %856, align 1
  %857 = getelementptr inbounds i8, ptr %47, i32 2
  store i8 0, ptr %857, align 2
  %858 = getelementptr inbounds i8, ptr %47, i32 3
  store i8 0, ptr %858, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %859 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 4, ptr %859, align 4, !annotation !8
  %860 = load i8, ptr %352, align 4
  %861 = zext i8 %860 to i16
  store i16 %861, ptr %48, align 4
  %862 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %862, align 2
  %863 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %863, align 4
  %864 = load i32, ptr @debug, align 4
  %865 = and i32 %864, 2
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %869, label %867

867:                                              ; preds = %855
  %868 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 130, i32 noundef 130, i32 noundef 0, i32 noundef 0) #11
  br label %869

869:                                              ; preds = %867, %855
  %870 = load ptr, ptr %98, align 4
  %871 = call i32 @i2c_transfer(ptr noundef %870, ptr noundef nonnull %48, i32 noundef 1) #10
  %872 = icmp eq i32 %871, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #10
  br i1 %872, label %875, label %873

873:                                              ; preds = %869
  %874 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 130) #11
  br label %1516

875:                                              ; preds = %869
  %876 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  br label %877

877:                                              ; preds = %875, %833
  %878 = phi ptr [ %834, %833 ], [ %876, %875 ]
  %879 = load i32, ptr %878, align 4
  switch i32 %879, label %1516 [
    i32 1, label %880
    i32 2, label %907
    i32 3, label %934
    i32 5, label %961
    i32 7, label %988
    i32 0, label %1015
    i32 9, label %1019
  ]

880:                                              ; preds = %877
  %881 = load i32, ptr @debug, align 4
  %882 = and i32 %881, 4
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %887, label %884

884:                                              ; preds = %880
  %885 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %886 = load i32, ptr @debug, align 4
  br label %887

887:                                              ; preds = %884, %880
  %888 = phi i32 [ %886, %884 ], [ %881, %880 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #10
  store i8 0, ptr %45, align 4
  %889 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 -127, ptr %889, align 1
  %890 = getelementptr inbounds i8, ptr %45, i32 2
  store i8 0, ptr %890, align 2
  %891 = getelementptr inbounds i8, ptr %45, i32 3
  store i8 1, ptr %891, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %892 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 4, ptr %892, align 4, !annotation !8
  %893 = load i8, ptr %352, align 4
  %894 = zext i8 %893 to i16
  store i16 %894, ptr %46, align 4
  %895 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %895, align 2
  %896 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %896, align 4
  %897 = and i32 %888, 2
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %887
  %900 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 129, i32 noundef 129, i32 noundef 1, i32 noundef 1) #11
  br label %901

901:                                              ; preds = %899, %887
  %902 = load ptr, ptr %98, align 4
  %903 = call i32 @i2c_transfer(ptr noundef %902, ptr noundef nonnull %46, i32 noundef 1) #10
  %904 = icmp eq i32 %903, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #10
  br i1 %904, label %1027, label %905

905:                                              ; preds = %901
  %906 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 129) #11
  br label %1516

907:                                              ; preds = %877
  %908 = load i32, ptr @debug, align 4
  %909 = and i32 %908, 4
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %914, label %911

911:                                              ; preds = %907
  %912 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %913 = load i32, ptr @debug, align 4
  br label %914

914:                                              ; preds = %911, %907
  %915 = phi i32 [ %913, %911 ], [ %908, %907 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #10
  store i8 0, ptr %43, align 4
  %916 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 -127, ptr %916, align 1
  %917 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 0, ptr %917, align 2
  %918 = getelementptr inbounds i8, ptr %43, i32 3
  store i8 2, ptr %918, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %919 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 4, ptr %919, align 4, !annotation !8
  %920 = load i8, ptr %352, align 4
  %921 = zext i8 %920 to i16
  store i16 %921, ptr %44, align 4
  %922 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %922, align 2
  %923 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %923, align 4
  %924 = and i32 %915, 2
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %928, label %926

926:                                              ; preds = %914
  %927 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 129, i32 noundef 129, i32 noundef 2, i32 noundef 2) #11
  br label %928

928:                                              ; preds = %926, %914
  %929 = load ptr, ptr %98, align 4
  %930 = call i32 @i2c_transfer(ptr noundef %929, ptr noundef nonnull %44, i32 noundef 1) #10
  %931 = icmp eq i32 %930, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #10
  br i1 %931, label %1027, label %932

932:                                              ; preds = %928
  %933 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 129) #11
  br label %1516

934:                                              ; preds = %877
  %935 = load i32, ptr @debug, align 4
  %936 = and i32 %935, 4
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %941, label %938

938:                                              ; preds = %934
  %939 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %940 = load i32, ptr @debug, align 4
  br label %941

941:                                              ; preds = %938, %934
  %942 = phi i32 [ %940, %938 ], [ %935, %934 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #10
  store i8 0, ptr %41, align 4
  %943 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 -127, ptr %943, align 1
  %944 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 0, ptr %944, align 2
  %945 = getelementptr inbounds i8, ptr %41, i32 3
  store i8 3, ptr %945, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %946 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 4, ptr %946, align 4, !annotation !8
  %947 = load i8, ptr %352, align 4
  %948 = zext i8 %947 to i16
  store i16 %948, ptr %42, align 4
  %949 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %949, align 2
  %950 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %950, align 4
  %951 = and i32 %942, 2
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %955, label %953

953:                                              ; preds = %941
  %954 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 129, i32 noundef 129, i32 noundef 3, i32 noundef 3) #11
  br label %955

955:                                              ; preds = %953, %941
  %956 = load ptr, ptr %98, align 4
  %957 = call i32 @i2c_transfer(ptr noundef %956, ptr noundef nonnull %42, i32 noundef 1) #10
  %958 = icmp eq i32 %957, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #10
  br i1 %958, label %1027, label %959

959:                                              ; preds = %955
  %960 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef 129) #11
  br label %1516

961:                                              ; preds = %877
  %962 = load i32, ptr @debug, align 4
  %963 = and i32 %962, 4
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %968, label %965

965:                                              ; preds = %961
  %966 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %967 = load i32, ptr @debug, align 4
  br label %968

968:                                              ; preds = %965, %961
  %969 = phi i32 [ %967, %965 ], [ %962, %961 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #10
  store i8 0, ptr %39, align 4
  %970 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 -127, ptr %970, align 1
  %971 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 0, ptr %971, align 2
  %972 = getelementptr inbounds i8, ptr %39, i32 3
  store i8 5, ptr %972, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %973 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 4, ptr %973, align 4, !annotation !8
  %974 = load i8, ptr %352, align 4
  %975 = zext i8 %974 to i16
  store i16 %975, ptr %40, align 4
  %976 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %976, align 2
  %977 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %977, align 4
  %978 = and i32 %969, 2
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %982, label %980

980:                                              ; preds = %968
  %981 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 129, i32 noundef 129, i32 noundef 5, i32 noundef 5) #11
  br label %982

982:                                              ; preds = %980, %968
  %983 = load ptr, ptr %98, align 4
  %984 = call i32 @i2c_transfer(ptr noundef %983, ptr noundef nonnull %40, i32 noundef 1) #10
  %985 = icmp eq i32 %984, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #10
  br i1 %985, label %1027, label %986

986:                                              ; preds = %982
  %987 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 5, i32 noundef 129) #11
  br label %1516

988:                                              ; preds = %877
  %989 = load i32, ptr @debug, align 4
  %990 = and i32 %989, 4
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %995, label %992

992:                                              ; preds = %988
  %993 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %994 = load i32, ptr @debug, align 4
  br label %995

995:                                              ; preds = %992, %988
  %996 = phi i32 [ %994, %992 ], [ %989, %988 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #10
  store i8 0, ptr %37, align 4
  %997 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 -127, ptr %997, align 1
  %998 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 0, ptr %998, align 2
  %999 = getelementptr inbounds i8, ptr %37, i32 3
  store i8 7, ptr %999, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %1000 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 4, ptr %1000, align 4, !annotation !8
  %1001 = load i8, ptr %352, align 4
  %1002 = zext i8 %1001 to i16
  store i16 %1002, ptr %38, align 4
  %1003 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %1003, align 2
  %1004 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %1004, align 4
  %1005 = and i32 %996, 2
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1009, label %1007

1007:                                             ; preds = %995
  %1008 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 129, i32 noundef 129, i32 noundef 7, i32 noundef 7) #11
  br label %1009

1009:                                             ; preds = %1007, %995
  %1010 = load ptr, ptr %98, align 4
  %1011 = call i32 @i2c_transfer(ptr noundef %1010, ptr noundef nonnull %38, i32 noundef 1) #10
  %1012 = icmp eq i32 %1011, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #10
  br i1 %1012, label %1027, label %1013

1013:                                             ; preds = %1009
  %1014 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 7, i32 noundef 129) #11
  br label %1516

1015:                                             ; preds = %877, %791, %785
  %1016 = load i32, ptr @debug, align 4
  %1017 = and i32 %1016, 4
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1027, label %1023

1019:                                             ; preds = %877
  %1020 = load i32, ptr @debug, align 4
  %1021 = and i32 %1020, 4
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1027, label %1023

1023:                                             ; preds = %1019, %1015
  %1024 = phi ptr [ @.str.36, %1015 ], [ @.str.37, %1019 ]
  %1025 = phi i1 [ false, %1015 ], [ true, %1019 ]
  %1026 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %1024, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %1027

1027:                                             ; preds = %1023, %1019, %1015, %1009, %982, %955, %928, %901
  %1028 = phi i1 [ true, %1019 ], [ false, %1015 ], [ false, %1009 ], [ false, %982 ], [ false, %955 ], [ false, %928 ], [ false, %901 ], [ %1025, %1023 ]
  %1029 = load i32, ptr %369, align 4
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i32
  %1032 = load i32, ptr %432, align 4
  %1033 = icmp eq i32 %1032, 4
  %1034 = zext i1 %1033 to i32
  %1035 = load i32, ptr %549, align 4
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i32
  %1038 = getelementptr [2 x [2 x [2 x i16]]], ptr @dib3000_seq, i32 0, i32 %1031, i32 %1034, i32 %1037
  %1039 = load i16, ptr %1038, align 2
  %1040 = zext i16 %1039 to i32
  %1041 = load i32, ptr @debug, align 4
  %1042 = and i32 %1041, 4
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1027
  %1045 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.dib3000mb_set_frontend, i32 noundef %1040) #11
  %1046 = load i32, ptr @debug, align 4
  br label %1047

1047:                                             ; preds = %1044, %1027
  %1048 = phi i32 [ %1046, %1044 ], [ %1041, %1027 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #10
  store i8 0, ptr %35, align 4
  %1049 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 54, ptr %1049, align 1
  %1050 = getelementptr inbounds i8, ptr %35, i32 2
  %1051 = lshr i16 %1039, 8
  %1052 = trunc i16 %1051 to i8
  store i8 %1052, ptr %1050, align 2
  %1053 = getelementptr inbounds i8, ptr %35, i32 3
  %1054 = trunc i16 %1039 to i8
  store i8 %1054, ptr %1053, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %1055 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 4, ptr %1055, align 4, !annotation !8
  %1056 = load i8, ptr %352, align 4
  %1057 = zext i8 %1056 to i16
  store i16 %1057, ptr %36, align 4
  %1058 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %1058, align 2
  %1059 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %1059, align 4
  %1060 = and i32 %1048, 2
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1064, label %1062

1062:                                             ; preds = %1047
  %1063 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 54, i32 noundef 54, i32 noundef %1040, i32 noundef %1040) #11
  br label %1064

1064:                                             ; preds = %1062, %1047
  %1065 = load ptr, ptr %98, align 4
  %1066 = call i32 @i2c_transfer(ptr noundef %1065, ptr noundef nonnull %36, i32 noundef 1) #10
  %1067 = icmp eq i32 %1066, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #10
  br i1 %1067, label %1070, label %1068

1068:                                             ; preds = %1064
  %1069 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1040, i32 noundef 54) #11
  br label %1516

1070:                                             ; preds = %1064
  %1071 = icmp ne i16 %1039, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #10
  store i8 0, ptr %33, align 4
  %1072 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 79, ptr %1072, align 1
  %1073 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 0, ptr %1073, align 2
  %1074 = getelementptr inbounds i8, ptr %33, i32 3
  %1075 = zext i1 %1071 to i8
  store i8 %1075, ptr %1074, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %1076 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 4, ptr %1076, align 4, !annotation !8
  %1077 = load i8, ptr %352, align 4
  %1078 = zext i8 %1077 to i16
  store i16 %1078, ptr %34, align 4
  %1079 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %1079, align 2
  %1080 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %1080, align 4
  %1081 = load i32, ptr @debug, align 4
  %1082 = and i32 %1081, 2
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1087, label %1084

1084:                                             ; preds = %1070
  %1085 = zext i1 %1071 to i32
  %1086 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 79, i32 noundef 79, i32 noundef %1085, i32 noundef %1085) #11
  br label %1087

1087:                                             ; preds = %1084, %1070
  %1088 = load ptr, ptr %98, align 4
  %1089 = call i32 @i2c_transfer(ptr noundef %1088, ptr noundef nonnull %34, i32 noundef 1) #10
  %1090 = icmp eq i32 %1089, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #10
  br i1 %1090, label %1094, label %1091

1091:                                             ; preds = %1087
  %1092 = zext i1 %1071 to i32
  %1093 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1092, i32 noundef 79) #11
  br label %1516

1094:                                             ; preds = %1087
  %1095 = load i32, ptr %369, align 4
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1097, label %1160

1097:                                             ; preds = %1094
  %1098 = load i32, ptr %432, align 4
  %1099 = icmp eq i32 %1098, 2
  br i1 %1099, label %1100, label %1120

1100:                                             ; preds = %1097
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #10
  store i8 0, ptr %31, align 4
  %1101 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 84, ptr %1101, align 1
  %1102 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 0, ptr %1102, align 2
  %1103 = getelementptr inbounds i8, ptr %31, i32 3
  store i8 3, ptr %1103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %1104 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 4, ptr %1104, align 4, !annotation !8
  %1105 = load i8, ptr %352, align 4
  %1106 = zext i8 %1105 to i16
  store i16 %1106, ptr %32, align 4
  %1107 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %1107, align 2
  %1108 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %1108, align 4
  %1109 = load i32, ptr @debug, align 4
  %1110 = and i32 %1109, 2
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1114, label %1112

1112:                                             ; preds = %1100
  %1113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 84, i32 noundef 84, i32 noundef 3, i32 noundef 3) #11
  br label %1114

1114:                                             ; preds = %1112, %1100
  %1115 = load ptr, ptr %98, align 4
  %1116 = call i32 @i2c_transfer(ptr noundef %1115, ptr noundef nonnull %32, i32 noundef 1) #10
  %1117 = icmp eq i32 %1116, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #10
  br i1 %1117, label %1140, label %1118

1118:                                             ; preds = %1114
  %1119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef 84) #11
  br label %1516

1120:                                             ; preds = %1097
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #10
  store i8 0, ptr %29, align 4
  %1121 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 84, ptr %1121, align 1
  %1122 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 0, ptr %1122, align 2
  %1123 = getelementptr inbounds i8, ptr %29, i32 3
  store i8 0, ptr %1123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %1124 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 4, ptr %1124, align 4, !annotation !8
  %1125 = load i8, ptr %352, align 4
  %1126 = zext i8 %1125 to i16
  store i16 %1126, ptr %30, align 4
  %1127 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %1127, align 2
  %1128 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %1128, align 4
  %1129 = load i32, ptr @debug, align 4
  %1130 = and i32 %1129, 2
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1134, label %1132

1132:                                             ; preds = %1120
  %1133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 84, i32 noundef 84, i32 noundef 0, i32 noundef 0) #11
  br label %1134

1134:                                             ; preds = %1132, %1120
  %1135 = load ptr, ptr %98, align 4
  %1136 = call i32 @i2c_transfer(ptr noundef %1135, ptr noundef nonnull %30, i32 noundef 1) #10
  %1137 = icmp eq i32 %1136, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #10
  br i1 %1137, label %1140, label %1138

1138:                                             ; preds = %1134
  %1139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 84) #11
  br label %1516

1140:                                             ; preds = %1134, %1114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #10
  store i8 0, ptr %27, align 4
  %1141 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 121, ptr %1141, align 1
  %1142 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 0, ptr %1142, align 2
  %1143 = getelementptr inbounds i8, ptr %27, i32 3
  store i8 7, ptr %1143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %1144 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 4, ptr %1144, align 4, !annotation !8
  %1145 = load i8, ptr %352, align 4
  %1146 = zext i8 %1145 to i16
  store i16 %1146, ptr %28, align 4
  %1147 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %1147, align 2
  %1148 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %1148, align 4
  %1149 = load i32, ptr @debug, align 4
  %1150 = and i32 %1149, 2
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1154, label %1152

1152:                                             ; preds = %1140
  %1153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 121, i32 noundef 121, i32 noundef 7, i32 noundef 7) #11
  br label %1154

1154:                                             ; preds = %1152, %1140
  %1155 = load ptr, ptr %98, align 4
  %1156 = call i32 @i2c_transfer(ptr noundef %1155, ptr noundef nonnull %28, i32 noundef 1) #10
  %1157 = icmp eq i32 %1156, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #10
  br i1 %1157, label %1180, label %1158

1158:                                             ; preds = %1154
  %1159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 7, i32 noundef 121) #11
  br label %1516

1160:                                             ; preds = %1094
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #10
  store i8 0, ptr %25, align 4
  %1161 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 121, ptr %1161, align 1
  %1162 = getelementptr inbounds i8, ptr %25, i32 2
  store i8 0, ptr %1162, align 2
  %1163 = getelementptr inbounds i8, ptr %25, i32 3
  store i8 5, ptr %1163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %1164 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 4, ptr %1164, align 4, !annotation !8
  %1165 = load i8, ptr %352, align 4
  %1166 = zext i8 %1165 to i16
  store i16 %1166, ptr %26, align 4
  %1167 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %1167, align 2
  %1168 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %1168, align 4
  %1169 = load i32, ptr @debug, align 4
  %1170 = and i32 %1169, 2
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1174, label %1172

1172:                                             ; preds = %1160
  %1173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 121, i32 noundef 121, i32 noundef 5, i32 noundef 5) #11
  br label %1174

1174:                                             ; preds = %1172, %1160
  %1175 = load ptr, ptr %98, align 4
  %1176 = call i32 @i2c_transfer(ptr noundef %1175, ptr noundef nonnull %26, i32 noundef 1) #10
  %1177 = icmp eq i32 %1176, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #10
  br i1 %1177, label %1180, label %1178

1178:                                             ; preds = %1174
  %1179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 5, i32 noundef 121) #11
  br label %1516

1180:                                             ; preds = %1174, %1154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #10
  store i8 0, ptr %23, align 4
  %1181 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 -61, ptr %1181, align 1
  %1182 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 0, ptr %1182, align 2
  %1183 = getelementptr inbounds i8, ptr %23, i32 3
  store i8 1, ptr %1183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %1184 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 4, ptr %1184, align 4, !annotation !8
  %1185 = load i8, ptr %352, align 4
  %1186 = zext i8 %1185 to i16
  store i16 %1186, ptr %24, align 4
  %1187 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %1187, align 2
  %1188 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %1188, align 4
  %1189 = load i32, ptr @debug, align 4
  %1190 = and i32 %1189, 2
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1194, label %1192

1192:                                             ; preds = %1180
  %1193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 195, i32 noundef 195, i32 noundef 1, i32 noundef 1) #11
  br label %1194

1194:                                             ; preds = %1192, %1180
  %1195 = load ptr, ptr %98, align 4
  %1196 = call i32 @i2c_transfer(ptr noundef %1195, ptr noundef nonnull %24, i32 noundef 1) #10
  %1197 = icmp eq i32 %1196, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #10
  br i1 %1197, label %1200, label %1198

1198:                                             ; preds = %1194
  %1199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 195) #11
  br label %1516

1200:                                             ; preds = %1194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #10
  store i8 0, ptr %21, align 4
  %1201 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 126, ptr %1201, align 1
  %1202 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 0, ptr %1202, align 2
  %1203 = getelementptr inbounds i8, ptr %21, i32 3
  store i8 0, ptr %1203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %1204 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 4, ptr %1204, align 4, !annotation !8
  %1205 = load i8, ptr %352, align 4
  %1206 = zext i8 %1205 to i16
  store i16 %1206, ptr %22, align 4
  %1207 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %1207, align 2
  %1208 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %1208, align 4
  %1209 = load i32, ptr @debug, align 4
  %1210 = and i32 %1209, 2
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1214, label %1212

1212:                                             ; preds = %1200
  %1213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 126, i32 noundef 126, i32 noundef 0, i32 noundef 0) #11
  br label %1214

1214:                                             ; preds = %1212, %1200
  %1215 = load ptr, ptr %98, align 4
  %1216 = call i32 @i2c_transfer(ptr noundef %1215, ptr noundef nonnull %22, i32 noundef 1) #10
  %1217 = icmp eq i32 %1216, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  br i1 %1217, label %1220, label %1218

1218:                                             ; preds = %1214
  %1219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 126) #11
  br label %1516

1220:                                             ; preds = %1214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #10
  store i8 0, ptr %19, align 4
  %1221 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 101, ptr %1221, align 1
  %1222 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 0, ptr %1222, align 2
  %1223 = getelementptr inbounds i8, ptr %19, i32 3
  store i8 0, ptr %1223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %1224 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 4, ptr %1224, align 4, !annotation !8
  %1225 = load i8, ptr %352, align 4
  %1226 = zext i8 %1225 to i16
  store i16 %1226, ptr %20, align 4
  %1227 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %1227, align 2
  %1228 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %1228, align 4
  %1229 = load i32, ptr @debug, align 4
  %1230 = and i32 %1229, 2
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1234, label %1232

1232:                                             ; preds = %1220
  %1233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 101, i32 noundef 101, i32 noundef 0, i32 noundef 0) #11
  br label %1234

1234:                                             ; preds = %1232, %1220
  %1235 = load ptr, ptr %98, align 4
  %1236 = call i32 @i2c_transfer(ptr noundef %1235, ptr noundef nonnull %20, i32 noundef 1) #10
  %1237 = icmp eq i32 %1236, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #10
  br i1 %1237, label %1238, label %1245

1238:                                             ; preds = %1234
  %1239 = getelementptr inbounds i8, ptr %17, i32 1
  %1240 = getelementptr inbounds i8, ptr %17, i32 2
  %1241 = getelementptr inbounds i8, ptr %17, i32 3
  %1242 = getelementptr inbounds i8, ptr %18, i32 4
  %1243 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %1244 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  br label %1250

1245:                                             ; preds = %1234
  %1246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 101) #11
  br label %1516

1247:                                             ; preds = %1271
  %1248 = add nuw nsw i32 %1251, 1
  %1249 = icmp eq i32 %1248, 8
  br i1 %1249, label %1279, label %1250

1250:                                             ; preds = %1247, %1238
  %1251 = phi i32 [ 0, %1238 ], [ %1248, %1247 ]
  %1252 = getelementptr [8 x i16], ptr @dib3000mb_reg_agc_bandwidth, i32 0, i32 %1251
  %1253 = load i16, ptr %1252, align 2
  %1254 = getelementptr [8 x i16], ptr @dib3000mb_agc_bandwidth_high, i32 0, i32 %1251
  %1255 = load i16, ptr %1254, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  %1256 = lshr i16 %1253, 8
  %1257 = trunc i16 %1256 to i8
  store i8 %1257, ptr %17, align 4
  %1258 = trunc i16 %1253 to i8
  store i8 %1258, ptr %1239, align 1
  %1259 = lshr i16 %1255, 8
  %1260 = trunc i16 %1259 to i8
  store i8 %1260, ptr %1240, align 2
  %1261 = trunc i16 %1255 to i8
  store i8 %1261, ptr %1241, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  store i32 4, ptr %1242, align 4, !annotation !8
  %1262 = load i8, ptr %352, align 4
  %1263 = zext i8 %1262 to i16
  store i16 %1263, ptr %18, align 4
  store i16 0, ptr %1243, align 2
  store ptr %17, ptr %1244, align 4
  %1264 = load i32, ptr @debug, align 4
  %1265 = and i32 %1264, 2
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1271, label %1267

1267:                                             ; preds = %1250
  %1268 = zext i16 %1255 to i32
  %1269 = zext i16 %1253 to i32
  %1270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %1269, i32 noundef %1269, i32 noundef %1268, i32 noundef %1268) #11
  br label %1271

1271:                                             ; preds = %1267, %1250
  %1272 = load ptr, ptr %98, align 4
  %1273 = call i32 @i2c_transfer(ptr noundef %1272, ptr noundef nonnull %18, i32 noundef 1) #10
  %1274 = icmp eq i32 %1273, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  br i1 %1274, label %1247, label %1275

1275:                                             ; preds = %1271
  %1276 = zext i16 %1255 to i32
  %1277 = zext i16 %1253 to i32
  %1278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1276, i32 noundef %1277) #11
  br label %1516

1279:                                             ; preds = %1247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  store i8 0, ptr %15, align 4
  %1280 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 79, ptr %1280, align 1
  %1281 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 0, ptr %1281, align 2
  %1282 = getelementptr inbounds i8, ptr %15, i32 3
  store i8 0, ptr %1282, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %1283 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 4, ptr %1283, align 4, !annotation !8
  %1284 = load i8, ptr %352, align 4
  %1285 = zext i8 %1284 to i16
  store i16 %1285, ptr %16, align 4
  %1286 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %1286, align 2
  %1287 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %1287, align 4
  %1288 = load i32, ptr @debug, align 4
  %1289 = and i32 %1288, 2
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1293, label %1291

1291:                                             ; preds = %1279
  %1292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 79, i32 noundef 79, i32 noundef 0, i32 noundef 0) #11
  br label %1293

1293:                                             ; preds = %1291, %1279
  %1294 = load ptr, ptr %98, align 4
  %1295 = call i32 @i2c_transfer(ptr noundef %1294, ptr noundef nonnull %16, i32 noundef 1) #10
  %1296 = icmp eq i32 %1295, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  br i1 %1296, label %1299, label %1297

1297:                                             ; preds = %1293
  %1298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 79) #11
  br label %1516

1299:                                             ; preds = %1293
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  store i8 0, ptr %13, align 4
  %1300 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 0, ptr %1300, align 1
  %1301 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 0, ptr %1301, align 2
  %1302 = getelementptr inbounds i8, ptr %13, i32 3
  store i8 12, ptr %1302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %1303 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 4, ptr %1303, align 4, !annotation !8
  %1304 = load i8, ptr %352, align 4
  %1305 = zext i8 %1304 to i16
  store i16 %1305, ptr %14, align 4
  %1306 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %1306, align 2
  %1307 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %1307, align 4
  %1308 = load i32, ptr @debug, align 4
  %1309 = and i32 %1308, 2
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %1313, label %1311

1311:                                             ; preds = %1299
  %1312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 0, i32 noundef 0, i32 noundef 12, i32 noundef 12) #11
  br label %1313

1313:                                             ; preds = %1311, %1299
  %1314 = load ptr, ptr %98, align 4
  %1315 = call i32 @i2c_transfer(ptr noundef %1314, ptr noundef nonnull %14, i32 noundef 1) #10
  %1316 = icmp eq i32 %1315, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  br i1 %1316, label %1319, label %1317

1317:                                             ; preds = %1313
  %1318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 12, i32 noundef 0) #11
  br label %1516

1319:                                             ; preds = %1313
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %1320 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 4, ptr %1320, align 4, !annotation !8
  %1321 = load i8, ptr %352, align 4
  %1322 = zext i8 %1321 to i16
  store i16 %1322, ptr %12, align 4
  %1323 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %1323, align 2
  %1324 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %1324, align 4
  %1325 = load i32, ptr @debug, align 4
  %1326 = and i32 %1325, 2
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1330, label %1328

1328:                                             ; preds = %1319
  %1329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %1330

1330:                                             ; preds = %1328, %1319
  %1331 = load ptr, ptr %98, align 4
  %1332 = call i32 @i2c_transfer(ptr noundef %1331, ptr noundef nonnull %12, i32 noundef 1) #10
  %1333 = icmp eq i32 %1332, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br i1 %1333, label %1336, label %1334

1334:                                             ; preds = %1330
  %1335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #11
  br label %1516

1336:                                             ; preds = %1330
  call void @msleep(i32 noundef 70) #10
  %1337 = getelementptr inbounds i8, ptr %9, i32 1
  %1338 = getelementptr inbounds i8, ptr %9, i32 2
  %1339 = getelementptr inbounds i8, ptr %9, i32 3
  %1340 = getelementptr inbounds i8, ptr %10, i32 4
  %1341 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %1342 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  br label %1346

1343:                                             ; preds = %1367
  %1344 = add nuw nsw i32 %1347, 1
  %1345 = icmp eq i32 %1344, 8
  br i1 %1345, label %1375, label %1346

1346:                                             ; preds = %1343, %1336
  %1347 = phi i32 [ 0, %1336 ], [ %1344, %1343 ]
  %1348 = getelementptr [8 x i16], ptr @dib3000mb_reg_agc_bandwidth, i32 0, i32 %1347
  %1349 = load i16, ptr %1348, align 2
  %1350 = getelementptr [8 x i16], ptr @dib3000mb_agc_bandwidth_low, i32 0, i32 %1347
  %1351 = load i16, ptr %1350, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %1352 = lshr i16 %1349, 8
  %1353 = trunc i16 %1352 to i8
  store i8 %1353, ptr %9, align 4
  %1354 = trunc i16 %1349 to i8
  store i8 %1354, ptr %1337, align 1
  %1355 = lshr i16 %1351, 8
  %1356 = trunc i16 %1355 to i8
  store i8 %1356, ptr %1338, align 2
  %1357 = trunc i16 %1351 to i8
  store i8 %1357, ptr %1339, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  store i32 4, ptr %1340, align 4, !annotation !8
  %1358 = load i8, ptr %352, align 4
  %1359 = zext i8 %1358 to i16
  store i16 %1359, ptr %10, align 4
  store i16 0, ptr %1341, align 2
  store ptr %9, ptr %1342, align 4
  %1360 = load i32, ptr @debug, align 4
  %1361 = and i32 %1360, 2
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1367, label %1363

1363:                                             ; preds = %1346
  %1364 = zext i16 %1351 to i32
  %1365 = zext i16 %1349 to i32
  %1366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef %1365, i32 noundef %1365, i32 noundef %1364, i32 noundef %1364) #11
  br label %1367

1367:                                             ; preds = %1363, %1346
  %1368 = load ptr, ptr %98, align 4
  %1369 = call i32 @i2c_transfer(ptr noundef %1368, ptr noundef nonnull %10, i32 noundef 1) #10
  %1370 = icmp eq i32 %1369, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br i1 %1370, label %1343, label %1371

1371:                                             ; preds = %1367
  %1372 = zext i16 %1351 to i32
  %1373 = zext i16 %1349 to i32
  %1374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1372, i32 noundef %1373) #11
  br label %1516

1375:                                             ; preds = %1343
  %1376 = load i32, ptr %612, align 4
  %1377 = icmp eq i32 %1376, 6
  br i1 %1377, label %1385, label %1378

1378:                                             ; preds = %1375
  %1379 = load i32, ptr %696, align 4
  %1380 = icmp eq i32 %1379, 4
  %1381 = or i1 %1028, %1380
  br i1 %1381, label %1385, label %1382

1382:                                             ; preds = %1378
  %1383 = load i32, ptr %549, align 4
  %1384 = icmp eq i32 %1383, 2
  br i1 %1384, label %1385, label %1506

1385:                                             ; preds = %1382, %1378, %1375
  %1386 = load i32, ptr @debug, align 4
  %1387 = and i32 %1386, 4
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1392, label %1389

1389:                                             ; preds = %1385
  %1390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  %1391 = load i32, ptr @debug, align 4
  br label %1392

1392:                                             ; preds = %1389, %1385
  %1393 = phi i32 [ %1391, %1389 ], [ %1386, %1385 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i8 0, ptr %7, align 4
  %1394 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 79, ptr %1394, align 1
  %1395 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %1395, align 2
  %1396 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 1, ptr %1396, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %1397 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %1397, align 4, !annotation !8
  %1398 = load i8, ptr %352, align 4
  %1399 = zext i8 %1398 to i16
  store i16 %1399, ptr %8, align 4
  %1400 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %1400, align 2
  %1401 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %1401, align 4
  %1402 = and i32 %1393, 2
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1406, label %1404

1404:                                             ; preds = %1392
  %1405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 79, i32 noundef 79, i32 noundef 1, i32 noundef 1) #11
  br label %1406

1406:                                             ; preds = %1404, %1392
  %1407 = load ptr, ptr %98, align 4
  %1408 = call i32 @i2c_transfer(ptr noundef %1407, ptr noundef nonnull %8, i32 noundef 1) #10
  %1409 = icmp eq i32 %1408, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br i1 %1409, label %1412, label %1410

1410:                                             ; preds = %1406
  %1411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 79) #11
  br label %1516

1412:                                             ; preds = %1406
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i8 0, ptr %5, align 4
  %1413 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %1413, align 1
  %1414 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %1414, align 2
  %1415 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 2, ptr %1415, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %1416 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %1416, align 4, !annotation !8
  %1417 = load i8, ptr %352, align 4
  %1418 = zext i8 %1417 to i16
  store i16 %1418, ptr %6, align 4
  %1419 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %1419, align 2
  %1420 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %1420, align 4
  %1421 = load i32, ptr @debug, align 4
  %1422 = and i32 %1421, 2
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1426, label %1424

1424:                                             ; preds = %1412
  %1425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 2) #11
  br label %1426

1426:                                             ; preds = %1424, %1412
  %1427 = load ptr, ptr %98, align 4
  %1428 = call i32 @i2c_transfer(ptr noundef %1427, ptr noundef nonnull %6, i32 noundef 1) #10
  %1429 = icmp eq i32 %1428, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br i1 %1429, label %1432, label %1430

1430:                                             ; preds = %1426
  %1431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 0) #11
  br label %1516

1432:                                             ; preds = %1426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %1433 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %1433, align 4, !annotation !8
  %1434 = load i8, ptr %352, align 4
  %1435 = zext i8 %1434 to i16
  store i16 %1435, ptr %4, align 4
  %1436 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %1436, align 2
  %1437 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %1437, align 4
  %1438 = load i32, ptr @debug, align 4
  %1439 = and i32 %1438, 2
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1443, label %1441

1441:                                             ; preds = %1432
  %1442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000_write_reg, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %1443

1443:                                             ; preds = %1441, %1432
  %1444 = load ptr, ptr %98, align 4
  %1445 = call i32 @i2c_transfer(ptr noundef %1444, ptr noundef nonnull %4, i32 noundef 1) #10
  %1446 = icmp eq i32 %1445, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %1446, label %1447, label %1452

1447:                                             ; preds = %1443
  %1448 = call fastcc i32 @dib3000_read_reg(ptr noundef %98, i16 noundef zeroext 434)
  %1449 = call fastcc i32 @dib3000_read_reg(ptr noundef %98, i16 noundef zeroext 427)
  %1450 = and i32 %1448, 2
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1465, label %1454

1452:                                             ; preds = %1443
  %1453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #11
  br label %1516

1454:                                             ; preds = %1481, %1447
  %1455 = phi i32 [ 0, %1447 ], [ %1482, %1481 ]
  %1456 = phi i32 [ %1449, %1447 ], [ %1484, %1481 ]
  %1457 = and i32 %1456, 1
  %1458 = icmp eq i32 %1457, 0
  %1459 = load i32, ptr @debug, align 4
  %1460 = and i32 %1459, 4
  %1461 = icmp eq i32 %1460, 0
  %1462 = xor i1 %1458, true
  %1463 = zext i1 %1462 to i32
  %1464 = select i1 %1458, ptr @.str.43, ptr @.str.42
  br i1 %1461, label %1487, label %1474

1465:                                             ; preds = %1481, %1447
  %1466 = phi i32 [ %1483, %1481 ], [ %1448, %1447 ]
  %1467 = phi i32 [ %1482, %1481 ], [ 0, %1447 ]
  %1468 = and i32 %1466, 1
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1479, label %1470

1470:                                             ; preds = %1465
  %1471 = load i32, ptr @debug, align 4
  %1472 = and i32 %1471, 4
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1487, label %1474

1474:                                             ; preds = %1470, %1454
  %1475 = phi i32 [ %1467, %1470 ], [ %1455, %1454 ]
  %1476 = phi ptr [ @.str.44, %1470 ], [ %1464, %1454 ]
  %1477 = phi i32 [ 0, %1470 ], [ %1463, %1454 ]
  %1478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %1476, ptr noundef nonnull @__func__.dib3000_search_status) #11
  br label %1487

1479:                                             ; preds = %1465
  %1480 = icmp eq i32 %1467, 100
  br i1 %1480, label %1487, label %1481

1481:                                             ; preds = %1479
  %1482 = add nuw nsw i32 %1467, 1
  call void @msleep(i32 noundef 1) #10
  %1483 = call fastcc i32 @dib3000_read_reg(ptr noundef %98, i16 noundef zeroext 434)
  %1484 = call fastcc i32 @dib3000_read_reg(ptr noundef %98, i16 noundef zeroext 427)
  %1485 = and i32 %1483, 2
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1465, label %1454

1487:                                             ; preds = %1479, %1474, %1470, %1454
  %1488 = phi i32 [ %1463, %1454 ], [ %1477, %1474 ], [ 0, %1470 ], [ -1, %1479 ]
  %1489 = phi i32 [ %1455, %1454 ], [ %1475, %1474 ], [ %1467, %1470 ], [ 101, %1479 ]
  %1490 = load i32, ptr @debug, align 4
  %1491 = and i32 %1490, 4
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1495, label %1493

1493:                                             ; preds = %1487
  %1494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.dib3000mb_set_frontend, i32 noundef %1488, i32 noundef %1489) #11
  br label %1495

1495:                                             ; preds = %1493, %1487
  %1496 = icmp eq i32 %1488, 1
  br i1 %1496, label %1497, label %1516

1497:                                             ; preds = %1495
  %1498 = call i32 @dib3000mb_get_frontend(ptr noundef %0, ptr noundef %99)
  %1499 = load i32, ptr @debug, align 4
  %1500 = and i32 %1499, 4
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1504, label %1502

1502:                                             ; preds = %1497
  %1503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.dib3000mb_set_frontend) #11
  br label %1504

1504:                                             ; preds = %1502, %1497
  %1505 = call fastcc i32 @dib3000mb_set_frontend(ptr noundef %0, i32 noundef 0)
  br label %1516

1506:                                             ; preds = %1382
  %1507 = call fastcc i32 @dib3000_write_reg(ptr noundef %98, i16 noundef zeroext 0, i16 noundef zeroext 4)
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1511, label %1509

1509:                                             ; preds = %1506
  %1510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 0) #11
  br label %1516

1511:                                             ; preds = %1506
  %1512 = call fastcc i32 @dib3000_write_reg(ptr noundef %98, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1516, label %1514

1514:                                             ; preds = %1511
  %1515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #11
  br label %1516

1516:                                             ; preds = %1514, %1511, %1509, %1504, %1495, %1452, %1430, %1410, %1371, %1334, %1317, %1297, %1275, %1245, %1218, %1198, %1178, %1158, %1138, %1118, %1091, %1068, %1013, %986, %959, %932, %905, %877, %873, %853, %831, %811, %783, %756, %729, %695, %693, %666, %639, %611, %609, %576, %548, %540, %513, %486, %459, %431, %423, %396, %368, %366, %337, %333, %301, %272, %240, %211, %179, %112
  %1517 = phi i32 [ -22, %337 ], [ -121, %366 ], [ -121, %609 ], [ -121, %811 ], [ -121, %831 ], [ -121, %1068 ], [ -121, %1091 ], [ -121, %1118 ], [ -121, %1158 ], [ -121, %1198 ], [ -121, %1218 ], [ -121, %1245 ], [ -121, %1297 ], [ -121, %1317 ], [ -121, %1334 ], [ -121, %1509 ], [ -121, %1514 ], [ -121, %1138 ], [ -121, %1178 ], [ -121, %1013 ], [ -121, %986 ], [ -121, %959 ], [ -121, %932 ], [ -121, %905 ], [ -121, %853 ], [ -121, %873 ], [ -121, %783 ], [ -121, %756 ], [ -121, %729 ], [ -121, %693 ], [ -121, %666 ], [ -121, %639 ], [ -121, %576 ], [ -121, %540 ], [ -121, %513 ], [ -121, %486 ], [ -121, %459 ], [ -121, %423 ], [ -121, %396 ], [ -121, %179 ], [ -121, %211 ], [ -121, %240 ], [ -121, %272 ], [ -121, %301 ], [ -121, %333 ], [ -95, %112 ], [ -22, %368 ], [ -22, %431 ], [ -22, %548 ], [ -22, %611 ], [ -22, %695 ], [ -22, %877 ], [ -121, %1275 ], [ -121, %1371 ], [ 0, %1495 ], [ 0, %1511 ], [ -121, %1410 ], [ -121, %1430 ], [ -121, %1452 ], [ %1505, %1504 ]
  ret i32 %1517
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
