; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx24123.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24123.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24123_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24123_get_tuner_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cx24123_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24123_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24123_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24123_attach:\09\09\09\09\09"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.73 = type { i8, i8 }
%struct.cx24123_bandselect_val = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.cx24123_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, i32, i32, %struct.i2c_adapter, i8, i32, i32 }
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
%struct.cx24123_config = type { i8, ptr, i32, i8, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_force_band = internal constant [11 x i8] c"force_band\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_band = internal global i32 0, align 4
@__param_force_band = internal constant %struct.kernel_param { ptr @__param_str_force_band, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @force_band } }, section "__param", align 4
@__UNIQUE_ID_force_bandtype249 = internal constant [24 x i8] c"parmtype=force_band:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_band250 = internal constant [65 x i8] c"parm=force_band:Force a specific band select (1-9, default:off).\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [52 x i8] c"parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__kstrtab_cx24123_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24123_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24123_get_tuner_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24123_get_tuner_i2c_adapter to i32), ptr @__kstrtab_cx24123_get_tuner_i2c_adapter, ptr @__kstrtabns_cx24123_get_tuner_i2c_adapter }, section "___ksymtab+cx24123_get_tuner_i2c_adapter", align 4
@.str = private unnamed_addr constant [16 x i8] c"\017CX24123: %s: \00", align 1
@__func__.cx24123_attach = private unnamed_addr constant [15 x i8] c"cx24123_attach\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013CX24123: Unable to kzalloc\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\016CX24123: detected CX24123C\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\016CX24123: detected CX24123\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013CX24123: wrong demod revision: %x\0A\00", align 1
@cx24123_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24123/CX24109\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1073743615 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @cx24123_release, ptr null, ptr @cx24123_initfe, ptr null, ptr null, ptr null, ptr null, ptr @cx24123_tune, ptr @cx24123_get_algo, ptr @cx24123_set_frontend, ptr null, ptr @cx24123_get_frontend, ptr @cx24123_read_status, ptr @cx24123_read_ber, ptr @cx24123_read_signal_strength, ptr @cx24123_read_snr, ptr null, ptr null, ptr @cx24123_send_diseqc_msg, ptr null, ptr @cx24123_diseqc_send_burst, ptr @cx24123_set_tone, ptr @cx24123_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"CX24123 tuner I2C bus\00", align 1
@cx24123_tuner_i2c_algo = internal constant %struct.i2c_algorithm { ptr @cx24123_tuner_i2c_tuner_xfer, ptr null, ptr null, ptr null, ptr @cx24123_tuner_i2c_func, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"\013CX24123: tuner i2c bus could not be initialized\0A\00", align 1
@__kstrtab_cx24123_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24123_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24123_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24123_attach to i32), ptr @__kstrtab_cx24123_attach, ptr @__kstrtabns_cx24123_attach }, section "___ksymtab+cx24123_attach", align 4
@__UNIQUE_ID_description253 = internal constant [78 x i8] c"description=DVB Frontend module for Conexant CX24123/CX24109/CX24113 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"\013CX24123: %s: reg=0x%x (error=%d)\0A\00", align 1
@__func__.cx24123_i2c_readreg = private unnamed_addr constant [20 x i8] c"cx24123_i2c_readreg\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"%s: writereg error(err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.cx24123_i2c_writereg = private unnamed_addr constant [21 x i8] c"cx24123_i2c_writereg\00", align 1
@__func__.cx24123_release = private unnamed_addr constant [16 x i8] c"cx24123_release\00", align 1
@__func__.cx24123_initfe = private unnamed_addr constant [15 x i8] c"cx24123_initfe\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"init frontend\0A\00", align 1
@cx24123_regdata = internal unnamed_addr constant [41 x %struct.anon.73] [%struct.anon.73 { i8 0, i8 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 { i8 3, i8 7 }, %struct.anon.73 { i8 4, i8 16 }, %struct.anon.73 { i8 5, i8 4 }, %struct.anon.73 { i8 6, i8 49 }, %struct.anon.73 { i8 11, i8 0 }, %struct.anon.73 { i8 12, i8 0 }, %struct.anon.73 { i8 13, i8 127 }, %struct.anon.73 { i8 14, i8 3 }, %struct.anon.73 { i8 15, i8 -2 }, %struct.anon.73 { i8 16, i8 1 }, %struct.anon.73 { i8 22, i8 0 }, %struct.anon.73 { i8 23, i8 1 }, %struct.anon.73 { i8 28, i8 -128 }, %struct.anon.73 { i8 32, i8 0 }, %struct.anon.73 { i8 33, i8 21 }, %struct.anon.73 { i8 40, i8 0 }, %struct.anon.73 { i8 41, i8 0 }, %struct.anon.73 { i8 42, i8 -80 }, %struct.anon.73 { i8 43, i8 115 }, %struct.anon.73 { i8 44, i8 0 }, %struct.anon.73 { i8 45, i8 0 }, %struct.anon.73 { i8 46, i8 0 }, %struct.anon.73 { i8 47, i8 0 }, %struct.anon.73 { i8 48, i8 0 }, %struct.anon.73 { i8 49, i8 0 }, %struct.anon.73 { i8 50, i8 -116 }, %struct.anon.73 { i8 51, i8 0 }, %struct.anon.73 { i8 52, i8 0 }, %struct.anon.73 { i8 53, i8 3 }, %struct.anon.73 { i8 54, i8 2 }, %struct.anon.73 { i8 55, i8 58 }, %struct.anon.73 { i8 58, i8 0 }, %struct.anon.73 { i8 68, i8 0 }, %struct.anon.73 { i8 69, i8 0 }, %struct.anon.73 { i8 70, i8 13 }, %struct.anon.73 { i8 86, i8 -63 }, %struct.anon.73 { i8 87, i8 -1 }, %struct.anon.73 { i8 92, i8 32 }, %struct.anon.73 { i8 103, i8 -125 }], align 1
@__func__.cx24123_set_frontend = private unnamed_addr constant [21 x i8] c"cx24123_set_frontend\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\013CX24123: it seems I don't have a tuner...\00", align 1
@__func__.cx24123_set_inversion = private unnamed_addr constant [22 x i8] c"cx24123_set_inversion\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"inversion off\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"inversion on\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"inversion auto\0A\00", align 1
@__func__.cx24123_set_fec = private unnamed_addr constant [16 x i8] c"cx24123_set_fec\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"set FEC to 1/2\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"set FEC to 2/3\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"set FEC to 3/4\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"set FEC to 4/5\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"set FEC to 5/6\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"set FEC to 6/7\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"set FEC to 7/8\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"set FEC to auto\0A\00", align 1
@__func__.cx24123_set_symbolrate = private unnamed_addr constant [23 x i8] c"cx24123_set_symbolrate\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\0A\00", align 1
@__func__.cx24123_pll_tune = private unnamed_addr constant [17 x i8] c"cx24123_pll_tune\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"frequency=%i\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"pll tune VCA=%d, band=%d, pll=%d\0A\00", align 1
@cx24123_bandselect_vals = internal unnamed_addr constant [9 x %struct.cx24123_bandselect_val] [%struct.cx24123_bandselect_val { i32 950000, i32 1074999, i32 4, i32 64 }, %struct.cx24123_bandselect_val { i32 1075000, i32 1177999, i32 4, i32 128 }, %struct.cx24123_bandselect_val { i32 1178000, i32 1295999, i32 2, i32 513 }, %struct.cx24123_bandselect_val { i32 1296000, i32 1431999, i32 2, i32 514 }, %struct.cx24123_bandselect_val { i32 1432000, i32 1575999, i32 2, i32 516 }, %struct.cx24123_bandselect_val { i32 1576000, i32 1717999, i32 2, i32 520 }, %struct.cx24123_bandselect_val { i32 1718000, i32 1855999, i32 2, i32 528 }, %struct.cx24123_bandselect_val { i32 1856000, i32 2035999, i32 2, i32 544 }, %struct.cx24123_bandselect_val { i32 2036000, i32 2150000, i32 2, i32 576 }], align 4
@__func__.cx24123_pll_writereg = private unnamed_addr constant [21 x i8] c"cx24123_pll_writereg\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"pll writereg called, data=0x%08x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.28 = private unnamed_addr constant [73 x i8] c"\013CX24123: %s:  demodulator is not responding, possibly hung, aborting.\0A\00", align 1
@.str.29 = private unnamed_addr constant [72 x i8] c"\013CX24123: %s:  demodulator is not responding,possibly hung, aborting.\0A\00", align 1
@__func__.cx24123_get_frontend = private unnamed_addr constant [21 x i8] c"cx24123_get_frontend\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"\013CX24123: %s: Failed to get fec status\0A\00", align 1
@__func__.cx24123_get_inversion = private unnamed_addr constant [22 x i8] c"cx24123_get_inversion\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"read inversion off\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"read inversion on\0A\00", align 1
@__func__.cx24123_read_ber = private unnamed_addr constant [17 x i8] c"cx24123_read_ber\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"BER = %d\0A\00", align 1
@__func__.cx24123_read_signal_strength = private unnamed_addr constant [29 x i8] c"cx24123_read_signal_strength\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Signal strength = %d\0A\00", align 1
@__func__.cx24123_read_snr = private unnamed_addr constant [17 x i8] c"cx24123_read_snr\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"read S/N index = %d\0A\00", align 1
@__func__.cx24123_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"cx24123_send_diseqc_msg\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"\013CX24123: %s: diseqc queue not ready, command may be lost.\0A\00", align 1
@__func__.cx24123_wait_for_diseqc = private unnamed_addr constant [24 x i8] c"cx24123_wait_for_diseqc\00", align 1
@__func__.cx24123_diseqc_send_burst = private unnamed_addr constant [26 x i8] c"cx24123_diseqc_send_burst\00", align 1
@__func__.cx24123_set_tone = private unnamed_addr constant [17 x i8] c"cx24123_set_tone\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"setting tone on\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"setting tone off\0A\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"\013CX24123: CASE reached default with tone=%d\0A\00", align 1
@__func__.cx24123_set_voltage = private unnamed_addr constant [20 x i8] c"cx24123_set_voltage\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"setting voltage 13V\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"setting voltage 18V\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_force_band250, ptr @__UNIQUE_ID_force_bandtype249, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_cx24123_attach, ptr @__ksymtab_cx24123_get_tuner_i2c_adapter, ptr @__param_debug, ptr @__param_force_band], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cx24123_get_tuner_i2c_adapter(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cx24123_state, ptr %3, i32 0, i32 8
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx24123_attach(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1744) #10
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_attach) #11
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %13

13:                                               ; preds = %10, %2
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %69

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  store ptr %1, ptr %7, align 8
  %19 = load i8, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %20 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #12, !annotation !8
  %21 = zext i8 %19 to i16
  store i16 %21, ptr %5, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %20, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %27, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #12
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = load i8, ptr %3, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %32, i32 noundef %28) #11
  br label %37

34:                                               ; preds = %17
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %28, %30 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 9
  store i8 %39, ptr %40, align 8
  switch i8 %39, label %42 [
    i8 -31, label %45
    i8 -47, label %41
  ]

41:                                               ; preds = %37
  br label %45

42:                                               ; preds = %37
  %43 = and i32 %38, 255
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %43) #11
  br label %69

45:                                               ; preds = %41, %37
  %46 = phi ptr [ @.str.4, %41 ], [ @.str.3, %37 ]
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %46) #11
  %48 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 2
  %49 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %49, ptr noundef nonnull align 4 dereferenceable(544) @cx24123_ops, i32 544, i1 false)
  %50 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %50, align 8
  %51 = getelementptr inbounds %struct.cx24123_config, ptr %0, i32 0, i32 3
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  call fastcc void @cx24123_repeater_mode(ptr noundef nonnull %7, i8 noundef zeroext 0)
  br label %55

55:                                               ; preds = %54, %45
  %56 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 8
  %57 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 8, i32 12
  %58 = call i32 @strscpy(ptr noundef %57, ptr noundef nonnull @.str.6, i32 noundef 48) #12
  %59 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 8, i32 2
  store ptr @cx24123_tuner_i2c_algo, ptr %59, align 8
  %60 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 8, i32 3
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 8, i32 9, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 8, i32 9, i32 8
  store ptr %7, ptr %64, align 8
  %65 = call i32 @i2c_add_adapter(ptr noundef %56) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %69

69:                                               ; preds = %67, %42, %15
  call void @kfree(ptr noundef %7) #12
  br label %70

70:                                               ; preds = %69, %55
  %71 = phi ptr [ null, %69 ], [ %48, %55 ]
  ret ptr %71
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24123_repeater_mode(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.cx24123_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 35, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = zext i8 %10 to i16
  store i16 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %11, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %18, align 4
  %19 = load ptr, ptr %0, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %7, i32 noundef 2) #12
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i8, ptr %5, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %24, i32 noundef %20) #11
  br label %29

26:                                               ; preds = %2
  %27 = load i8, ptr %6, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %20, %22 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %31 = and i32 %30, 30
  %32 = zext i8 %1 to i32
  %33 = shl nuw nsw i32 %32, 5
  %34 = load ptr, ptr %8, align 4
  %35 = load i8, ptr %34, align 4
  %36 = and i32 %33, 160
  %37 = or i32 %36, %31
  %38 = or i32 %37, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 35, ptr %3, align 2
  %39 = getelementptr inbounds i8, ptr %3, i32 1
  %40 = trunc i32 %38 to i8
  store i8 %40, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %41 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %41, align 4, !annotation !8
  %42 = zext i8 %35 to i16
  store i16 %42, ptr %4, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  %45 = load ptr, ptr %0, align 8
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %4, i32 noundef 1) #12
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %50, label %48

48:                                               ; preds = %29
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %46, i32 noundef 35, i32 noundef %38) #11
  br label %50

