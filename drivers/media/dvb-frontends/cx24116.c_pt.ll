; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cx24116.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24116.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24116_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24116_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24116_attach:\09\09\09\09\09"
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
%struct.cx24116_modfec = type { i32, i32, i32, i8, i8 }
%struct.cx24116_state = type { ptr, ptr, %struct.dvb_frontend, %struct.cx24116_tuning, %struct.cx24116_tuning, i8, i8, %struct.cx24116_cmd }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.cx24116_tuning = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.cx24116_cmd = type { i8, [30 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
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
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [52 x i8] c"parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__param_str_toneburst = internal constant [10 x i8] c"toneburst\00", align 1
@toneburst = internal global i32 1, align 4
@__param_toneburst = internal constant %struct.kernel_param { ptr @__param_str_toneburst, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @toneburst } }, section "__param", align 4
@__UNIQUE_ID_tonebursttype251 = internal constant [23 x i8] c"parmtype=toneburst:int\00", section ".modinfo", align 1
@__UNIQUE_ID_toneburst252 = internal constant [81 x i8] c"parm=toneburst:DiSEqC toneburst 0=OFF, 1=TONE CACHE, 2=MESSAGE CACHE (default:1)\00", section ".modinfo", align 1
@__param_str_esno_snr = internal constant [9 x i8] c"esno_snr\00", align 1
@esno_snr = internal global i32 0, align 4
@__param_esno_snr = internal constant %struct.kernel_param { ptr @__param_str_esno_snr, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @esno_snr } }, section "__param", align 4
@__UNIQUE_ID_esno_snrtype253 = internal constant [22 x i8] c"parmtype=esno_snr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_esno_snr254 = internal constant [80 x i8] c"parm=esno_snr:SNR return units, 0=PERCENTAGE 0-100, 1=ESNO(db * 10) (default:0)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"\016cx24116: %s\0A\00", align 1
@__func__.cx24116_attach = private unnamed_addr constant [15 x i8] c"cx24116_attach\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\016Invalid probe, probably not a CX24116 device\0A\00", align 1
@cx24116_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24116/CX24118\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @cx24116_release, ptr null, ptr @cx24116_initfe, ptr @cx24116_sleep, ptr null, ptr null, ptr null, ptr @cx24116_tune, ptr @cx24116_get_algo, ptr @cx24116_set_frontend, ptr null, ptr null, ptr @cx24116_read_status, ptr @cx24116_read_ber, ptr @cx24116_read_signal_strength, ptr @cx24116_read_snr, ptr @cx24116_read_ucblocks, ptr null, ptr @cx24116_send_diseqc_msg, ptr null, ptr @cx24116_diseqc_send_burst, ptr @cx24116_set_tone, ptr @cx24116_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_cx24116_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24116_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24116_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24116_attach to i32), ptr @__kstrtab_cx24116_attach, ptr @__kstrtabns_cx24116_attach }, section "___ksymtab+cx24116_attach", align 4
@__UNIQUE_ID_description255 = internal constant [70 x i8] c"description=DVB Frontend module for Conexant cx24116/cx24118 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\013%s: reg=0x%x (error=%d)\0A\00", align 1
@__func__.cx24116_readreg = private unnamed_addr constant [16 x i8] c"cx24116_readreg\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\016cx24116: read reg 0x%02x, value 0x%02x\0A\00", align 1
@__func__.cx24116_release = private unnamed_addr constant [16 x i8] c"cx24116_release\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\016cx24116: %s()\0A\00", align 1
@__func__.cx24116_initfe = private unnamed_addr constant [15 x i8] c"cx24116_initfe\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"cx24116: %s: write reg 0x%02x, value 0x%02x\0A\00", align 1
@__func__.cx24116_writereg = private unnamed_addr constant [17 x i8] c"cx24116_writereg\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x, value == 0x%02x)\0A\00", align 1
@__func__.cx24116_cmd_execute = private unnamed_addr constant [20 x i8] c"cx24116_cmd_execute\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\013%s(): Unable initialise the firmware\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\016cx24116: %s: 0x%02x == 0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\014%s() Firmware not responding\0A\00", align 1
@__func__.cx24116_firmware_ondemand = private unnamed_addr constant [26 x i8] c"cx24116_firmware_ondemand\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\016%s: Waiting for firmware upload (%s)...\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dvb-fe-cx24116.fw\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\016%s: Waiting for firmware upload(2)...\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"\013%s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\013%s: Writing firmware to device failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\016%s: Firmware upload %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@__func__.cx24116_load_firmware = private unnamed_addr constant [22 x i8] c"cx24116_load_firmware\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"\016cx24116: Firmware is %zu bytes (%02x %02x .. %02x %02x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"\016%s: FW version %i.%i.%i.%i\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"\016cx24116: %s:  write regN 0x%02x, len = %d\0A\00", align 1
@__func__.cx24116_writeregN = private unnamed_addr constant [18 x i8] c"cx24116_writeregN\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x\0A\00", align 1
@__func__.cx24116_sleep = private unnamed_addr constant [14 x i8] c"cx24116_sleep\00", align 1
@__func__.cx24116_set_frontend = private unnamed_addr constant [21 x i8] c"cx24116_set_frontend\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"\016cx24116: %s: DVB-S delivery system selected\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"\016cx24116: %s: unsupported modulation selected (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"\016cx24116: %s: unsupported rolloff selected (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"\016cx24116: %s: DVB-S2 delivery system selected\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\016cx24116: %s: unsupported pilot mode selected (%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"\016cx24116: %s: unsupported delivery system selected (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"\016cx24116: %s:   delsys      = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"\016cx24116: %s:   modulation  = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"\016cx24116: %s:   frequency   = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"\016cx24116: %s:   pilot       = %d (val = 0x%02x)\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"\016cx24116: %s:   retune      = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"\016cx24116: %s:   rolloff     = %d (val = 0x%02x)\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"\016cx24116: %s:   symbol_rate = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"\016cx24116: %s:   FEC         = %d (mask/val = 0x%02x/0x%02x)\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"\016cx24116: %s:   Inversion   = %d (val = 0x%02x)\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"\016cx24116: %s: Tuned\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"\016cx24116: %s: Not tuned\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"\016cx24116: %s(%d)\0A\00", align 1
@__func__.cx24116_set_inversion = private unnamed_addr constant [22 x i8] c"cx24116_set_inversion\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"\016cx24116: %s(0x%02x,0x%02x)\0A\00", align 1
@__func__.cx24116_set_fec = private unnamed_addr constant [16 x i8] c"cx24116_set_fec\00", align 1
@CX24116_MODFEC_MODES = internal unnamed_addr constant [24 x %struct.cx24116_modfec] [%struct.cx24116_modfec { i32 5, i32 0, i32 0, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 1, i8 2, i8 46 }, %struct.cx24116_modfec { i32 5, i32 0, i32 2, i8 4, i8 47 }, %struct.cx24116_modfec { i32 5, i32 0, i32 3, i8 8, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 4, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 5, i8 32, i8 49 }, %struct.cx24116_modfec { i32 5, i32 0, i32 6, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 7, i8 -128, i8 50 }, %struct.cx24116_modfec { i32 5, i32 0, i32 8, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 9, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 6, i32 0, i32 1, i8 0, i8 4 }, %struct.cx24116_modfec { i32 6, i32 0, i32 10, i8 0, i8 5 }, %struct.cx24116_modfec { i32 6, i32 0, i32 2, i8 0, i8 6 }, %struct.cx24116_modfec { i32 6, i32 0, i32 3, i8 0, i8 7 }, %struct.cx24116_modfec { i32 6, i32 0, i32 4, i8 0, i8 8 }, %struct.cx24116_modfec { i32 6, i32 0, i32 5, i8 0, i8 9 }, %struct.cx24116_modfec { i32 6, i32 0, i32 8, i8 0, i8 10 }, %struct.cx24116_modfec { i32 6, i32 0, i32 11, i8 0, i8 11 }, %struct.cx24116_modfec { i32 6, i32 9, i32 10, i8 0, i8 12 }, %struct.cx24116_modfec { i32 6, i32 9, i32 2, i8 0, i8 13 }, %struct.cx24116_modfec { i32 6, i32 9, i32 3, i8 0, i8 14 }, %struct.cx24116_modfec { i32 6, i32 9, i32 5, i8 0, i8 15 }, %struct.cx24116_modfec { i32 6, i32 9, i32 8, i8 0, i8 16 }, %struct.cx24116_modfec { i32 6, i32 9, i32 11, i8 0, i8 17 }], align 4
@.str.41 = private unnamed_addr constant [42 x i8] c"\016cx24116: %s() mask/val = 0x%02x/0x%02x\0A\00", align 1
@__func__.cx24116_lookup_fecmod = private unnamed_addr constant [22 x i8] c"cx24116_lookup_fecmod\00", align 1
@__func__.cx24116_set_symbolrate = private unnamed_addr constant [23 x i8] c"cx24116_set_symbolrate\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"\016cx24116: %s() unsupported symbol_rate = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\016cx24116: %s() symbol_rate = %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"\016cx24116: %s: status = 0x%02x\0A\00", align 1
@__func__.cx24116_read_status = private unnamed_addr constant [20 x i8] c"cx24116_read_status\00", align 1
@__func__.cx24116_read_ber = private unnamed_addr constant [17 x i8] c"cx24116_read_ber\00", align 1
@__func__.cx24116_read_signal_strength = private unnamed_addr constant [29 x i8] c"cx24116_read_signal_strength\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"\016cx24116: %s: raw / cooked = 0x%04x / 0x%04x\0A\00", align 1
@__func__.cx24116_read_snr_esno = private unnamed_addr constant [22 x i8] c"cx24116_read_snr_esno\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"\016cx24116: %s: raw 0x%04x\0A\00", align 1
@cx24116_read_snr_pct.snr_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 6554, i32 13107, i32 19661, i32 26215, i32 32768, i32 39322, i32 45875, i32 52429, i32 58983, i32 65536, i32 72090, i32 78643, i32 85197, i32 91751, i32 98304], align 4
@__func__.cx24116_read_snr_pct = private unnamed_addr constant [21 x i8] c"cx24116_read_snr_pct\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"\016cx24116: %s: raw / cooked = 0x%02x / 0x%04x\0A\00", align 1
@__func__.cx24116_read_ucblocks = private unnamed_addr constant [22 x i8] c"cx24116_read_ucblocks\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"\016cx24116: %s(\00", align 1
@__func__.cx24116_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"cx24116_send_diseqc_msg\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"\0160x%02x\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"\016, \00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c") toneburst=%d\0A\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"\016cx24116: %s burst=%d\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"\016cx24116: %s() qstatus = 0x%02x\0A\00", align 1
@__func__.cx24116_wait_for_lnb = private unnamed_addr constant [21 x i8] c"cx24116_wait_for_lnb\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"\016cx24116: %s(): LNB not ready\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"\016cx24116: %s(%d) toneburst=%d\0A\00", align 1
@__func__.cx24116_diseqc_send_burst = private unnamed_addr constant [26 x i8] c"cx24116_diseqc_send_burst\00", align 1
@__func__.cx24116_set_tone = private unnamed_addr constant [17 x i8] c"cx24116_set_tone\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"\013%s: Invalid, tone=%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"\016cx24116: %s: setting tone on\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"\016cx24116: %s: setting tone off\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"\016cx24116: %s: %s\0A\00", align 1
@__func__.cx24116_set_voltage = private unnamed_addr constant [20 x i8] c"cx24116_set_voltage\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_13\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"SEC_VOLTAGE_18\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_esno_snr254, ptr @__UNIQUE_ID_esno_snrtype253, ptr @__UNIQUE_ID_license257, ptr @__UNIQUE_ID_toneburst252, ptr @__UNIQUE_ID_tonebursttype251, ptr @__ksymtab_cx24116_attach, ptr @__param_debug, ptr @__param_esno_snr, ptr @__param_toneburst], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cx24116_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24116_attach) #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1164) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cx24116_state, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %9, align 8
  %13 = tail call fastcc i32 @cx24116_readreg(ptr noundef nonnull %9, i8 noundef zeroext -1)
  %14 = shl i32 %13, 8
  %15 = tail call fastcc i32 @cx24116_readreg(ptr noundef nonnull %9, i8 noundef zeroext -2)
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %16, 1281
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %24

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.cx24116_state, ptr %9, i32 0, i32 2
  %22 = getelementptr inbounds %struct.cx24116_state, ptr %9, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %22, ptr noundef nonnull align 4 dereferenceable(544) @cx24116_ops, i32 544, i1 false)
  %23 = getelementptr inbounds %struct.cx24116_state, ptr %9, i32 0, i32 2, i32 3
  store ptr %9, ptr %23, align 8
  br label %24

