; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda10048.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10048.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10048_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10048_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10048_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.init_tab = type { i8, i16 }
%struct.snr_tab = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda10048_state = type { ptr, %struct.tda10048_config, %struct.dvb_frontend, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\017tda10048: %s()\0A\00", align 1
@__func__.tda10048_attach = private unnamed_addr constant [16 x i8] c"tda10048_attach\00", align 1
@tda10048_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NXP TDA10048HN DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @tda10048_release, ptr null, ptr @tda10048_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10048_set_frontend, ptr @tda10048_get_tune_settings, ptr @tda10048_get_frontend, ptr @tda10048_read_status, ptr @tda10048_read_ber, ptr @tda10048_read_signal_strength, ptr @tda10048_read_snr, ptr @tda10048_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10048_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_tda10048_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10048_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10048_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10048_attach to i32), ptr @__kstrtab_tda10048_attach, ptr @__kstrtabns_tda10048_attach }, section "___ksymtab+tda10048_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [52 x i8] c"description=NXP TDA10048HN DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\017tda10048: %s(reg = 0x%02x)\0A\00", align 1
@__func__.tda10048_readreg = private unnamed_addr constant [17 x i8] c"tda10048_readreg\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"\014%s() tda10048_config.dtv6_if_freq_khz is not set (defaulting to %d)\0A\00", align 1
@__func__.tda10048_establish_defaults = private unnamed_addr constant [28 x i8] c"tda10048_establish_defaults\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"\014%s() tda10048_config.dtv7_if_freq_khz is not set (defaulting to %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"\014%s() tda10048_config.dtv8_if_freq_khz is not set (defaulting to %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"\014%s() tda10048_config.clk_freq_khz is not set (defaulting to %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\017tda10048: %s(bw = %d)\0A\00", align 1
@__func__.tda10048_set_if = private unnamed_addr constant [16 x i8] c"tda10048_set_if\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\013%s() no default\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\013%s() Incorrect attach settings\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\017tda10048: - freq_if_hz = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\017tda10048: - xtal_hz = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\017tda10048: - pll_mfactor = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\017tda10048: - pll_nfactor = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\017tda10048: - pll_pfactor = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\017tda10048: - sample_freq = %d\0A\00", align 1
@__func__.tda10048_set_phy2 = private unnamed_addr constant [18 x i8] c"tda10048_set_phy2\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"\017tda10048: %s(reg = 0x%02x, data = 0x%02x)\0A\00", align 1
@__func__.tda10048_writereg = private unnamed_addr constant [18 x i8] c"tda10048_writereg\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: writereg error (ret == %i)\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\017tda10048: %s(bw=%d)\0A\00", align 1
@__func__.tda10048_set_bandwidth = private unnamed_addr constant [23 x i8] c"tda10048_set_bandwidth\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"\013%s() invalid bandwidth\0A\00", align 1
@__func__.tda10048_set_wref = private unnamed_addr constant [18 x i8] c"tda10048_set_wref\00", align 1
@__func__.tda10048_set_invwref = private unnamed_addr constant [21 x i8] c"tda10048_set_invwref\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\017tda10048: %s(%d)\0A\00", align 1
@__func__.tda10048_i2c_gate_ctrl = private unnamed_addr constant [23 x i8] c"tda10048_i2c_gate_ctrl\00", align 1
@__func__.tda10048_release = private unnamed_addr constant [17 x i8] c"tda10048_release\00", align 1
@__func__.tda10048_init = private unnamed_addr constant [14 x i8] c"tda10048_init\00", align 1
@init_tab = internal unnamed_addr global [41 x %struct.init_tab] [%struct.init_tab { i8 81, i16 8 }, %struct.init_tab { i8 85, i16 0 }, %struct.init_tab { i8 30, i16 0 }, %struct.init_tab { i8 81, i16 15 }, %struct.init_tab { i8 82, i16 10 }, %struct.init_tab { i8 83, i16 67 }, %struct.init_tab { i8 -122, i16 2 }, %struct.init_tab { i8 -121, i16 10 }, %struct.init_tab { i8 -118, i16 189 }, %struct.init_tab { i8 -117, i16 228 }, %struct.init_tab { i8 -116, i16 168 }, %struct.init_tab { i8 -115, i16 2 }, %struct.init_tab { i8 -120, i16 4 }, %struct.init_tab { i8 -119, i16 6 }, %struct.init_tab { i8 30, i16 0 }, %struct.init_tab { i8 96, i16 168 }, %struct.init_tab { i8 112, i16 22 }, %struct.init_tab { i8 98, i16 11 }, %struct.init_tab { i8 120, i16 0 }, %struct.init_tab { i8 121, i16 255 }, %struct.init_tab { i8 122, i16 0 }, %struct.init_tab { i8 123, i16 255 }, %struct.init_tab { i8 115, i16 0 }, %struct.init_tab { i8 114, i16 112 }, %struct.init_tab { i8 -62, i16 56 }, %struct.init_tab { i8 118, i16 18 }, %struct.init_tab { i8 80, i16 0 }, %struct.init_tab { i8 -31, i16 7 }, %struct.init_tab { i8 78, i16 0 }, %struct.init_tab { i8 -32, i16 192 }, %struct.init_tab { i8 68, i16 33 }, %struct.init_tab { i8 69, i16 0 }, %struct.init_tab { i8 70, i16 0 }, %struct.init_tab { i8 31, i16 4 }, %struct.init_tab { i8 84, i16 96 }, %struct.init_tab { i8 85, i16 16 }, %struct.init_tab { i8 84, i16 96 }, %struct.init_tab { i8 85, i16 0 }, %struct.init_tab { i8 96, i16 168 }, %struct.init_tab { i8 -51, i16 0 }, %struct.init_tab { i8 31, i16 4 }], align 2
@.str.21 = private unnamed_addr constant [43 x i8] c"\016%s: waiting for firmware upload (%s)...\0A\00", align 1
@__func__.tda10048_firmware_upload = private unnamed_addr constant [25 x i8] c"tda10048_firmware_upload\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"dvb-fe-tda10048-1.0.fw\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"\013%s: Upload failed. (file not found?)\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"\016%s: firmware read %zu bytes.\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\013%s: firmware incorrect size\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"\016%s: firmware uploading\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"\016%s: firmware uploaded\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"\013%s: firmware upload failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"\017tda10048: %s(%d, ?, len = %d)\0A\00", align 1
@__func__.tda10048_writeregbulk = private unnamed_addr constant [22 x i8] c"tda10048_writeregbulk\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"\017tda10048: %s():  write len = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"\013%s(): writereg error err %i\0A\00", align 1
@__func__.tda10048_output_mode = private unnamed_addr constant [21 x i8] c"tda10048_output_mode\00", align 1
@__func__.tda10048_set_inversion = private unnamed_addr constant [23 x i8] c"tda10048_set_inversion\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"\017tda10048: %s(frequency=%d)\0A\00", align 1
@__func__.tda10048_set_frontend = private unnamed_addr constant [22 x i8] c"tda10048_set_frontend\00", align 1
@__func__.tda10048_get_frontend = private unnamed_addr constant [22 x i8] c"tda10048_get_frontend\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"\017tda10048: %s() status =0x%02x\0A\00", align 1
@__func__.tda10048_read_status = private unnamed_addr constant [21 x i8] c"tda10048_read_status\00", align 1
@tda10048_read_ber.cber_current = internal unnamed_addr global i32 0, align 4
@__func__.tda10048_read_ber = private unnamed_addr constant [18 x i8] c"tda10048_read_ber\00", align 1
@__func__.tda10048_read_signal_strength = private unnamed_addr constant [30 x i8] c"tda10048_read_signal_strength\00", align 1
@__func__.tda10048_read_snr = private unnamed_addr constant [18 x i8] c"tda10048_read_snr\00", align 1
@snr_tab = internal unnamed_addr constant [123 x %struct.snr_tab] [%struct.snr_tab zeroinitializer, %struct.snr_tab { i8 1, i8 -10 }, %struct.snr_tab { i8 2, i8 -41 }, %struct.snr_tab { i8 3, i8 -58 }, %struct.snr_tab { i8 4, i8 -71 }, %struct.snr_tab { i8 5, i8 -80 }, %struct.snr_tab { i8 6, i8 -88 }, %struct.snr_tab { i8 7, i8 -95 }, %struct.snr_tab { i8 8, i8 -101 }, %struct.snr_tab { i8 9, i8 -106 }, %struct.snr_tab { i8 10, i8 -110 }, %struct.snr_tab { i8 11, i8 -115 }, %struct.snr_tab { i8 12, i8 -118 }, %struct.snr_tab { i8 13, i8 -122 }, %struct.snr_tab { i8 14, i8 -125 }, %struct.snr_tab { i8 15, i8 -128 }, %struct.snr_tab { i8 16, i8 125 }, %struct.snr_tab { i8 17, i8 122 }, %struct.snr_tab { i8 18, i8 120 }, %struct.snr_tab { i8 19, i8 118 }, %struct.snr_tab { i8 20, i8 115 }, %struct.snr_tab { i8 21, i8 113 }, %struct.snr_tab { i8 22, i8 111 }, %struct.snr_tab { i8 23, i8 109 }, %struct.snr_tab { i8 24, i8 107 }, %struct.snr_tab { i8 25, i8 106 }, %struct.snr_tab { i8 26, i8 104 }, %struct.snr_tab { i8 27, i8 102 }, %struct.snr_tab { i8 28, i8 101 }, %struct.snr_tab { i8 29, i8 99 }, %struct.snr_tab { i8 30, i8 98 }, %struct.snr_tab { i8 31, i8 96 }, %struct.snr_tab { i8 32, i8 95 }, %struct.snr_tab { i8 33, i8 94 }, %struct.snr_tab { i8 34, i8 92 }, %struct.snr_tab { i8 35, i8 91 }, %struct.snr_tab { i8 36, i8 90 }, %struct.snr_tab { i8 37, i8 89 }, %struct.snr_tab { i8 38, i8 88 }, %struct.snr_tab { i8 39, i8 86 }, %struct.snr_tab { i8 40, i8 85 }, %struct.snr_tab { i8 41, i8 84 }, %struct.snr_tab { i8 42, i8 83 }, %struct.snr_tab { i8 43, i8 82 }, %struct.snr_tab { i8 44, i8 81 }, %struct.snr_tab { i8 45, i8 80 }, %struct.snr_tab { i8 46, i8 79 }, %struct.snr_tab { i8 47, i8 78 }, %struct.snr_tab { i8 48, i8 77 }, %struct.snr_tab { i8 49, i8 76 }, %struct.snr_tab { i8 50, i8 76 }, %struct.snr_tab { i8 51, i8 75 }, %struct.snr_tab { i8 52, i8 74 }, %struct.snr_tab { i8 53, i8 73 }, %struct.snr_tab { i8 54, i8 72 }, %struct.snr_tab { i8 56, i8 71 }, %struct.snr_tab { i8 57, i8 70 }, %struct.snr_tab { i8 58, i8 69 }, %struct.snr_tab { i8 60, i8 68 }, %struct.snr_tab { i8 61, i8 67 }, %struct.snr_tab { i8 63, i8 66 }, %struct.snr_tab { i8 64, i8 65 }, %struct.snr_tab { i8 66, i8 64 }, %struct.snr_tab { i8 67, i8 63 }, %struct.snr_tab { i8 68, i8 62 }, %struct.snr_tab { i8 69, i8 62 }, %struct.snr_tab { i8 70, i8 61 }, %struct.snr_tab { i8 72, i8 60 }, %struct.snr_tab { i8 74, i8 59 }, %struct.snr_tab { i8 75, i8 58 }, %struct.snr_tab { i8 77, i8 57 }, %struct.snr_tab { i8 79, i8 56 }, %struct.snr_tab { i8 81, i8 55 }, %struct.snr_tab { i8 83, i8 54 }, %struct.snr_tab { i8 85, i8 53 }, %struct.snr_tab { i8 87, i8 52 }, %struct.snr_tab { i8 89, i8 51 }, %struct.snr_tab { i8 91, i8 50 }, %struct.snr_tab { i8 93, i8 49 }, %struct.snr_tab { i8 95, i8 48 }, %struct.snr_tab { i8 97, i8 47 }, %struct.snr_tab { i8 100, i8 46 }, %struct.snr_tab { i8 102, i8 45 }, %struct.snr_tab { i8 104, i8 44 }, %struct.snr_tab { i8 107, i8 43 }, %struct.snr_tab { i8 109, i8 42 }, %struct.snr_tab { i8 112, i8 41 }, %struct.snr_tab { i8 114, i8 40 }, %struct.snr_tab { i8 117, i8 39 }, %struct.snr_tab { i8 120, i8 38 }, %struct.snr_tab { i8 123, i8 37 }, %struct.snr_tab { i8 125, i8 36 }, %struct.snr_tab { i8 -128, i8 35 }, %struct.snr_tab { i8 -125, i8 34 }, %struct.snr_tab { i8 -122, i8 33 }, %struct.snr_tab { i8 -118, i8 32 }, %struct.snr_tab { i8 -115, i8 31 }, %struct.snr_tab { i8 -112, i8 30 }, %struct.snr_tab { i8 -109, i8 29 }, %struct.snr_tab { i8 -105, i8 28 }, %struct.snr_tab { i8 -102, i8 27 }, %struct.snr_tab { i8 -98, i8 26 }, %struct.snr_tab { i8 -94, i8 25 }, %struct.snr_tab { i8 -91, i8 24 }, %struct.snr_tab { i8 -87, i8 23 }, %struct.snr_tab { i8 -83, i8 22 }, %struct.snr_tab { i8 -79, i8 21 }, %struct.snr_tab { i8 -75, i8 20 }, %struct.snr_tab { i8 -70, i8 19 }, %struct.snr_tab { i8 -66, i8 18 }, %struct.snr_tab { i8 -62, i8 17 }, %struct.snr_tab { i8 -57, i8 16 }, %struct.snr_tab { i8 -52, i8 15 }, %struct.snr_tab { i8 -48, i8 14 }, %struct.snr_tab { i8 -43, i8 13 }, %struct.snr_tab { i8 -38, i8 12 }, %struct.snr_tab { i8 -33, i8 11 }, %struct.snr_tab { i8 -27, i8 10 }, %struct.snr_tab { i8 -22, i8 9 }, %struct.snr_tab { i8 -17, i8 8 }, %struct.snr_tab { i8 -11, i8 7 }, %struct.snr_tab { i8 -5, i8 6 }, %struct.snr_tab { i8 -1, i8 5 }], align 1
@__func__.tda10048_read_ucblocks = private unnamed_addr constant [23 x i8] c"tda10048_read_ucblocks\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_tda10048_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.tda10048_get_frontend = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.tda10048_get_frontend.35 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda10048_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_attach) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1096) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %97, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(18) %15, ptr noundef align 2 dereferenceable(18) %0, i32 18, i1 false)
  store ptr %1, ptr %12, align 8
  %16 = getelementptr inbounds %struct.tda10048_config, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 3
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 10
  store i32 8000000, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %21 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #12, !annotation !9
  %22 = load i8, ptr %15, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %5, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %24, align 2
  store i16 1, ptr %21, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %23, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %29, align 4
  %30 = load i32, ptr @debug, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %32, %14
  %35 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #12
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %35) #10
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %41 = icmp eq i8 %40, 72
  br i1 %41, label %42, label %97

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 2
  %44 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %44, ptr noundef nonnull align 4 dereferenceable(544) @tda10048_ops, i32 544, i1 false)
  %45 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 2, i32 3
  store ptr %12, ptr %45, align 8
  %46 = getelementptr inbounds %struct.tda10048_config, ptr %0, i32 0, i32 10
  %47 = load i8, ptr %46, align 2, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tda10048_config, ptr %0, i32 0, i32 11
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.tda10048_config, ptr %0, i32 0, i32 13
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.tda10048_config, ptr %0, i32 0, i32 12
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %49, %42
  %60 = phi i32 [ %52, %49 ], [ 10, %42 ]
  %61 = phi i32 [ %55, %49 ], [ 3, %42 ]
  %62 = phi i32 [ %58, %49 ], [ 0, %42 ]
  %63 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 6
  store i32 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 7
  store i32 %61, ptr %64, align 8
  %65 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 8
  store i32 %62, ptr %65, align 4
  %66 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 1, i32 4
  %67 = load i16, ptr %66, align 8
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  store i16 4300, ptr %66, align 8
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tda10048_establish_defaults, i32 noundef 4300) #10
  br label %71