50:                                               ; preds = %48, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_tuner_i2c_tuner_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @cx24123_repeater_mode(ptr noundef %5, i8 noundef zeroext 1)
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @i2c_transfer(ptr noundef %6, ptr noundef %1, i32 noundef %2) #12
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cx24123_tuner_i2c_func(ptr nocapture noundef readnone %0) #8 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx24123_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_release) #11
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.cx24123_state, ptr %3, i32 0, i32 8
  tail call void @i2c_del_adapter(ptr noundef %10) #12
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_initfe(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_initfe) #11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.cx24123_state, ptr %10, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %7, i32 1
  %19 = getelementptr inbounds i8, ptr %8, i32 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  br label %22

22:                                               ; preds = %38, %16
  %23 = phi i32 [ 0, %16 ], [ %39, %38 ]
  %24 = load ptr, ptr %17, align 4
  %25 = load i8, ptr %24, align 4
  %26 = getelementptr [41 x %struct.anon.73], ptr @cx24123_regdata, i32 0, i32 %23
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr [41 x %struct.anon.73], ptr @cx24123_regdata, i32 0, i32 %23, i32 1
  %29 = load i8, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 %27, ptr %7, align 2
  store i8 %29, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  store i32 2, ptr %19, align 4, !annotation !8
  %30 = zext i8 %25 to i16
  store i16 %30, ptr %8, align 4
  store i16 0, ptr %20, align 2
  store ptr %7, ptr %21, align 4
  %31 = load ptr, ptr %10, align 8
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %8, i32 noundef 1) #12
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = zext i8 %29 to i32
  %36 = zext i8 %27 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %32, i32 noundef %36, i32 noundef %35) #11
  br label %38

38:                                               ; preds = %34, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  %39 = add nuw nsw i32 %23, 1
  %40 = icmp eq i32 %39, 41
  br i1 %40, label %41, label %22

41:                                               ; preds = %38
  %42 = load ptr, ptr %17, align 4
  %43 = getelementptr inbounds %struct.cx24123_config, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %81, label %46

46:                                               ; preds = %41
  %47 = load i8, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 50, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %48 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %48, i8 0, i32 16, i1 false) #12, !annotation !8
  %49 = zext i8 %47 to i16
  store i16 %49, ptr %6, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %50, align 2
  store i16 1, ptr %48, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %55, align 4
  %56 = load ptr, ptr %10, align 8
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %6, i32 noundef 2) #12
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %63, label %59

59:                                               ; preds = %46
  %60 = load i8, ptr %4, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %61, i32 noundef %57) #11
  br label %66

63:                                               ; preds = %46
  %64 = load i8, ptr %5, align 1
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %57, %59 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %68 = or i32 %67, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 50, ptr %2, align 2
  %69 = getelementptr inbounds i8, ptr %2, i32 1
  %70 = trunc i32 %68 to i8
  store i8 %70, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %71 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %71, align 4, !annotation !8
  store i16 %49, ptr %3, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %73, align 4
  %74 = load ptr, ptr %10, align 8
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %3, i32 noundef 1) #12
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %75, i32 noundef 50, i32 noundef %68) #11
  br label %79

79:                                               ; preds = %77, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %80 = load ptr, ptr %17, align 4
  br label %81

81:                                               ; preds = %79, %41
  %82 = phi ptr [ %80, %79 ], [ %42, %41 ]
  %83 = getelementptr inbounds %struct.cx24123_config, ptr %82, i32 0, i32 3
  %84 = load i8, ptr %83, align 4
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  call fastcc void @cx24123_repeater_mode(ptr noundef %10, i8 noundef zeroext 0)
  br label %87

87:                                               ; preds = %86, %81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #2 {
  br i1 %1, label %6, label %8

6:                                                ; preds = %5
  %7 = tail call i32 @cx24123_set_frontend(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %5
  %9 = and i32 %2, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @cx24123_read_status(ptr noundef %0, ptr noundef %4)
  br label %13

13:                                               ; preds = %11, %8
  store i32 10, ptr %3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cx24123_get_algo(ptr nocapture noundef readnone %0) #8 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_set_frontend(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [2 x i8], align 2
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [2 x i8], align 2
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [2 x i8], align 2
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [2 x i8], align 2
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [2 x i8], align 2
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [2 x i8], align 2
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [2 x i8], align 2
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [2 x i8], align 2
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [2 x i8], align 2
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [2 x i8], align 2
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [2 x i8], align 2
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [2 x i8], align 2
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [2 x i8], align 2
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca i8, align 1
  %64 = alloca i8, align 1
  %65 = alloca [2 x %struct.i2c_msg], align 4
  %66 = alloca [2 x i8], align 2
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca i8, align 1
  %69 = alloca i8, align 1
  %70 = alloca [2 x %struct.i2c_msg], align 4
  %71 = alloca i8, align 1
  %72 = alloca i8, align 1
  %73 = alloca [2 x %struct.i2c_msg], align 4
  %74 = alloca [2 x i8], align 2
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca [2 x i8], align 2
  %77 = alloca %struct.i2c_msg, align 4
  %78 = alloca [2 x i8], align 2
  %79 = alloca %struct.i2c_msg, align 4
  %80 = alloca [2 x i8], align 2
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [2 x i8], align 2
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca i8, align 1
  %85 = alloca i8, align 1
  %86 = alloca [2 x %struct.i2c_msg], align 4
  %87 = alloca i8, align 1
  %88 = alloca i8, align 1
  %89 = alloca [2 x %struct.i2c_msg], align 4
  %90 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %93 = load i32, ptr @debug, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %1
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_frontend) #11
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %98

98:                                               ; preds = %95, %1
  %99 = getelementptr inbounds %struct.cx24123_state, ptr %91, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.cx24123_config, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = tail call i32 %102(ptr noundef %0, i32 noundef 0) #12
  %106 = load ptr, ptr %99, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = phi ptr [ %106, %104 ], [ %100, %98 ]
  %109 = load i32, ptr %92, align 4
  %110 = getelementptr inbounds %struct.cx24123_state, ptr %91, i32 0, i32 10
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.cx24123_state, ptr %91, i32 0, i32 11
  store i32 %112, ptr %113, align 8
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = load i8, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %87) #12
  store i8 14, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %88) #12
  store i8 0, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %89) #12
  %117 = getelementptr inbounds i8, ptr %89, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %117, i8 0, i32 16, i1 false) #12, !annotation !8
  %118 = zext i8 %116 to i16
  store i16 %118, ptr %89, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  store i16 0, ptr %119, align 2
  store i16 1, ptr %117, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  store ptr %87, ptr %120, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1
  store i16 %118, ptr %121, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1, i32 1
  store i16 1, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1, i32 2
  store i16 1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 1, i32 3
  store ptr %88, ptr %124, align 4
  %125 = load ptr, ptr %91, align 8
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %89, i32 noundef 2) #12
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %132, label %128

128:                                              ; preds = %107
  %129 = load i8, ptr %87, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %130, i32 noundef %126) #11
  br label %135

132:                                              ; preds = %107
  %133 = load i8, ptr %88, align 1
  %134 = zext i8 %133 to i32
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i32 [ %126, %128 ], [ %134, %132 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %88) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %87) #12
  %137 = load ptr, ptr %99, align 4
  %138 = load i8, ptr %137, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %84) #12
  store i8 16, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %85) #12
  store i8 0, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %86) #12
  %139 = getelementptr inbounds i8, ptr %86, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %139, i8 0, i32 16, i1 false) #12, !annotation !8
  %140 = zext i8 %138 to i16
  store i16 %140, ptr %86, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 1
  store i16 0, ptr %141, align 2
  store i16 1, ptr %139, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 3
  store ptr %84, ptr %142, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 1
  store i16 %140, ptr %143, align 4
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 1, i32 1
  store i16 1, ptr %144, align 2
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 1, i32 2
  store i16 1, ptr %145, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 1, i32 3
  store ptr %85, ptr %146, align 4
  %147 = load ptr, ptr %91, align 8
  %148 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %86, i32 noundef 2) #12
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %154, label %150

150:                                              ; preds = %135
  %151 = load i8, ptr %84, align 1
  %152 = zext i8 %151 to i32
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %152, i32 noundef %148) #11
  br label %157

154:                                              ; preds = %135
  %155 = load i8, ptr %85, align 1
  %156 = zext i8 %155 to i32
  br label %157

157:                                              ; preds = %154, %150
  %158 = phi i32 [ %148, %150 ], [ %156, %154 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %86) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %84) #12
  switch i32 %115, label %258 [
    i32 0, label %159
    i32 1, label %197
    i32 2, label %236
  ]

159:                                              ; preds = %157
  %160 = load i32, ptr @debug, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_inversion) #11
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %165

165:                                              ; preds = %162, %159
  %166 = load ptr, ptr %99, align 4
  %167 = load i8, ptr %166, align 4
  %168 = and i32 %136, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %82) #12
  store i8 14, ptr %82, align 2
  %169 = getelementptr inbounds i8, ptr %82, i32 1
  %170 = trunc i32 %168 to i8
  store i8 %170, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #12
  %171 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 2, ptr %171, align 4, !annotation !8
  %172 = zext i8 %167 to i16
  store i16 %172, ptr %83, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %173, align 2
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %82, ptr %174, align 4
  %175 = load ptr, ptr %91, align 8
  %176 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %83, i32 noundef 1) #12
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %180, label %178

178:                                              ; preds = %165
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %176, i32 noundef 14, i32 noundef %168) #11
  br label %180

180:                                              ; preds = %178, %165
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %82) #12
  %181 = load ptr, ptr %99, align 4
  %182 = load i8, ptr %181, align 4
  %183 = and i32 %158, 127
  %184 = or i32 %183, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %80) #12
  store i8 16, ptr %80, align 2
  %185 = getelementptr inbounds i8, ptr %80, i32 1
  %186 = trunc i32 %184 to i8
  store i8 %186, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #12
  %187 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 2, ptr %187, align 4, !annotation !8
  %188 = zext i8 %182 to i16
  store i16 %188, ptr %81, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %189, align 2
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %190, align 4
  %191 = load ptr, ptr %91, align 8
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %81, i32 noundef 1) #12
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %196, label %194

194:                                              ; preds = %180
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %192, i32 noundef 16, i32 noundef %184) #11
  br label %196

196:                                              ; preds = %194, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %80) #12
  br label %258

197:                                              ; preds = %157
  %198 = load i32, ptr @debug, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_inversion) #11
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %203

203:                                              ; preds = %200, %197
  %204 = load ptr, ptr %99, align 4
  %205 = load i8, ptr %204, align 4
  %206 = and i32 %136, 127
  %207 = or i32 %206, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %78) #12
  store i8 14, ptr %78, align 2
  %208 = getelementptr inbounds i8, ptr %78, i32 1
  %209 = trunc i32 %207 to i8
  store i8 %209, ptr %208, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #12
  %210 = getelementptr inbounds i8, ptr %79, i32 4
  store i32 2, ptr %210, align 4, !annotation !8
  %211 = zext i8 %205 to i16
  store i16 %211, ptr %79, align 4
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %212, align 2
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %78, ptr %213, align 4
  %214 = load ptr, ptr %91, align 8
  %215 = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %79, i32 noundef 1) #12
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %219, label %217

217:                                              ; preds = %203
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %215, i32 noundef 14, i32 noundef %207) #11
  br label %219

219:                                              ; preds = %217, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #12
  %220 = load ptr, ptr %99, align 4
  %221 = load i8, ptr %220, align 4
  %222 = and i32 %158, 127
  %223 = or i32 %222, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %76) #12
  store i8 16, ptr %76, align 2
  %224 = getelementptr inbounds i8, ptr %76, i32 1
  %225 = trunc i32 %223 to i8
  store i8 %225, ptr %224, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %77) #12
  %226 = getelementptr inbounds i8, ptr %77, i32 4
  store i32 2, ptr %226, align 4, !annotation !8
  %227 = zext i8 %221 to i16
  store i16 %227, ptr %77, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  store i16 0, ptr %228, align 2
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  store ptr %76, ptr %229, align 4
  %230 = load ptr, ptr %91, align 8
  %231 = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %77, i32 noundef 1) #12
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %235, label %233

233:                                              ; preds = %219
  %234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %231, i32 noundef 16, i32 noundef %223) #11
  br label %235

235:                                              ; preds = %233, %219
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %77) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %76) #12
  br label %258

236:                                              ; preds = %157
  %237 = load i32, ptr @debug, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_inversion) #11
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %242

242:                                              ; preds = %239, %236
  %243 = load ptr, ptr %99, align 4
  %244 = load i8, ptr %243, align 4
  %245 = and i32 %158, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %74) #12
  store i8 16, ptr %74, align 2
  %246 = getelementptr inbounds i8, ptr %74, i32 1
  %247 = trunc i32 %245 to i8
  store i8 %247, ptr %246, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #12
  %248 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 2, ptr %248, align 4, !annotation !8
  %249 = zext i8 %244 to i16
  store i16 %249, ptr %75, align 4
  %250 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %250, align 2
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %251, align 4
  %252 = load ptr, ptr %91, align 8
  %253 = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %75, i32 noundef 1) #12
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %257, label %255

255:                                              ; preds = %242
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %253, i32 noundef 16, i32 noundef %245) #11
  br label %257

257:                                              ; preds = %255, %242
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %74) #12
  br label %258

258:                                              ; preds = %257, %235, %196, %157
  %259 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %260 = load i32, ptr %259, align 4
  %261 = load ptr, ptr %99, align 4
  %262 = load i8, ptr %261, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %71) #12
  store i8 14, ptr %71, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %72) #12
  store i8 0, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %73) #12
  %263 = getelementptr inbounds i8, ptr %73, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %263, i8 0, i32 16, i1 false) #12, !annotation !8
  %264 = zext i8 %262 to i16
  store i16 %264, ptr %73, align 4
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %265, align 2
  store i16 1, ptr %263, align 4
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %71, ptr %266, align 4
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1
  store i16 %264, ptr %267, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1, i32 1
  store i16 1, ptr %268, align 2
  %269 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1, i32 2
  store i16 1, ptr %269, align 4
  %270 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 1, i32 3
  store ptr %72, ptr %270, align 4
  %271 = load ptr, ptr %91, align 8
  %272 = call i32 @i2c_transfer(ptr noundef %271, ptr noundef nonnull %73, i32 noundef 2) #12
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %278, label %274