24:                                               ; preds = %20, %18, %7
  %25 = phi ptr [ null, %18 ], [ %21, %20 ], [ null, %7 ]
  ret ptr %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.cx24116_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #12
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = zext i8 %1 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cx24116_readreg, i32 noundef %24, i32 noundef %21) #10
  br label %37

26:                                               ; preds = %2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = zext i8 %1 to i32
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %30, i32 noundef %32) #10
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %34, %23
  %38 = phi i32 [ %21, %23 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cx24116_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24116_release) #10
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_initfe(ptr noundef %0) #0 {
  %2 = alloca %struct.cx24116_cmd, align 1
  %3 = alloca %struct.cx24116_cmd, align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.cx24116_cmd, align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %10, i8 0, i32 31, i1 false), !annotation !8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_initfe) #10
  %17 = load i32, ptr @debug, align 4
  %18 = icmp sgt i32 %17, 1
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ %18, %15 ], [ false, %1 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i8 -32, ptr %8, align 2
  %21 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %22 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %22, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.cx24116_state, ptr %12, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %9, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %28, align 4
  br i1 %20, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 224, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %29, %19
  %32 = load ptr, ptr %12, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %9, i32 noundef 1) #12
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %33, i32 noundef 224, i32 noundef 0) #10
  br label %37

37:                                               ; preds = %35, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i8 -31, ptr %6, align 2
  %38 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %39 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = load ptr, ptr %23, align 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %7, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %44, align 4
  %45 = load i32, ptr @debug, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 225, i32 noundef 0) #10
  br label %49

49:                                               ; preds = %47, %37
  %50 = load ptr, ptr %12, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %7, i32 noundef 1) #12
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %51, i32 noundef 225, i32 noundef 0) #10
  br label %55

55:                                               ; preds = %53, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 -22, ptr %4, align 2
  %56 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %57 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %57, align 4, !annotation !8
  %58 = load ptr, ptr %23, align 4
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %5, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %62, align 4
  %63 = load i32, ptr @debug, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 234, i32 noundef 0) #10
  br label %67

67:                                               ; preds = %65, %55
  %68 = load ptr, ptr %12, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %5, i32 noundef 1) #12
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %69, i32 noundef 234, i32 noundef 0) #10
  br label %73

73:                                               ; preds = %71, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %74 = getelementptr inbounds %struct.cx24116_cmd, ptr %10, i32 0, i32 1
  store i8 54, ptr %74, align 1
  %75 = getelementptr inbounds %struct.cx24116_cmd, ptr %10, i32 0, i32 1, i32 1
  store i8 0, ptr %75, align 1
  store i8 2, ptr %10, align 1
  %76 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %10)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %73
  %79 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #12
  %80 = getelementptr inbounds i8, ptr %3, i32 9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %80, i8 0, i32 22, i1 false) #12, !annotation !8
  %81 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1
  store i8 32, ptr %81, align 1
  %82 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %82, align 1
  %83 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 2
  store i8 16, ptr %83, align 1
  %84 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 3
  store i8 0, ptr %84, align 1
  %85 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 4
  store i8 -113, ptr %85, align 1
  %86 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 5
  store i8 40, ptr %86, align 1
  %87 = load i32, ptr @toneburst, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 6
  store i8 %89, ptr %90, align 1
  %91 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 7
  store i8 1, ptr %91, align 1
  store i8 8, ptr %3, align 1
  %92 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %3) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #12
  br label %117

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.cx24116_state, ptr %79, i32 0, i32 7
  %97 = getelementptr inbounds %struct.cx24116_state, ptr %79, i32 0, i32 7, i32 1
  store i8 33, ptr %97, align 1
  %98 = getelementptr %struct.cx24116_state, ptr %79, i32 0, i32 7, i32 1, i32 1
  store i8 0, ptr %98, align 1
  %99 = getelementptr %struct.cx24116_state, ptr %79, i32 0, i32 7, i32 1, i32 2
  store i8 2, ptr %99, align 1
  %100 = getelementptr %struct.cx24116_state, ptr %79, i32 0, i32 7, i32 1, i32 3
  store i8 0, ptr %100, align 1
  %101 = getelementptr %struct.cx24116_state, ptr %79, i32 0, i32 7, i32 1, i32 4
  store i8 0, ptr %101, align 1
  %102 = getelementptr %struct.cx24116_state, ptr %79, i32 0, i32 7, i32 1, i32 5
  store i8 0, ptr %102, align 1
  store i8 6, ptr %96, align 2
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #12
  %103 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %103, i8 0, i32 28, i1 false) #12, !annotation !8
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.cx24116_set_voltage, ptr noundef nonnull @.str.60) #10
  br label %108