71:                                               ; preds = %69, %59
  %72 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 1, i32 5
  %73 = load i16, ptr %72, align 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  store i16 4300, ptr %72, align 2
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda10048_establish_defaults, i32 noundef 4300) #10
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 1, i32 6
  %79 = load i16, ptr %78, align 4
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  store i16 4300, ptr %78, align 4
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tda10048_establish_defaults, i32 noundef 4300) #10
  br label %83

83:                                               ; preds = %81, %77
  %84 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 1, i32 7
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  store i16 16000, ptr %84, align 2
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tda10048_establish_defaults, i32 noundef 16000) #10
  br label %89

89:                                               ; preds = %87, %83
  %90 = call fastcc i32 @tda10048_set_if(ptr noundef %43, i32 noundef 8000000)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = call fastcc i32 @tda10048_set_bandwidth(ptr noundef %43, i32 noundef 8000000)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @tda10048_i2c_gate_ctrl(ptr noundef %43, i32 noundef 0)
  br label %98

97:                                               ; preds = %92, %89, %39, %10
  call void @kfree(ptr noundef %12) #12
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi ptr [ null, %97 ], [ %43, %95 ]
  ret ptr %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda10048_set_if(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tda10048_set_if, i32 noundef %1) #10
  br label %13

13:                                               ; preds = %11, %2
  switch i32 %1, label %20 [
    i32 6000000, label %14
    i32 7000000, label %16
    i32 8000000, label %18
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 1, i32 4
  br label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 1, i32 5
  br label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 1, i32 6
  br label %22

20:                                               ; preds = %13
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda10048_set_if) #10
  br label %197

22:                                               ; preds = %18, %16, %14
  %23 = phi ptr [ %19, %18 ], [ %17, %16 ], [ %15, %14 ]
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 1, i32 7
  %26 = load i16, ptr %25, align 2
  switch i16 %26, label %30 [
    i16 4000, label %27
    i16 16000, label %29
  ]

27:                                               ; preds = %22
  %28 = icmp eq i16 %24, -29406
  br i1 %28, label %39, label %30

29:                                               ; preds = %22
  switch i16 %24, label %30 [
    i16 3300, label %39
    i16 3500, label %32
    i16 3800, label %33
    i16 4000, label %34
    i16 4300, label %35
    i16 4500, label %36
    i16 5000, label %37
    i16 -29406, label %38
  ]

30:                                               ; preds = %29, %27, %22
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.tda10048_set_if) #10
  br label %197

32:                                               ; preds = %29
  br label %39

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %29
  br label %39