274:                                              ; preds = %258
  %275 = load i8, ptr %71, align 1
  %276 = zext i8 %275 to i32
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %276, i32 noundef %272) #11
  br label %281

278:                                              ; preds = %258
  %279 = load i8, ptr %72, align 1
  %280 = zext i8 %279 to i32
  br label %281

281:                                              ; preds = %278, %274
  %282 = phi i32 [ %272, %274 ], [ %280, %278 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %73) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %72) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %71) #12
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, -8
  %285 = call i32 @llvm.umin.i32(i32 %260, i32 9) #12
  %286 = icmp eq i32 %285, 1
  %287 = load ptr, ptr %99, align 4
  %288 = load i8, ptr %287, align 4
  br i1 %286, label %289, label %322

289:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %68) #12
  store i8 67, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %69) #12
  store i8 0, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %70) #12
  %290 = getelementptr inbounds i8, ptr %70, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %290, i8 0, i32 16, i1 false) #12, !annotation !8
  %291 = zext i8 %288 to i16
  store i16 %291, ptr %70, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %292, align 2
  store i16 1, ptr %290, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %68, ptr %293, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 1
  store i16 %291, ptr %294, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 1, i32 1
  store i16 1, ptr %295, align 2
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 1, i32 2
  store i16 1, ptr %296, align 4
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 1, i32 3
  store ptr %69, ptr %297, align 4
  %298 = load ptr, ptr %91, align 8
  %299 = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %70, i32 noundef 2) #12
  %300 = icmp eq i32 %299, 2
  br i1 %300, label %305, label %301

301:                                              ; preds = %289
  %302 = load i8, ptr %68, align 1
  %303 = zext i8 %302 to i32
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %303, i32 noundef %299) #11
  br label %308

305:                                              ; preds = %289
  %306 = load i8, ptr %69, align 1
  %307 = zext i8 %306 to i32
  br label %308

308:                                              ; preds = %305, %301
  %309 = phi i32 [ %299, %301 ], [ %307, %305 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %70) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %69) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %68) #12
  %310 = or i32 %309, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #12
  store i8 67, ptr %66, align 2
  %311 = getelementptr inbounds i8, ptr %66, i32 1
  %312 = trunc i32 %310 to i8
  store i8 %312, ptr %311, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #12
  %313 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 2, ptr %313, align 4, !annotation !8
  store i16 %291, ptr %67, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %314, align 2
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %315, align 4
  %316 = load ptr, ptr %91, align 8
  %317 = call i32 @i2c_transfer(ptr noundef %316, ptr noundef nonnull %67, i32 noundef 1) #12
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %321, label %319

319:                                              ; preds = %308
  %320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %317, i32 noundef 67, i32 noundef %310) #11
  br label %321

321:                                              ; preds = %319, %308
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #12
  br label %355

322:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %63) #12
  store i8 67, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %64) #12
  store i8 0, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %65) #12
  %323 = getelementptr inbounds i8, ptr %65, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %323, i8 0, i32 16, i1 false) #12, !annotation !8
  %324 = zext i8 %288 to i16
  store i16 %324, ptr %65, align 4
  %325 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %325, align 2
  store i16 1, ptr %323, align 4
  %326 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %63, ptr %326, align 4
  %327 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 1
  store i16 %324, ptr %327, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 1, i32 1
  store i16 1, ptr %328, align 2
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 1, i32 2
  store i16 1, ptr %329, align 4
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 1, i32 3
  store ptr %64, ptr %330, align 4
  %331 = load ptr, ptr %91, align 8
  %332 = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %65, i32 noundef 2) #12
  %333 = icmp eq i32 %332, 2
  br i1 %333, label %338, label %334

334:                                              ; preds = %322
  %335 = load i8, ptr %63, align 1
  %336 = zext i8 %335 to i32
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %336, i32 noundef %332) #11
  br label %341

338:                                              ; preds = %322
  %339 = load i8, ptr %64, align 1
  %340 = zext i8 %339 to i32
  br label %341

341:                                              ; preds = %338, %334
  %342 = phi i32 [ %332, %334 ], [ %340, %338 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %65) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %64) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %63) #12
  %343 = and i32 %342, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %61) #12
  store i8 67, ptr %61, align 2
  %344 = getelementptr inbounds i8, ptr %61, i32 1
  %345 = trunc i32 %343 to i8
  store i8 %345, ptr %344, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #12
  %346 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 2, ptr %346, align 4, !annotation !8
  store i16 %324, ptr %62, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %61, ptr %348, align 4
  %349 = load ptr, ptr %91, align 8
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %62, i32 noundef 1) #12
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %354, label %352

352:                                              ; preds = %341
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %350, i32 noundef 67, i32 noundef %343) #11
  br label %354

354:                                              ; preds = %352, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #12
  switch i32 %285, label %621 [
    i32 1, label %355
    i32 2, label %390
    i32 3, label %425
    i32 4, label %460
    i32 5, label %495
    i32 6, label %530
    i32 7, label %565
    i32 9, label %601
  ]

355:                                              ; preds = %354, %321
  %356 = load i32, ptr @debug, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %361

361:                                              ; preds = %358, %355
  %362 = load ptr, ptr %99, align 4
  %363 = load i8, ptr %362, align 4
  %364 = or i8 %284, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #12
  store i8 14, ptr %59, align 2
  %365 = getelementptr inbounds i8, ptr %59, i32 1
  store i8 %364, ptr %365, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #12
  %366 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 2, ptr %366, align 4, !annotation !8
  %367 = zext i8 %363 to i16
  store i16 %367, ptr %60, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %368, align 2
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %59, ptr %369, align 4
  %370 = load ptr, ptr %91, align 8
  %371 = call i32 @i2c_transfer(ptr noundef %370, ptr noundef nonnull %60, i32 noundef 1) #12
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %376, label %373

373:                                              ; preds = %361
  %374 = zext i8 %364 to i32
  %375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %371, i32 noundef 14, i32 noundef %374) #11
  br label %376

376:                                              ; preds = %373, %361
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #12
  %377 = load ptr, ptr %99, align 4
  %378 = load i8, ptr %377, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #12
  store i8 15, ptr %57, align 2
  %379 = getelementptr inbounds i8, ptr %57, i32 1
  store i8 2, ptr %379, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #12
  %380 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 2, ptr %380, align 4, !annotation !8
  %381 = zext i8 %378 to i16
  store i16 %381, ptr %58, align 4
  %382 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %382, align 2
  %383 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %383, align 4
  %384 = load ptr, ptr %91, align 8
  %385 = call i32 @i2c_transfer(ptr noundef %384, ptr noundef nonnull %58, i32 noundef 1) #12
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %389, label %387

387:                                              ; preds = %376
  %388 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %385, i32 noundef 15, i32 noundef 2) #11
  br label %389

389:                                              ; preds = %387, %376
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #12
  br label %621

390:                                              ; preds = %354
  %391 = load i32, ptr @debug, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %396

396:                                              ; preds = %393, %390
  %397 = load ptr, ptr %99, align 4
  %398 = load i8, ptr %397, align 4
  %399 = or i8 %284, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #12
  store i8 14, ptr %55, align 2
  %400 = getelementptr inbounds i8, ptr %55, i32 1
  store i8 %399, ptr %400, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #12
  %401 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 2, ptr %401, align 4, !annotation !8
  %402 = zext i8 %398 to i16
  store i16 %402, ptr %56, align 4
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %403, align 2
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %404, align 4
  %405 = load ptr, ptr %91, align 8
  %406 = call i32 @i2c_transfer(ptr noundef %405, ptr noundef nonnull %56, i32 noundef 1) #12
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %411, label %408

408:                                              ; preds = %396
  %409 = zext i8 %399 to i32
  %410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %406, i32 noundef 14, i32 noundef %409) #11
  br label %411

411:                                              ; preds = %408, %396
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #12
  %412 = load ptr, ptr %99, align 4
  %413 = load i8, ptr %412, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #12
  store i8 15, ptr %53, align 2
  %414 = getelementptr inbounds i8, ptr %53, i32 1
  store i8 4, ptr %414, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #12
  %415 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 2, ptr %415, align 4, !annotation !8
  %416 = zext i8 %413 to i16
  store i16 %416, ptr %54, align 4
  %417 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %417, align 2
  %418 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %418, align 4
  %419 = load ptr, ptr %91, align 8
  %420 = call i32 @i2c_transfer(ptr noundef %419, ptr noundef nonnull %54, i32 noundef 1) #12
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %424, label %422

422:                                              ; preds = %411
  %423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %420, i32 noundef 15, i32 noundef 4) #11
  br label %424

424:                                              ; preds = %422, %411
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #12
  br label %621

425:                                              ; preds = %354
  %426 = load i32, ptr @debug, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  %429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %431

431:                                              ; preds = %428, %425
  %432 = load ptr, ptr %99, align 4
  %433 = load i8, ptr %432, align 4
  %434 = or i8 %284, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #12
  store i8 14, ptr %51, align 2
  %435 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 %434, ptr %435, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #12
  %436 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 2, ptr %436, align 4, !annotation !8
  %437 = zext i8 %433 to i16
  store i16 %437, ptr %52, align 4
  %438 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %438, align 2
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %439, align 4
  %440 = load ptr, ptr %91, align 8
  %441 = call i32 @i2c_transfer(ptr noundef %440, ptr noundef nonnull %52, i32 noundef 1) #12
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %446, label %443

443:                                              ; preds = %431
  %444 = zext i8 %434 to i32
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %441, i32 noundef 14, i32 noundef %444) #11
  br label %446

446:                                              ; preds = %443, %431
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #12
  %447 = load ptr, ptr %99, align 4
  %448 = load i8, ptr %447, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #12
  store i8 15, ptr %49, align 2
  %449 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 8, ptr %449, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #12
  %450 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 2, ptr %450, align 4, !annotation !8
  %451 = zext i8 %448 to i16
  store i16 %451, ptr %50, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %452, align 2
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %453, align 4
  %454 = load ptr, ptr %91, align 8
  %455 = call i32 @i2c_transfer(ptr noundef %454, ptr noundef nonnull %50, i32 noundef 1) #12
  %456 = icmp eq i32 %455, 1
  br i1 %456, label %459, label %457

457:                                              ; preds = %446
  %458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %455, i32 noundef 15, i32 noundef 8) #11
  br label %459

459:                                              ; preds = %457, %446
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #12
  br label %621

460:                                              ; preds = %354
  %461 = load i32, ptr @debug, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %460
  %464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %466

466:                                              ; preds = %463, %460
  %467 = load ptr, ptr %99, align 4
  %468 = load i8, ptr %467, align 4
  %469 = or i8 %284, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #12
  store i8 14, ptr %47, align 2
  %470 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 %469, ptr %470, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #12
  %471 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 2, ptr %471, align 4, !annotation !8
  %472 = zext i8 %468 to i16
  store i16 %472, ptr %48, align 4
  %473 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %473, align 2
  %474 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %474, align 4
  %475 = load ptr, ptr %91, align 8
  %476 = call i32 @i2c_transfer(ptr noundef %475, ptr noundef nonnull %48, i32 noundef 1) #12
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %481, label %478

478:                                              ; preds = %466
  %479 = zext i8 %469 to i32
  %480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %476, i32 noundef 14, i32 noundef %479) #11
  br label %481

481:                                              ; preds = %478, %466
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #12
  %482 = load ptr, ptr %99, align 4
  %483 = load i8, ptr %482, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #12
  store i8 15, ptr %45, align 2
  %484 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 16, ptr %484, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #12
  %485 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 2, ptr %485, align 4, !annotation !8
  %486 = zext i8 %483 to i16
  store i16 %486, ptr %46, align 4
  %487 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %487, align 2
  %488 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %488, align 4
  %489 = load ptr, ptr %91, align 8
  %490 = call i32 @i2c_transfer(ptr noundef %489, ptr noundef nonnull %46, i32 noundef 1) #12
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %494, label %492

492:                                              ; preds = %481
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %490, i32 noundef 15, i32 noundef 16) #11
  br label %494

494:                                              ; preds = %492, %481
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #12
  br label %621

495:                                              ; preds = %354
  %496 = load i32, ptr @debug, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %495
  %499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %500 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %501

501:                                              ; preds = %498, %495
  %502 = load ptr, ptr %99, align 4
  %503 = load i8, ptr %502, align 4
  %504 = or i8 %284, 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #12
  store i8 14, ptr %43, align 2
  %505 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 %504, ptr %505, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #12
  %506 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 2, ptr %506, align 4, !annotation !8
  %507 = zext i8 %503 to i16
  store i16 %507, ptr %44, align 4
  %508 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %508, align 2
  %509 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %509, align 4
  %510 = load ptr, ptr %91, align 8
  %511 = call i32 @i2c_transfer(ptr noundef %510, ptr noundef nonnull %44, i32 noundef 1) #12
  %512 = icmp eq i32 %511, 1
  br i1 %512, label %516, label %513

513:                                              ; preds = %501
  %514 = zext i8 %504 to i32
  %515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %511, i32 noundef 14, i32 noundef %514) #11
  br label %516

516:                                              ; preds = %513, %501
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #12
  %517 = load ptr, ptr %99, align 4
  %518 = load i8, ptr %517, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #12
  store i8 15, ptr %41, align 2
  %519 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 32, ptr %519, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #12
  %520 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 2, ptr %520, align 4, !annotation !8
  %521 = zext i8 %518 to i16
  store i16 %521, ptr %42, align 4
  %522 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %522, align 2
  %523 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %523, align 4
  %524 = load ptr, ptr %91, align 8
  %525 = call i32 @i2c_transfer(ptr noundef %524, ptr noundef nonnull %42, i32 noundef 1) #12
  %526 = icmp eq i32 %525, 1
  br i1 %526, label %529, label %527

527:                                              ; preds = %516
  %528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %525, i32 noundef 15, i32 noundef 32) #11
  br label %529