108:                                              ; preds = %106, %95
  %109 = call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %0) #12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  call void @msleep(i32 noundef 100) #12
  %112 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1
  store i8 34, ptr %112, align 1
  %113 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 1
  store i8 0, ptr %113, align 1
  store i8 2, ptr %2, align 1
  call void @msleep(i32 noundef 15) #12
  %114 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %2) #12
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i32 [ %114, %111 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #12
  br label %117

117:                                              ; preds = %115, %94, %73
  %118 = phi i32 [ %116, %115 ], [ %76, %73 ], [ %92, %94 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %10) #12
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_sleep(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.cx24116_cmd, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %8) #12
  %11 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %11, i8 0, i32 28, i1 false), !annotation !8
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_sleep) #10
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.cx24116_cmd, ptr %8, i32 0, i32 1
  store i8 54, ptr %17, align 1
  %18 = getelementptr inbounds %struct.cx24116_cmd, ptr %8, i32 0, i32 1, i32 1
  store i8 1, ptr %18, align 1
  store i8 2, ptr %8, align 1
  %19 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i8 -22, ptr %6, align 2
  %22 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -1, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %23 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %23, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.cx24116_state, ptr %10, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %7, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %29, align 4
  %30 = load i32, ptr @debug, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 234, i32 noundef 255) #10
  br label %34

34:                                               ; preds = %32, %21
  %35 = load ptr, ptr %10, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %7, i32 noundef 1) #12
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %36, i32 noundef 234, i32 noundef 255) #10
  br label %40

40:                                               ; preds = %38, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 -31, ptr %4, align 2
  %41 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 1, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %42 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %42, align 4, !annotation !8
  %43 = load ptr, ptr %24, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %5, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %47, align 4
  %48 = load i32, ptr @debug, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 225, i32 noundef 1) #10
  br label %52

52:                                               ; preds = %50, %40
  %53 = load ptr, ptr %10, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 1) #12
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %54, i32 noundef 225, i32 noundef 1) #10
  br label %58

58:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 -32, ptr %2, align 2
  %59 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %60 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %60, align 4, !annotation !8
  %61 = load ptr, ptr %24, align 4
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %3, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %65, align 4
  %66 = load i32, ptr @debug, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 224, i32 noundef 1) #10
  br label %70

70:                                               ; preds = %68, %58
  %71 = load ptr, ptr %10, align 4
  %72 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %3, i32 noundef 1) #12
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %72, i32 noundef 224, i32 noundef 1) #10
  br label %76

76:                                               ; preds = %74, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  br label %77

77:                                               ; preds = %76, %16
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %8) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  store i32 20, ptr %3, align 4
  br i1 %1, label %6, label %9

6:                                                ; preds = %5
  %7 = tail call i32 @cx24116_set_frontend(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6, %5
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc i32 @cx24116_readreg(ptr noundef %11, i8 noundef zeroext -99) #12
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = and i32 %12, 15
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.cx24116_read_status, i32 noundef %16) #10
  br label %18

18:                                               ; preds = %15, %9
  %19 = and i32 %12, 7
  %20 = and i32 %12, 8
  %21 = icmp eq i32 %20, 0
  %22 = or i32 %19, 24
  %23 = select i1 %21, i32 %19, i32 %22
  store i32 %23, ptr %4, align 4
  br label %24

24:                                               ; preds = %18, %6
  %25 = phi i32 [ %7, %6 ], [ 0, %18 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cx24116_get_algo(ptr nocapture noundef readnone %0) #8 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_set_frontend(ptr noundef %0) #0 {
  %2 = alloca %struct.cx24116_cmd, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %2, i8 0, i32 31, i1 false), !annotation !8
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_set_frontend) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %75 [
    i32 5, label %13
    i32 6, label %37
  ]

13:                                               ; preds = %10
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.cx24116_set_frontend) #10
  br label %18

18:                                               ; preds = %16, %13
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %367, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %20) #10
  br label %367

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 11
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %80, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %367, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %30) #10
  br label %367

37:                                               ; preds = %10
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cx24116_set_frontend) #10
  br label %42

42:                                               ; preds = %40, %37
  %43 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %45 [
    i32 9, label %50
    i32 0, label %50
  ]

45:                                               ; preds = %42
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %367, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %44) #10
  br label %367

50:                                               ; preds = %42, %42
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %57 [
    i32 2, label %53
    i32 1, label %62
    i32 0, label %56
  ]

53:                                               ; preds = %50
  %54 = icmp eq i32 %44, 0
  %55 = select i1 %54, i8 0, i8 64
  br label %62

56:                                               ; preds = %50
  br label %62

57:                                               ; preds = %50
  %58 = load i32, ptr @debug, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %367, label %60

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %52) #10
  br label %367

62:                                               ; preds = %56, %53, %50
  %63 = phi i8 [ 64, %56 ], [ %55, %53 ], [ 0, %50 ]
  %64 = phi i32 [ 1, %56 ], [ 2, %53 ], [ %52, %50 ]
  %65 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 11
  store i8 %63, ptr %65, align 1
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %67 = load i32, ptr %66, align 4
  switch i32 %67, label %70 [
    i32 1, label %80
    i32 2, label %68
    i32 0, label %69
  ]

68:                                               ; preds = %62
  br label %80

69:                                               ; preds = %62
  br label %80

70:                                               ; preds = %62
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %367, label %73

73:                                               ; preds = %70
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %67) #10
  br label %367

75:                                               ; preds = %10
  %76 = load i32, ptr @debug, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %367, label %78

78:                                               ; preds = %75
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %12) #10
  br label %367

80:                                               ; preds = %69, %68, %62, %27
  %81 = phi i8 [ 1, %68 ], [ 2, %69 ], [ 2, %27 ], [ 0, %62 ]
  %82 = phi i32 [ %64, %68 ], [ %64, %69 ], [ 1, %27 ], [ %64, %62 ]
  %83 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 12
  store i8 %81, ptr %83, align 4
  %84 = load i32, ptr %11, align 4
  %85 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4
  %86 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 4
  store i32 %84, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 5
  store i32 %88, ptr %89, align 4
  %90 = load i32, ptr %5, align 4
  store i32 %90, ptr %85, align 4
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 6
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 7
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr @debug, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %80
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.cx24116_set_inversion, i32 noundef %98) #10
  br label %103

103:                                              ; preds = %101, %80
  %104 = icmp ult i32 %98, 3
  br i1 %104, label %105, label %367

105:                                              ; preds = %103
  %106 = trunc i32 %98 to i24
  %107 = shl i24 %106, 3
  %108 = lshr i24 787456, %107
  %109 = trunc i24 %108 to i8
  %110 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 10
  store i8 %109, ptr %110, align 2
  %111 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 2
  store i32 %98, ptr %111, align 4
  %112 = load i32, ptr %11, align 4
  %113 = load i32, ptr %87, align 4
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = load i32, ptr @debug, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %105
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.cx24116_set_fec, i32 noundef %113, i32 noundef %115) #10
  %120 = load i32, ptr @debug, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.cx24116_lookup_fecmod, i32 noundef %113, i32 noundef %115) #10
  br label %124

124:                                              ; preds = %122, %118, %105
  br label %125

125:                                              ; preds = %138, %124
  %126 = phi i32 [ %139, %138 ], [ 0, %124 ]
  %127 = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %126
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, %112
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %126, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, %113
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %126, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, %115
  br i1 %137, label %141, label %138

138:                                              ; preds = %134, %130, %125
  %139 = add nuw nsw i32 %126, 1
  %140 = icmp eq i32 %139, 24
  br i1 %140, label %367, label %125

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 3
  store i32 %115, ptr %142, align 4
  %143 = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %126, i32 4
  %144 = load i8, ptr %143, align 1
  %145 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 8
  store i8 %144, ptr %145, align 4
  %146 = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %126, i32 3
  %147 = load i8, ptr %146, align 4
  %148 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 9
  store i8 %147, ptr %148, align 1
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %153 = load i32, ptr %152, align 4
  br label %164

154:                                              ; preds = %141
  %155 = zext i8 %147 to i32
  %156 = zext i8 %144 to i32
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.cx24116_set_fec, i32 noundef %155, i32 noundef %156) #10
  %158 = load i32, ptr @debug, align 4
  %159 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %158, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %154
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.cx24116_set_symbolrate, i32 noundef %160) #10
  br label %164

164:                                              ; preds = %162, %154, %151
  %165 = phi i32 [ %153, %151 ], [ %160, %162 ], [ %160, %154 ]
  %166 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 2, i32 1, i32 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = icmp ult i32 %167, %165
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 2, i32 1, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = icmp ugt i32 %171, %165
  br i1 %172, label %173, label %176