37:                                               ; preds = %29
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %37, %36, %35, %34, %33, %32, %29, %27
  %40 = phi i32 [ 4000000, %27 ], [ 16000000, %29 ], [ 16000000, %32 ], [ 16000000, %33 ], [ 16000000, %34 ], [ 16000000, %35 ], [ 16000000, %36 ], [ 16000000, %37 ], [ 16000000, %38 ]
  %41 = phi i32 [ 36130000, %27 ], [ 3300000, %29 ], [ 3500000, %32 ], [ 3800000, %33 ], [ 4000000, %34 ], [ 4300000, %35 ], [ 4500000, %36 ], [ 5000000, %37 ], [ 36130000, %38 ]
  %42 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 5
  store i32 %40, ptr %43, align 4
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %48) #10
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %54) #10
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %60) #10
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %66) #10
  %68 = load i32, ptr @debug, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %72) #10
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %70, %64, %58, %52, %46, %39
  %77 = phi i1 [ true, %46 ], [ true, %39 ], [ true, %52 ], [ true, %58 ], [ %75, %70 ], [ true, %64 ]
  %78 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 45
  %83 = mul i32 %82, %79
  %84 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 9
  %85 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  %88 = udiv i32 %83, %87
  %89 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, 4
  %92 = udiv i32 %88, %91
  store i32 %92, ptr %84, align 4
  br i1 %77, label %93, label %97

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr %7, align 4
  br label %107

97:                                               ; preds = %76
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %92) #10
  %99 = load i32, ptr @debug, align 4
  %100 = load i32, ptr %84, align 4
  %101 = getelementptr inbounds %struct.tda10048_state, ptr %8, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %7, align 4
  %104 = icmp eq i32 %99, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %97
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_set_phy2) #10
  br label %107

107:                                              ; preds = %105, %97, %93
  %108 = phi ptr [ %96, %93 ], [ %103, %105 ], [ %103, %97 ]
  %109 = phi i32 [ %95, %93 ], [ %102, %105 ], [ %102, %97 ]
  %110 = phi i32 [ %92, %93 ], [ %100, %105 ], [ %100, %97 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %197, label %112

112:                                              ; preds = %107
  %113 = lshr i32 %110, 1
  %114 = icmp ugt i32 %113, %109
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = zext i32 %109 to i64
  %117 = mul nuw nsw i64 %116, 327680
  %118 = icmp ult i64 %117, 4294967296
  br i1 %118, label %119, label %123, !prof !10

119:                                              ; preds = %115
  %120 = trunc i64 %117 to i32
  %121 = udiv i32 %120, %110
  %122 = zext i32 %121 to i64
  br label %126

123:                                              ; preds = %115
  %124 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %110, i64 %117) #13, !srcloc !11
  %125 = extractvalue { i64, i64 } %124, 1
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i64 [ %122, %119 ], [ %125, %123 ]
  %128 = add i64 %127, 5
  %129 = lshr i64 %128, 1
  %130 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %129, i64 3689348814741910323) #13, !srcloc !12
  %131 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %129, i64 %130) #13, !srcloc !13
  %132 = trunc i64 %131 to i8
  %133 = lshr i64 %131, 8
  %134 = trunc i64 %133 to i8
  br label %157

135:                                              ; preds = %112
  %136 = sub i32 %110, %109
  %137 = zext i32 %136 to i64
  %138 = mul nuw nsw i64 %137, 327680
  %139 = icmp ult i64 %138, 4294967296
  br i1 %139, label %140, label %144, !prof !10

140:                                              ; preds = %135
  %141 = trunc i64 %138 to i32
  %142 = udiv i32 %141, %110
  %143 = zext i32 %142 to i64
  br label %147

144:                                              ; preds = %135
  %145 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %110, i64 %138) #13, !srcloc !11
  %146 = extractvalue { i64, i64 } %145, 1
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi i64 [ %143, %140 ], [ %146, %144 ]
  %149 = add i64 %148, 5
  %150 = lshr i64 %149, 1
  %151 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %150, i64 3689348814741910323) #13, !srcloc !12
  %152 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %150, i64 %151) #13, !srcloc !13
  %153 = sub i64 0, %152
  %154 = trunc i64 %153 to i8
  %155 = lshr i64 %153, 8
  %156 = trunc i64 %155 to i8
  br label %157

157:                                              ; preds = %147, %126
  %158 = phi i8 [ %154, %147 ], [ %132, %126 ]
  %159 = phi i8 [ %156, %147 ], [ %134, %126 ]
  %160 = getelementptr inbounds %struct.tda10048_state, ptr %108, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 -122, ptr %5, align 2
  %161 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %158, ptr %161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %162 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %162, align 4, !annotation !9
  %163 = load i8, ptr %160, align 2
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %6, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %165, align 2
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %166, align 4
  %167 = load i32, ptr @debug, align 4
  %168 = icmp ugt i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %157
  %170 = zext i8 %158 to i32
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 134, i32 noundef %170) #10
  br label %172

172:                                              ; preds = %169, %157
  %173 = load ptr, ptr %108, align 4
  %174 = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %6, i32 noundef 1) #12
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %174) #10
  br label %178

178:                                              ; preds = %176, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 -121, ptr %3, align 2
  %179 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %159, ptr %179, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %180 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %180, align 4, !annotation !9
  %181 = load i8, ptr %160, align 2
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %4, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %183, align 2
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %184, align 4
  %185 = load i32, ptr @debug, align 4
  %186 = icmp ugt i32 %185, 1
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = zext i8 %159 to i32
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 135, i32 noundef %188) #10
  br label %190

190:                                              ; preds = %187, %178
  %191 = load ptr, ptr %108, align 4
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %4, i32 noundef 1) #12
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %192) #10
  br label %196

196:                                              ; preds = %194, %190
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %197

197:                                              ; preds = %196, %107, %30, %20
  %198 = phi i32 [ -22, %20 ], [ -22, %30 ], [ 0, %107 ], [ 0, %196 ]
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda10048_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.tda10048_set_bandwidth, i32 noundef %1) #10
  br label %21

21:                                               ; preds = %19, %2
  switch i32 %1, label %197 [
    i32 6000000, label %22
    i32 7000000, label %22
    i32 8000000, label %22
  ]

22:                                               ; preds = %21, %21, %21
  %23 = getelementptr inbounds %struct.tda10048_state, ptr %16, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %15, align 4
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_set_wref) #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %127, label %32

32:                                               ; preds = %30
  %33 = mul i32 %24, 7
  %34 = mul nuw nsw i32 %1, 10
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 31
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %36) #13, !srcloc !11
  %38 = extractvalue { i64, i64 } %37, 1
  %39 = add i64 %38, 5
  %40 = lshr i64 %39, 1
  %41 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %40, i64 3689348814741910323) #13, !srcloc !12
  %42 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %40, i64 %41) #13, !srcloc !13
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds %struct.tda10048_state, ptr %25, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  store i8 -118, ptr %13, align 2
  %45 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %43, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  %46 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %46, align 4, !annotation !9
  %47 = load i8, ptr %44, align 2
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %14, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %50, align 4
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %32
  %54 = trunc i64 %42 to i32
  %55 = and i32 %54, 255
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 138, i32 noundef %55) #10
  br label %57

57:                                               ; preds = %53, %32
  %58 = load ptr, ptr %25, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %14, i32 noundef 1) #12
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %59) #10
  br label %63

63:                                               ; preds = %61, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  %64 = lshr i64 %42, 8
  %65 = trunc i64 %64 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i8 -117, ptr %11, align 2
  %66 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %65, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %67 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %67, align 4, !annotation !9
  %68 = load i8, ptr %44, align 2
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %12, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %71, align 4
  %72 = load i32, ptr @debug, align 4
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = trunc i64 %64 to i32
  %76 = and i32 %75, 255
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 139, i32 noundef %76) #10
  br label %78

78:                                               ; preds = %74, %63
  %79 = load ptr, ptr %25, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %12, i32 noundef 1) #12
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %80) #10
  br label %84

84:                                               ; preds = %82, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  %85 = lshr i64 %42, 16
  %86 = trunc i64 %85 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 -116, ptr %9, align 2
  %87 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %86, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %88 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %88, align 4, !annotation !9
  %89 = load i8, ptr %44, align 2
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %10, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %91, align 2
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %92, align 4
  %93 = load i32, ptr @debug, align 4
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = trunc i64 %85 to i32
  %97 = and i32 %96, 255
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 140, i32 noundef %97) #10
  br label %99

99:                                               ; preds = %95, %84
  %100 = load ptr, ptr %25, align 4
  %101 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %10, i32 noundef 1) #12
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %101) #10
  br label %105

105:                                              ; preds = %103, %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  %106 = lshr i64 %42, 24
  %107 = trunc i64 %106 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 -115, ptr %7, align 2
  %108 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %107, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %109 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %109, align 4, !annotation !9
  %110 = load i8, ptr %44, align 2
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %8, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %113, align 4
  %114 = load i32, ptr @debug, align 4
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %105
  %117 = trunc i64 %106 to i32
  %118 = and i32 %117, 255
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 141, i32 noundef %118) #10
  br label %120

120:                                              ; preds = %116, %105
  %121 = load ptr, ptr %25, align 4
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %8, i32 noundef 1) #12
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %122) #10
  br label %126

126:                                              ; preds = %124, %120
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %127

127:                                              ; preds = %126, %30
  %128 = load i32, ptr %23, align 4
  %129 = load ptr, ptr %15, align 4
  %130 = load i32, ptr @debug, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_set_invwref) #10
  br label %134

134:                                              ; preds = %132, %127
  %135 = icmp eq i32 %128, 0
  br i1 %135, label %195, label %136

136:                                              ; preds = %134
  %137 = zext i32 %128 to i64
  %138 = mul nuw nsw i64 %137, 2240
  %139 = icmp ult i64 %138, 4294967296
  br i1 %139, label %140, label %144, !prof !10

140:                                              ; preds = %136
  %141 = trunc i64 %138 to i32
  %142 = udiv i32 %141, %1
  %143 = zext i32 %142 to i64
  br label %147