529:                                              ; preds = %527, %516
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #12
  br label %621

530:                                              ; preds = %354
  %531 = load i32, ptr @debug, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %536

536:                                              ; preds = %533, %530
  %537 = load ptr, ptr %99, align 4
  %538 = load i8, ptr %537, align 4
  %539 = or i8 %284, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #12
  store i8 14, ptr %39, align 2
  %540 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 %539, ptr %540, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #12
  %541 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 2, ptr %541, align 4, !annotation !8
  %542 = zext i8 %538 to i16
  store i16 %542, ptr %40, align 4
  %543 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %543, align 2
  %544 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %544, align 4
  %545 = load ptr, ptr %91, align 8
  %546 = call i32 @i2c_transfer(ptr noundef %545, ptr noundef nonnull %40, i32 noundef 1) #12
  %547 = icmp eq i32 %546, 1
  br i1 %547, label %551, label %548

548:                                              ; preds = %536
  %549 = zext i8 %539 to i32
  %550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %546, i32 noundef 14, i32 noundef %549) #11
  br label %551

551:                                              ; preds = %548, %536
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #12
  %552 = load ptr, ptr %99, align 4
  %553 = load i8, ptr %552, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #12
  store i8 15, ptr %37, align 2
  %554 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 64, ptr %554, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #12
  %555 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 2, ptr %555, align 4, !annotation !8
  %556 = zext i8 %553 to i16
  store i16 %556, ptr %38, align 4
  %557 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %557, align 2
  %558 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %558, align 4
  %559 = load ptr, ptr %91, align 8
  %560 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %38, i32 noundef 1) #12
  %561 = icmp eq i32 %560, 1
  br i1 %561, label %564, label %562

562:                                              ; preds = %551
  %563 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %560, i32 noundef 15, i32 noundef 64) #11
  br label %564

564:                                              ; preds = %562, %551
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #12
  br label %621

565:                                              ; preds = %354
  %566 = load i32, ptr @debug, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %565
  %569 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %570 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %571

571:                                              ; preds = %568, %565
  %572 = load ptr, ptr %99, align 4
  %573 = load i8, ptr %572, align 4
  %574 = and i32 %282, 248
  %575 = or i32 %574, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #12
  store i8 14, ptr %35, align 2
  %576 = getelementptr inbounds i8, ptr %35, i32 1
  %577 = trunc i32 %575 to i8
  store i8 %577, ptr %576, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #12
  %578 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 2, ptr %578, align 4, !annotation !8
  %579 = zext i8 %573 to i16
  store i16 %579, ptr %36, align 4
  %580 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %580, align 2
  %581 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %581, align 4
  %582 = load ptr, ptr %91, align 8
  %583 = call i32 @i2c_transfer(ptr noundef %582, ptr noundef nonnull %36, i32 noundef 1) #12
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %587, label %585

585:                                              ; preds = %571
  %586 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %583, i32 noundef 14, i32 noundef %575) #11
  br label %587

587:                                              ; preds = %585, %571
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #12
  %588 = load ptr, ptr %99, align 4
  %589 = load i8, ptr %588, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #12
  store i8 15, ptr %33, align 2
  %590 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 -128, ptr %590, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #12
  %591 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 2, ptr %591, align 4, !annotation !8
  %592 = zext i8 %589 to i16
  store i16 %592, ptr %34, align 4
  %593 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %593, align 2
  %594 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %594, align 4
  %595 = load ptr, ptr %91, align 8
  %596 = call i32 @i2c_transfer(ptr noundef %595, ptr noundef nonnull %34, i32 noundef 1) #12
  %597 = icmp eq i32 %596, 1
  br i1 %597, label %600, label %598

598:                                              ; preds = %587
  %599 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %596, i32 noundef 15, i32 noundef 128) #11
  br label %600

600:                                              ; preds = %598, %587
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #12
  br label %621

601:                                              ; preds = %354
  %602 = load i32, ptr @debug, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %607, label %604

604:                                              ; preds = %601
  %605 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_fec) #11
  %606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %607

607:                                              ; preds = %604, %601
  %608 = load ptr, ptr %99, align 4
  %609 = load i8, ptr %608, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #12
  store i8 15, ptr %31, align 2
  %610 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 -2, ptr %610, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #12
  %611 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %611, align 4, !annotation !8
  %612 = zext i8 %609 to i16
  store i16 %612, ptr %32, align 4
  %613 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %613, align 2
  %614 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %614, align 4
  %615 = load ptr, ptr %91, align 8
  %616 = call i32 @i2c_transfer(ptr noundef %615, ptr noundef nonnull %32, i32 noundef 1) #12
  %617 = icmp eq i32 %616, 1
  br i1 %617, label %620, label %618

618:                                              ; preds = %607
  %619 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %616, i32 noundef 15, i32 noundef 254) #11
  br label %620

620:                                              ; preds = %618, %607
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #12
  br label %621

621:                                              ; preds = %620, %600, %564, %529, %494, %459, %424, %389, %354
  %622 = load i32, ptr %111, align 4
  %623 = getelementptr inbounds %struct.cx24123_state, ptr %91, i32 0, i32 2, i32 1, i32 0, i32 6
  %624 = load i32, ptr %623, align 4
  %625 = icmp ult i32 %624, %622
  br i1 %625, label %784, label %626

626:                                              ; preds = %621
  %627 = getelementptr inbounds %struct.cx24123_state, ptr %91, i32 0, i32 2, i32 1, i32 0, i32 5
  %628 = load i32, ptr %627, align 4
  %629 = icmp ugt i32 %628, %622
  br i1 %629, label %784, label %630

630:                                              ; preds = %626
  %631 = icmp ult i32 %622, 10111000
  br i1 %631, label %645, label %632

632:                                              ; preds = %630
  %633 = icmp ult i32 %622, 15166500
  br i1 %633, label %645, label %634

634:                                              ; preds = %632
  %635 = icmp ult i32 %622, 20222000
  br i1 %635, label %645, label %636

636:                                              ; preds = %634
  %637 = icmp ult i32 %622, 25277500
  br i1 %637, label %645, label %638

638:                                              ; preds = %636
  %639 = icmp ult i32 %622, 30333000
  br i1 %639, label %645, label %640

640:                                              ; preds = %638
  %641 = icmp ult i32 %622, 35388500
  br i1 %641, label %645, label %642

642:                                              ; preds = %640
  %643 = icmp ult i32 %622, 40444000
  %644 = select i1 %643, i32 8, i32 9
  br label %645

645:                                              ; preds = %642, %640, %638, %636, %634, %632, %630
  %646 = phi i32 [ 2, %630 ], [ 3, %632 ], [ 4, %634 ], [ 5, %636 ], [ 6, %638 ], [ 7, %640 ], [ %644, %642 ]
  %647 = mul nuw nsw i32 %646, 10111000
  %648 = zext i32 %622 to i64
  %649 = shl nuw nsw i64 %648, 23
  %650 = icmp ult i32 %622, 512
  br i1 %650, label %651, label %654, !prof !9

651:                                              ; preds = %645
  %652 = trunc i64 %649 to i32
  %653 = udiv i32 %652, %647
  br label %658

654:                                              ; preds = %645
  %655 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %647, i64 %649) #13, !srcloc !10
  %656 = extractvalue { i64, i64 } %655, 1
  %657 = trunc i64 %656 to i32
  br label %658

658:                                              ; preds = %654, %651
  %659 = phi i32 [ %653, %651 ], [ %657, %654 ]
  %660 = load ptr, ptr %99, align 4
  %661 = load i8, ptr %660, align 4
  %662 = mul nuw nsw i32 %646, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #12
  store i8 1, ptr %29, align 2
  %663 = getelementptr inbounds i8, ptr %29, i32 1
  %664 = trunc i32 %662 to i8
  store i8 %664, ptr %663, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #12
  %665 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 2, ptr %665, align 4, !annotation !8
  %666 = zext i8 %661 to i16
  store i16 %666, ptr %30, align 4
  %667 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %667, align 2
  %668 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %668, align 4
  %669 = load ptr, ptr %91, align 8
  %670 = call i32 @i2c_transfer(ptr noundef %669, ptr noundef nonnull %30, i32 noundef 1) #12
  %671 = icmp eq i32 %670, 1
  br i1 %671, label %674, label %672

672:                                              ; preds = %658
  %673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %670, i32 noundef 1, i32 noundef %662) #11
  br label %674

674:                                              ; preds = %672, %658
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #12
  %675 = load ptr, ptr %99, align 4
  %676 = load i8, ptr %675, align 4
  %677 = lshr i32 %659, 16
  %678 = and i32 %677, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #12
  store i8 8, ptr %27, align 2
  %679 = getelementptr inbounds i8, ptr %27, i32 1
  %680 = trunc i32 %678 to i8
  store i8 %680, ptr %679, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #12
  %681 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 2, ptr %681, align 4, !annotation !8
  %682 = zext i8 %676 to i16
  store i16 %682, ptr %28, align 4
  %683 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %683, align 2
  %684 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %684, align 4
  %685 = load ptr, ptr %91, align 8
  %686 = call i32 @i2c_transfer(ptr noundef %685, ptr noundef nonnull %28, i32 noundef 1) #12
  %687 = icmp eq i32 %686, 1
  br i1 %687, label %690, label %688

688:                                              ; preds = %674
  %689 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %686, i32 noundef 8, i32 noundef %678) #11
  br label %690

690:                                              ; preds = %688, %674
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #12
  %691 = load ptr, ptr %99, align 4
  %692 = load i8, ptr %691, align 4
  %693 = lshr i32 %659, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #12
  store i8 9, ptr %25, align 2
  %694 = getelementptr inbounds i8, ptr %25, i32 1
  %695 = trunc i32 %693 to i8
  store i8 %695, ptr %694, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #12
  %696 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %696, align 4, !annotation !8
  %697 = zext i8 %692 to i16
  store i16 %697, ptr %26, align 4
  %698 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %698, align 2
  %699 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %699, align 4
  %700 = load ptr, ptr %91, align 8
  %701 = call i32 @i2c_transfer(ptr noundef %700, ptr noundef nonnull %26, i32 noundef 1) #12
  %702 = icmp eq i32 %701, 1
  br i1 %702, label %706, label %703

703:                                              ; preds = %690
  %704 = and i32 %693, 255
  %705 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %701, i32 noundef 9, i32 noundef %704) #11
  br label %706

706:                                              ; preds = %703, %690
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #12
  %707 = load ptr, ptr %99, align 4
  %708 = load i8, ptr %707, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #12
  store i8 10, ptr %23, align 2
  %709 = getelementptr inbounds i8, ptr %23, i32 1
  %710 = trunc i32 %659 to i8
  store i8 %710, ptr %709, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #12
  %711 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %711, align 4, !annotation !8
  %712 = zext i8 %708 to i16
  store i16 %712, ptr %24, align 4
  %713 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %713, align 2
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %714, align 4
  %715 = load ptr, ptr %91, align 8
  %716 = call i32 @i2c_transfer(ptr noundef %715, ptr noundef nonnull %24, i32 noundef 1) #12
  %717 = icmp eq i32 %716, 1
  br i1 %717, label %721, label %718

718:                                              ; preds = %706
  %719 = and i32 %659, 255
  %720 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %716, i32 noundef 10, i32 noundef %719) #11
  br label %721

721:                                              ; preds = %718, %706
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #12
  %722 = freeze i32 %647
  %723 = freeze i32 %622
  %724 = udiv i32 %722, %723
  %725 = mul i32 %724, %723
  %726 = sub i32 %722, %725
  %727 = lshr i32 %622, 1
  %728 = icmp uge i32 %726, %727
  %729 = zext i1 %728 to i32
  %730 = add nuw nsw i32 %724, %729
  %731 = icmp ugt i32 %730, 1
  br i1 %731, label %732, label %738

732:                                              ; preds = %732, %721
  %733 = phi i32 [ %736, %732 ], [ 0, %721 ]
  %734 = phi i32 [ %735, %732 ], [ 1, %721 ]
  %735 = shl i32 %734, 1
  %736 = add i32 %733, 1
  %737 = icmp ugt i32 %730, %735
  br i1 %737, label %732, label %738

738:                                              ; preds = %732, %721
  %739 = phi i32 [ 0, %721 ], [ %736, %732 ]
  %740 = load ptr, ptr %99, align 4
  %741 = load i8, ptr %740, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #12
  store i8 12, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #12
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #12
  %742 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %742, i8 0, i32 16, i1 false) #12, !annotation !8
  %743 = zext i8 %741 to i16
  store i16 %743, ptr %22, align 4
  %744 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %744, align 2
  store i16 1, ptr %742, align 4
  %745 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %20, ptr %745, align 4
  %746 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  store i16 %743, ptr %746, align 4
  %747 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %747, align 2
  %748 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %748, align 4
  %749 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %21, ptr %749, align 4
  %750 = load ptr, ptr %91, align 8
  %751 = call i32 @i2c_transfer(ptr noundef %750, ptr noundef nonnull %22, i32 noundef 2) #12
  %752 = icmp eq i32 %751, 2
  br i1 %752, label %757, label %753

753:                                              ; preds = %738
  %754 = load i8, ptr %20, align 1
  %755 = zext i8 %754 to i32
  %756 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %755, i32 noundef %751) #11
  br label %760

757:                                              ; preds = %738
  %758 = load i8, ptr %21, align 1
  %759 = zext i8 %758 to i32
  br label %760

760:                                              ; preds = %757, %753
  %761 = phi i32 [ %751, %753 ], [ %759, %757 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #12
  %762 = and i32 %761, -225
  %763 = load ptr, ptr %99, align 4
  %764 = load i8, ptr %763, align 4
  %765 = shl i32 %739, 5
  %766 = or i32 %762, %765
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i8 12, ptr %18, align 2
  %767 = getelementptr inbounds i8, ptr %18, i32 1
  %768 = trunc i32 %766 to i8
  store i8 %768, ptr %767, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  %769 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %769, align 4, !annotation !8
  %770 = zext i8 %764 to i16
  store i16 %770, ptr %19, align 4
  %771 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %771, align 2
  %772 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %772, align 4
  %773 = load ptr, ptr %91, align 8
  %774 = call i32 @i2c_transfer(ptr noundef %773, ptr noundef nonnull %19, i32 noundef 1) #12
  %775 = icmp eq i32 %774, 1
  br i1 %775, label %778, label %776

776:                                              ; preds = %760
  %777 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %774, i32 noundef 12, i32 noundef %766) #11
  br label %778