173:                                              ; preds = %169, %164
  %174 = load i32, ptr @debug, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %367, label %184

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 4, i32 1
  store i32 %165, ptr %177, align 4
  %178 = load i32, ptr @debug, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 4
  %182 = getelementptr inbounds %struct.cx24116_state, ptr %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.cx24116_state, ptr %181, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %182, ptr noundef align 4 dereferenceable(40) %183, i32 40, i1 false) #12
  br label %258

184:                                              ; preds = %173
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.cx24116_set_symbolrate, i32 noundef %165) #10
  br label %367

186:                                              ; preds = %176
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.cx24116_set_symbolrate, i32 noundef %165) #10
  %188 = load i32, ptr @debug, align 4
  %189 = load ptr, ptr %3, align 4
  %190 = getelementptr inbounds %struct.cx24116_state, ptr %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.cx24116_state, ptr %189, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %190, ptr noundef align 4 dereferenceable(40) %191, i32 40, i1 false) #12
  %192 = icmp eq i32 %188, 0
  br i1 %192, label %258, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 4
  %195 = load i32, ptr %194, align 4
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %195) #10
  %197 = load i32, ptr @debug, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %258, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 5
  %201 = load i32, ptr %200, align 4
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %201) #10
  %203 = load i32, ptr @debug, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %258, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %207) #10
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %258, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 11
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %213, i32 noundef %216) #10
  %218 = load i32, ptr @debug, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %258, label %220

220:                                              ; preds = %211
  %221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %82) #10
  %222 = load i32, ptr @debug, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %258, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 7
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 12
  %228 = load i8, ptr %227, align 4
  %229 = zext i8 %228 to i32
  %230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %226, i32 noundef %229) #10
  %231 = load i32, ptr @debug, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %258, label %233

233:                                              ; preds = %224
  %234 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 1
  %235 = load i32, ptr %234, align 4
  %236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %235) #10
  %237 = load i32, ptr @debug, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %258, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 3
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 9
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 8
  %246 = load i8, ptr %245, align 4
  %247 = zext i8 %246 to i32
  %248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %241, i32 noundef %244, i32 noundef %247) #10
  %249 = load i32, ptr @debug, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %239
  %252 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 2
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 10
  %255 = load i8, ptr %254, align 2
  %256 = zext i8 %255 to i32
  %257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cx24116_set_frontend, i32 noundef %253, i32 noundef %256) #10
  br label %258

258:                                              ; preds = %251, %239, %233, %224, %220, %211, %205, %199, %193, %186, %180
  %259 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.cx24116_config, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %258
  %265 = tail call i32 %262(ptr noundef %0, i32 noundef 0) #12
  br label %266

266:                                              ; preds = %264, %258
  %267 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1
  store i8 21, ptr %267, align 1
  %268 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 1
  store i8 1, ptr %268, align 1
  store i8 2, ptr %2, align 1
  %269 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %2)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %367

271:                                              ; preds = %266
  store i8 17, ptr %267, align 1
  %272 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = lshr i32 %273, 16
  %275 = trunc i32 %274 to i8
  store i8 %275, ptr %268, align 1
  %276 = lshr i32 %273, 8
  %277 = trunc i32 %276 to i8
  %278 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 2
  store i8 %277, ptr %278, align 1
  %279 = trunc i32 %273 to i8
  %280 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 3
  store i8 %279, ptr %280, align 1
  %281 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 1
  %282 = load i32, ptr %281, align 4
  %283 = udiv i32 %282, 1000
  %284 = lshr i32 %283, 8
  %285 = trunc i32 %284 to i8
  %286 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 4
  store i8 %285, ptr %286, align 1
  %287 = trunc i32 %283 to i8
  %288 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 5
  store i8 %287, ptr %288, align 1
  %289 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 10
  %290 = load i8, ptr %289, align 2
  %291 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 6
  store i8 %290, ptr %291, align 1
  %292 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 8
  %293 = load i8, ptr %292, align 4
  %294 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 11
  %295 = load i8, ptr %294, align 1
  %296 = or i8 %295, %293
  %297 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 7
  store i8 %296, ptr %297, align 1
  %298 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 8
  store i8 19, ptr %298, align 1
  %299 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 9
  store i8 -120, ptr %299, align 1
  %300 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 10
  store i8 0, ptr %300, align 1
  %301 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 11
  store i8 0, ptr %301, align 1
  %302 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 12
  %303 = load i8, ptr %302, align 4
  %304 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 12
  store i8 %303, ptr %304, align 1
  %305 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 9
  %306 = load i8, ptr %305, align 1
  %307 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 13
  store i8 %306, ptr %307, align 1
  %308 = icmp ugt i32 %282, 30000000
  %309 = select i1 %308, i32 68, i32 70
  %310 = zext i1 %308 to i32
  %311 = select i1 %308, i8 4, i8 6
  %312 = zext i1 %308 to i8
  %313 = select i1 %308, i8 119, i8 -6
  %314 = select i1 %308, i8 54, i8 36
  tail call fastcc void @cx24116_writereg(ptr noundef %4, i32 noundef 243, i32 noundef %309)
  tail call fastcc void @cx24116_writereg(ptr noundef %4, i32 noundef 249, i32 noundef %310)
  %315 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 14
  store i8 %311, ptr %315, align 1
  %316 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 15
  store i8 0, ptr %316, align 1
  %317 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 16
  store i8 %312, ptr %317, align 1
  %318 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 17
  store i8 %313, ptr %318, align 1
  %319 = getelementptr inbounds %struct.cx24116_cmd, ptr %2, i32 0, i32 1, i32 18
  store i8 %314, ptr %319, align 1
  store i8 19, ptr %2, align 1
  %320 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 3, i32 6
  br label %321

321:                                              ; preds = %363, %271
  %322 = phi i32 [ %82, %271 ], [ 1, %363 ]
  %323 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -99)
  %324 = and i32 %323, 192
  tail call fastcc void @cx24116_writereg(ptr noundef %4, i32 noundef 157, i32 noundef %324)
  %325 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %2)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %365

327:                                              ; preds = %349, %321
  %328 = phi i32 [ %350, %349 ], [ 0, %321 ]
  %329 = load ptr, ptr %3, align 4
  %330 = tail call fastcc i32 @cx24116_readreg(ptr noundef %329, i8 noundef zeroext -99) #12
  %331 = load i32, ptr @debug, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %327
  %334 = and i32 %330, 15
  %335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.cx24116_read_status, i32 noundef %334) #10
  br label %336

336:                                              ; preds = %333, %327
  %337 = and i32 %330, 1
  %338 = and i32 %330, 8
  %339 = icmp eq i32 %338, 0
  %340 = or i32 %330, 8
  %341 = select i1 %339, i32 %337, i32 %340
  %342 = and i32 %341, 9
  %343 = icmp eq i32 %342, 9
  br i1 %343, label %344, label %349

344:                                              ; preds = %336
  %345 = load i32, ptr @debug, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %365, label %347

347:                                              ; preds = %344
  %348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cx24116_set_frontend) #10
  br label %365

349:                                              ; preds = %336
  tail call void @msleep(i32 noundef 10) #12
  %350 = add nuw nsw i32 %328, 1
  %351 = icmp eq i32 %350, 50
  br i1 %351, label %352, label %327

352:                                              ; preds = %349
  %353 = load i32, ptr @debug, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %352
  %356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.cx24116_set_frontend) #10
  br label %357

357:                                              ; preds = %355, %352
  %358 = load i32, ptr %320, align 4
  %359 = icmp eq i32 %358, 2
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load i8, ptr %297, align 1
  %362 = xor i8 %361, 64
  store i8 %362, ptr %297, align 1
  br label %363

363:                                              ; preds = %360, %357
  %364 = icmp eq i32 %322, 1
  br i1 %364, label %365, label %321

365:                                              ; preds = %363, %347, %344, %321
  store i8 21, ptr %267, align 1
  store i8 0, ptr %268, align 1
  store i8 2, ptr %2, align 1
  %366 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %2)
  br label %367

367:                                              ; preds = %365, %266, %184, %173, %138, %103, %78, %75, %73, %70, %60, %57, %48, %45, %35, %32, %25, %22
  %368 = phi i32 [ %366, %365 ], [ -95, %25 ], [ -95, %22 ], [ -95, %35 ], [ -95, %32 ], [ -95, %48 ], [ -95, %45 ], [ -95, %60 ], [ -95, %57 ], [ -95, %73 ], [ -95, %70 ], [ -95, %78 ], [ -95, %75 ], [ -95, %184 ], [ %269, %266 ], [ -22, %103 ], [ -95, %173 ], [ -95, %138 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #12
  ret i32 %368
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -99)
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 15
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.cx24116_read_status, i32 noundef %9) #10
  br label %11