144:                                              ; preds = %136
  %145 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %138) #13, !srcloc !11
  %146 = extractvalue { i64, i64 } %145, 1
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi i64 [ %143, %140 ], [ %146, %144 ]
  %149 = add i64 %148, 5
  %150 = lshr i64 %149, 1
  %151 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %150, i64 3689348814741910323) #13, !srcloc !12
  %152 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %150, i64 %151) #13, !srcloc !13
  %153 = trunc i64 %152 to i8
  %154 = getelementptr inbounds %struct.tda10048_state, ptr %129, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 -120, ptr %5, align 2
  %155 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %153, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %156 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %156, align 4, !annotation !9
  %157 = load i8, ptr %154, align 2
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %6, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %159, align 2
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %160, align 4
  %161 = load i32, ptr @debug, align 4
  %162 = icmp ugt i32 %161, 1
  br i1 %162, label %163, label %167

163:                                              ; preds = %147
  %164 = trunc i64 %152 to i32
  %165 = and i32 %164, 255
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 136, i32 noundef %165) #10
  br label %167

167:                                              ; preds = %163, %147
  %168 = load ptr, ptr %129, align 4
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %6, i32 noundef 1) #12
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %169) #10
  br label %173

173:                                              ; preds = %171, %167
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %174 = lshr i64 %152, 8
  %175 = trunc i64 %174 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 -119, ptr %3, align 2
  %176 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %175, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %177 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %177, align 4, !annotation !9
  %178 = load i8, ptr %154, align 2
  %179 = zext i8 %178 to i16
  store i16 %179, ptr %4, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %180, align 2
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %181, align 4
  %182 = load i32, ptr @debug, align 4
  %183 = icmp ugt i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %173
  %185 = trunc i64 %174 to i32
  %186 = and i32 %185, 255
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 137, i32 noundef %186) #10
  br label %188

188:                                              ; preds = %184, %173
  %189 = load ptr, ptr %129, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %4, i32 noundef 1) #12
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %190) #10
  br label %194

194:                                              ; preds = %192, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %195

195:                                              ; preds = %194, %134
  %196 = getelementptr inbounds %struct.tda10048_state, ptr %16, i32 0, i32 10
  store i32 %1, ptr %196, align 4
  br label %199

197:                                              ; preds = %21
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.tda10048_set_bandwidth) #10
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ -22, %197 ], [ 0, %195 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda10048_i2c_gate_ctrl, i32 noundef %1) #10
  br label %19

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.tda10048_state, ptr %14, i32 0, i32 1, i32 8
  %21 = load i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %19
  %24 = icmp eq i32 %1, 0
  %25 = getelementptr inbounds %struct.tda10048_state, ptr %14, i32 0, i32 1
  br i1 %24, label %69, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  store i8 30, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #12
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #12
  %27 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %27, i8 0, i32 16, i1 false) #12, !annotation !9
  %28 = load i8, ptr %25, align 2
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %12, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %30, align 2
  store i16 1, ptr %27, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %35, align 4
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 30) #10
  br label %40

40:                                               ; preds = %38, %26
  %41 = load ptr, ptr %14, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %12, i32 noundef 2) #12
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %42) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  %48 = or i8 %47, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i8 30, ptr %8, align 2
  %49 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %48, ptr %49, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %50 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %50, align 4, !annotation !9
  %51 = load i8, ptr %25, align 2
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %9, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %54, align 4
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = zext i8 %48 to i32
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 30, i32 noundef %58) #10
  br label %60

60:                                               ; preds = %57, %46
  %61 = load ptr, ptr %14, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %9, i32 noundef 1) #12
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %62) #10
  br label %66

66:                                               ; preds = %64, %60
  %67 = xor i1 %63, true
  %68 = sext i1 %67 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  br label %112

69:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 30, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %70 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #12, !annotation !9
  %71 = load i8, ptr %25, align 2
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %7, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %73, align 2
  store i16 1, ptr %70, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %72, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %78, align 4
  %79 = load i32, ptr @debug, align 4
  %80 = icmp ugt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 30) #10
  br label %83

83:                                               ; preds = %81, %69
  %84 = load ptr, ptr %14, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %7, i32 noundef 2) #12
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %85) #10
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %91 = and i8 %90, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 30, ptr %3, align 2
  %92 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %91, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %93 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %93, align 4, !annotation !9
  %94 = load i8, ptr %25, align 2
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %4, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %97, align 4
  %98 = load i32, ptr @debug, align 4
  %99 = icmp ugt i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = zext i8 %91 to i32
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 30, i32 noundef %101) #10
  br label %103

103:                                              ; preds = %100, %89
  %104 = load ptr, ptr %14, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %4, i32 noundef 1) #12
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %105) #10
  br label %109

109:                                              ; preds = %107, %103
  %110 = xor i1 %106, true
  %111 = sext i1 %110 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %112

112:                                              ; preds = %109, %66, %19
  %113 = phi i32 [ %68, %66 ], [ %111, %109 ], [ 0, %19 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda10048_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_release) #10
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [1 x i8], align 1
  %25 = alloca [1 x i8], align 1
  %26 = alloca [2 x %struct.i2c_msg], align 4
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [1 x i8], align 1
  %33 = alloca [1 x i8], align 1
  %34 = alloca [2 x %struct.i2c_msg], align 4
  %35 = alloca [2 x i8], align 2
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [1 x i8], align 1
  %38 = alloca [1 x i8], align 1
  %39 = alloca [2 x %struct.i2c_msg], align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [1 x i8], align 1
  %43 = alloca [1 x i8], align 1
  %44 = alloca [2 x %struct.i2c_msg], align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [1 x i8], align 1
  %48 = alloca [1 x i8], align 1
  %49 = alloca [2 x %struct.i2c_msg], align 4
  %50 = alloca ptr, align 4
  %51 = alloca [2 x i8], align 2
  %52 = alloca %struct.i2c_msg, align 4
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %1
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_init) #10
  br label %59

59:                                               ; preds = %57, %1
  %60 = getelementptr inbounds %struct.tda10048_state, ptr %54, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = trunc i32 %61 to i16
  %63 = and i16 %62, 255
  store i16 %63, ptr getelementptr inbounds ([41 x %struct.init_tab], ptr @init_tab, i32 0, i32 4, i32 1), align 2
  %64 = getelementptr inbounds %struct.tda10048_state, ptr %54, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = trunc i32 %65 to i16
  %67 = and i16 %66, 191
  %68 = or i16 %67, 64
  store i16 %68, ptr getelementptr inbounds ([41 x %struct.init_tab], ptr @init_tab, i32 0, i32 5, i32 1), align 2
  %69 = getelementptr inbounds %struct.tda10048_state, ptr %54, i32 0, i32 1
  %70 = getelementptr inbounds i8, ptr %51, i32 1
  %71 = getelementptr inbounds i8, ptr %52, i32 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  br label %74

74:                                               ; preds = %96, %59
  %75 = phi i32 [ 0, %59 ], [ %97, %96 ]
  %76 = getelementptr [41 x %struct.init_tab], ptr @init_tab, i32 0, i32 %75
  %77 = load i8, ptr %76, align 2
  %78 = getelementptr [41 x %struct.init_tab], ptr @init_tab, i32 0, i32 %75, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = trunc i16 %79 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #12
  store i8 %77, ptr %51, align 2
  store i8 %80, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #12
  store i32 2, ptr %71, align 4, !annotation !9
  %81 = load i8, ptr %69, align 2
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %52, align 4
  store i16 0, ptr %72, align 2
  store ptr %51, ptr %73, align 4
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = zext i8 %77 to i32
  %87 = and i16 %79, 255
  %88 = zext i16 %87 to i32
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %86, i32 noundef %88) #10
  br label %90

90:                                               ; preds = %85, %74
  %91 = load ptr, ptr %54, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %52, i32 noundef 1) #12
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %92) #10
  br label %96

96:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #12
  %97 = add nuw nsw i32 %75, 1
  %98 = icmp eq i32 %97, 41
  br i1 %98, label %99, label %74

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.tda10048_state, ptr %54, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %391

103:                                              ; preds = %99
  %104 = load ptr, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #12
  store ptr null, ptr %50, align 4, !annotation !9
  %105 = getelementptr inbounds %struct.tda10048_state, ptr %104, i32 0, i32 1, i32 2
  %106 = load i8, ptr %105, align 2
  %107 = icmp ne i8 %106, -56
  %108 = icmp ne i8 %106, 50
  %109 = and i1 %107, %108
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.tda10048_firmware_upload, ptr noundef nonnull @.str.22) #10
  %111 = load ptr, ptr %104, align 4
  %112 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 9, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 @request_firmware(ptr noundef nonnull %50, ptr noundef nonnull @.str.22, ptr noundef %113) #12
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %103
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.tda10048_firmware_upload) #10
  br label %389

118:                                              ; preds = %103
  %119 = load ptr, ptr %50, align 4
  %120 = load i32, ptr %119, align 4
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.tda10048_firmware_upload, i32 noundef %120) #10
  %122 = load ptr, ptr %50, align 4
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 24878
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.tda10048_firmware_upload) #10
  br label %386

127:                                              ; preds = %118
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.tda10048_firmware_upload) #10
  %129 = getelementptr inbounds %struct.tda10048_state, ptr %104, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %47) #12
  store i8 68, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %48) #12
  store i8 0, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %49) #12
  %130 = getelementptr inbounds i8, ptr %49, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %130, i8 0, i32 16, i1 false) #12, !annotation !9
  %131 = load i8, ptr %129, align 2
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %49, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %133, align 2
  store i16 1, ptr %130, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %47, ptr %134, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 1
  store i16 %132, ptr %135, align 4
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 1, i32 1
  store i16 1, ptr %136, align 2
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 1, i32 2
  store i16 1, ptr %137, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 1, i32 3
  store ptr %48, ptr %138, align 4
  %139 = load i32, ptr @debug, align 4
  %140 = icmp ugt i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 68) #10
  br label %143