778:                                              ; preds = %776, %760
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  %779 = load i32, ptr @debug, align 4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %784, label %781

781:                                              ; preds = %778
  %782 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_symbolrate) #11
  %783 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %622, i32 noundef %659, i32 noundef %647, i32 noundef %739) #11
  br label %784

784:                                              ; preds = %781, %778, %626, %621
  %785 = load ptr, ptr %99, align 4
  %786 = getelementptr inbounds %struct.cx24123_config, ptr %785, i32 0, i32 3
  %787 = load i8, ptr %786, align 4
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %789, label %963

789:                                              ; preds = %784
  %790 = load ptr, ptr %90, align 4
  %791 = load i32, ptr @debug, align 4
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %798, label %793

793:                                              ; preds = %789
  %794 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_pll_tune) #11
  %795 = load i32, ptr %92, align 4
  %796 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %795) #11
  %797 = load ptr, ptr %90, align 4
  br label %798

798:                                              ; preds = %793, %789
  %799 = phi ptr [ %797, %793 ], [ %790, %789 ]
  %800 = getelementptr inbounds %struct.cx24123_state, ptr %799, i32 0, i32 3
  store i32 1052167, ptr %800, align 8
  %801 = getelementptr inbounds %struct.cx24123_state, ptr %799, i32 0, i32 4
  store i32 721376, ptr %801, align 4
  %802 = getelementptr inbounds %struct.cx24123_state, ptr %799, i32 0, i32 5
  store i32 64, ptr %802, align 8
  %803 = getelementptr inbounds %struct.cx24123_state, ptr %799, i32 0, i32 7
  %804 = load i32, ptr %111, align 4
  %805 = icmp ult i32 %804, 1000000
  br i1 %805, label %821, label %806

806:                                              ; preds = %798
  %807 = icmp ugt i32 %804, 4999999
  br i1 %807, label %811, label %808

808:                                              ; preds = %806
  store i32 721376, ptr %801, align 4
  store i32 639, ptr %803, align 8
  %809 = load i32, ptr %111, align 4
  %810 = icmp ult i32 %809, 5000000
  br i1 %810, label %821, label %811

811:                                              ; preds = %808, %806
  %812 = phi i32 [ %809, %808 ], [ %804, %806 ]
  %813 = icmp ugt i32 %812, 14999999
  br i1 %813, label %817, label %814

814:                                              ; preds = %811
  store i32 1052191, ptr %800, align 8
  store i32 721376, ptr %801, align 4
  store i32 791, ptr %803, align 8
  %815 = load i32, ptr %111, align 4
  %816 = icmp ult i32 %815, 15000000
  br i1 %816, label %821, label %817

817:                                              ; preds = %814, %811
  %818 = phi i32 [ %815, %814 ], [ %812, %811 ]
  %819 = icmp ugt i32 %818, 45000000
  br i1 %819, label %821, label %820

820:                                              ; preds = %817
  store i32 1052223, ptr %800, align 8
  store i32 655744, ptr %801, align 4
  store i32 325, ptr %803, align 8
  br label %821

821:                                              ; preds = %820, %817, %814, %808, %798
  %822 = load i32, ptr @force_band, align 4
  %823 = add i32 %822, -10
  %824 = icmp ult i32 %823, -9
  br i1 %824, label %825, label %857

825:                                              ; preds = %821
  %826 = load i32, ptr %92, align 4
  %827 = icmp ult i32 %826, 1075000
  br i1 %827, label %859, label %828

828:                                              ; preds = %825
  %829 = icmp ult i32 %826, 1178000
  br i1 %829, label %859, label %830

830:                                              ; preds = %828
  %831 = icmp ugt i32 %826, 1295999
  %832 = select i1 %831, i32 0, i32 2
  %833 = icmp ult i32 %826, 1296000
  br i1 %833, label %859, label %834

834:                                              ; preds = %830
  %835 = icmp ugt i32 %826, 1431999
  %836 = select i1 %835, i32 %832, i32 3
  %837 = icmp ult i32 %826, 1432000
  br i1 %837, label %859, label %838

838:                                              ; preds = %834
  %839 = icmp ugt i32 %826, 1575999
  %840 = select i1 %839, i32 %836, i32 4
  %841 = icmp ult i32 %826, 1576000
  br i1 %841, label %859, label %842

842:                                              ; preds = %838
  %843 = icmp ugt i32 %826, 1717999
  %844 = select i1 %843, i32 %840, i32 5
  %845 = icmp ult i32 %826, 1718000
  br i1 %845, label %859, label %846

846:                                              ; preds = %842
  %847 = icmp ugt i32 %826, 1855999
  %848 = select i1 %847, i32 %844, i32 6
  %849 = icmp ult i32 %826, 1856000
  br i1 %849, label %859, label %850

850:                                              ; preds = %846
  %851 = icmp ugt i32 %826, 2035999
  %852 = select i1 %851, i32 %848, i32 7
  %853 = icmp ult i32 %826, 2036000
  br i1 %853, label %859, label %854

854:                                              ; preds = %850
  %855 = icmp ugt i32 %826, 2150000
  %856 = select i1 %855, i32 %852, i32 8
  br label %859

857:                                              ; preds = %821
  %858 = add nsw i32 %822, -1
  br label %859

859:                                              ; preds = %857, %854, %850, %846, %842, %838, %834, %830, %828, %825
  %860 = phi i32 [ %858, %857 ], [ %852, %850 ], [ %856, %854 ], [ %848, %846 ], [ %844, %842 ], [ %840, %838 ], [ %836, %834 ], [ %832, %830 ], [ 1, %828 ], [ 0, %825 ]
  %861 = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %860
  %862 = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %860, i32 3
  %863 = load i32, ptr %862, align 4
  store i32 %863, ptr %802, align 8
  %864 = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %860, i32 2
  %865 = load i32, ptr %864, align 4
  %866 = load i32, ptr %92, align 4
  %867 = load i32, ptr %861, align 4
  %868 = getelementptr [9 x %struct.cx24123_bandselect_val], ptr @cx24123_bandselect_vals, i32 0, i32 %860, i32 1
  %869 = load i32, ptr %868, align 4
  %870 = add i32 %869, %867
  %871 = lshr i32 %870, 1
  %872 = icmp ult i32 %866, %871
  %873 = select i1 %872, i32 2048000, i32 2064384
  %874 = mul i32 %865, 10
  %875 = mul i32 %874, %866
  %876 = udiv i32 %875, 20222
  %877 = udiv i32 %875, 647104
  %878 = and i32 %877, 511
  %879 = and i32 %876, 31
  %880 = icmp eq i32 %879, 0
  %881 = icmp ne i32 %878, 0
  %882 = select i1 %880, i1 %881, i1 false
  %883 = sext i1 %882 to i32
  %884 = add nsw i32 %878, %883
  %885 = shl nuw nsw i32 %884, 5
  %886 = or i32 %873, %879
  %887 = or i32 %886, %885
  %888 = getelementptr inbounds %struct.cx24123_state, ptr %799, i32 0, i32 6
  store i32 %887, ptr %888, align 4
  %889 = getelementptr inbounds %struct.cx24123_state, ptr %790, i32 0, i32 3
  %890 = load i32, ptr %889, align 8
  call fastcc void @cx24123_pll_writereg(ptr noundef %0, i32 noundef %890) #12
  %891 = getelementptr inbounds %struct.cx24123_state, ptr %790, i32 0, i32 4
  %892 = load i32, ptr %891, align 4
  call fastcc void @cx24123_pll_writereg(ptr noundef %0, i32 noundef %892) #12
  %893 = getelementptr inbounds %struct.cx24123_state, ptr %790, i32 0, i32 5
  %894 = load i32, ptr %893, align 8
  call fastcc void @cx24123_pll_writereg(ptr noundef %0, i32 noundef %894) #12
  %895 = getelementptr inbounds %struct.cx24123_state, ptr %790, i32 0, i32 6
  %896 = load i32, ptr %895, align 4
  call fastcc void @cx24123_pll_writereg(ptr noundef %0, i32 noundef %896) #12
  %897 = getelementptr inbounds %struct.cx24123_state, ptr %790, i32 0, i32 1
  %898 = load ptr, ptr %897, align 4
  %899 = load i8, ptr %898, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #12
  store i8 40, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #12
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #12
  %900 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %900, i8 0, i32 16, i1 false) #12, !annotation !8
  %901 = zext i8 %899 to i16
  store i16 %901, ptr %17, align 4
  %902 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %902, align 2
  store i16 1, ptr %900, align 4
  %903 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %903, align 4
  %904 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %901, ptr %904, align 4
  %905 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %905, align 2
  %906 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %906, align 4
  %907 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %907, align 4
  %908 = load ptr, ptr %790, align 8
  %909 = call i32 @i2c_transfer(ptr noundef %908, ptr noundef nonnull %17, i32 noundef 2) #12
  %910 = icmp eq i32 %909, 2
  br i1 %910, label %915, label %911

911:                                              ; preds = %859
  %912 = load i8, ptr %15, align 1
  %913 = zext i8 %912 to i32
  %914 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %913, i32 noundef %909) #11
  br label %918

915:                                              ; preds = %859
  %916 = load i8, ptr %16, align 1
  %917 = zext i8 %916 to i32
  br label %918

918:                                              ; preds = %915, %911
  %919 = phi i32 [ %909, %911 ], [ %917, %915 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #12
  %920 = and i32 %919, 252
  %921 = load ptr, ptr %897, align 4
  %922 = load i8, ptr %921, align 4
  %923 = getelementptr inbounds %struct.cx24123_state, ptr %790, i32 0, i32 7
  %924 = load i32, ptr %923, align 8
  %925 = lshr i32 %924, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  store i8 39, ptr %13, align 2
  %926 = getelementptr inbounds i8, ptr %13, i32 1
  %927 = trunc i32 %925 to i8
  store i8 %927, ptr %926, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  %928 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %928, align 4, !annotation !8
  %929 = zext i8 %922 to i16
  store i16 %929, ptr %14, align 4
  %930 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %930, align 2
  %931 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %931, align 4
  %932 = load ptr, ptr %790, align 8
  %933 = call i32 @i2c_transfer(ptr noundef %932, ptr noundef nonnull %14, i32 noundef 1) #12
  %934 = icmp eq i32 %933, 1
  br i1 %934, label %937, label %935

935:                                              ; preds = %918
  %936 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %933, i32 noundef 39, i32 noundef %925) #11
  br label %937

937:                                              ; preds = %935, %918
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  %938 = load ptr, ptr %897, align 4
  %939 = load i8, ptr %938, align 4
  %940 = load i32, ptr %923, align 8
  %941 = and i32 %940, 3
  %942 = or i32 %941, %920
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i8 40, ptr %11, align 2
  %943 = getelementptr inbounds i8, ptr %11, i32 1
  %944 = trunc i32 %942 to i8
  store i8 %944, ptr %943, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %945 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %945, align 4, !annotation !8
  %946 = zext i8 %939 to i16
  store i16 %946, ptr %12, align 4
  %947 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %947, align 2
  %948 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %948, align 4
  %949 = load ptr, ptr %790, align 8
  %950 = call i32 @i2c_transfer(ptr noundef %949, ptr noundef nonnull %12, i32 noundef 1) #12
  %951 = icmp eq i32 %950, 1
  br i1 %951, label %954, label %952

952:                                              ; preds = %937
  %953 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %950, i32 noundef 40, i32 noundef %942) #11
  br label %954

954:                                              ; preds = %952, %937
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  %955 = load i32, ptr @debug, align 4
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %971, label %957

957:                                              ; preds = %954
  %958 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_pll_tune) #11
  %959 = load i32, ptr %889, align 8
  %960 = load i32, ptr %893, align 8
  %961 = load i32, ptr %895, align 4
  %962 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %959, i32 noundef %960, i32 noundef %961) #11
  br label %971

963:                                              ; preds = %784
  %964 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %965 = load ptr, ptr %964, align 4
  %966 = icmp eq ptr %965, null
  br i1 %966, label %969, label %967

967:                                              ; preds = %963
  %968 = call i32 %965(ptr noundef %0) #12
  br label %971

969:                                              ; preds = %963
  %970 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %971

971:                                              ; preds = %969, %967, %957, %954
  %972 = load ptr, ptr %99, align 4
  %973 = load i8, ptr %972, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 3, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  %974 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %974, i8 0, i32 16, i1 false) #12, !annotation !8
  %975 = zext i8 %973 to i16
  store i16 %975, ptr %10, align 4
  %976 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %976, align 2
  store i16 1, ptr %974, align 4
  %977 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %977, align 4
  %978 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %975, ptr %978, align 4
  %979 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %979, align 2
  %980 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %980, align 4
  %981 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %981, align 4
  %982 = load ptr, ptr %91, align 8
  %983 = call i32 @i2c_transfer(ptr noundef %982, ptr noundef nonnull %10, i32 noundef 2) #12
  %984 = icmp eq i32 %983, 2
  br i1 %984, label %989, label %985

985:                                              ; preds = %971
  %986 = load i8, ptr %8, align 1
  %987 = zext i8 %986 to i32
  %988 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %987, i32 noundef %983) #11
  br label %992

989:                                              ; preds = %971
  %990 = load i8, ptr %9, align 1
  %991 = zext i8 %990 to i32
  br label %992