11:                                               ; preds = %8, %2
  %12 = and i32 %5, 7
  %13 = and i32 %5, 8
  %14 = icmp eq i32 %13, 0
  %15 = or i32 %12, 24
  %16 = select i1 %14, i32 %12, i32 %15
  store i32 %16, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_read_ber) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -58)
  %11 = shl i32 %10, 24
  %12 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -57)
  %13 = shl i32 %12, 16
  %14 = or i32 %13, %11
  %15 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -56)
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -55)
  %19 = or i32 %17, %18
  store i32 %19, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_read_signal_strength(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.cx24116_cmd, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #12
  %6 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, i8 0, i32 29, i1 false), !annotation !8
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_read_signal_strength) #10
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1
  store i8 25, ptr %12, align 1
  store i8 1, ptr %3, align 1
  %13 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @cx24116_readreg(ptr noundef %5, i8 noundef zeroext -99)
  %17 = and i32 %16, 192
  %18 = tail call fastcc i32 @cx24116_readreg(ptr noundef %5, i8 noundef zeroext -98)
  %19 = shl i32 %18, 6
  %20 = and i32 %19, 65472
  %21 = or i32 %20, %17
  %22 = trunc i32 %21 to i16
  %23 = sub i16 0, %22
  store i16 %23, ptr %1, align 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = zext i16 %23 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.cx24116_read_signal_strength, i32 noundef %21, i32 noundef %27) #10
  br label %29

29:                                               ; preds = %26, %15, %11
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load i32, ptr @esno_snr, align 4
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %4, label %9, label %23

9:                                                ; preds = %2
  br i1 %8, label %12, label %10

10:                                               ; preds = %9
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_read_snr_esno) #10
  br label %12

12:                                               ; preds = %10, %9
  %13 = tail call fastcc i32 @cx24116_readreg(ptr noundef %6, i8 noundef zeroext -93) #12
  %14 = shl i32 %13, 8
  %15 = tail call fastcc i32 @cx24116_readreg(ptr noundef %6, i8 noundef zeroext -43) #12
  %16 = or i32 %14, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %1, align 2
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %12
  %21 = and i32 %16, 65535
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.cx24116_read_snr_esno, i32 noundef %21) #10
  br label %48

23:                                               ; preds = %2
  br i1 %8, label %26, label %24

24:                                               ; preds = %23
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_read_snr_pct) #10
  br label %26

26:                                               ; preds = %24, %23
  %27 = tail call fastcc i32 @cx24116_readreg(ptr noundef %6, i8 noundef zeroext -43) #12
  %28 = and i32 %27, 255
  %29 = icmp ugt i32 %28, 159
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = lshr i32 %27, 4
  %32 = and i32 %31, 15
  %33 = getelementptr [16 x i32], ptr @cx24116_read_snr_pct.snr_tab, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %27, 15
  %36 = getelementptr [16 x i32], ptr @cx24116_read_snr_pct.snr_tab, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 4
  %39 = add i32 %38, %34
  %40 = trunc i32 %39 to i16
  br label %41

41:                                               ; preds = %30, %26
  %42 = phi i16 [ %40, %30 ], [ -1, %26 ]
  store i16 %42, ptr %1, align 2
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = zext i16 %42 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.cx24116_read_snr_pct, i32 noundef %28, i32 noundef %46) #10
  br label %48

48:                                               ; preds = %45, %41, %20, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_read_ucblocks) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -54)
  %11 = shl i32 %10, 8
  %12 = tail call fastcc i32 @cx24116_readreg(ptr noundef %4, i8 noundef zeroext -53)
  %13 = or i32 %11, %12
  store i32 %13, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_send_diseqc_msg(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ugt i8 %6, 6
  br i1 %7, label %92, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.cx24116_send_diseqc_msg) #10
  %13 = load i8, ptr %5, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %29, %11
  %16 = phi i32 [ %21, %29 ], [ 0, %11 ]
  %17 = getelementptr [6 x i8], ptr %1, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %19) #10
  %21 = add nuw nsw i32 %16, 1
  %22 = load i8, ptr %5, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #10
  %27 = load i8, ptr %5, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %25, %15
  %30 = phi i32 [ %28, %25 ], [ %23, %15 ]
  %31 = icmp ult i32 %21, %30
  br i1 %31, label %15, label %32

32:                                               ; preds = %29, %11
  %33 = load i32, ptr @toneburst, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %33) #10
  %35 = load i8, ptr %5, align 1
  br label %36

36:                                               ; preds = %32, %8
  %37 = phi i8 [ %35, %32 ], [ %6, %8 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %39, %36
  %40 = phi i32 [ %45, %39 ], [ 0, %36 ]
  %41 = getelementptr [6 x i8], ptr %1, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = add nuw nsw i32 %40, 6
  %44 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 %43
  store i8 %42, ptr %44, align 1
  %45 = add nuw nsw i32 %40, 1
  %46 = load i8, ptr %5, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %39, label %49

49:                                               ; preds = %39, %36
  %50 = phi i8 [ 0, %36 ], [ %46, %39 ]
  %51 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 7
  %52 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 5
  store i8 %50, ptr %52, align 1
  %53 = add i8 %50, 6
  store i8 %53, ptr %51, align 2
  %54 = load i32, ptr @toneburst, align 4
  switch i32 %54, label %78 [
    i32 2, label %92
    i32 0, label %55
    i32 1, label %57
  ]

55:                                               ; preds = %49
  %56 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 1
  store i8 0, ptr %56, align 1
  br label %78

57:                                               ; preds = %49
  %58 = load i8, ptr %5, align 1
  %59 = icmp ugt i8 %58, 3
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = getelementptr [6 x i8], ptr %1, i32 0, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 56
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr [6 x i8], ptr %1, i32 0, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = lshr i8 %66, 2
  %68 = and i8 %67, 1
  %69 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 1
  store i8 %68, ptr %69, align 1
  br label %70

70:                                               ; preds = %64, %60, %57
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.cx24116_send_diseqc_msg, i32 noundef %76) #10
  br label %78

78:                                               ; preds = %73, %70, %55, %49
  %79 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %0)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  tail call void @msleep(i32 noundef 100) #12
  %82 = tail call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef %51)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i8, ptr %52, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 4
  %88 = load i32, ptr @toneburst, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 30, i32 60
  %91 = add nuw nsw i32 %90, %87
  tail call void @msleep(i32 noundef %91) #12
  br label %92

92:                                               ; preds = %84, %81, %78, %49, %2
  %93 = phi i32 [ 0, %84 ], [ -22, %2 ], [ 0, %49 ], [ %79, %78 ], [ %82, %81 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_diseqc_send_burst(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @toneburst, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.cx24116_diseqc_send_burst, i32 noundef %1, i32 noundef %8) #10
  br label %10

10:                                               ; preds = %7, %2
  switch i32 %1, label %30 [
    i32 0, label %12
    i32 1, label %11
  ]

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i8 [ 1, %11 ], [ 0, %10 ]
  %14 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 1
  store i8 %13, ptr %14, align 1
  %15 = load i32, ptr @toneburst, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  tail call void @msleep(i32 noundef 100) #12
  %21 = getelementptr inbounds %struct.cx24116_state, ptr %4, i32 0, i32 7
  %22 = tail call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr %struct.cx24116_state, ptr %4, i32 0, i32 7, i32 1, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 4
  %29 = add nuw nsw i32 %28, 60
  tail call void @msleep(i32 noundef %29) #12
  br label %30

30:                                               ; preds = %24, %20, %17, %12, %10
  %31 = phi i32 [ 0, %24 ], [ -22, %10 ], [ 0, %12 ], [ %18, %17 ], [ %22, %20 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_set_tone(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24116_cmd, align 1
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #12
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %4, i8 0, i32 27, i1 false), !annotation !8
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.cx24116_set_tone, i32 noundef %1) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp ugt i32 %1, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.cx24116_set_tone, i32 noundef %1) #10
  br label %35

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  tail call void @msleep(i32 noundef 15) #12
  %17 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1
  store i8 35, ptr %17, align 1
  %18 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 2
  store i8 0, ptr %19, align 1
  switch i32 %1, label %33 [
    i32 0, label %20
    i32 1, label %23
  ]

20:                                               ; preds = %16
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %26

23:                                               ; preds = %16
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23, %20
  %27 = phi ptr [ @.str.57, %20 ], [ @.str.58, %23 ]
  %28 = phi i8 [ 1, %20 ], [ 0, %23 ]
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %27, ptr noundef nonnull @__func__.cx24116_set_tone) #10
  br label %30