143:                                              ; preds = %141, %127
  %144 = load ptr, ptr %104, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %49, i32 noundef 2) #12
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %145) #10
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i8, ptr %48, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %49) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %48) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %47) #12
  %151 = and i8 %150, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #12
  store i8 68, ptr %45, align 2
  %152 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 %151, ptr %152, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #12
  %153 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 2, ptr %153, align 4, !annotation !9
  %154 = load i8, ptr %129, align 2
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %46, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %156, align 2
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %157, align 4
  %158 = load i32, ptr @debug, align 4
  %159 = icmp ugt i32 %158, 1
  br i1 %159, label %160, label %163

160:                                              ; preds = %149
  %161 = zext i8 %151 to i32
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 68, i32 noundef %161) #10
  br label %163

163:                                              ; preds = %160, %149
  %164 = load ptr, ptr %104, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %46, i32 noundef 1) #12
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %165) #10
  br label %169

169:                                              ; preds = %167, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %42) #12
  store i8 68, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #12
  store i8 0, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %44) #12
  %170 = getelementptr inbounds i8, ptr %44, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %170, i8 0, i32 16, i1 false) #12, !annotation !9
  %171 = load i8, ptr %129, align 2
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %44, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %173, align 2
  store i16 1, ptr %170, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %42, ptr %174, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1
  store i16 %172, ptr %175, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1, i32 1
  store i16 1, ptr %176, align 2
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1, i32 2
  store i16 1, ptr %177, align 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1, i32 3
  store ptr %43, ptr %178, align 4
  %179 = load i32, ptr @debug, align 4
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %169
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 68) #10
  br label %183

183:                                              ; preds = %181, %169
  %184 = load ptr, ptr %104, align 4
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %44, i32 noundef 2) #12
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %185) #10
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i8, ptr %43, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %44) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %42) #12
  %191 = or i8 %190, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #12
  store i8 68, ptr %40, align 2
  %192 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 %191, ptr %192, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #12
  %193 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 2, ptr %193, align 4, !annotation !9
  %194 = load i8, ptr %129, align 2
  %195 = zext i8 %194 to i16
  store i16 %195, ptr %41, align 4
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %196, align 2
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %197, align 4
  %198 = load i32, ptr @debug, align 4
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %200, label %203

200:                                              ; preds = %189
  %201 = zext i8 %191 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 68, i32 noundef %201) #10
  br label %203

203:                                              ; preds = %200, %189
  %204 = load ptr, ptr %104, align 4
  %205 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %41, i32 noundef 1) #12
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %209, label %207

207:                                              ; preds = %203
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %205) #10
  br label %209

209:                                              ; preds = %207, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #12
  store i8 30, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38) #12
  store i8 0, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %39) #12
  %210 = getelementptr inbounds i8, ptr %39, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %210, i8 0, i32 16, i1 false) #12, !annotation !9
  %211 = load i8, ptr %129, align 2
  %212 = zext i8 %211 to i16
  store i16 %212, ptr %39, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %213, align 2
  store i16 1, ptr %210, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %37, ptr %214, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1
  store i16 %212, ptr %215, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1, i32 1
  store i16 1, ptr %216, align 2
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1, i32 2
  store i16 1, ptr %217, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1, i32 3
  store ptr %38, ptr %218, align 4
  %219 = load i32, ptr @debug, align 4
  %220 = icmp ugt i32 %219, 1
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 30) #10
  br label %223

223:                                              ; preds = %221, %209
  %224 = load ptr, ptr %104, align 4
  %225 = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %39, i32 noundef 2) #12
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %225) #10
  br label %229

229:                                              ; preds = %227, %223
  %230 = load i8, ptr %38, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #12
  %231 = and i8 %230, -7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #12
  store i8 30, ptr %35, align 2
  %232 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 %231, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #12
  %233 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 2, ptr %233, align 4, !annotation !9
  %234 = load i8, ptr %129, align 2
  %235 = zext i8 %234 to i16
  store i16 %235, ptr %36, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %236, align 2
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %237, align 4
  %238 = load i32, ptr @debug, align 4
  %239 = icmp ugt i32 %238, 1
  br i1 %239, label %240, label %243

240:                                              ; preds = %229
  %241 = zext i8 %231 to i32
  %242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 30, i32 noundef %241) #10
  br label %243

243:                                              ; preds = %240, %229
  %244 = load ptr, ptr %104, align 4
  %245 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %36, i32 noundef 1) #12
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %245) #10
  br label %249

249:                                              ; preds = %247, %243
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #12
  store i8 30, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #12
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #12
  %250 = getelementptr inbounds i8, ptr %34, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %250, i8 0, i32 16, i1 false) #12, !annotation !9
  %251 = load i8, ptr %129, align 2
  %252 = zext i8 %251 to i16
  store i16 %252, ptr %34, align 4
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %253, align 2
  store i16 1, ptr %250, align 4
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %32, ptr %254, align 4
  %255 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1
  store i16 %252, ptr %255, align 4
  %256 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 1
  store i16 1, ptr %256, align 2
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 2
  store i16 1, ptr %257, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 3
  store ptr %33, ptr %258, align 4
  %259 = load i32, ptr @debug, align 4
  %260 = icmp ugt i32 %259, 1
  br i1 %260, label %261, label %263

261:                                              ; preds = %249
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 30) #10
  br label %263

263:                                              ; preds = %261, %249
  %264 = load ptr, ptr %104, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %34, i32 noundef 2) #12
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %265) #10
  br label %269

269:                                              ; preds = %267, %263
  %270 = load i8, ptr %33, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #12
  %271 = or i8 %270, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #12
  store i8 30, ptr %30, align 2
  %272 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 %271, ptr %272, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #12
  %273 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %273, align 4, !annotation !9
  %274 = load i8, ptr %129, align 2
  %275 = zext i8 %274 to i16
  store i16 %275, ptr %31, align 4
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %276, align 2
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %277, align 4
  %278 = load i32, ptr @debug, align 4
  %279 = icmp ugt i32 %278, 1
  br i1 %279, label %280, label %283

280:                                              ; preds = %269
  %281 = zext i8 %271 to i32
  %282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 30, i32 noundef %281) #10
  br label %283

283:                                              ; preds = %280, %269
  %284 = load ptr, ptr %104, align 4
  %285 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %31, i32 noundef 1) #12
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %289, label %287

287:                                              ; preds = %283
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %285) #10
  br label %289

289:                                              ; preds = %287, %283
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #12
  store i8 12, ptr %28, align 2
  %290 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 0, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #12
  %291 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %291, align 4, !annotation !9
  %292 = load i8, ptr %129, align 2
  %293 = zext i8 %292 to i16
  store i16 %293, ptr %29, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %294, align 2
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %295, align 4
  %296 = load i32, ptr @debug, align 4
  %297 = icmp ugt i32 %296, 1
  br i1 %297, label %298, label %300

298:                                              ; preds = %289
  %299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 12, i32 noundef 0) #10
  br label %300

300:                                              ; preds = %298, %289
  %301 = load ptr, ptr %104, align 4
  %302 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %29, i32 noundef 1) #12
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %302) #10
  br label %306

306:                                              ; preds = %304, %300
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #12
  %307 = load ptr, ptr %50, align 4
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %316, label %310

310:                                              ; preds = %306
  %311 = zext i8 %106 to i32
  %312 = select i1 %109, i32 200, i32 %311
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 2
  br label %324

316:                                              ; preds = %356, %306
  %317 = getelementptr inbounds i8, ptr %26, i32 4
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1
  %321 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 1
  %322 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 2
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 3
  br label %364

324:                                              ; preds = %356, %310
  %325 = phi i32 [ %308, %310 ], [ %359, %356 ]
  %326 = phi ptr [ %307, %310 ], [ %358, %356 ]
  %327 = phi i32 [ 0, %310 ], [ %357, %356 ]
  %328 = sub i32 %325, %327
  %329 = call i32 @llvm.umin.i32(i32 %328, i32 %312) #12
  %330 = getelementptr inbounds %struct.firmware, ptr %326, i32 0, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr i8, ptr %331, i32 %327
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %27, i8 0, i32 12, i1 false) #12, !annotation !9
  %333 = load i32, ptr @debug, align 4
  %334 = icmp ugt i32 %333, 1
  br i1 %334, label %335, label %337

335:                                              ; preds = %324
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.tda10048_writeregbulk, i32 noundef 14, i32 noundef %329) #10
  br label %337

337:                                              ; preds = %335, %324
  %338 = add nuw nsw i32 %329, 1
  %339 = call noalias align 64 ptr @__kmalloc(i32 noundef %338, i32 noundef 3264) #14
  %340 = icmp eq ptr %339, null
  br i1 %340, label %356, label %341

341:                                              ; preds = %337
  store i8 14, ptr %339, align 64
  %342 = getelementptr i8, ptr %339, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %342, ptr align 1 %332, i32 %329, i1 false) #12
  %343 = load i8, ptr %129, align 2
  %344 = zext i8 %343 to i16
  store i16 %344, ptr %27, align 4
  store i16 0, ptr %313, align 2
  store ptr %339, ptr %314, align 4
  %345 = trunc i32 %338 to i16
  store i16 %345, ptr %315, align 4
  %346 = load i32, ptr @debug, align 4
  %347 = icmp ugt i32 %346, 1
  br i1 %347, label %348, label %350

348:                                              ; preds = %341
  %349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.tda10048_writeregbulk, i32 noundef %338) #10
  br label %350