992:                                              ; preds = %989, %985
  %993 = phi i32 [ %983, %985 ], [ %991, %989 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %994 = or i32 %993, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i8 3, ptr %6, align 2
  %995 = getelementptr inbounds i8, ptr %6, i32 1
  %996 = trunc i32 %994 to i8
  store i8 %996, ptr %995, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %997 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %997, align 4, !annotation !8
  store i16 %975, ptr %7, align 4
  %998 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %998, align 2
  %999 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %999, align 4
  %1000 = load ptr, ptr %91, align 8
  %1001 = call i32 @i2c_transfer(ptr noundef %1000, ptr noundef nonnull %7, i32 noundef 1) #12
  %1002 = icmp eq i32 %1001, 1
  br i1 %1002, label %1005, label %1003

1003:                                             ; preds = %992
  %1004 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %1001, i32 noundef 3, i32 noundef %994) #11
  br label %1005

1005:                                             ; preds = %1003, %992
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  %1006 = load ptr, ptr %99, align 4
  %1007 = load i8, ptr %1006, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 0, ptr %4, align 2
  %1008 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 16, ptr %1008, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %1009 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %1009, align 4, !annotation !8
  %1010 = zext i8 %1007 to i16
  store i16 %1010, ptr %5, align 4
  %1011 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1011, align 2
  %1012 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1012, align 4
  %1013 = load ptr, ptr %91, align 8
  %1014 = call i32 @i2c_transfer(ptr noundef %1013, ptr noundef nonnull %5, i32 noundef 1) #12
  %1015 = icmp eq i32 %1014, 1
  br i1 %1015, label %1018, label %1016

1016:                                             ; preds = %1005
  %1017 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %1014, i32 noundef 0, i32 noundef 16) #11
  br label %1018

1018:                                             ; preds = %1016, %1005
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %1019 = load ptr, ptr %99, align 4
  %1020 = load i8, ptr %1019, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 0, ptr %2, align 2
  %1021 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %1021, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %1022 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %1022, align 4, !annotation !8
  %1023 = zext i8 %1020 to i16
  store i16 %1023, ptr %3, align 4
  %1024 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1024, align 2
  %1025 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %1025, align 4
  %1026 = load ptr, ptr %91, align 8
  %1027 = call i32 @i2c_transfer(ptr noundef %1026, ptr noundef nonnull %3, i32 noundef 1) #12
  %1028 = icmp eq i32 %1027, 1
  br i1 %1028, label %1031, label %1029

1029:                                             ; preds = %1018
  %1030 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %1027, i32 noundef 0, i32 noundef 0) #11
  br label %1031

1031:                                             ; preds = %1029, %1018
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %1032 = load ptr, ptr %99, align 4
  %1033 = getelementptr inbounds %struct.cx24123_config, ptr %1032, i32 0, i32 4
  %1034 = load ptr, ptr %1033, align 4
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1037, label %1036

1036:                                             ; preds = %1031
  call void %1034(ptr noundef %0) #12
  br label %1037

1037:                                             ; preds = %1036, %1031
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_get_frontend) #11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.cx24123_state, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 27, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %21 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #12, !annotation !8
  %22 = zext i8 %20 to i16
  store i16 %22, ptr %8, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 1, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %28, align 4
  %29 = load ptr, ptr %10, align 8
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %8, i32 noundef 2) #12
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %16
  %33 = load i8, ptr %6, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %34, i32 noundef %30) #11
  br label %39

36:                                               ; preds = %16
  %37 = load i8, ptr %7, align 1
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %30, %32 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  %41 = and i32 %40, 32640
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = select i1 %42, ptr @.str.32, ptr @.str.33
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_get_inversion) #11
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %46) #11
  br label %49

49:                                               ; preds = %45, %39
  %50 = xor i1 %42, true
  %51 = zext i1 %50 to i32
  store i32 %51, ptr %17, align 4
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  %53 = load ptr, ptr %18, align 4
  %54 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 27, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %55 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %55, i8 0, i32 16, i1 false) #12, !annotation !8
  %56 = zext i8 %54 to i16
  store i16 %56, ptr %5, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %57, align 2
  store i16 1, ptr %55, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %56, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %62, align 4
  %63 = load ptr, ptr %10, align 8
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %5, i32 noundef 2) #12
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i8, ptr %4, align 1
  %68 = zext i8 %67 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %74

69:                                               ; preds = %49
  %70 = load i8, ptr %3, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %71, i32 noundef %64) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %73 = icmp slt i32 %64, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %68, %66 ], [ %64, %69 ]
  %76 = and i32 %75, 7
  %77 = add nsw i32 %76, -1
  %78 = icmp ult i32 %77, 7
  %79 = select i1 %78, i32 %76, i32 0
  store i32 %79, ptr %52, align 4
  %80 = getelementptr inbounds %struct.cx24123_state, ptr %10, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %1, align 4
  %82 = getelementptr inbounds %struct.cx24123_state, ptr %10, i32 0, i32 11
  %83 = load i32, ptr %82, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %83, ptr %84, align 4
  br label %87

85:                                               ; preds = %69
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.cx24123_get_frontend) #11
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i32 [ -121, %85 ], [ 0, %74 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_read_status(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cx24123_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 20, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #12, !annotation !8
  %16 = zext i8 %14 to i16
  store i16 %16, ptr %8, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %22, align 4
  %23 = load ptr, ptr %11, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %8, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i8, ptr %6, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %28, i32 noundef %24) #11
  br label %33

30:                                               ; preds = %2
  %31 = load i8, ptr %7, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %24, %26 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  store i32 0, ptr %1, align 4
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr inbounds %struct.cx24123_config, ptr %35, i32 0, i32 3
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = call i32 %41(ptr noundef %0, ptr noundef nonnull %9) #12
  %45 = load i32, ptr %9, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %1, align 4
  %50 = or i32 %49, 1
  store i32 %50, ptr %1, align 4
  br label %51

51:                                               ; preds = %48, %43, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %79

52:                                               ; preds = %33
  %53 = load i8, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 32, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %54 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %54, i8 0, i32 16, i1 false) #12, !annotation !8
  %55 = zext i8 %53 to i16
  store i16 %55, ptr %5, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %56, align 2
  store i16 1, ptr %54, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %55, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %61, align 4
  %62 = load ptr, ptr %11, align 8
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %5, i32 noundef 2) #12
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load i8, ptr %3, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %67, i32 noundef %63) #11
  br label %72

69:                                               ; preds = %52
  %70 = load i8, ptr %4, align 1
  %71 = zext i8 %70 to i32
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %63, %65 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %1, align 4
  %78 = or i32 %77, 1
  store i32 %78, ptr %1, align 4
  br label %79

79:                                               ; preds = %76, %72, %51
  %80 = and i32 %34, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %1, align 4
  %84 = or i32 %83, 2
  store i32 %84, ptr %1, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = and i32 %34, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %1, align 4
  %90 = or i32 %89, 4
  store i32 %90, ptr %1, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = and i32 %34, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %1, align 4
  %96 = or i32 %95, 8
  store i32 %96, ptr %1, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = and i32 %34, 128
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %1, align 4
  %102 = or i32 %101, 16
  store i32 %102, ptr %1, align 4
  br label %103

103:                                              ; preds = %100, %97
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cx24123_state, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 28, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  %17 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #12, !annotation !8
  %18 = zext i8 %16 to i16
  store i16 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %24, align 4
  %25 = load ptr, ptr %13, align 8
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %11, i32 noundef 2) #12
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i8, ptr %9, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %30, i32 noundef %26) #11
  br label %35

32:                                               ; preds = %2
  %33 = load i8, ptr %10, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %26, %28 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %37 = shl i32 %36, 16
  %38 = and i32 %37, 4128768
  %39 = load ptr, ptr %14, align 4
  %40 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 29, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %41 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %41, i8 0, i32 16, i1 false) #12, !annotation !8
  %42 = zext i8 %40 to i16
  store i16 %42, ptr %8, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %41, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %48, align 4
  %49 = load ptr, ptr %13, align 8
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %8, i32 noundef 2) #12
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %56, label %52

52:                                               ; preds = %35
  %53 = load i8, ptr %6, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %54, i32 noundef %50) #11
  br label %59

56:                                               ; preds = %35
  %57 = load i8, ptr %7, align 1
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %50, %52 ], [ %58, %56 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %61 = shl i32 %60, 8
  %62 = load ptr, ptr %14, align 4
  %63 = load i8, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 30, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %64 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %64, i8 0, i32 16, i1 false) #12, !annotation !8
  %65 = zext i8 %63 to i16
  store i16 %65, ptr %5, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %66, align 2
  store i16 1, ptr %64, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %65, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %71, align 4
  %72 = load ptr, ptr %13, align 8
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %5, i32 noundef 2) #12
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %79, label %75

75:                                               ; preds = %59
  %76 = load i8, ptr %3, align 1
  %77 = zext i8 %76 to i32
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %77, i32 noundef %73) #11
  br label %82

79:                                               ; preds = %59
  %80 = load i8, ptr %4, align 1
  %81 = zext i8 %80 to i32
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i32 [ %73, %75 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %84 = or i32 %61, %38
  %85 = or i32 %84, %83
  store i32 %85, ptr %1, align 4
  %86 = load i32, ptr @debug, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_read_ber) #11
  %90 = load i32, ptr %1, align 4
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %88, %82
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cx24123_state, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 59, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = zext i8 %10 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %11, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load ptr, ptr %7, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 2) #12
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i8, ptr %3, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %24, i32 noundef %20) #11
  br label %29

26:                                               ; preds = %2
  %27 = load i8, ptr %4, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %20, %22 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %31 = trunc i32 %30 to i16
  %32 = shl i16 %31, 8
  store i16 %32, ptr %1, align 2
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_read_signal_strength) #11
  %37 = load i16, ptr %1, align 2
  %38 = zext i16 %37 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %38) #11
  br label %40

40:                                               ; preds = %35, %29
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cx24123_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 24, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #12, !annotation !8
  %15 = zext i8 %13 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %21, align 4
  %22 = load ptr, ptr %10, align 8
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %8, i32 noundef 2) #12
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %27, i32 noundef %23) #11
  br label %32

29:                                               ; preds = %2
  %30 = load i8, ptr %7, align 1
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %23, %25 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %34 = shl i32 %33, 8
  %35 = load ptr, ptr %11, align 4
  %36 = load i8, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 25, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %37, i8 0, i32 16, i1 false) #12, !annotation !8
  %38 = zext i8 %36 to i16
  store i16 %38, ptr %5, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 1, ptr %37, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %38, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %44, align 4
  %45 = load ptr, ptr %10, align 8
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %5, i32 noundef 2) #12
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = load i8, ptr %3, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %50, i32 noundef %46) #11
  br label %55

52:                                               ; preds = %32
  %53 = load i8, ptr %4, align 1
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %46, %48 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %57 = or i32 %56, %34
  %58 = trunc i32 %57 to i16
  %59 = xor i16 %58, -1
  store i16 %59, ptr %1, align 2
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_read_snr) #11
  %64 = load i16, ptr %1, align 2
  %65 = zext i16 %64 to i32
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %65) #11
  br label %67

67:                                               ; preds = %62, %55
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca [2 x %struct.i2c_msg], align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_send_diseqc_msg) #11
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %29

29:                                               ; preds = %26, %2
  %30 = getelementptr inbounds %struct.cx24123_state, ptr %23, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19)
  store i8 41, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #12
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #12
  %33 = getelementptr inbounds i8, ptr %21, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #12, !annotation !8
  %34 = zext i8 %32 to i16
  store i16 %34, ptr %21, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %35, align 2
  store i16 1, ptr %33, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1
  store i16 %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 1
  store i16 1, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 2
  store i16 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 3
  store ptr %20, ptr %40, align 4
  %41 = load ptr, ptr %23, align 8
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %21, i32 noundef 2) #12
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  %45 = load i8, ptr %19, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %46, i32 noundef %42) #11
  br label %51

48:                                               ; preds = %29
  %49 = load i8, ptr %20, align 1
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %42, %44 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19)
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %30, align 4
  %57 = load i8, ptr %56, align 4
  %58 = and i32 %52, -81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #12
  store i8 41, ptr %17, align 2
  %59 = getelementptr inbounds i8, ptr %17, i32 1
  %60 = trunc i32 %58 to i8
  store i8 %60, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #12
  %61 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %61, align 4, !annotation !8
  %62 = zext i8 %57 to i16
  store i16 %62, ptr %18, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %64, align 4
  %65 = load ptr, ptr %23, align 8
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %18, i32 noundef 1) #12
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %66, i32 noundef 41, i32 noundef %58) #11
  br label %70

70:                                               ; preds = %68, %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #12
  br label %71

71:                                               ; preds = %70, %51
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %23)
  %72 = load ptr, ptr %30, align 4
  %73 = load i8, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14)
  store i8 42, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #12
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #12
  %74 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %74, i8 0, i32 16, i1 false) #12, !annotation !8
  %75 = zext i8 %73 to i16
  store i16 %75, ptr %16, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %76, align 2
  store i16 1, ptr %74, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %77, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %75, ptr %78, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %81, align 4
  %82 = load ptr, ptr %23, align 8
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %16, i32 noundef 2) #12
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %89, label %85

85:                                               ; preds = %71
  %86 = load i8, ptr %14, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %87, i32 noundef %83) #11
  br label %92

89:                                               ; preds = %71
  %90 = load i8, ptr %15, align 1
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i32 [ %83, %85 ], [ %91, %89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  %94 = and i32 %93, 251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 42, ptr %12, align 2
  %95 = getelementptr inbounds i8, ptr %12, i32 1
  %96 = trunc i32 %94 to i8
  store i8 %96, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %97 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %97, align 4, !annotation !8
  store i16 %75, ptr %13, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %98, align 2
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %99, align 4
  %100 = load ptr, ptr %23, align 8
  %101 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %13, i32 noundef 1) #12
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %101, i32 noundef 42, i32 noundef %94) #11
  br label %105

105:                                              ; preds = %103, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %106 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %134, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %10, i32 1
  %111 = getelementptr inbounds i8, ptr %11, i32 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  br label %114