30:                                               ; preds = %26, %23, %20
  %31 = phi i8 [ 1, %20 ], [ 0, %23 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 3
  store i8 %31, ptr %32, align 1
  br label %33

33:                                               ; preds = %30, %16
  store i8 4, ptr %3, align 1
  tail call void @msleep(i32 noundef 15) #12
  %34 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  br label %35

35:                                               ; preds = %33, %13, %11
  %36 = phi i32 [ -22, %11 ], [ %34, %33 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #12
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cx24116_set_voltage(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.cx24116_cmd, align 1
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #12
  %4 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %4, i8 0, i32 28, i1 false), !annotation !8
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = icmp eq i32 %1, 1
  %10 = select i1 %9, ptr @.str.61, ptr @.str.62
  %11 = select i1 %8, ptr @.str.60, ptr %10
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.cx24116_set_voltage, ptr noundef nonnull %11) #10
  br label %13

13:                                               ; preds = %7, %2
  %14 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  tail call void @msleep(i32 noundef 100) #12
  %17 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1
  store i8 34, ptr %17, align 1
  %18 = icmp eq i32 %1, 1
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.cx24116_cmd, ptr %3, i32 0, i32 1, i32 1
  store i8 %19, ptr %20, align 1
  store i8 2, ptr %3, align 1
  tail call void @msleep(i32 noundef 15) #12
  %21 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %3)
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i32 [ %21, %16 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #12
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cx24116_writereg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %4, align 2
  %7 = getelementptr inbounds i8, ptr %4, i32 1
  %8 = trunc i32 %2 to i8
  store i8 %8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.cx24116_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %16, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %1, i32 noundef %2) #10
  br label %21

21:                                               ; preds = %19, %3
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 1) #12
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %23, i32 noundef %1, i32 noundef %2) #10
  br label %27

27:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !8
  br label %20

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_cmd_execute) #10
  %15 = load i32, ptr @debug, align 4
  %16 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !8
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cx24116_firmware_ondemand) #10
  br label %20

20:                                               ; preds = %18, %13, %12
  %21 = phi ptr [ %9, %12 ], [ %16, %18 ], [ %16, %13 ]
  %22 = tail call fastcc i32 @cx24116_readreg(ptr noundef %21, i8 noundef zeroext 32) #12
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cx24116_state, ptr %21, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cx24116_firmware_ondemand, ptr noundef nonnull @.str.11) #10
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @request_firmware(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, ptr noundef %32) #12
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cx24116_firmware_ondemand) #10
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cx24116_firmware_ondemand) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %121

38:                                               ; preds = %28
  store i8 1, ptr %25, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = call fastcc i32 @cx24116_load_firmware(ptr noundef %0, ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cx24116_firmware_ondemand) #10
  %44 = load ptr, ptr %7, align 4
  call void @release_firmware(ptr noundef %44) #12
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cx24116_firmware_ondemand, ptr noundef nonnull @.str.17) #10
  store i8 0, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %121

46:                                               ; preds = %24, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %50

47:                                               ; preds = %38
  %48 = load ptr, ptr %7, align 4
  call void @release_firmware(ptr noundef %48) #12
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cx24116_firmware_ondemand, ptr noundef nonnull @.str.16) #10
  store i8 0, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i8, ptr %1, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %5, i32 1
  %55 = getelementptr inbounds i8, ptr %6, i32 4
  %56 = getelementptr inbounds %struct.cx24116_state, ptr %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  br label %59

59:                                               ; preds = %87, %53
  %60 = phi i32 [ 0, %53 ], [ %88, %87 ]
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.cx24116_cmd, ptr %1, i32 0, i32 1, i32 %60
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cx24116_cmd_execute, i32 noundef %60, i32 noundef %66) #10
  %68 = load i32, ptr @debug, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i32 [ %68, %63 ], [ 0, %59 ]
  %71 = getelementptr %struct.cx24116_cmd, ptr %1, i32 0, i32 1, i32 %60
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  %74 = trunc i32 %60 to i8
  store i8 %74, ptr %5, align 2
  store i8 %72, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  store i32 0, ptr %55, align 4, !annotation !8
  %75 = load ptr, ptr %56, align 4
  %76 = load i8, ptr %75, align 4
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %6, align 4
  store i16 0, ptr %57, align 2
  store i16 2, ptr %55, align 4
  store ptr %5, ptr %58, align 4
  %78 = icmp sgt i32 %70, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %60, i32 noundef %73) #10
  br label %81

81:                                               ; preds = %79, %69
  %82 = load ptr, ptr %9, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %6, i32 noundef 1) #12
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %83, i32 noundef %60, i32 noundef %73) #10
  br label %87

87:                                               ; preds = %85, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %88 = add nuw nsw i32 %60, 1
  %89 = load i8, ptr %1, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %59, label %92

92:                                               ; preds = %87, %50
  %93 = phi i32 [ 0, %50 ], [ %88, %87 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 31, ptr %3, align 2
  %94 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 1, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %95 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %95, align 4, !annotation !8
  %96 = getelementptr inbounds %struct.cx24116_state, ptr %9, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %4, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %101, align 4
  %102 = load i32, ptr @debug, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 31, i32 noundef 1) #10
  br label %106

106:                                              ; preds = %104, %92
  %107 = load ptr, ptr %9, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %4, i32 noundef 1) #12
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %108, i32 noundef 31, i32 noundef 1) #10
  br label %112

112:                                              ; preds = %110, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %113 = call i32 @llvm.smax.i32(i32 %93, i32 65)
  br label %114

114:                                              ; preds = %118, %112
  %115 = phi i32 [ %93, %112 ], [ %119, %118 ]
  %116 = call fastcc i32 @cx24116_readreg(ptr noundef %9, i8 noundef zeroext 31)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  call void @msleep(i32 noundef 10) #12
  %119 = add nuw nsw i32 %115, 1
  %120 = icmp eq i32 %115, %113
  br i1 %120, label %121, label %114

121:                                              ; preds = %118, %42, %36
  %122 = phi ptr [ @.str.7, %36 ], [ @.str.7, %42 ], [ @.str.9, %118 ]
  %123 = phi i32 [ %33, %36 ], [ %40, %42 ], [ -121, %118 ]
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %122, ptr noundef nonnull @__func__.cx24116_cmd_execute) #10
  br label %125

125:                                              ; preds = %121, %114
  %126 = phi i32 [ %123, %121 ], [ 0, %114 ]
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_load_firmware(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
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
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca %struct.cx24116_cmd, align 1
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %36) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %36, i8 0, i32 31, i1 false), !annotation !8
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %2
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cx24116_load_firmware) #10
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %1, align 4
  %47 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add i32 %46, -2
  %55 = getelementptr i8, ptr %48, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add i32 %46, -1
  %59 = getelementptr i8, ptr %48, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %46, i32 noundef %50, i32 noundef %53, i32 noundef %57, i32 noundef %61) #10
  br label %63

63:                                               ; preds = %45, %41, %2
  %64 = getelementptr inbounds %struct.cx24116_state, ptr %38, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.cx24116_config, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = tail call i32 %67(ptr noundef %0) #12
  br label %71

71:                                               ; preds = %69, %63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #12
  store i8 -27, ptr %34, align 2
  %72 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 0, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #12
  %73 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %73, align 4, !annotation !8
  %74 = load ptr, ptr %64, align 4
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %35, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %77, align 2
  store i16 2, ptr %73, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %78, align 4
  %79 = load i32, ptr @debug, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 229, i32 noundef 0) #10
  br label %83

83:                                               ; preds = %81, %71
  %84 = load ptr, ptr %38, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %35, i32 noundef 1) #12
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %85, i32 noundef 229, i32 noundef 0) #10
  br label %89

89:                                               ; preds = %87, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #12
  store i8 -15, ptr %32, align 2
  %90 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 8, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #12
  %91 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %91, align 4, !annotation !8
  %92 = load ptr, ptr %64, align 4
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %33, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %95, align 2
  store i16 2, ptr %91, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %96, align 4
  %97 = load i32, ptr @debug, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 241, i32 noundef 8) #10
  br label %101

101:                                              ; preds = %99, %89
  %102 = load ptr, ptr %38, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %33, i32 noundef 1) #12
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %103, i32 noundef 241, i32 noundef 8) #10
  br label %107

107:                                              ; preds = %105, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #12
  store i8 -14, ptr %30, align 2
  %108 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 19, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #12
  %109 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %109, align 4, !annotation !8
  %110 = load ptr, ptr %64, align 4
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %31, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %113, align 2
  store i16 2, ptr %109, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %114, align 4
  %115 = load i32, ptr @debug, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 242, i32 noundef 19) #10
  br label %119