350:                                              ; preds = %348, %341
  %351 = load ptr, ptr %104, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %27, i32 noundef 1) #12
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %356, label %354

354:                                              ; preds = %350
  %355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.tda10048_writeregbulk, i32 noundef %352) #10
  br label %356

356:                                              ; preds = %354, %350, %337
  call void @kfree(ptr noundef %339) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #12
  %357 = add i32 %329, %327
  %358 = load ptr, ptr %50, align 4
  %359 = load i32, ptr %358, align 4
  %360 = icmp ugt i32 %359, %357
  br i1 %360, label %324, label %316

361:                                              ; preds = %378
  %362 = add nuw nsw i32 %365, 10
  %363 = icmp ult i32 %365, 240
  br i1 %363, label %364, label %386

364:                                              ; preds = %361, %316
  %365 = phi i32 [ 0, %316 ], [ %362, %361 ]
  call void @msleep(i32 noundef 10) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #12
  store i8 26, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #12
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %317, i8 0, i32 16, i1 false) #12, !annotation !9
  %366 = load i8, ptr %129, align 2
  %367 = zext i8 %366 to i16
  store i16 %367, ptr %26, align 4
  store i16 0, ptr %318, align 2
  store i16 1, ptr %317, align 4
  store ptr %24, ptr %319, align 4
  store i16 %367, ptr %320, align 4
  store i16 1, ptr %321, align 2
  store i16 1, ptr %322, align 4
  store ptr %25, ptr %323, align 4
  %368 = load i32, ptr @debug, align 4
  %369 = icmp ugt i32 %368, 1
  br i1 %369, label %370, label %372

370:                                              ; preds = %364
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 26) #10
  br label %372

372:                                              ; preds = %370, %364
  %373 = load ptr, ptr %104, align 4
  %374 = call i32 @i2c_transfer(ptr noundef %373, ptr noundef nonnull %26, i32 noundef 2) #12
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %378, label %376

376:                                              ; preds = %372
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %374) #10
  br label %378

378:                                              ; preds = %376, %372
  %379 = load i8, ptr %25, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #12
  %380 = and i8 %379, 64
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %361, label %382

382:                                              ; preds = %378
  %383 = load ptr, ptr %50, align 4
  call void @release_firmware(ptr noundef %383) #12
  %384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.tda10048_firmware_upload) #10
  %385 = getelementptr inbounds %struct.tda10048_state, ptr %104, i32 0, i32 3
  store i32 1, ptr %385, align 4
  br label %389

386:                                              ; preds = %361, %125
  %387 = load ptr, ptr %50, align 4
  call void @release_firmware(ptr noundef %387) #12
  %388 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.tda10048_firmware_upload) #10
  br label %389

389:                                              ; preds = %386, %382, %116
  %390 = phi i32 [ -5, %116 ], [ -5, %386 ], [ 0, %382 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #12
  br label %391

391:                                              ; preds = %389, %99
  %392 = phi i32 [ %390, %389 ], [ 0, %99 ]
  %393 = getelementptr inbounds %struct.tda10048_state, ptr %54, i32 0, i32 1, i32 1
  %394 = load i8, ptr %393, align 1
  %395 = load ptr, ptr %53, align 4
  %396 = load i32, ptr @debug, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %391
  %399 = zext i8 %394 to i32
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda10048_output_mode, i32 noundef %399) #10
  %401 = load i32, ptr @debug, align 4
  %402 = icmp ugt i32 %401, 1
  br label %403

403:                                              ; preds = %398, %391
  %404 = phi i1 [ %402, %398 ], [ false, %391 ]
  %405 = getelementptr inbounds %struct.tda10048_state, ptr %395, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i8 68, ptr %22, align 2
  %406 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 33, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #12
  %407 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %407, align 4, !annotation !9
  %408 = load i8, ptr %405, align 2
  %409 = zext i8 %408 to i16
  store i16 %409, ptr %23, align 4
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %410, align 2
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %411, align 4
  br i1 %404, label %412, label %414

412:                                              ; preds = %403
  %413 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 68, i32 noundef 33) #10
  br label %414

414:                                              ; preds = %412, %403
  %415 = load ptr, ptr %395, align 4
  %416 = call i32 @i2c_transfer(ptr noundef %415, ptr noundef nonnull %23, i32 noundef 1) #12
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %420, label %418

418:                                              ; preds = %414
  %419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %416) #10
  br label %420

420:                                              ; preds = %418, %414
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #12
  store i8 69, ptr %20, align 2
  %421 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 0, ptr %421, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #12
  %422 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %422, align 4, !annotation !9
  %423 = load i8, ptr %405, align 2
  %424 = zext i8 %423 to i16
  store i16 %424, ptr %21, align 4
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %425, align 2
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %426, align 4
  %427 = load i32, ptr @debug, align 4
  %428 = icmp ugt i32 %427, 1
  br i1 %428, label %429, label %431

429:                                              ; preds = %420
  %430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 69, i32 noundef 0) #10
  br label %431

431:                                              ; preds = %429, %420
  %432 = load ptr, ptr %395, align 4
  %433 = call i32 @i2c_transfer(ptr noundef %432, ptr noundef nonnull %21, i32 noundef 1) #12
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %437, label %435

435:                                              ; preds = %431
  %436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %433) #10
  br label %437

437:                                              ; preds = %435, %431
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  %438 = icmp eq i8 %394, 0
  br i1 %438, label %474, label %439

439:                                              ; preds = %437
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i8 78, ptr %18, align 2
  %440 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 -96, ptr %440, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  %441 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %441, align 4, !annotation !9
  %442 = load i8, ptr %405, align 2
  %443 = zext i8 %442 to i16
  store i16 %443, ptr %19, align 4
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %444, align 2
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %445, align 4
  %446 = load i32, ptr @debug, align 4
  %447 = icmp ugt i32 %446, 1
  br i1 %447, label %448, label %450

448:                                              ; preds = %439
  %449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 78, i32 noundef 160) #10
  br label %450

450:                                              ; preds = %448, %439
  %451 = load ptr, ptr %395, align 4
  %452 = call i32 @i2c_transfer(ptr noundef %451, ptr noundef nonnull %19, i32 noundef 1) #12
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %456, label %454

454:                                              ; preds = %450
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %452) #10
  br label %456

456:                                              ; preds = %454, %450
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i8 -32, ptr %16, align 2
  %457 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -64, ptr %457, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %458 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %458, align 4, !annotation !9
  %459 = load i8, ptr %405, align 2
  %460 = zext i8 %459 to i16
  store i16 %460, ptr %17, align 4
  %461 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %461, align 2
  %462 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %462, align 4
  %463 = load i32, ptr @debug, align 4
  %464 = icmp ugt i32 %463, 1
  br i1 %464, label %465, label %467

465:                                              ; preds = %456
  %466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 224, i32 noundef 192) #10
  br label %467

467:                                              ; preds = %465, %456
  %468 = load ptr, ptr %395, align 4
  %469 = call i32 @i2c_transfer(ptr noundef %468, ptr noundef nonnull %17, i32 noundef 1) #12
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %473, label %471

471:                                              ; preds = %467
  %472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %469) #10
  br label %473

473:                                              ; preds = %471, %467
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  br label %509

474:                                              ; preds = %437
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 78, ptr %14, align 2
  %475 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 0, ptr %475, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %476 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %476, align 4, !annotation !9
  %477 = load i8, ptr %405, align 2
  %478 = zext i8 %477 to i16
  store i16 %478, ptr %15, align 4
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %479, align 2
  %480 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %480, align 4
  %481 = load i32, ptr @debug, align 4
  %482 = icmp ugt i32 %481, 1
  br i1 %482, label %483, label %485

483:                                              ; preds = %474
  %484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 78, i32 noundef 0) #10
  br label %485

485:                                              ; preds = %483, %474
  %486 = load ptr, ptr %395, align 4
  %487 = call i32 @i2c_transfer(ptr noundef %486, ptr noundef nonnull %15, i32 noundef 1) #12
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %491, label %489

489:                                              ; preds = %485
  %490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %487) #10
  br label %491

491:                                              ; preds = %489, %485
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 -32, ptr %12, align 2
  %492 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 1, ptr %492, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %493 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %493, align 4, !annotation !9
  %494 = load i8, ptr %405, align 2
  %495 = zext i8 %494 to i16
  store i16 %495, ptr %13, align 4
  %496 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %496, align 2
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %497, align 4
  %498 = load i32, ptr @debug, align 4
  %499 = icmp ugt i32 %498, 1
  br i1 %499, label %500, label %502

500:                                              ; preds = %491
  %501 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 224, i32 noundef 1) #10
  br label %502

502:                                              ; preds = %500, %491
  %503 = load ptr, ptr %395, align 4
  %504 = call i32 @i2c_transfer(ptr noundef %503, ptr noundef nonnull %13, i32 noundef 1) #12
  %505 = icmp eq i32 %504, 1
  br i1 %505, label %508, label %506

506:                                              ; preds = %502
  %507 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %504) #10
  br label %508

508:                                              ; preds = %506, %502
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  br label %509

509:                                              ; preds = %508, %473
  %510 = getelementptr inbounds %struct.tda10048_state, ptr %54, i32 0, i32 1, i32 3
  %511 = load i8, ptr %510, align 1
  %512 = load ptr, ptr %53, align 4
  %513 = load i32, ptr @debug, align 4
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %518, label %515

515:                                              ; preds = %509
  %516 = zext i8 %511 to i32
  %517 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda10048_set_inversion, i32 noundef %516) #10
  br label %518

518:                                              ; preds = %515, %509
  %519 = icmp eq i8 %511, 1
  %520 = getelementptr inbounds %struct.tda10048_state, ptr %512, i32 0, i32 1
  br i1 %519, label %521, label %562