114:                                              ; preds = %129, %109
  %115 = phi i32 [ 0, %109 ], [ %130, %129 ]
  %116 = load ptr, ptr %30, align 4
  %117 = load i8, ptr %116, align 4
  %118 = add nuw nsw i32 %115, 44
  %119 = getelementptr [6 x i8], ptr %1, i32 0, i32 %115
  %120 = load i8, ptr %119, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  %121 = trunc i32 %118 to i8
  store i8 %121, ptr %10, align 2
  store i8 %120, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  store i32 2, ptr %111, align 4, !annotation !8
  %122 = zext i8 %117 to i16
  store i16 %122, ptr %11, align 4
  store i16 0, ptr %112, align 2
  store ptr %10, ptr %113, align 4
  %123 = load ptr, ptr %23, align 8
  %124 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %11, i32 noundef 1) #12
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %114
  %127 = zext i8 %120 to i32
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %124, i32 noundef %118, i32 noundef %127) #11
  br label %129

129:                                              ; preds = %126, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  %130 = add nuw nsw i32 %115, 1
  %131 = load i8, ptr %106, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ult i32 %130, %132
  br i1 %133, label %114, label %134

134:                                              ; preds = %129, %105
  %135 = load ptr, ptr %30, align 4
  %136 = load i8, ptr %135, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 41, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  %137 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %137, i8 0, i32 16, i1 false) #12, !annotation !8
  %138 = zext i8 %136 to i16
  store i16 %138, ptr %9, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %139, align 2
  store i16 1, ptr %137, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %140, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %138, ptr %141, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %142, align 2
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %143, align 4
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %144, align 4
  %145 = load ptr, ptr %23, align 8
  %146 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %9, i32 noundef 2) #12
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %152, label %148

148:                                              ; preds = %134
  %149 = load i8, ptr %7, align 1
  %150 = zext i8 %149 to i32
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %150, i32 noundef %146) #11
  br label %155

152:                                              ; preds = %134
  %153 = load i8, ptr %8, align 1
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi i32 [ %146, %148 ], [ %154, %152 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %157 = load ptr, ptr %30, align 4
  %158 = load i8, ptr %157, align 4
  %159 = and i32 %156, 144
  %160 = load i8, ptr %106, align 1
  %161 = add i8 %160, 1
  %162 = and i8 %161, 3
  %163 = zext i8 %162 to i32
  %164 = or i32 %159, %163
  %165 = or i32 %164, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 41, ptr %5, align 2
  %166 = getelementptr inbounds i8, ptr %5, i32 1
  %167 = trunc i32 %165 to i8
  store i8 %167, ptr %166, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %168 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %168, align 4, !annotation !8
  %169 = zext i8 %158 to i16
  store i16 %169, ptr %6, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %170, align 2
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %171, align 4
  %172 = load ptr, ptr %23, align 8
  %173 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %6, i32 noundef 1) #12
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %177, label %175

175:                                              ; preds = %155
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %173, i32 noundef 41, i32 noundef %165) #11
  br label %177

177:                                              ; preds = %175, %155
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %23)
  br i1 %54, label %194, label %178

178:                                              ; preds = %177
  %179 = load ptr, ptr %30, align 4
  %180 = load i8, ptr %179, align 4
  %181 = and i32 %52, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 41, ptr %3, align 2
  %182 = getelementptr inbounds i8, ptr %3, i32 1
  %183 = trunc i32 %181 to i8
  store i8 %183, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %184 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %184, align 4, !annotation !8
  %185 = zext i8 %180 to i16
  store i16 %185, ptr %4, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %186, align 2
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %187, align 4
  %188 = load ptr, ptr %23, align 8
  %189 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %4, i32 noundef 1) #12
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %193, label %191

191:                                              ; preds = %178
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %189, i32 noundef 41, i32 noundef %181) #11
  br label %193

193:                                              ; preds = %191, %178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %194

194:                                              ; preds = %193, %177
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca [2 x %struct.i2c_msg], align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca [2 x %struct.i2c_msg], align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_diseqc_send_burst) #11
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %34

34:                                               ; preds = %31, %2
  %35 = getelementptr inbounds %struct.cx24123_state, ptr %28, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24)
  store i8 41, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #12
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #12
  %38 = getelementptr inbounds i8, ptr %26, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #12, !annotation !8
  %39 = zext i8 %37 to i16
  store i16 %39, ptr %26, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %38, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %24, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1
  store i16 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 3
  store ptr %25, ptr %45, align 4
  %46 = load ptr, ptr %28, align 8
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %26, i32 noundef 2) #12
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %53, label %49

49:                                               ; preds = %34
  %50 = load i8, ptr %24, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %51, i32 noundef %47) #11
  br label %56

53:                                               ; preds = %34
  %54 = load i8, ptr %25, align 1
  %55 = zext i8 %54 to i32
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i32 [ %47, %49 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24)
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %35, align 4
  %62 = load i8, ptr %61, align 4
  %63 = and i32 %57, -81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i8 41, ptr %22, align 2
  %64 = getelementptr inbounds i8, ptr %22, i32 1
  %65 = trunc i32 %63 to i8
  store i8 %65, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #12
  %66 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %66, align 4, !annotation !8
  %67 = zext i8 %62 to i16
  store i16 %67, ptr %23, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %69, align 4
  %70 = load ptr, ptr %28, align 8
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %23, i32 noundef 1) #12
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %75, label %73

73:                                               ; preds = %60
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %71, i32 noundef 41, i32 noundef %63) #11
  br label %75

75:                                               ; preds = %73, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  br label %76

76:                                               ; preds = %75, %56
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %28)
  %77 = load ptr, ptr %35, align 4
  %78 = load i8, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19)
  store i8 42, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #12
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #12
  %79 = getelementptr inbounds i8, ptr %21, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %79, i8 0, i32 16, i1 false) #12, !annotation !8
  %80 = zext i8 %78 to i16
  store i16 %80, ptr %21, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %81, align 2
  store i16 1, ptr %79, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %19, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1
  store i16 %80, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 1
  store i16 1, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 2
  store i16 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 3
  store ptr %20, ptr %86, align 4
  %87 = load ptr, ptr %28, align 8
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %21, i32 noundef 2) #12
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %94, label %90

90:                                               ; preds = %76
  %91 = load i8, ptr %19, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %92, i32 noundef %88) #11
  br label %97

94:                                               ; preds = %76
  %95 = load i8, ptr %20, align 1
  %96 = zext i8 %95 to i32
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi i32 [ %88, %90 ], [ %96, %94 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19)
  %99 = or i32 %98, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #12
  store i8 42, ptr %17, align 2
  %100 = getelementptr inbounds i8, ptr %17, i32 1
  %101 = trunc i32 %99 to i8
  store i8 %101, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #12
  %102 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %102, align 4, !annotation !8
  store i16 %80, ptr %18, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %104, align 4
  %105 = load ptr, ptr %28, align 8
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %18, i32 noundef 1) #12
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %110, label %108

108:                                              ; preds = %97
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %106, i32 noundef 42, i32 noundef %99) #11
  br label %110

110:                                              ; preds = %108, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #12
  call void @msleep(i32 noundef 30) #12
  %111 = load ptr, ptr %35, align 4
  %112 = load i8, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14)
  store i8 41, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #12
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #12
  %113 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %113, i8 0, i32 16, i1 false) #12, !annotation !8
  %114 = zext i8 %112 to i16
  store i16 %114, ptr %16, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %115, align 2
  store i16 1, ptr %113, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %114, ptr %117, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %119, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %120, align 4
  %121 = load ptr, ptr %28, align 8
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %16, i32 noundef 2) #12
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %128, label %124

124:                                              ; preds = %110
  %125 = load i8, ptr %14, align 1
  %126 = zext i8 %125 to i32
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %126, i32 noundef %122) #11
  br label %131

128:                                              ; preds = %110
  %129 = load i8, ptr %15, align 1
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i32 [ %122, %124 ], [ %130, %128 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  switch i32 %1, label %218 [
    i32 0, label %133
    i32 1, label %150
  ]

133:                                              ; preds = %131
  %134 = load ptr, ptr %35, align 4
  %135 = load i8, ptr %134, align 4
  %136 = and i32 %132, 144
  %137 = or i32 %136, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 41, ptr %12, align 2
  %138 = getelementptr inbounds i8, ptr %12, i32 1
  %139 = trunc i32 %137 to i8
  store i8 %139, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %140 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %140, align 4, !annotation !8
  %141 = zext i8 %135 to i16
  store i16 %141, ptr %13, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %142, align 2
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %143, align 4
  %144 = load ptr, ptr %28, align 8
  %145 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %13, i32 noundef 1) #12
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %149, label %147

147:                                              ; preds = %133
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %145, i32 noundef 41, i32 noundef %137) #11
  br label %149

149:                                              ; preds = %147, %133
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  br label %167

150:                                              ; preds = %131
  %151 = load ptr, ptr %35, align 4
  %152 = load i8, ptr %151, align 4
  %153 = and i32 %132, 144
  %154 = or i32 %153, 72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i8 41, ptr %10, align 2
  %155 = getelementptr inbounds i8, ptr %10, i32 1
  %156 = trunc i32 %154 to i8
  store i8 %156, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %157 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %157, align 4, !annotation !8
  %158 = zext i8 %152 to i16
  store i16 %158, ptr %11, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %159, align 2
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %160, align 4
  %161 = load ptr, ptr %28, align 8
  %162 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %11, i32 noundef 1) #12
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %166, label %164

164:                                              ; preds = %150
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %162, i32 noundef 41, i32 noundef %154) #11
  br label %166

166:                                              ; preds = %164, %150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  br label %167

167:                                              ; preds = %166, %149
  call fastcc void @cx24123_wait_for_diseqc(ptr noundef %28)
  %168 = load ptr, ptr %35, align 4
  %169 = load i8, ptr %168, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 42, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  %170 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %170, i8 0, i32 16, i1 false) #12, !annotation !8
  %171 = zext i8 %169 to i16
  store i16 %171, ptr %9, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %172, align 2
  store i16 1, ptr %170, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %173, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %171, ptr %174, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %175, align 2
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %177, align 4
  %178 = load ptr, ptr %28, align 8
  %179 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %9, i32 noundef 2) #12
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %185, label %181

181:                                              ; preds = %167
  %182 = load i8, ptr %7, align 1
  %183 = zext i8 %182 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %183, i32 noundef %179) #11
  br label %188

185:                                              ; preds = %167
  %186 = load i8, ptr %8, align 1
  %187 = zext i8 %186 to i32
  br label %188

188:                                              ; preds = %185, %181
  %189 = phi i32 [ %179, %181 ], [ %187, %185 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %190 = and i32 %189, 251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 42, ptr %5, align 2
  %191 = getelementptr inbounds i8, ptr %5, i32 1
  %192 = trunc i32 %190 to i8
  store i8 %192, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %193 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %193, align 4, !annotation !8
  store i16 %171, ptr %6, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %194, align 2
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %195, align 4
  %196 = load ptr, ptr %28, align 8
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %6, i32 noundef 1) #12
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %197, i32 noundef 42, i32 noundef %190) #11
  br label %201

201:                                              ; preds = %199, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br i1 %59, label %218, label %202

202:                                              ; preds = %201
  %203 = load ptr, ptr %35, align 4
  %204 = load i8, ptr %203, align 4
  %205 = and i32 %57, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 41, ptr %3, align 2
  %206 = getelementptr inbounds i8, ptr %3, i32 1
  %207 = trunc i32 %205 to i8
  store i8 %207, ptr %206, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %208 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %208, align 4, !annotation !8
  %209 = zext i8 %204 to i16
  store i16 %209, ptr %4, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %210, align 2
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %211, align 4
  %212 = load ptr, ptr %28, align 8
  %213 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %4, i32 noundef 1) #12
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %217, label %215

215:                                              ; preds = %202
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %213, i32 noundef 41, i32 noundef %205) #11
  br label %217

217:                                              ; preds = %215, %202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %218

218:                                              ; preds = %217, %201, %131
  %219 = phi i32 [ -22, %131 ], [ 0, %217 ], [ 0, %201 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call fastcc void @cx24123_wait_for_diseqc(ptr noundef %11)
  %12 = getelementptr inbounds %struct.cx24123_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 41, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  %15 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #12, !annotation !8
  %16 = zext i8 %14 to i16
  store i16 %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %22, align 4
  %23 = load ptr, ptr %11, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %9, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %28, i32 noundef %24) #11
  br label %33

30:                                               ; preds = %2
  %31 = load i8, ptr %8, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %24, %26 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %35 = and i32 %34, 175
  switch i32 %1, label %81 [
    i32 0, label %36
    i32 1, label %59
  ]

36:                                               ; preds = %33
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_tone) #11
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  br label %42

42:                                               ; preds = %39, %36
  %43 = load ptr, ptr %12, align 4
  %44 = load i8, ptr %43, align 4
  %45 = or i32 %35, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 41, ptr %5, align 2
  %46 = getelementptr inbounds i8, ptr %5, i32 1
  %47 = trunc i32 %45 to i8
  store i8 %47, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %48 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %48, align 4, !annotation !8
  %49 = zext i8 %44 to i16
  store i16 %49, ptr %6, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %51, align 4
  %52 = load ptr, ptr %11, align 8
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %6, i32 noundef 1) #12
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %42
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %53, i32 noundef 41, i32 noundef %45) #11
  br label %57

57:                                               ; preds = %55, %42
  %58 = phi i32 [ %53, %55 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %83

59:                                               ; preds = %33
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_tone) #11
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #11
  br label %65

65:                                               ; preds = %62, %59
  %66 = load ptr, ptr %12, align 4
  %67 = load i8, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 41, ptr %3, align 2
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  %69 = trunc i32 %35 to i8
  store i8 %69, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %70 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %70, align 4, !annotation !8
  %71 = zext i8 %67 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %11, align 8
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #12
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %79, label %77

77:                                               ; preds = %65
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %75, i32 noundef 41, i32 noundef %35) #11
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi i32 [ %75, %77 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %83

81:                                               ; preds = %33
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %1) #11
  br label %83