119:                                              ; preds = %117, %107
  %120 = load ptr, ptr %38, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %31, i32 noundef 1) #12
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %121, i32 noundef 242, i32 noundef 19) #10
  br label %125

125:                                              ; preds = %123, %119
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #12
  store i8 -32, ptr %28, align 2
  %126 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 3, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #12
  %127 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %127, align 4, !annotation !8
  %128 = load ptr, ptr %64, align 4
  %129 = load i8, ptr %128, align 4
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %29, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %131, align 2
  store i16 2, ptr %127, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %132, align 4
  %133 = load i32, ptr @debug, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 224, i32 noundef 3) #10
  br label %137

137:                                              ; preds = %135, %125
  %138 = load ptr, ptr %38, align 4
  %139 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %29, i32 noundef 1) #12
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %139, i32 noundef 224, i32 noundef 3) #10
  br label %143

143:                                              ; preds = %141, %137
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #12
  store i8 -32, ptr %26, align 2
  %144 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 0, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #12
  %145 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %145, align 4, !annotation !8
  %146 = load ptr, ptr %64, align 4
  %147 = load i8, ptr %146, align 4
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %27, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %149, align 2
  store i16 2, ptr %145, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %150, align 4
  %151 = load i32, ptr @debug, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 224, i32 noundef 0) #10
  br label %155

155:                                              ; preds = %153, %143
  %156 = load ptr, ptr %38, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %27, i32 noundef 1) #12
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %157, i32 noundef 224, i32 noundef 0) #10
  br label %161

161:                                              ; preds = %159, %155
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #12
  store i8 -13, ptr %24, align 2
  %162 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 70, ptr %162, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #12
  %163 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %163, align 4, !annotation !8
  %164 = load ptr, ptr %64, align 4
  %165 = load i8, ptr %164, align 4
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %25, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %167, align 2
  store i16 2, ptr %163, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %168, align 4
  %169 = load i32, ptr @debug, align 4
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 243, i32 noundef 70) #10
  br label %173

173:                                              ; preds = %171, %161
  %174 = load ptr, ptr %38, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %25, i32 noundef 1) #12
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %175, i32 noundef 243, i32 noundef 70) #10
  br label %179

179:                                              ; preds = %177, %173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i8 -7, ptr %22, align 2
  %180 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 0, ptr %180, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #12
  %181 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 0, ptr %181, align 4, !annotation !8
  %182 = load ptr, ptr %64, align 4
  %183 = load i8, ptr %182, align 4
  %184 = zext i8 %183 to i16
  store i16 %184, ptr %23, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %185, align 2
  store i16 2, ptr %181, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %186, align 4
  %187 = load i32, ptr @debug, align 4
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 249, i32 noundef 0) #10
  br label %191

191:                                              ; preds = %189, %179
  %192 = load ptr, ptr %38, align 4
  %193 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %23, i32 noundef 1) #12
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %193, i32 noundef 249, i32 noundef 0) #10
  br label %197

197:                                              ; preds = %195, %191
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #12
  store i8 -16, ptr %20, align 2
  %198 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 3, ptr %198, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #12
  %199 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 0, ptr %199, align 4, !annotation !8
  %200 = load ptr, ptr %64, align 4
  %201 = load i8, ptr %200, align 4
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %21, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %203, align 2
  store i16 2, ptr %199, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %204, align 4
  %205 = load i32, ptr @debug, align 4
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %207, label %209

207:                                              ; preds = %197
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 240, i32 noundef 3) #10
  br label %209

209:                                              ; preds = %207, %197
  %210 = load ptr, ptr %38, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %21, i32 noundef 1) #12
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %211, i32 noundef 240, i32 noundef 3) #10
  br label %215

215:                                              ; preds = %213, %209
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i8 -12, ptr %18, align 2
  %216 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 -127, ptr %216, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  %217 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 0, ptr %217, align 4, !annotation !8
  %218 = load ptr, ptr %64, align 4
  %219 = load i8, ptr %218, align 4
  %220 = zext i8 %219 to i16
  store i16 %220, ptr %19, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %221, align 2
  store i16 2, ptr %217, align 4
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %222, align 4
  %223 = load i32, ptr @debug, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 244, i32 noundef 129) #10
  br label %227

227:                                              ; preds = %225, %215
  %228 = load ptr, ptr %38, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %19, i32 noundef 1) #12
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %229, i32 noundef 244, i32 noundef 129) #10
  br label %233

233:                                              ; preds = %231, %227
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i8 -11, ptr %16, align 2
  %234 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 0, ptr %234, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %235 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 0, ptr %235, align 4, !annotation !8
  %236 = load ptr, ptr %64, align 4
  %237 = load i8, ptr %236, align 4
  %238 = zext i8 %237 to i16
  store i16 %238, ptr %17, align 4
  %239 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %239, align 2
  store i16 2, ptr %235, align 4
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %240, align 4
  %241 = load i32, ptr @debug, align 4
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %233
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 245, i32 noundef 0) #10
  br label %245

245:                                              ; preds = %243, %233
  %246 = load ptr, ptr %38, align 4
  %247 = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %17, i32 noundef 1) #12
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %247, i32 noundef 245, i32 noundef 0) #10
  br label %251

251:                                              ; preds = %249, %245
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 -10, ptr %14, align 2
  %252 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 0, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %253 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 0, ptr %253, align 4, !annotation !8
  %254 = load ptr, ptr %64, align 4
  %255 = load i8, ptr %254, align 4
  %256 = zext i8 %255 to i16
  store i16 %256, ptr %15, align 4
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %257, align 2
  store i16 2, ptr %253, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %258, align 4
  %259 = load i32, ptr @debug, align 4
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %263

261:                                              ; preds = %251
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 246, i32 noundef 0) #10
  br label %263

263:                                              ; preds = %261, %251
  %264 = load ptr, ptr %38, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %15, i32 noundef 1) #12
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %265, i32 noundef 246, i32 noundef 0) #10
  br label %269

269:                                              ; preds = %267, %263
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %270 = load ptr, ptr %64, align 4
  %271 = getelementptr inbounds %struct.cx24116_config, ptr %270, i32 0, i32 4
  %272 = load i16, ptr %271, align 2
  %273 = icmp eq i16 %272, 0
  %274 = zext i16 %272 to i32
  %275 = add nsw i32 %274, -1
  %276 = select i1 %273, i32 2147483646, i32 %275
  %277 = load i32, ptr %1, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %317

279:                                              ; preds = %269
  %280 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %281 = getelementptr inbounds i8, ptr %13, i32 4
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  br label %284

284:                                              ; preds = %315, %279
  %285 = phi i32 [ %277, %279 ], [ %316, %315 ]
  %286 = phi i32 [ %277, %279 ], [ %313, %315 ]
  %287 = call i32 @llvm.smin.i32(i32 %286, i32 %276)
  %288 = load ptr, ptr %280, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %281, align 4, !annotation !8
  %289 = and i32 %287, 65535
  %290 = add nuw nsw i32 %289, 1
  %291 = call noalias align 64 ptr @__kmalloc(i32 noundef %290, i32 noundef 3264) #13
  %292 = icmp eq ptr %291, null
  br i1 %292, label %312, label %293

293:                                              ; preds = %284
  %294 = sub i32 %285, %286
  %295 = getelementptr i8, ptr %288, i32 %294
  store i8 -9, ptr %291, align 64
  %296 = getelementptr i8, ptr %291, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %296, ptr align 1 %295, i32 %289, i1 false) #12
  %297 = load ptr, ptr %64, align 4
  %298 = load i8, ptr %297, align 4
  %299 = zext i8 %298 to i16
  store i16 %299, ptr %13, align 4
  store i16 0, ptr %282, align 2
  store ptr %291, ptr %283, align 4
  %300 = trunc i32 %290 to i16
  store i16 %300, ptr %281, align 4
  %301 = load i32, ptr @debug, align 4
  %302 = icmp sgt i32 %301, 1
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.cx24116_writeregN, i32 noundef 247, i32 noundef %289) #10
  br label %305

305:                                              ; preds = %303, %293
  %306 = load ptr, ptr %38, align 4
  %307 = call i32 @i2c_transfer(ptr noundef %306, ptr noundef nonnull %13, i32 noundef 1) #12
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.cx24116_writeregN, i32 noundef %307, i32 noundef 247) #10
  br label %311

311:                                              ; preds = %309, %305
  call void @kfree(ptr noundef nonnull %291) #12
  br label %312

312:                                              ; preds = %311, %284
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  %313 = sub i32 %286, %276
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = load i32, ptr %1, align 4
  br label %284