521:                                              ; preds = %518
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 96, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  %522 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %522, i8 0, i32 16, i1 false) #12, !annotation !9
  %523 = load i8, ptr %520, align 2
  %524 = zext i8 %523 to i16
  store i16 %524, ptr %11, align 4
  %525 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %525, align 2
  store i16 1, ptr %522, align 4
  %526 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %526, align 4
  %527 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %524, ptr %527, align 4
  %528 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %528, align 2
  %529 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %529, align 4
  %530 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %530, align 4
  %531 = load i32, ptr @debug, align 4
  %532 = icmp ugt i32 %531, 1
  br i1 %532, label %533, label %535

533:                                              ; preds = %521
  %534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 96) #10
  br label %535

535:                                              ; preds = %533, %521
  %536 = load ptr, ptr %512, align 4
  %537 = call i32 @i2c_transfer(ptr noundef %536, ptr noundef nonnull %11, i32 noundef 2) #12
  %538 = icmp eq i32 %537, 2
  br i1 %538, label %541, label %539

539:                                              ; preds = %535
  %540 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %537) #10
  br label %541

541:                                              ; preds = %539, %535
  %542 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  %543 = or i8 %542, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 96, ptr %7, align 2
  %544 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %543, ptr %544, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %545 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %545, align 4, !annotation !9
  %546 = load i8, ptr %520, align 2
  %547 = zext i8 %546 to i16
  store i16 %547, ptr %8, align 4
  %548 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %548, align 2
  %549 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %549, align 4
  %550 = load i32, ptr @debug, align 4
  %551 = icmp ugt i32 %550, 1
  br i1 %551, label %552, label %555

552:                                              ; preds = %541
  %553 = zext i8 %543 to i32
  %554 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 96, i32 noundef %553) #10
  br label %555

555:                                              ; preds = %552, %541
  %556 = load ptr, ptr %512, align 4
  %557 = call i32 @i2c_transfer(ptr noundef %556, ptr noundef nonnull %8, i32 noundef 1) #12
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %561, label %559

559:                                              ; preds = %555
  %560 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %557) #10
  br label %561

561:                                              ; preds = %559, %555
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %603

562:                                              ; preds = %518
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 96, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %563 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %563, i8 0, i32 16, i1 false) #12, !annotation !9
  %564 = load i8, ptr %520, align 2
  %565 = zext i8 %564 to i16
  store i16 %565, ptr %6, align 4
  %566 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %566, align 2
  store i16 1, ptr %563, align 4
  %567 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %567, align 4
  %568 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %565, ptr %568, align 4
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %569, align 2
  %570 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %570, align 4
  %571 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %571, align 4
  %572 = load i32, ptr @debug, align 4
  %573 = icmp ugt i32 %572, 1
  br i1 %573, label %574, label %576

574:                                              ; preds = %562
  %575 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 96) #10
  br label %576

576:                                              ; preds = %574, %562
  %577 = load ptr, ptr %512, align 4
  %578 = call i32 @i2c_transfer(ptr noundef %577, ptr noundef nonnull %6, i32 noundef 2) #12
  %579 = icmp eq i32 %578, 2
  br i1 %579, label %582, label %580

580:                                              ; preds = %576
  %581 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %578) #10
  br label %582

582:                                              ; preds = %580, %576
  %583 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  %584 = and i8 %583, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 96, ptr %2, align 2
  %585 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %584, ptr %585, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %586 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %586, align 4, !annotation !9
  %587 = load i8, ptr %520, align 2
  %588 = zext i8 %587 to i16
  store i16 %588, ptr %3, align 4
  %589 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %589, align 2
  %590 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %590, align 4
  %591 = load i32, ptr @debug, align 4
  %592 = icmp ugt i32 %591, 1
  br i1 %592, label %593, label %596

593:                                              ; preds = %582
  %594 = zext i8 %584 to i32
  %595 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 96, i32 noundef %594) #10
  br label %596

596:                                              ; preds = %593, %582
  %597 = load ptr, ptr %512, align 4
  %598 = call i32 @i2c_transfer(ptr noundef %597, ptr noundef nonnull %3, i32 noundef 1) #12
  %599 = icmp eq i32 %598, 1
  br i1 %599, label %602, label %600

600:                                              ; preds = %596
  %601 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %598) #10
  br label %602

602:                                              ; preds = %600, %596
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  br label %603

603:                                              ; preds = %602, %561
  %604 = call fastcc i32 @tda10048_set_if(ptr noundef %0, i32 noundef 8000000)
  %605 = call fastcc i32 @tda10048_set_bandwidth(ptr noundef %0, i32 noundef 8000000)
  %606 = call i32 @tda10048_i2c_gate_ctrl(ptr noundef %0, i32 noundef 0)
  ret i32 %392
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.tda10048_set_frontend, i32 noundef %12) #10
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tda10048_state, ptr %7, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @tda10048_set_if(ptr noundef %0, i32 noundef %16)
  %22 = load i32, ptr %15, align 4
  %23 = tail call fastcc i32 @tda10048_set_bandwidth(ptr noundef %0, i32 noundef %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %0, i32 noundef 1) #12
  %34 = load ptr, ptr %25, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi ptr [ %34, %32 ], [ %26, %28 ]
  %37 = tail call i32 %36(ptr noundef %0) #12
  %38 = load ptr, ptr %29, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef 0) #12
  br label %42

42:                                               ; preds = %40, %35, %24
  %43 = getelementptr inbounds %struct.tda10048_state, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 24, ptr %4, align 2
  %44 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 87, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %45 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %45, align 4, !annotation !9
  %46 = load i8, ptr %43, align 2
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %5, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %49, align 4
  %50 = load i32, ptr @debug, align 4
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 24, i32 noundef 87) #10
  br label %54

54:                                               ; preds = %52, %42
  %55 = load ptr, ptr %7, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %5, i32 noundef 1) #12
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %56) #10
  br label %60

60:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 -62, ptr %2, align 2
  %61 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 59, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %62 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %62, align 4, !annotation !9
  %63 = load i8, ptr %43, align 2
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %3, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %66, align 4
  %67 = load i32, ptr @debug, align 4
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 194, i32 noundef 59) #10
  br label %71

71:                                               ; preds = %69, %60
  %72 = load ptr, ptr %7, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %3, i32 noundef 1) #12
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %73) #10
  br label %77

77:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda10048_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_get_frontend) #10
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ugt i32 %24, 1
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ %25, %22 ], [ false, %2 ]
  %28 = getelementptr inbounds %struct.tda10048_state, ptr %19, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #12
  store i8 96, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #12
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #12
  %29 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %29, i8 0, i32 16, i1 false) #12, !annotation !9
  %30 = load i8, ptr %28, align 2
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %17, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %32, align 2
  store i16 1, ptr %29, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %37, align 4
  br i1 %27, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 96) #10
  br label %40

40:                                               ; preds = %38, %26
  %41 = load ptr, ptr %19, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %17, i32 noundef 2) #12
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %42) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #12
  %48 = lshr i8 %47, 5
  %49 = and i8 %48, 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #12
  store i8 24, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #12
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #12
  %52 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %52, i8 0, i32 16, i1 false) #12, !annotation !9
  %53 = load i8, ptr %28, align 2
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %14, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %55, align 2
  store i16 1, ptr %52, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %54, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %60, align 4
  %61 = load i32, ptr @debug, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 24) #10
  br label %65

65:                                               ; preds = %63, %46
  %66 = load ptr, ptr %19, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %14, i32 noundef 2) #12
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %67) #10
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #12
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %174, label %75

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 21, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  %76 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %76, i8 0, i32 16, i1 false) #12, !annotation !9
  %77 = load i8, ptr %28, align 2
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %11, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %79, align 2
  store i16 1, ptr %76, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %78, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %82, align 2
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %84, align 4
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 21) #10
  br label %89

89:                                               ; preds = %87, %75
  %90 = load ptr, ptr %19, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %11, i32 noundef 2) #12
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %91) #10
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  %97 = zext i8 %96 to i32
  %98 = lshr i32 %97, 5
  %99 = and i32 %98, 3
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds [3 x i32], ptr @switch.table.tda10048_get_frontend, i32 0, i32 %99
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = lshr i32 %97, 3
  %107 = and i32 %106, 3
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %107, ptr %108, align 4
  %109 = and i32 %97, 7
  %110 = icmp ult i32 %109, 5
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = getelementptr inbounds [5 x i32], ptr @switch.table.tda10048_get_frontend.35, i32 0, i32 %109
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %111, %105
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 22, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %116 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %116, i8 0, i32 16, i1 false) #12, !annotation !9
  %117 = load i8, ptr %28, align 2
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %8, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %119, align 2
  store i16 1, ptr %116, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %120, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %118, ptr %121, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %124, align 4
  %125 = load i32, ptr @debug, align 4
  %126 = icmp ugt i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 22) #10
  br label %129

129:                                              ; preds = %127, %115
  %130 = load ptr, ptr %19, align 4
  %131 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %8, i32 noundef 2) #12
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %131) #10
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  %137 = and i8 %136, 7
  %138 = icmp ult i8 %137, 5
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = zext i8 %137 to i32
  %141 = getelementptr inbounds [5 x i32], ptr @switch.table.tda10048_get_frontend.35, i32 0, i32 %140
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %139, %135
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 20, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %145 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %145, i8 0, i32 16, i1 false) #12, !annotation !9
  %146 = load i8, ptr %28, align 2
  %147 = zext i8 %146 to i16
  store i16 %147, ptr %5, align 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %148, align 2
  store i16 1, ptr %145, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %149, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %147, ptr %150, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %151, align 2
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %152, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %153, align 4
  %154 = load i32, ptr @debug, align 4
  %155 = icmp ugt i32 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 20) #10
  br label %158