83:                                               ; preds = %81, %79, %57
  %84 = phi i32 [ -22, %81 ], [ %80, %79 ], [ %58, %57 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24123_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cx24123_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 41, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  %15 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #12, !annotation !8
  %16 = zext i8 %14 to i16
  store i16 %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %22, align 4
  %23 = load ptr, ptr %11, align 8
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %9, i32 noundef 2) #12
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %28, i32 noundef %24) #11
  br label %33

30:                                               ; preds = %2
  %31 = load i8, ptr %8, align 1
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %24, %26 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %35 = and i32 %34, 63
  switch i32 %1, label %81 [
    i32 0, label %36
    i32 1, label %58
    i32 2, label %82
  ]

36:                                               ; preds = %33
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_voltage) #11
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #11
  br label %42

42:                                               ; preds = %39, %36
  %43 = load ptr, ptr %12, align 4
  %44 = load i8, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 41, ptr %5, align 2
  %45 = getelementptr inbounds i8, ptr %5, i32 1
  %46 = trunc i32 %35 to i8
  store i8 %46, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %47 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %47, align 4, !annotation !8
  %48 = zext i8 %44 to i16
  store i16 %48, ptr %6, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %50, align 4
  %51 = load ptr, ptr %11, align 8
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %6, i32 noundef 1) #12
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %52, i32 noundef 41, i32 noundef %35) #11
  br label %56

56:                                               ; preds = %54, %42
  %57 = phi i32 [ %52, %54 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %82

58:                                               ; preds = %33
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_set_voltage) #11
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #11
  br label %64

64:                                               ; preds = %61, %58
  %65 = load ptr, ptr %12, align 4
  %66 = load i8, ptr %65, align 4
  %67 = or i32 %35, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 41, ptr %3, align 2
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  %69 = trunc i32 %67 to i8
  store i8 %69, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %70 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %70, align 4, !annotation !8
  %71 = zext i8 %66 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %11, align 8
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #12
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %79, label %77

77:                                               ; preds = %64
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %75, i32 noundef 41, i32 noundef %67) #11
  br label %79

79:                                               ; preds = %77, %64
  %80 = phi i32 [ %75, %77 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %82

81:                                               ; preds = %33
  br label %82

82:                                               ; preds = %81, %79, %56, %33
  %83 = phi i32 [ -22, %81 ], [ %80, %79 ], [ %57, %56 ], [ 0, %33 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24123_pll_writereg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24123_pll_writereg) #11
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %1) #11
  br label %37

37:                                               ; preds = %34, %2
  %38 = shl i32 %1, 3
  %39 = getelementptr inbounds %struct.cx24123_state, ptr %31, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #12
  store i8 33, ptr %28, align 2
  %42 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 21, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #12
  %43 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = zext i8 %41 to i16
  store i16 %44, ptr %29, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %46, align 4
  %47 = load ptr, ptr %31, align 8
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %29, i32 noundef 1) #12
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %48, i32 noundef 33, i32 noundef 21) #11
  br label %52

52:                                               ; preds = %50, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #12
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = add i32 %53, 4
  %55 = load ptr, ptr %39, align 4
  %56 = load i8, ptr %55, align 4
  %57 = lshr i32 %38, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #12
  store i8 34, ptr %26, align 2
  %58 = getelementptr inbounds i8, ptr %26, i32 1
  %59 = trunc i32 %57 to i8
  store i8 %59, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #12
  %60 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %60, align 4, !annotation !8
  %61 = zext i8 %56 to i16
  store i16 %61, ptr %27, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %63, align 4
  %64 = load ptr, ptr %31, align 8
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %27, i32 noundef 1) #12
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = and i32 %57, 255
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %65, i32 noundef 34, i32 noundef %68) #11
  br label %70

70:                                               ; preds = %67, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #12
  %71 = getelementptr inbounds i8, ptr %25, i32 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  br label %78

78:                                               ; preds = %102, %70
  %79 = load ptr, ptr %39, align 4
  %80 = load i8, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23)
  store i8 32, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #12
  store i8 0, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #12, !annotation !8
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %25, align 4
  store i16 0, ptr %72, align 2
  store i16 1, ptr %71, align 4
  store ptr %23, ptr %73, align 4
  store i16 %81, ptr %74, align 4
  store i16 1, ptr %75, align 2
  store i16 1, ptr %76, align 4
  store ptr %24, ptr %77, align 4
  %82 = load ptr, ptr %31, align 8
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %25, i32 noundef 2) #12
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i8, ptr %23, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %87, i32 noundef %83) #11
  br label %92

89:                                               ; preds = %78
  %90 = load i8, ptr %24, align 1
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i32 [ %83, %85 ], [ %91, %89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23)
  %94 = and i32 %93, 64
  %95 = icmp eq i32 %94, 0
  %96 = load volatile i32, ptr @jiffies, align 64
  br i1 %95, label %97, label %103

97:                                               ; preds = %92
  %98 = sub i32 %54, %96
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cx24123_pll_writereg) #11
  br label %271

102:                                              ; preds = %97
  call void @msleep(i32 noundef 10) #12
  br label %78

103:                                              ; preds = %92
  %104 = add i32 %96, 4
  %105 = load ptr, ptr %39, align 4
  %106 = load i8, ptr %105, align 4
  %107 = lshr i32 %38, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #12
  store i8 34, ptr %21, align 2
  %108 = getelementptr inbounds i8, ptr %21, i32 1
  %109 = trunc i32 %107 to i8
  store i8 %109, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #12
  %110 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %110, align 4, !annotation !8
  %111 = zext i8 %106 to i16
  store i16 %111, ptr %22, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %113, align 4
  %114 = load ptr, ptr %31, align 8
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %22, i32 noundef 1) #12
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %120, label %117

117:                                              ; preds = %103
  %118 = and i32 %107, 255
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %115, i32 noundef 34, i32 noundef %118) #11
  br label %120

120:                                              ; preds = %117, %103
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #12
  %121 = getelementptr inbounds i8, ptr %20, i32 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  br label %128

128:                                              ; preds = %152, %120
  %129 = load ptr, ptr %39, align 4
  %130 = load i8, ptr %129, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18)
  store i8 32, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #12
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %121, i8 0, i32 16, i1 false) #12, !annotation !8
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %20, align 4
  store i16 0, ptr %122, align 2
  store i16 1, ptr %121, align 4
  store ptr %18, ptr %123, align 4
  store i16 %131, ptr %124, align 4
  store i16 1, ptr %125, align 2
  store i16 1, ptr %126, align 4
  store ptr %19, ptr %127, align 4
  %132 = load ptr, ptr %31, align 8
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %20, i32 noundef 2) #12
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i8, ptr %18, align 1
  %137 = zext i8 %136 to i32
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %137, i32 noundef %133) #11
  br label %142

139:                                              ; preds = %128
  %140 = load i8, ptr %19, align 1
  %141 = zext i8 %140 to i32
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi i32 [ %133, %135 ], [ %141, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18)
  %144 = and i32 %143, 64
  %145 = icmp eq i32 %144, 0
  %146 = load volatile i32, ptr @jiffies, align 64
  br i1 %145, label %147, label %153

147:                                              ; preds = %142
  %148 = sub i32 %104, %146
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cx24123_pll_writereg) #11
  br label %271

152:                                              ; preds = %147
  call void @msleep(i32 noundef 10) #12
  br label %128

153:                                              ; preds = %142
  %154 = add i32 %146, 4
  %155 = load ptr, ptr %39, align 4
  %156 = load i8, ptr %155, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i8 34, ptr %16, align 2
  %157 = getelementptr inbounds i8, ptr %16, i32 1
  %158 = trunc i32 %38 to i8
  store i8 %158, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %159 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %159, align 4, !annotation !8
  %160 = zext i8 %156 to i16
  store i16 %160, ptr %17, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %162, align 4
  %163 = load ptr, ptr %31, align 8
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %17, i32 noundef 1) #12
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %169, label %166

166:                                              ; preds = %153
  %167 = and i32 %38, 248
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %164, i32 noundef 34, i32 noundef %167) #11
  br label %169

169:                                              ; preds = %166, %153
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  %170 = getelementptr inbounds i8, ptr %15, i32 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  br label %177

177:                                              ; preds = %201, %169
  %178 = load ptr, ptr %39, align 4
  %179 = load i8, ptr %178, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13)
  store i8 32, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #12
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %170, i8 0, i32 16, i1 false) #12, !annotation !8
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %15, align 4
  store i16 0, ptr %171, align 2
  store i16 1, ptr %170, align 4
  store ptr %13, ptr %172, align 4
  store i16 %180, ptr %173, align 4
  store i16 1, ptr %174, align 2
  store i16 1, ptr %175, align 4
  store ptr %14, ptr %176, align 4
  %181 = load ptr, ptr %31, align 8
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %15, i32 noundef 2) #12
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %188, label %184

184:                                              ; preds = %177
  %185 = load i8, ptr %13, align 1
  %186 = zext i8 %185 to i32
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %186, i32 noundef %182) #11
  br label %191

188:                                              ; preds = %177
  %189 = load i8, ptr %14, align 1
  %190 = zext i8 %189 to i32
  br label %191

191:                                              ; preds = %188, %184
  %192 = phi i32 [ %182, %184 ], [ %190, %188 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13)
  %193 = and i32 %192, 128
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %191
  %196 = load volatile i32, ptr @jiffies, align 64
  %197 = sub i32 %154, %196
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.cx24123_pll_writereg) #11
  br label %271

201:                                              ; preds = %195
  call void @msleep(i32 noundef 10) #12
  br label %177

202:                                              ; preds = %191
  %203 = load ptr, ptr %39, align 4
  %204 = load i8, ptr %203, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 32, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #12
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #12
  %205 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %205, i8 0, i32 16, i1 false) #12, !annotation !8
  %206 = zext i8 %204 to i16
  store i16 %206, ptr %12, align 4
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %207, align 2
  store i16 1, ptr %205, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %10, ptr %208, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %206, ptr %209, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %210, align 2
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %211, align 4
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %11, ptr %212, align 4
  %213 = load ptr, ptr %31, align 8
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %12, i32 noundef 2) #12
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %220, label %216

216:                                              ; preds = %202
  %217 = load i8, ptr %10, align 1
  %218 = zext i8 %217 to i32
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %218, i32 noundef %214) #11
  br label %223

220:                                              ; preds = %202
  %221 = load i8, ptr %11, align 1
  %222 = zext i8 %221 to i32
  br label %223

223:                                              ; preds = %220, %216
  %224 = phi i32 [ %214, %216 ], [ %222, %220 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  %225 = or i32 %224, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i8 32, ptr %8, align 2
  %226 = getelementptr inbounds i8, ptr %8, i32 1
  %227 = trunc i32 %225 to i8
  store i8 %227, ptr %226, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %228 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %228, align 4, !annotation !8
  store i16 %206, ptr %9, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %229, align 2
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %230, align 4
  %231 = load ptr, ptr %31, align 8
  %232 = call i32 @i2c_transfer(ptr noundef %231, ptr noundef nonnull %9, i32 noundef 1) #12
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %236, label %234

234:                                              ; preds = %223
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %232, i32 noundef 32, i32 noundef %225) #11
  br label %236

236:                                              ; preds = %234, %223
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  %237 = load ptr, ptr %39, align 4
  %238 = load i8, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %239 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %239, i8 0, i32 16, i1 false) #12, !annotation !8
  %240 = zext i8 %238 to i16
  store i16 %240, ptr %7, align 4
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %241, align 2
  store i16 1, ptr %239, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %242, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %240, ptr %243, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %244, align 2
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %245, align 4
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %246, align 4
  %247 = load ptr, ptr %31, align 8
  %248 = call i32 @i2c_transfer(ptr noundef %247, ptr noundef nonnull %7, i32 noundef 2) #12
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %254, label %250

250:                                              ; preds = %236
  %251 = load i8, ptr %5, align 1
  %252 = zext i8 %251 to i32
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %252, i32 noundef %248) #11
  br label %257

254:                                              ; preds = %236
  %255 = load i8, ptr %6, align 1
  %256 = zext i8 %255 to i32
  br label %257

257:                                              ; preds = %254, %250
  %258 = phi i32 [ %248, %250 ], [ %256, %254 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %259 = and i32 %258, 253
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 32, ptr %3, align 2
  %260 = getelementptr inbounds i8, ptr %3, i32 1
  %261 = trunc i32 %259 to i8
  store i8 %261, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %262 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %262, align 4, !annotation !8
  store i16 %240, ptr %4, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %264, align 4
  %265 = load ptr, ptr %31, align 8
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %4, i32 noundef 1) #12
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %270, label %268

268:                                              ; preds = %257
  %269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cx24123_i2c_writereg, i32 noundef %266, i32 noundef 32, i32 noundef %259) #11
  br label %270

270:                                              ; preds = %268, %257
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %271

271:                                              ; preds = %270, %199, %150, %100
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24123_wait_for_diseqc(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 20
  %7 = getelementptr inbounds %struct.cx24123_state, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  br label %15

15:                                               ; preds = %39, %1
  %16 = load ptr, ptr %7, align 4
  %17 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 41, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #12, !annotation !8
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %4, align 4
  store i16 0, ptr %9, align 2
  store i16 1, ptr %8, align 4
  store ptr %2, ptr %10, align 4
  store i16 %18, ptr %11, align 4
  store i16 1, ptr %12, align 2
  store i16 1, ptr %13, align 4
  store ptr %3, ptr %14, align 4
  %19 = load ptr, ptr %0, align 8
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 2) #12
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i8, ptr %2, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24123_i2c_readreg, i32 noundef %24, i32 noundef %20) #11
  br label %29

26:                                               ; preds = %15
  %27 = load i8, ptr %3, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %20, %22 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = sub i32 %6, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cx24123_wait_for_diseqc) #11
  br label %40

39:                                               ; preds = %33
  call void @msleep(i32 noundef 10) #12
  br label %15

40:                                               ; preds = %37, %29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }

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
!10 = !{i64 2148133253, i64 2148133533, i64 2148133867, i64 2148134201}