317:                                              ; preds = %312, %269
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i8 -12, ptr %11, align 2
  %318 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 16, ptr %318, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %319 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %319, align 4, !annotation !8
  %320 = load ptr, ptr %64, align 4
  %321 = load i8, ptr %320, align 4
  %322 = zext i8 %321 to i16
  store i16 %322, ptr %12, align 4
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %323, align 2
  %324 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %324, align 4
  %325 = load i32, ptr @debug, align 4
  %326 = icmp sgt i32 %325, 1
  br i1 %326, label %327, label %329

327:                                              ; preds = %317
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 244, i32 noundef 16) #10
  br label %329

329:                                              ; preds = %327, %317
  %330 = load ptr, ptr %38, align 4
  %331 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %12, i32 noundef 1) #12
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %331, i32 noundef 244, i32 noundef 16) #10
  br label %335

335:                                              ; preds = %333, %329
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i8 -16, ptr %9, align 2
  %336 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 0, ptr %336, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %337 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %337, align 4, !annotation !8
  %338 = load ptr, ptr %64, align 4
  %339 = load i8, ptr %338, align 4
  %340 = zext i8 %339 to i16
  store i16 %340, ptr %10, align 4
  %341 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %341, align 2
  %342 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %342, align 4
  %343 = load i32, ptr @debug, align 4
  %344 = icmp sgt i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %335
  %346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 240, i32 noundef 0) #10
  br label %347

347:                                              ; preds = %345, %335
  %348 = load ptr, ptr %38, align 4
  %349 = call i32 @i2c_transfer(ptr noundef %348, ptr noundef nonnull %10, i32 noundef 1) #12
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %349, i32 noundef 240, i32 noundef 0) #10
  br label %353

353:                                              ; preds = %351, %347
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i8 -8, ptr %7, align 2
  %354 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 6, ptr %354, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %355 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %355, align 4, !annotation !8
  %356 = load ptr, ptr %64, align 4
  %357 = load i8, ptr %356, align 4
  %358 = zext i8 %357 to i16
  store i16 %358, ptr %8, align 4
  %359 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %359, align 2
  %360 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %360, align 4
  %361 = load i32, ptr @debug, align 4
  %362 = icmp sgt i32 %361, 1
  br i1 %362, label %363, label %365

363:                                              ; preds = %353
  %364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 248, i32 noundef 6) #10
  br label %365

365:                                              ; preds = %363, %353
  %366 = load ptr, ptr %38, align 4
  %367 = call i32 @i2c_transfer(ptr noundef %366, ptr noundef nonnull %8, i32 noundef 1) #12
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %371, label %369

369:                                              ; preds = %365
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %367, i32 noundef 248, i32 noundef 6) #10
  br label %371

371:                                              ; preds = %369, %365
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  %372 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1
  store i8 16, ptr %372, align 1
  %373 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 1
  store i8 5, ptr %373, align 1
  %374 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 2
  store i8 -36, ptr %374, align 1
  %375 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 3
  store i8 -38, ptr %375, align 1
  %376 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 4
  store i8 -82, ptr %376, align 1
  %377 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 5
  store i8 -86, ptr %377, align 1
  %378 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 6
  store i8 4, ptr %378, align 1
  %379 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 7
  store i8 -99, ptr %379, align 1
  %380 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 8
  store i8 -4, ptr %380, align 1
  %381 = getelementptr inbounds %struct.cx24116_cmd, ptr %36, i32 0, i32 1, i32 9
  store i8 6, ptr %381, align 1
  store i8 10, ptr %36, align 1
  %382 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %454

384:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i8 -99, ptr %5, align 2
  %385 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %385, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %386 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %386, align 4, !annotation !8
  %387 = load ptr, ptr %64, align 4
  %388 = load i8, ptr %387, align 4
  %389 = zext i8 %388 to i16
  store i16 %389, ptr %6, align 4
  %390 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %390, align 2
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %391, align 4
  %392 = load i32, ptr @debug, align 4
  %393 = icmp sgt i32 %392, 1
  br i1 %393, label %394, label %396

394:                                              ; preds = %384
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 157, i32 noundef 0) #10
  br label %396

396:                                              ; preds = %394, %384
  %397 = load ptr, ptr %38, align 4
  %398 = call i32 @i2c_transfer(ptr noundef %397, ptr noundef nonnull %6, i32 noundef 1) #12
  %399 = icmp eq i32 %398, 1
  br i1 %399, label %402, label %400

400:                                              ; preds = %396
  %401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %398, i32 noundef 157, i32 noundef 0) #10
  br label %402

402:                                              ; preds = %400, %396
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  store i8 20, ptr %372, align 1
  store i8 0, ptr %373, align 1
  store i8 0, ptr %374, align 1
  store i8 3, ptr %36, align 1
  %403 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %454

405:                                              ; preds = %402
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i8 -27, ptr %3, align 2
  %406 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %407 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %407, align 4, !annotation !8
  %408 = load ptr, ptr %64, align 4
  %409 = load i8, ptr %408, align 4
  %410 = zext i8 %409 to i16
  store i16 %410, ptr %4, align 4
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %411, align 2
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %412, align 4
  %413 = load i32, ptr @debug, align 4
  %414 = icmp sgt i32 %413, 1
  br i1 %414, label %415, label %417

415:                                              ; preds = %405
  %416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef 229, i32 noundef 0) #10
  br label %417

417:                                              ; preds = %415, %405
  %418 = load ptr, ptr %38, align 4
  %419 = call i32 @i2c_transfer(ptr noundef %418, ptr noundef nonnull %4, i32 noundef 1) #12
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %423, label %421

421:                                              ; preds = %417
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cx24116_writereg, i32 noundef %419, i32 noundef 229, i32 noundef 0) #10
  br label %423

423:                                              ; preds = %421, %417
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  store i8 19, ptr %372, align 1
  store i8 1, ptr %373, align 1
  store i8 117, ptr %374, align 1
  store i8 0, ptr %375, align 1
  %424 = load ptr, ptr %64, align 4
  %425 = getelementptr inbounds %struct.cx24116_config, ptr %424, i32 0, i32 3
  %426 = load i8, ptr %425, align 4
  %427 = and i8 %426, 3
  %428 = icmp eq i8 %427, 0
  %429 = select i1 %428, i8 2, i8 %427
  store i8 %429, ptr %376, align 1
  store i8 0, ptr %377, align 1
  store i8 6, ptr %36, align 1
  %430 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %454

432:                                              ; preds = %423
  store i8 53, ptr %372, align 1
  store i8 2, ptr %36, align 1
  store i8 0, ptr %373, align 1
  %433 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %454

435:                                              ; preds = %432
  %436 = call fastcc i32 @cx24116_readreg(ptr noundef %38, i8 noundef zeroext -106)
  store i8 1, ptr %373, align 1
  %437 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %454

439:                                              ; preds = %435
  %440 = call fastcc i32 @cx24116_readreg(ptr noundef %38, i8 noundef zeroext -106)
  store i8 2, ptr %373, align 1
  %441 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %454

443:                                              ; preds = %439
  %444 = call fastcc i32 @cx24116_readreg(ptr noundef %38, i8 noundef zeroext -106)
  store i8 3, ptr %373, align 1
  %445 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %0, ptr noundef nonnull %36)
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %443
  %448 = call fastcc i32 @cx24116_readreg(ptr noundef %38, i8 noundef zeroext -106)
  %449 = and i32 %436, 255
  %450 = and i32 %440, 255
  %451 = and i32 %444, 255
  %452 = and i32 %448, 255
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.cx24116_load_firmware, i32 noundef %449, i32 noundef %450, i32 noundef %451, i32 noundef %452) #10
  br label %454

454:                                              ; preds = %447, %443, %439, %435, %432, %423, %402, %371
  %455 = phi i32 [ 0, %447 ], [ %382, %371 ], [ %403, %402 ], [ %430, %423 ], [ %433, %432 ], [ %437, %435 ], [ %441, %439 ], [ %445, %443 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %36) #12
  ret i32 %455
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_wait_for_lnb(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @cx24116_readreg(ptr noundef %3, i8 noundef zeroext -68)
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.cx24116_wait_for_lnb, i32 noundef %7) #10
  br label %9

9:                                                ; preds = %6, %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = phi i32 [ %16, %15 ], [ 0, %9 ]
  %12 = tail call fastcc i32 @cx24116_readreg(ptr noundef %3, i8 noundef zeroext -68)
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  tail call void @msleep(i32 noundef 10) #12
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %10

18:                                               ; preds = %15
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.cx24116_wait_for_lnb) #10
  br label %23

23:                                               ; preds = %21, %18, %10
  %24 = phi i32 [ -110, %21 ], [ -110, %18 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