158:                                              ; preds = %156, %144
  %159 = load ptr, ptr %19, align 4
  %160 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %5, i32 noundef 2) #12
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %160) #10
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %166 = zext i8 %165 to i32
  %167 = lshr i32 %166, 2
  %168 = and i32 %167, 3
  %169 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %168, ptr %169, align 4
  %170 = and i32 %166, 3
  %171 = icmp ult i32 %170, 2
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %170, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %164, %71
  %175 = phi i32 [ -11, %71 ], [ 0, %164 ], [ 0, %172 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.tda10048_state, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 26, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #12, !annotation !9
  %10 = load i8, ptr %8, align 2
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %9, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %17, align 4
  %18 = load i32, ptr @debug, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 26) #10
  br label %22

22:                                               ; preds = %20, %2
  %23 = load ptr, ptr %7, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %24) #10
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i8 %29 to i32
  br i1 %31, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.tda10048_read_status, i32 noundef %32) #10
  br label %35

35:                                               ; preds = %33, %28
  %36 = and i32 %32, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %1, align 4
  %40 = or i32 %39, 2
  store i32 %40, ptr %1, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = and i32 %32, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 1
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = and i32 %32, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %1, align 4
  %52 = or i32 %51, 28
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %50, %47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [1 x i8], align 1
  %15 = alloca [1 x i8], align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [1 x i8], align 1
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2 x %struct.i2c_msg], align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_read_ber) #10
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ugt i32 %26, 1
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i1 [ %27, %24 ], [ false, %2 ]
  %30 = getelementptr inbounds %struct.tda10048_state, ptr %21, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #12
  store i8 -42, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #12
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #12
  %31 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #12, !annotation !9
  %32 = load i8, ptr %30, align 2
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %19, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %17, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 3
  store ptr %18, ptr %39, align 4
  br i1 %29, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 214) #10
  br label %42

42:                                               ; preds = %40, %28
  %43 = load ptr, ptr %21, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %19, i32 noundef 2) #12
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %44) #10
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i8, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #12
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %176, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #12
  store i8 -57, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #12
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #12
  %53 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %53, i8 0, i32 16, i1 false) #12, !annotation !9
  %54 = load i8, ptr %30, align 2
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %16, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %56, align 2
  store i16 1, ptr %53, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %55, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %61, align 4
  %62 = load i32, ptr @debug, align 4
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 199) #10
  br label %66

66:                                               ; preds = %64, %52
  %67 = load ptr, ptr %21, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %16, i32 noundef 2) #12
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %68) #10
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8, ptr %15, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #12
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #12
  store i8 -58, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #12
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #12
  %76 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %76, i8 0, i32 16, i1 false) #12, !annotation !9
  %77 = load i8, ptr %30, align 2
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %13, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %79, align 2
  store i16 1, ptr %76, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %78, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %82, align 2
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %84, align 4
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 198) #10
  br label %89

89:                                               ; preds = %87, %72
  %90 = load ptr, ptr %21, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %13, i32 noundef 2) #12
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %91) #10
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i8, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #12
  %97 = zext i8 %96 to i32
  %98 = or i32 %75, %97
  %99 = zext i32 %98 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 -59, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  %100 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %100, i8 0, i32 16, i1 false) #12, !annotation !9
  %101 = load i8, ptr %30, align 2
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %10, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %103, align 2
  store i16 1, ptr %100, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %104, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %102, ptr %105, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %107, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %108, align 4
  %109 = load i32, ptr @debug, align 4
  %110 = icmp ugt i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %95
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 197) #10
  br label %113

113:                                              ; preds = %111, %95
  %114 = load ptr, ptr %21, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %10, i32 noundef 2) #12
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %115) #10
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  %121 = zext i8 %120 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 -60, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %122 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %122, i8 0, i32 16, i1 false) #12, !annotation !9
  %123 = load i8, ptr %30, align 2
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %7, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %125, align 2
  store i16 1, ptr %122, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %126, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %124, ptr %127, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %128, align 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %129, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %130, align 4
  %131 = load i32, ptr @debug, align 4
  %132 = icmp ugt i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 196) #10
  br label %135

135:                                              ; preds = %133, %119
  %136 = load ptr, ptr %21, align 4
  %137 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %7, i32 noundef 2) #12
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %137) #10
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %143 = zext i8 %142 to i32
  %144 = mul nuw nsw i64 %99, 200000000
  %145 = shl nuw nsw i32 %121, 13
  %146 = shl nuw nsw i32 %143, 5
  %147 = or i32 %146, %145
  %148 = or i32 %147, 1
  %149 = icmp ult i64 %144, 4294967296
  br i1 %149, label %150, label %153, !prof !10

150:                                              ; preds = %141
  %151 = trunc i64 %144 to i32
  %152 = udiv i32 %151, %148
  br label %157

153:                                              ; preds = %141
  %154 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %148, i64 %144) #13, !srcloc !11
  %155 = extractvalue { i64, i64 } %154, 1
  %156 = trunc i64 %155 to i32
  br label %157

157:                                              ; preds = %153, %150
  %158 = phi i32 [ %152, %150 ], [ %156, %153 ]
  store i32 %158, ptr @tda10048_read_ber.cber_current, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 -62, ptr %3, align 2
  %159 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 57, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %160 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %160, align 4, !annotation !9
  %161 = load i8, ptr %30, align 2
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %4, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %163, align 2
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %164, align 4
  %165 = load i32, ptr @debug, align 4
  %166 = icmp ugt i32 %165, 1
  br i1 %166, label %167, label %169

167:                                              ; preds = %157
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 194, i32 noundef 57) #10
  br label %169

169:                                              ; preds = %167, %157
  %170 = load ptr, ptr %21, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %4, i32 noundef 1) #12
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %171) #10
  br label %175

175:                                              ; preds = %173, %169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %176

176:                                              ; preds = %175, %48
  %177 = load i32, ptr @tda10048_read_ber.cber_current, align 4
  store i32 %177, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_read_signal_strength) #10
  br label %12

12:                                               ; preds = %10, %2
  store i16 -1, ptr %1, align 2
  %13 = getelementptr inbounds %struct.tda10048_state, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 -94, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #12, !annotation !9
  %15 = load i8, ptr %13, align 2
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = load i32, ptr @debug, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 162) #10
  br label %27

27:                                               ; preds = %25, %12
  %28 = load ptr, ptr %7, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %5, i32 noundef 2) #12
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %29) #10
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = zext i8 %34 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %38, %37
  %40 = load i16, ptr %1, align 2
  %41 = trunc i32 %39 to i16
  %42 = sub i16 %40, %41
  store i16 %42, ptr %1, align 2
  br label %43

43:                                               ; preds = %36, %33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_read_snr) #10
  %12 = load i32, ptr @debug, align 4
  %13 = icmp ugt i32 %12, 1
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ %13, %10 ], [ false, %2 ]
  %16 = getelementptr inbounds %struct.tda10048_state, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 -94, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %17 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #12, !annotation !9
  %18 = load i8, ptr %16, align 2
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %5, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %17, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %25, align 4
  br i1 %15, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 162) #10
  br label %28

28:                                               ; preds = %26, %14
  %29 = load ptr, ptr %7, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %5, i32 noundef 2) #12
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %30) #10
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %36

36:                                               ; preds = %45, %34
  %37 = phi i32 [ 0, %34 ], [ %46, %45 ]
  %38 = getelementptr [123 x %struct.snr_tab], ptr @snr_tab, i32 0, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = icmp ugt i8 %35, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr [123 x %struct.snr_tab], ptr @snr_tab, i32 0, i32 %37, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %1, align 2
  br label %48

45:                                               ; preds = %36
  %46 = add nuw nsw i32 %37, 1
  %47 = icmp eq i32 %46, 123
  br i1 %47, label %48, label %36

48:                                               ; preds = %45, %41
  %49 = phi i32 [ 0, %41 ], [ -22, %45 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10048_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda10048_read_ucblocks) #10
  %17 = load i32, ptr @debug, align 4
  %18 = icmp ugt i32 %17, 1
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ %18, %15 ], [ false, %2 ]
  %21 = getelementptr inbounds %struct.tda10048_state, ptr %12, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 -49, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  %22 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #12, !annotation !9
  %23 = load i8, ptr %21, align 2
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %10, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %30, align 4
  br i1 %20, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 207) #10
  br label %33

33:                                               ; preds = %31, %19
  %34 = load ptr, ptr %12, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %10, i32 noundef 2) #12
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %35) #10
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 -50, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %43 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #12, !annotation !9
  %44 = load i8, ptr %21, align 2
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %7, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 1, ptr %43, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %51, align 4
  %52 = load i32, ptr @debug, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef 206) #10
  br label %56

56:                                               ; preds = %54, %39
  %57 = load ptr, ptr %12, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %7, i32 noundef 2) #12
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda10048_readreg, i32 noundef %58) #10
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %64 = zext i8 %63 to i32
  %65 = or i32 %42, %64
  store i32 %65, ptr %1, align 4
  %66 = icmp eq i32 %65, 65535
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 -51, ptr %3, align 2
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -128, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %69 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %69, align 4, !annotation !9
  %70 = load i8, ptr %21, align 2
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load i32, ptr @debug, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef 205, i32 noundef 128) #10
  br label %78

78:                                               ; preds = %76, %67
  %79 = load ptr, ptr %12, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %4, i32 noundef 1) #12
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda10048_writereg, i32 noundef %80) #10
  br label %84

84:                                               ; preds = %82, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %85

85:                                               ; preds = %84, %62
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148352621, i64 2148352901, i64 2148353235, i64 2148353569}
!12 = !{i64 866960, i64 866987}
!13 = !{i64 867300, i64 867327, i64 867361, i64 867382}
