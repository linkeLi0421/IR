; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stb0899_drv.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb0899_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stb0899_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stb0899_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stb0899_attach:\09\09\09\09\09"
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
%struct.stb0899_tab = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stb0899_state = type { ptr, ptr, %struct.dvb_frontend, ptr, %struct.stb0899_internal, i32, %struct.stb0899_params, i32, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i8, i32, i8, i8 }
%struct.stb0899_params = type { i32, i32, i32 }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stb0899_postproc = type { i16, i8 }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 0, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [81 x i8] c"\013%s ERR(1), Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Status=%d\0A\00", align 1
@__func__._stb0899_read_s2reg = private unnamed_addr constant [20 x i8] c"_stb0899_read_s2reg\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"\013%s ERR(2), Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Status=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"\013%s ERR(3), Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Status=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"\017%s Device=[0x%04x], Base address=[0x%08x], Offset=[0x%04x], Data=[0x%08x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"\017%s Device=[0x%04x], Base Address=[0x%08x], Offset=[0x%04x], Data=[0x%08x]\0A\00", align 1
@__func__.stb0899_write_s2reg = private unnamed_addr constant [20 x i8] c"stb0899_write_s2reg\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"\013%s ERR (1), Device=[0x%04x], Base Address=[0x%08x], Offset=[0x%04x], Data=[0x%08x], status=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"\013%s ERR (2), Device=[0x%04x], Base Address=[0x%08x], Offset=[0x%04x], Data=[0x%08x], status=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"\013%s Read error, Reg=[0x%04x], Count=%u, Status=%d\0A\00", align 1
@__func__.stb0899_read_regs = private unnamed_addr constant [18 x i8] c"stb0899_read_regs\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\013%s: %s [0x%04x]: %*ph\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\014%s: i2c wr reg=%04x: len=%d is too big!\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"stb0899\00", align 1
@__func__.stb0899_write_regs = private unnamed_addr constant [19 x i8] c"stb0899_write_regs\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"\013%s: Reg=[0x%04x], Data=[0x%02x ...], Count=%u, Status=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\013%s: Enabling I2C Repeater ...\0A\00", align 1
@__func__.stb0899_i2c_gate_ctrl = private unnamed_addr constant [22 x i8] c"stb0899_i2c_gate_ctrl\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"\013%s: Disabling I2C Repeater ...\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\013%s: I2C Repeater control failed\0A\00", align 1
@stb0899_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"STB0899 Multistandard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 5000000, i32 45000000, i32 0, i32 268436993 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr @stb0899_detach, ptr @stb0899_release, ptr null, ptr @stb0899_init, ptr @stb0899_sleep, ptr null, ptr null, ptr null, ptr null, ptr @stb0899_frontend_algo, ptr null, ptr null, ptr @stb0899_get_frontend, ptr @stb0899_read_status, ptr @stb0899_read_ber, ptr @stb0899_read_signal_strength, ptr @stb0899_read_snr, ptr null, ptr null, ptr @stb0899_send_diseqc_msg, ptr @stb0899_recv_slave_reply, ptr @stb0899_send_diseqc_burst, ptr @stb0899_set_tone, ptr @stb0899_set_voltage, ptr null, ptr null, ptr @stb0899_i2c_gate_ctrl, ptr null, ptr null, ptr @stb0899_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"%s: Exiting .. !\0A\00", align 1
@__func__.stb0899_attach = private unnamed_addr constant [15 x i8] c"stb0899_attach\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"%s: Attaching STB0899 \0A\00", align 1
@__kstrtab_stb0899_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stb0899_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stb0899_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stb0899_attach to i32), ptr @__kstrtab_stb0899_attach, ptr @__kstrtabns_stb0899_attach }, section "___ksymtab+stb0899_attach", align 4
@__UNIQUE_ID_verbose250 = internal constant [33 x i8] c"parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [39 x i8] c"description=STB0899 Multi-Std frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"\013%s: Read error, Reg=[0x%02x], Status=%d\0A\00", align 1
@__func__._stb0899_read_reg = private unnamed_addr constant [18 x i8] c"_stb0899_read_reg\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"\013%s: Reg=[0x%02x], data=%02x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.40 = private unnamed_addr constant [24 x i8] c"\013%s: Release Frontend\0A\00", align 1
@__func__.stb0899_release = private unnamed_addr constant [16 x i8] c"stb0899_release\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"\013%s: Initializing STB0899 ... \0A\00", align 1
@__func__.stb0899_init = private unnamed_addr constant [13 x i8] c"stb0899_init\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"\013%s: init device\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"\013%s: init S2 demod\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"\013%s: init S1 demod\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"\013%s: init S2 FEC\0A\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"\013%s: init TST\0A\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"\013%s: div=%d, mclk=%d\0A\00", align 1
@__func__.stb0899_get_mclk = private unnamed_addr constant [17 x i8] c"stb0899_get_mclk\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"\013%s: Going to Sleep .. (Really tired .. :-))\0A\00", align 1
@__func__.stb0899_sleep = private unnamed_addr constant [14 x i8] c"stb0899_sleep\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"\013%s: Get params\0A\00", align 1
@__func__.stb0899_get_frontend = private unnamed_addr constant [21 x i8] c"stb0899_get_frontend\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"\013%s: Delivery system DVB-S/DSS\0A\00", align 1
@__func__.stb0899_read_status = private unnamed_addr constant [20 x i8] c"stb0899_read_status\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"\013%s: --------> FE_HAS_CARRIER | FE_HAS_LOCK\0A\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"\013%s: --------> FE_HAS_VITERBI | FE_HAS_SYNC\0A\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"\013%s: Delivery system DVB-S2\0A\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"\013%s: UWP & CSM Lock ! ---> DVB-S2 FE_HAS_CARRIER\0A\00", align 1
@.str.100 = private unnamed_addr constant [60 x i8] c"\013%s: Packet Delineator Locked ! -----> DVB-S2 FE_HAS_LOCK\0A\00", align 1
@.str.104 = private unnamed_addr constant [70 x i8] c"\013%s: Packet Delineator found VITERBI ! -----> DVB-S2 FE_HAS_VITERBI\0A\00", align 1
@.str.108 = private unnamed_addr constant [64 x i8] c"\013%s: Packet Delineator found SYNC ! -----> DVB-S2 FE_HAS_SYNC\0A\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"\013%s: Unsupported delivery system\0A\00", align 1
@__func__.stb0899_read_ber = private unnamed_addr constant [17 x i8] c"stb0899_read_ber\00", align 1
@stb0899_dvbsrf_tab = internal unnamed_addr constant [31 x %struct.stb0899_tab] [%struct.stb0899_tab { i32 -750, i32 -128 }, %struct.stb0899_tab { i32 -748, i32 -94 }, %struct.stb0899_tab { i32 -745, i32 -92 }, %struct.stb0899_tab { i32 -735, i32 -90 }, %struct.stb0899_tab { i32 -720, i32 -87 }, %struct.stb0899_tab { i32 -670, i32 -77 }, %struct.stb0899_tab { i32 -640, i32 -70 }, %struct.stb0899_tab { i32 -610, i32 -62 }, %struct.stb0899_tab { i32 -600, i32 -60 }, %struct.stb0899_tab { i32 -590, i32 -56 }, %struct.stb0899_tab { i32 -560, i32 -41 }, %struct.stb0899_tab { i32 -540, i32 -25 }, %struct.stb0899_tab { i32 -530, i32 -17 }, %struct.stb0899_tab { i32 -520, i32 -11 }, %struct.stb0899_tab { i32 -500, i32 1 }, %struct.stb0899_tab { i32 -490, i32 6 }, %struct.stb0899_tab { i32 -480, i32 10 }, %struct.stb0899_tab { i32 -440, i32 22 }, %struct.stb0899_tab { i32 -420, i32 27 }, %struct.stb0899_tab { i32 -400, i32 31 }, %struct.stb0899_tab { i32 -380, i32 34 }, %struct.stb0899_tab { i32 -340, i32 40 }, %struct.stb0899_tab { i32 -320, i32 43 }, %struct.stb0899_tab { i32 -280, i32 48 }, %struct.stb0899_tab { i32 -250, i32 52 }, %struct.stb0899_tab { i32 -230, i32 55 }, %struct.stb0899_tab { i32 -180, i32 61 }, %struct.stb0899_tab { i32 -140, i32 66 }, %struct.stb0899_tab { i32 -90, i32 73 }, %struct.stb0899_tab { i32 -80, i32 74 }, %struct.stb0899_tab { i32 500, i32 127 }], align 4
@.str.116 = private unnamed_addr constant [45 x i8] c"\013%s: AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\0A\00", align 1
@__func__.stb0899_read_signal_strength = private unnamed_addr constant [29 x i8] c"stb0899_read_signal_strength\00", align 1
@stb0899_dvbs2rf_tab = internal unnamed_addr constant [24 x %struct.stb0899_tab] [%struct.stb0899_tab { i32 700, i32 0 }, %struct.stb0899_tab { i32 -80, i32 3217 }, %struct.stb0899_tab { i32 -150, i32 3893 }, %struct.stb0899_tab { i32 -190, i32 4217 }, %struct.stb0899_tab { i32 -240, i32 4621 }, %struct.stb0899_tab { i32 -280, i32 4945 }, %struct.stb0899_tab { i32 -320, i32 5273 }, %struct.stb0899_tab { i32 -350, i32 5545 }, %struct.stb0899_tab { i32 -370, i32 5741 }, %struct.stb0899_tab { i32 -410, i32 6147 }, %struct.stb0899_tab { i32 -450, i32 6671 }, %struct.stb0899_tab { i32 -490, i32 7413 }, %struct.stb0899_tab { i32 -501, i32 7665 }, %struct.stb0899_tab { i32 -530, i32 8767 }, %struct.stb0899_tab { i32 -560, i32 10219 }, %struct.stb0899_tab { i32 -580, i32 10939 }, %struct.stb0899_tab { i32 -590, i32 11518 }, %struct.stb0899_tab { i32 -600, i32 11723 }, %struct.stb0899_tab { i32 -650, i32 12659 }, %struct.stb0899_tab { i32 -690, i32 13219 }, %struct.stb0899_tab { i32 -730, i32 13645 }, %struct.stb0899_tab { i32 -750, i32 13909 }, %struct.stb0899_tab { i32 -766, i32 14153 }, %struct.stb0899_tab { i32 -950, i32 16383 }], align 4
@.str.120 = private unnamed_addr constant [46 x i8] c"\013%s: IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\0A\00", align 1
@stb0899_cn_tab = internal unnamed_addr constant [20 x %struct.stb0899_tab] [%struct.stb0899_tab { i32 200, i32 2600 }, %struct.stb0899_tab { i32 190, i32 2700 }, %struct.stb0899_tab { i32 180, i32 2860 }, %struct.stb0899_tab { i32 170, i32 3020 }, %struct.stb0899_tab { i32 160, i32 3210 }, %struct.stb0899_tab { i32 150, i32 3440 }, %struct.stb0899_tab { i32 140, i32 3710 }, %struct.stb0899_tab { i32 130, i32 4010 }, %struct.stb0899_tab { i32 120, i32 4360 }, %struct.stb0899_tab { i32 110, i32 4740 }, %struct.stb0899_tab { i32 100, i32 5190 }, %struct.stb0899_tab { i32 90, i32 5670 }, %struct.stb0899_tab { i32 80, i32 6200 }, %struct.stb0899_tab { i32 70, i32 6770 }, %struct.stb0899_tab { i32 60, i32 7360 }, %struct.stb0899_tab { i32 50, i32 7970 }, %struct.stb0899_tab { i32 40, i32 8250 }, %struct.stb0899_tab { i32 30, i32 9000 }, %struct.stb0899_tab { i32 20, i32 9450 }, %struct.stb0899_tab { i32 15, i32 9600 }], align 4
@.str.124 = private unnamed_addr constant [50 x i8] c"\013%s: NIR = 0x%02x%02x = %u, C/N = %d * 0.1 dBm\0A\0A\00", align 1
@__func__.stb0899_read_snr = private unnamed_addr constant [17 x i8] c"stb0899_read_snr\00", align 1
@stb0899_quant_tab = internal unnamed_addr constant [39 x %struct.stb0899_tab] [%struct.stb0899_tab zeroinitializer, %struct.stb0899_tab { i32 0, i32 100 }, %struct.stb0899_tab { i32 600, i32 200 }, %struct.stb0899_tab { i32 950, i32 299 }, %struct.stb0899_tab { i32 1200, i32 398 }, %struct.stb0899_tab { i32 1400, i32 501 }, %struct.stb0899_tab { i32 1560, i32 603 }, %struct.stb0899_tab { i32 1690, i32 700 }, %struct.stb0899_tab { i32 1810, i32 804 }, %struct.stb0899_tab { i32 1910, i32 902 }, %struct.stb0899_tab { i32 2000, i32 1000 }, %struct.stb0899_tab { i32 2080, i32 1096 }, %struct.stb0899_tab { i32 2160, i32 1202 }, %struct.stb0899_tab { i32 2230, i32 1303 }, %struct.stb0899_tab { i32 2350, i32 1496 }, %struct.stb0899_tab { i32 2410, i32 1603 }, %struct.stb0899_tab { i32 2460, i32 1698 }, %struct.stb0899_tab { i32 2510, i32 1799 }, %struct.stb0899_tab { i32 2600, i32 1995 }, %struct.stb0899_tab { i32 2650, i32 2113 }, %struct.stb0899_tab { i32 2690, i32 2213 }, %struct.stb0899_tab { i32 2720, i32 2291 }, %struct.stb0899_tab { i32 2760, i32 2399 }, %struct.stb0899_tab { i32 2800, i32 2512 }, %struct.stb0899_tab { i32 2860, i32 2692 }, %struct.stb0899_tab { i32 2930, i32 2917 }, %struct.stb0899_tab { i32 2960, i32 3020 }, %struct.stb0899_tab { i32 3010, i32 3199 }, %struct.stb0899_tab { i32 3040, i32 3311 }, %struct.stb0899_tab { i32 3060, i32 3388 }, %struct.stb0899_tab { i32 3120, i32 3631 }, %struct.stb0899_tab { i32 3190, i32 3936 }, %struct.stb0899_tab { i32 3400, i32 5012 }, %struct.stb0899_tab { i32 3610, i32 6383 }, %struct.stb0899_tab { i32 3800, i32 7943 }, %struct.stb0899_tab { i32 4210, i32 12735 }, %struct.stb0899_tab { i32 4500, i32 17783 }, %struct.stb0899_tab { i32 4690, i32 22131 }, %struct.stb0899_tab { i32 4810, i32 25410 }], align 4
@stb0899_est_tab = internal unnamed_addr constant [37 x %struct.stb0899_tab] [%struct.stb0899_tab zeroinitializer, %struct.stb0899_tab { i32 0, i32 1 }, %struct.stb0899_tab { i32 301, i32 2 }, %struct.stb0899_tab { i32 1204, i32 16 }, %struct.stb0899_tab { i32 1806, i32 64 }, %struct.stb0899_tab { i32 2408, i32 256 }, %struct.stb0899_tab { i32 2709, i32 512 }, %struct.stb0899_tab { i32 3010, i32 1023 }, %struct.stb0899_tab { i32 3311, i32 2046 }, %struct.stb0899_tab { i32 3612, i32 4093 }, %struct.stb0899_tab { i32 3823, i32 6653 }, %struct.stb0899_tab { i32 3913, i32 8185 }, %struct.stb0899_tab { i32 4010, i32 10233 }, %struct.stb0899_tab { i32 4107, i32 12794 }, %struct.stb0899_tab { i32 4214, i32 16368 }, %struct.stb0899_tab { i32 4266, i32 18450 }, %struct.stb0899_tab { i32 4311, i32 20464 }, %struct.stb0899_tab { i32 4353, i32 22542 }, %struct.stb0899_tab { i32 4391, i32 24604 }, %struct.stb0899_tab { i32 4425, i32 26607 }, %struct.stb0899_tab { i32 4457, i32 28642 }, %struct.stb0899_tab { i32 4487, i32 30690 }, %struct.stb0899_tab { i32 4515, i32 32734 }, %struct.stb0899_tab { i32 4612, i32 40926 }, %struct.stb0899_tab { i32 4692, i32 49204 }, %struct.stb0899_tab { i32 4816, i32 65464 }, %struct.stb0899_tab { i32 4913, i32 81846 }, %struct.stb0899_tab { i32 4993, i32 98401 }, %struct.stb0899_tab { i32 5060, i32 114815 }, %struct.stb0899_tab { i32 5118, i32 131220 }, %struct.stb0899_tab { i32 5200, i32 158489 }, %struct.stb0899_tab { i32 5300, i32 199526 }, %struct.stb0899_tab { i32 5400, i32 251189 }, %struct.stb0899_tab { i32 5500, i32 316228 }, %struct.stb0899_tab { i32 5600, i32 398107 }, %struct.stb0899_tab { i32 5720, i32 524807 }, %struct.stb0899_tab { i32 5721, i32 526017 }], align 4
@.str.128 = private unnamed_addr constant [68 x i8] c"\013%s: Es/N0 quant = %d (%d) estimate = %u (%d), C/N = %d * 0.1 dBm\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.132 = private unnamed_addr constant [20 x i8] c"\013%s: timed out !!\0A\00", align 1
@__func__.stb0899_wait_diseqc_fifo_empty = private unnamed_addr constant [31 x i8] c"stb0899_wait_diseqc_fifo_empty\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"\013%s: timed out!!\0A\00", align 1
@__func__.stb0899_wait_diseqc_rxidle = private unnamed_addr constant [27 x i8] c"stb0899_wait_diseqc_rxidle\00", align 1
@__func__.stb0899_wait_diseqc_txidle = private unnamed_addr constant [27 x i8] c"stb0899_wait_diseqc_txidle\00", align 1
@.str.140 = private unnamed_addr constant [26 x i8] c"\013%s: delivery system=%d\0A\00", align 1
@__func__.stb0899_search = private unnamed_addr constant [15 x i8] c"stb0899_search\00", align 1
@.str.144 = private unnamed_addr constant [30 x i8] c"\013%s: Frequency=%d, Srate=%d\0A\00", align 1
@.str.148 = private unnamed_addr constant [27 x i8] c"\013%s: Parameters IN RANGE\0A\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"\013%s: DVB-S delivery system\0A\00", align 1
@.str.156 = private unnamed_addr constant [36 x i8] c"\013%s: running DVB-S search algo ..\0A\00", align 1
@.str.160 = private unnamed_addr constant [59 x i8] c"\013%s: -------------------------------------> DVB-S LOCK !\0A\00", align 1
@.str.164 = private unnamed_addr constant [37 x i8] c"\013%s: running DVB-S2 search algo ..\0A\00", align 1
@.str.168 = private unnamed_addr constant [60 x i8] c"\013%s: -------------------------------------> DVB-S2 LOCK !\0A\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"\013%s: Delivery System -- DVB-S\0A\00", align 1
@__func__.stb0899_set_delivery = private unnamed_addr constant [21 x i8] c"stb0899_set_delivery\00", align 1
@.str.176 = private unnamed_addr constant [24 x i8] c"\013%s: state->config=%p\0A\00", align 1
@__func__.stb0899_set_mclk = private unnamed_addr constant [17 x i8] c"stb0899_set_mclk\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"\013%s: mdiv=%d\0A\00", align 1
@.str.184 = private unnamed_addr constant [22 x i8] c"\013%s: MasterCLOCK=%d\0A\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"\013%s: ID reg=[0x%02x]\0A\00", align 1
@__func__.stb0899_get_dev_id = private unnamed_addr constant [19 x i8] c"stb0899_get_dev_id\00", align 1
@.str.192 = private unnamed_addr constant [36 x i8] c"\013%s: Device ID=[%d], Release=[%d]\0A\00", align 1
@.str.196 = private unnamed_addr constant [46 x i8] c"\013%s: Demodulator Core ID=[%s], Version=[%d]\0A\00", align 1
@.str.200 = private unnamed_addr constant [32 x i8] c"\013%s: couldn't find a STB 0899\0A\00", align 1
@.str.204 = private unnamed_addr constant [38 x i8] c"\013%s: FEC Core ID=[%s], Version=[%d]\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_stb0899_attach, ptr @__param_verbose], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_read_reg(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %0, i32 noundef %1)
  %4 = and i32 %1, -1025
  %5 = icmp eq i32 %4, 62207
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = trunc i32 %1 to i16
  %8 = and i16 %7, -256
  switch i16 %8, label %12 [
    i16 -3584, label %9
    i16 -2560, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = or i32 %1, 255
  %11 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %0, i32 noundef %10)
  br label %12

12:                                               ; preds = %9, %6, %2
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_stb0899_read_reg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %6 = lshr i32 %1, 8
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %3, align 2
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  %9 = trunc i32 %1 to i8
  store i8 %9, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stb0899_config, ptr %12, i32 0, i32 8
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
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #9
  switch i32 %24, label %25 [
    i32 2, label %35
    i32 -512, label %32
  ]

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__._stb0899_read_reg, i32 noundef %1, i32 noundef %24) #10
  br label %32

32:                                               ; preds = %30, %25, %2
  %33 = icmp slt i32 %24, 0
  %34 = select i1 %33, i32 %24, i32 -121
  br label %47

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %40, label %44, !prof !9

40:                                               ; preds = %35
  %41 = load i8, ptr %4, align 1
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._stb0899_read_reg, i32 noundef %1, i32 noundef %42) #10
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %44, %32
  %48 = phi i32 [ %34, %32 ], [ %46, %44 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_stb0899_read_s2reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [7 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #9
  %11 = lshr i32 %1, 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %6, align 1
  %13 = getelementptr inbounds i8, ptr %6, i32 1
  %14 = trunc i32 %1 to i8
  store i8 %14, ptr %13, align 1
  %15 = getelementptr inbounds i8, ptr %6, i32 2
  %16 = trunc i32 %2 to i8
  store i8 %16, ptr %15, align 1
  %17 = getelementptr inbounds i8, ptr %6, i32 3
  %18 = lshr i32 %2, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds i8, ptr %6, i32 4
  %21 = lshr i32 %2, 16
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %20, align 1
  %23 = getelementptr inbounds i8, ptr %6, i32 5
  %24 = lshr i32 %2, 24
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %26 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 0, ptr %26, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stb0899_config, ptr %28, i32 0, i32 8
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %8, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  store i16 6, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %35 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 0, ptr %35, align 4, !annotation !8
  store i16 %31, ptr %9, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 2
  store i16 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %39 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 0, ptr %39, align 4, !annotation !8
  store i16 %31, ptr %10, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 2
  store i16 4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %5, ptr %42, align 4
  %43 = zext i16 %3 to i32
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  %46 = lshr i16 %3, 8
  %47 = trunc i16 %46 to i8
  %48 = trunc i16 %3 to i8
  %49 = or i8 %48, 32
  %50 = select i1 %45, i8 %49, i8 0
  store i8 %47, ptr %7, align 2
  %51 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %50, ptr %51, align 1
  %52 = load ptr, ptr %0, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %8, i32 noundef 1) #9
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %4
  %56 = icmp eq i32 %53, -512
  br i1 %56, label %113, label %57

57:                                               ; preds = %55
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._stb0899_read_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %43, i32 noundef %53) #10
  br label %110

59:                                               ; preds = %4
  %60 = load ptr, ptr %0, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %9, i32 noundef 1) #9
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %110, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %10, i32 noundef 1) #9
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %110, label %67

67:                                               ; preds = %63
  store i8 %47, ptr %7, align 2
  store i8 %48, ptr %51, align 1
  %68 = load ptr, ptr %0, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %9, i32 noundef 1) #9
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = icmp eq i32 %69, -512
  br i1 %72, label %113, label %73

73:                                               ; preds = %71
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._stb0899_read_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %43, i32 noundef %69) #10
  br label %110

75:                                               ; preds = %67
  %76 = load ptr, ptr %0, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %10, i32 noundef 1) #9
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = icmp eq i32 %77, -512
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._stb0899_read_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %43, i32 noundef %77) #10
  br label %83

83:                                               ; preds = %81, %79
  %84 = icmp slt i32 %77, 0
  %85 = select i1 %84, i32 %77, i32 -121
  br label %115

86:                                               ; preds = %75
  %87 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw i32 %89, 24
  %91 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 2
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or i32 %94, %90
  %96 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = or i32 %95, %99
  %101 = load i8, ptr %5, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %108, label %115, !prof !9

108:                                              ; preds = %86
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._stb0899_read_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %43, i32 noundef %103) #10
  br label %115

110:                                              ; preds = %73, %63, %59, %57
  %111 = phi i32 [ %53, %57 ], [ %61, %59 ], [ %65, %63 ], [ %69, %73 ]
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %71, %55
  %114 = phi i32 [ %111, %110 ], [ -512, %55 ], [ -512, %71 ]
  br label %115

115:                                              ; preds = %113, %110, %108, %86, %83
  %116 = phi i32 [ %85, %83 ], [ %103, %108 ], [ %103, %86 ], [ %114, %113 ], [ -121, %110 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #9
  ret i32 %116
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_write_s2reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #9
  %10 = lshr i32 %1, 8
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %6, align 1
  %12 = getelementptr inbounds i8, ptr %6, i32 1
  %13 = trunc i32 %1 to i8
  store i8 %13, ptr %12, align 1
  %14 = getelementptr inbounds i8, ptr %6, i32 2
  %15 = trunc i32 %2 to i8
  store i8 %15, ptr %14, align 1
  %16 = getelementptr inbounds i8, ptr %6, i32 3
  %17 = lshr i32 %2, 8
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %16, align 1
  %19 = getelementptr inbounds i8, ptr %6, i32 4
  %20 = lshr i32 %2, 16
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %19, align 1
  %22 = getelementptr inbounds i8, ptr %6, i32 5
  %23 = lshr i32 %2, 24
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %25 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 0, ptr %25, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stb0899_config, ptr %27, i32 0, i32 8
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %8, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  store i16 6, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %34 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 0, ptr %34, align 4, !annotation !8
  store i16 %30, ptr %9, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 2
  store i16 6, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %37, align 4
  %38 = zext i16 %3 to i32
  %39 = lshr i16 %3, 8
  %40 = trunc i16 %39 to i8
  store i8 %40, ptr %7, align 1
  %41 = trunc i16 %3 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %41, ptr %42, align 1
  %43 = trunc i32 %4 to i8
  %44 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %43, ptr %44, align 1
  %45 = lshr i32 %4, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 %46, ptr %47, align 1
  %48 = lshr i32 %4, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 %49, ptr %50, align 1
  %51 = lshr i32 %4, 24
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %60, !prof !9

58:                                               ; preds = %5
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stb0899_write_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %38, i32 noundef %4) #10
  br label %60

60:                                               ; preds = %58, %5
  %61 = load ptr, ptr %0, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %8, i32 noundef 1) #9
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %68, !prof !9

64:                                               ; preds = %60
  %65 = icmp eq i32 %62, -512
  br i1 %65, label %79, label %66

66:                                               ; preds = %64
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stb0899_write_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %38, i32 noundef %4, i32 noundef %62) #10
  br label %79

68:                                               ; preds = %60
  %69 = load ptr, ptr %0, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %9, i32 noundef 1) #9
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %72, label %82, !prof !9

72:                                               ; preds = %68
  %73 = icmp eq i32 %70, -512
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stb0899_write_s2reg, i32 noundef %1, i32 noundef %2, i32 noundef %38, i32 noundef %4, i32 noundef %70) #10
  br label %76

76:                                               ; preds = %74, %72
  %77 = icmp slt i32 %70, 0
  %78 = select i1 %77, i32 %70, i32 -121
  br label %82

79:                                               ; preds = %66, %64
  %80 = icmp slt i32 %62, 0
  %81 = select i1 %80, i32 %62, i32 -121
  br label %82

82:                                               ; preds = %79, %76, %68
  %83 = phi i32 [ %81, %79 ], [ %78, %76 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #9
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_read_regs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  %7 = lshr i32 %1, 8
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %5, align 2
  %9 = getelementptr inbounds i8, ptr %5, i32 1
  %10 = trunc i32 %1 to i8
  store i8 %10, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 8
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %16, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %23 = trunc i32 %3 to i16
  store i16 %23, ptr %22, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %2, ptr %24, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 2) #9
  switch i32 %26, label %27 [
    i32 2, label %29
    i32 -512, label %45
  ]

27:                                               ; preds = %4
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stb0899_read_regs, i32 noundef %1, i32 noundef %3, i32 noundef %26) #10
  br label %45

29:                                               ; preds = %4
  %30 = and i32 %1, -1025
  %31 = icmp eq i32 %30, 62207
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = trunc i32 %1 to i16
  %34 = and i16 %33, -256
  switch i16 %34, label %38 [
    i16 -3584, label %35
    i16 -2560, label %35
  ]

35:                                               ; preds = %32, %32
  %36 = or i32 %1, 255
  %37 = call fastcc i32 @_stb0899_read_reg(ptr noundef %0, i32 noundef %36)
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 5
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stb0899_read_regs, ptr noundef nonnull @__func__.stb0899_read_regs, i32 noundef %1, i32 noundef %3, ptr noundef %2) #10
  br label %48

45:                                               ; preds = %27, %4
  %46 = icmp slt i32 %26, 0
  %47 = select i1 %46, i32 %26, i32 -121
  br label %48

48:                                               ; preds = %45, %43, %38
  %49 = phi i32 [ %47, %45 ], [ 0, %43 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_write_regs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stb0899_config, ptr %9, i32 0, i32 8
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %6, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %15 = add i32 %3, 2
  %16 = trunc i32 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = icmp ugt i32 %15, 64
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef %3) #10
  br label %58

21:                                               ; preds = %4
  %22 = lshr i32 %1, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %5, align 1
  %24 = trunc i32 %1 to i8
  %25 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr align 1 %2, i32 %3, i1 false)
  %27 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 5
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stb0899_write_regs, ptr noundef nonnull @__func__.stb0899_write_regs, i32 noundef %1, i32 noundef %3, ptr noundef %2) #10
  br label %33

33:                                               ; preds = %31, %21
  %34 = load ptr, ptr %0, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 1) #9
  %36 = trunc i32 %1 to i16
  %37 = and i16 %36, -256
  switch i16 %37, label %46 [
    i16 -3584, label %38
    i16 -2560, label %38
  ]

38:                                               ; preds = %33, %33
  %39 = or i32 %1, 255
  %40 = call fastcc i32 @_stb0899_read_reg(ptr noundef %0, i32 noundef %39) #9
  %41 = and i32 %39, -1025
  %42 = icmp eq i32 %41, 62207
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  switch i16 %37, label %46 [
    i16 -3584, label %44
    i16 -2560, label %44
  ]

44:                                               ; preds = %43, %43
  %45 = call fastcc i32 @_stb0899_read_reg(ptr noundef %0, i32 noundef %39) #9
  br label %46

46:                                               ; preds = %44, %43, %38, %33
  switch i32 %35, label %47 [
    i32 1, label %58
    i32 -512, label %55
  ]

47:                                               ; preds = %46
  %48 = load ptr, ptr %27, align 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, ptr %2, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.stb0899_write_regs, i32 noundef %1, i32 noundef %53, i32 noundef %3, i32 noundef %35) #10
  br label %55

55:                                               ; preds = %51, %47, %46
  %56 = icmp slt i32 %35, 0
  %57 = select i1 %56, i32 %35, i32 -121
  br label %58

58:                                               ; preds = %55, %46, %19
  %59 = phi i32 [ -22, %19 ], [ %57, %55 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_write_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %2, ptr %4, align 1
  %5 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %6, i32 noundef 61738) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.stb0899_state, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 4
  br i1 %10, label %23, label %15

15:                                               ; preds = %9
  br i1 %14, label %18, label %16

16:                                               ; preds = %15
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %18

18:                                               ; preds = %16, %15
  %19 = trunc i32 %7 to i8
  %20 = or i8 %19, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %20, ptr %4, align 1
  %21 = call i32 @stb0899_write_regs(ptr noundef %6, i32 noundef 61738, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %38

23:                                               ; preds = %9
  br i1 %14, label %26, label %24

24:                                               ; preds = %23
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %26

26:                                               ; preds = %24, %23
  %27 = trunc i32 %7 to i8
  %28 = and i8 %27, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %28, ptr %3, align 1
  %29 = call i32 @stb0899_write_regs(ptr noundef %6, i32 noundef 61738, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %18, %2
  %32 = getelementptr inbounds %struct.stb0899_state, ptr %6, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %38

38:                                               ; preds = %36, %31, %26, %18
  %39 = phi i32 [ 0, %26 ], [ 0, %18 ], [ -121, %36 ], [ -121, %31 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stb0899_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [5 x i8], align 1
  %4 = alloca [5 x i8], align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1208) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 3
  store ptr @verbose, ptr %14, align 8
  %15 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  store ptr %1, ptr %11, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 2
  %17 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %17, ptr noundef nonnull align 4 dereferenceable(544) @stb0899_ops, i32 544, i1 false)
  %18 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 2, i32 3
  store ptr %11, ptr %18, align 8
  %19 = getelementptr inbounds %struct.stb0899_config, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 28
  store i32 %20, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 2, ptr %9, align 1
  %22 = call i32 @stb0899_write_regs(ptr noundef nonnull %11, i32 noundef 61878, ptr noundef nonnull %9, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1
  %25 = call i32 @stb0899_write_regs(ptr noundef nonnull %11, i32 noundef 61890, ptr noundef nonnull %8, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  %28 = call i32 @stb0899_write_regs(ptr noundef nonnull %11, i32 noundef 61891, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.stb0899_config, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr %struct.stb0899_postproc, ptr %33, i32 0, i32 1
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, 1
  %39 = load i16, ptr %33, align 2
  %40 = zext i16 %39 to i32
  br i1 %38, label %41, label %43

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 2, ptr %6, align 1
  %42 = call i32 @stb0899_write_regs(ptr noundef nonnull %11, i32 noundef %40, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %45

43:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 -126, ptr %5, align 1
  %44 = call i32 @stb0899_write_regs(ptr noundef nonnull %11, i32 noundef %40, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %45

45:                                               ; preds = %43, %41, %30, %27, %24, %13
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false) #9
  %46 = call fastcc i32 @_stb0899_read_reg(ptr noundef nonnull %11, i32 noundef 61440) #9
  %47 = load ptr, ptr %14, align 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = and i32 %46, 65535
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @__func__.stb0899_get_dev_id, i32 noundef %51) #10
  %53 = load ptr, ptr %14, align 8
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i32 [ %48, %45 ], [ %54, %50 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = and i32 %46, 15
  %60 = lshr i32 %46, 4
  %61 = and i32 %60, 15
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @__func__.stb0899_get_dev_id, i32 noundef %61, i32 noundef %59) #10
  br label %63

63:                                               ; preds = %58, %55
  %64 = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %11, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3276) #9
  %65 = lshr i32 %64, 24
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %66, ptr %3, align 1
  %68 = lshr i32 %64, 16
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %69, ptr %67, align 1
  %71 = lshr i32 %64, 8
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %72, ptr %70, align 1
  %74 = trunc i32 %64 to i8
  %75 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %74, ptr %73, align 1
  store i8 0, ptr %75, align 1
  %76 = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %11, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3268) #9
  %77 = load ptr, ptr %14, align 8
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %63
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @__func__.stb0899_get_dev_id, ptr noundef nonnull %3, i32 noundef %76) #10
  br label %82

82:                                               ; preds = %80, %63
  %83 = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %11, i32 noundef 64252, i32 noundef 2048, i16 noundef zeroext -1492) #9
  %84 = lshr i32 %83, 24
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %85, ptr %4, align 1
  %87 = lshr i32 %83, 16
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %88, ptr %86, align 1
  %90 = lshr i32 %83, 8
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 %91, ptr %89, align 1
  %93 = trunc i32 %83 to i8
  %94 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %93, ptr %92, align 1
  store i8 0, ptr %94, align 1
  %95 = call i32 @_stb0899_read_s2reg(ptr noundef nonnull %11, i32 noundef 64252, i32 noundef 2048, i16 noundef zeroext -1484) #9
  %96 = and i32 %46, 240
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %14, align 8
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %97, label %101, label %104

101:                                              ; preds = %82
  br i1 %100, label %107, label %102

102:                                              ; preds = %101
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @__func__.stb0899_get_dev_id) #10
  br label %107

104:                                              ; preds = %82
  br i1 %100, label %109, label %105

105:                                              ; preds = %104
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @__func__.stb0899_get_dev_id, ptr noundef nonnull %4, i32 noundef %95) #10
  br label %109

107:                                              ; preds = %102, %101
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.stb0899_attach) #10
  br label %111

109:                                              ; preds = %105, %104
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #9
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.stb0899_attach) #10
  br label %112

111:                                              ; preds = %107, %2
  call void @kfree(ptr noundef %11) #9
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi ptr [ null, %111 ], [ %16, %109 ]
  ret ptr %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stb0899_detach(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stb0899_config, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = getelementptr %struct.stb0899_postproc, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 1
  %15 = load i16, ptr %9, align 2
  %16 = zext i16 %15 to i32
  br i1 %14, label %17, label %19

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 -126, ptr %3, align 1
  %18 = call i32 @stb0899_write_regs(ptr noundef %5, i32 noundef %16, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %21

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 2, ptr %2, align 1
  %20 = call i32 @stb0899_write_regs(ptr noundef %5, i32 noundef %16, ptr noundef nonnull %2, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %21

21:                                               ; preds = %19, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stb0899_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stb0899_state, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.stb0899_release) #10
  br label %10

10:                                               ; preds = %8, %1
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.stb0899_init) #10
  %20 = load ptr, ptr %14, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.stb0899_init) #10
  br label %25

25:                                               ; preds = %23, %18, %1
  %26 = load ptr, ptr %13, align 4
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, -1
  br i1 %28, label %42, label %29

29:                                               ; preds = %29, %25
  %30 = phi i16 [ %40, %29 ], [ %27, %25 ]
  %31 = phi ptr [ %38, %29 ], [ %26, %25 ]
  %32 = phi i32 [ %37, %29 ], [ 0, %25 ]
  %33 = zext i16 %30 to i32
  %34 = getelementptr %struct.stb0899_s1_reg, ptr %31, i32 %32, i32 1
  %35 = load i8, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 %35, ptr %9, align 1
  %36 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef %33, ptr noundef nonnull %9, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %37 = add i32 %32, 1
  %38 = load ptr, ptr %13, align 4
  %39 = getelementptr %struct.stb0899_s1_reg, ptr %38, i32 %37
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %42, label %29

42:                                               ; preds = %29, %25
  %43 = load ptr, ptr %14, align 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.stb0899_init) #10
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, -1
  br i1 %52, label %67, label %53

53:                                               ; preds = %53, %48
  %54 = phi i16 [ %65, %53 ], [ %51, %48 ]
  %55 = phi ptr [ %63, %53 ], [ %50, %48 ]
  %56 = phi i32 [ %62, %53 ], [ 0, %48 ]
  %57 = getelementptr %struct.stb0899_s2_reg, ptr %55, i32 %56, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.stb0899_s2_reg, ptr %55, i32 %56, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @stb0899_write_s2reg(ptr noundef %11, i32 noundef 62460, i32 noundef %58, i16 noundef zeroext %54, i32 noundef %60)
  %62 = add i32 %56, 1
  %63 = load ptr, ptr %49, align 4
  %64 = getelementptr %struct.stb0899_s2_reg, ptr %63, i32 %62
  %65 = load i16, ptr %64, align 4
  %66 = icmp eq i16 %65, -1
  br i1 %66, label %67, label %53

67:                                               ; preds = %53, %48
  %68 = load ptr, ptr %14, align 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.stb0899_init) #10
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, -1
  br i1 %77, label %91, label %78

78:                                               ; preds = %78, %73
  %79 = phi i16 [ %89, %78 ], [ %76, %73 ]
  %80 = phi ptr [ %87, %78 ], [ %75, %73 ]
  %81 = phi i32 [ %86, %78 ], [ 0, %73 ]
  %82 = zext i16 %79 to i32
  %83 = getelementptr %struct.stb0899_s1_reg, ptr %80, i32 %81, i32 1
  %84 = load i8, ptr %83, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 %84, ptr %8, align 1
  %85 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef %82, ptr noundef nonnull %8, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %86 = add i32 %81, 1
  %87 = load ptr, ptr %74, align 4
  %88 = getelementptr %struct.stb0899_s1_reg, ptr %87, i32 %86
  %89 = load i16, ptr %88, align 2
  %90 = icmp eq i16 %89, -1
  br i1 %90, label %91, label %78

91:                                               ; preds = %78, %73
  %92 = load ptr, ptr %14, align 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp ult i32 %93, 4
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.stb0899_init) #10
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load i16, ptr %99, align 4
  %101 = icmp eq i16 %100, -1
  br i1 %101, label %116, label %102

102:                                              ; preds = %102, %97
  %103 = phi i16 [ %114, %102 ], [ %100, %97 ]
  %104 = phi ptr [ %112, %102 ], [ %99, %97 ]
  %105 = phi i32 [ %111, %102 ], [ 0, %97 ]
  %106 = getelementptr %struct.stb0899_s2_reg, ptr %104, i32 %105, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr %struct.stb0899_s2_reg, ptr %104, i32 %105, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = call i32 @stb0899_write_s2reg(ptr noundef %11, i32 noundef 64252, i32 noundef %107, i16 noundef zeroext %103, i32 noundef %109)
  %111 = add i32 %105, 1
  %112 = load ptr, ptr %98, align 4
  %113 = getelementptr %struct.stb0899_s2_reg, ptr %112, i32 %111
  %114 = load i16, ptr %113, align 4
  %115 = icmp eq i16 %114, -1
  br i1 %115, label %116, label %102

116:                                              ; preds = %102, %97
  %117 = load ptr, ptr %14, align 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.stb0899_init) #10
  br label %122

122:                                              ; preds = %120, %116
  %123 = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = load i16, ptr %124, align 2
  %126 = icmp eq i16 %125, -1
  br i1 %126, label %140, label %127

127:                                              ; preds = %127, %122
  %128 = phi i16 [ %138, %127 ], [ %125, %122 ]
  %129 = phi ptr [ %136, %127 ], [ %124, %122 ]
  %130 = phi i32 [ %135, %127 ], [ 0, %122 ]
  %131 = zext i16 %128 to i32
  %132 = getelementptr %struct.stb0899_s1_reg, ptr %129, i32 %130, i32 1
  %133 = load i8, ptr %132, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 %133, ptr %7, align 1
  %134 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef %131, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %135 = add i32 %130, 1
  %136 = load ptr, ptr %123, align 4
  %137 = getelementptr %struct.stb0899_s1_reg, ptr %136, i32 %135
  %138 = load i16, ptr %137, align 2
  %139 = icmp eq i16 %138, -1
  br i1 %139, label %140, label %127

140:                                              ; preds = %127, %122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 0, ptr %6, align 2, !annotation !8
  %141 = call i32 @stb0899_read_regs(ptr noundef %11, i32 noundef 62483, ptr noundef nonnull %6, i32 noundef 2) #9
  %142 = call fastcc i32 @_stb0899_read_reg(ptr noundef %11, i32 noundef 61875) #9
  %143 = add i32 %142, 1
  %144 = load ptr, ptr %12, align 4
  %145 = getelementptr inbounds %struct.stb0899_config, ptr %144, i32 0, i32 7
  %146 = load i32, ptr %145, align 4
  %147 = mul i32 %146, %143
  %148 = udiv i32 %147, 6
  %149 = load ptr, ptr %14, align 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp ult i32 %150, 4
  br i1 %151, label %154, label %152

152:                                              ; preds = %140
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.stb0899_get_mclk, i32 noundef %142, i32 noundef %148) #10
  br label %154

154:                                              ; preds = %152, %140
  %155 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4
  %156 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 18
  store i16 0, ptr %156, align 2
  %157 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 19
  store i16 0, ptr %157, align 4
  store i32 %148, ptr %155, align 4
  %158 = udiv i32 %147, 393216
  %159 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 9
  store i32 %158, ptr %159, align 4
  %160 = call fastcc i32 @_stb0899_read_reg(ptr noundef %11, i32 noundef 62478) #9
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 35, i32 20
  %164 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 10
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 22
  store i32 8154, ptr %165, align 4
  %166 = call i32 @_stb0899_read_s2reg(ptr noundef %11, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296) #9
  %167 = and i32 %166, -134209537
  %168 = load i32, ptr %165, align 4
  %169 = shl i32 %168, 13
  %170 = or i32 %169, %167
  %171 = call i32 @stb0899_write_s2reg(ptr noundef %11, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296, i32 noundef %170) #9
  %172 = call i32 @_stb0899_read_s2reg(ptr noundef %11, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3236) #9
  %173 = and i32 %172, 3
  %174 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 27
  store i32 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 23
  store i32 0, ptr %175, align 4
  %176 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 24
  store i32 10, ptr %176, align 4
  %177 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 25
  store i32 20, ptr %177, align 4
  %178 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 4, i32 26
  store i16 2, ptr %178, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %179 = call fastcc i32 @_stb0899_read_reg(ptr noundef %11, i32 noundef 61601) #9
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, -33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 %181, ptr %5, align 1
  %182 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef 61601, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %183 = call fastcc i32 @_stb0899_read_reg(ptr noundef %11, i32 noundef 61600) #9
  %184 = trunc i32 %183 to i8
  %185 = or i8 %184, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %185, ptr %4, align 1
  %186 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef 61600, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %187 = call fastcc i32 @_stb0899_read_reg(ptr noundef %11, i32 noundef 61600) #9
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, -65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %189, ptr %3, align 1
  %190 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef 61600, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %191 = call fastcc i32 @_stb0899_read_reg(ptr noundef %11, i32 noundef 61875) #9
  %192 = add i32 %191, 1
  %193 = load ptr, ptr %12, align 4
  %194 = getelementptr inbounds %struct.stb0899_config, ptr %193, i32 0, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = mul i32 %195, %192
  %197 = load ptr, ptr %14, align 4
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, 4
  br i1 %199, label %203, label %200

200:                                              ; preds = %154
  %201 = udiv i32 %196, 6
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.stb0899_get_mclk, i32 noundef %191, i32 noundef %201) #10
  br label %203

203:                                              ; preds = %200, %154
  %204 = udiv i32 %196, 4224000
  %205 = trunc i32 %204 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 %205, ptr %2, align 1
  %206 = call i32 @stb0899_write_regs(ptr noundef %11, i32 noundef 61609, ptr noundef nonnull %2, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  %207 = getelementptr inbounds %struct.stb0899_state, ptr %11, i32 0, i32 7
  store i32 20000, ptr %207, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.stb0899_sleep) #10
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stb0899_config, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = getelementptr %struct.stb0899_postproc, ptr %16, i32 0, i32 1
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 1
  %22 = load i16, ptr %16, align 2
  %23 = zext i16 %22 to i32
  br i1 %21, label %24, label %26

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 -126, ptr %3, align 1
  %25 = call i32 @stb0899_write_regs(ptr noundef %5, i32 noundef %23, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %28

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 2, ptr %2, align 1
  %27 = call i32 @stb0899_write_regs(ptr noundef %5, i32 noundef %23, ptr noundef nonnull %2, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %28

28:                                               ; preds = %26, %24, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stb0899_frontend_algo(ptr nocapture noundef readnone %0) #7 {
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.stb0899_get_frontend) #10
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  store i32 0, ptr %1, align 4
  %9 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %138 [
    i32 5, label %11
    i32 4, label %11
    i32 6, label %63
  ]

11:                                               ; preds = %2, %2
  %12 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 4, i32 20
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %145, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %8, i32 noundef 62733) #9
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %145, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %12, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, ptr %1, align 4
  %34 = or i32 %33, 19
  store i32 %34, ptr %1, align 4
  %35 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %8, i32 noundef 62860) #9
  %36 = and i32 %35, 31
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %145, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %12, align 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 12
  store i32 %46, ptr %1, align 4
  %47 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.stb0899_config, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %145, label %52

52:                                               ; preds = %44
  %53 = getelementptr %struct.stb0899_postproc, ptr %50, i32 1
  %54 = getelementptr %struct.stb0899_postproc, ptr %50, i32 1, i32 1
  %55 = load i8, ptr %54, align 2
  %56 = icmp eq i8 %55, 1
  %57 = load i16, ptr %53, align 2
  %58 = zext i16 %57 to i32
  br i1 %56, label %59, label %61

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 2, ptr %6, align 1
  %60 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef %58, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %145

61:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 -126, ptr %5, align 1
  %62 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef %58, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %145

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, 4
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %70

70:                                               ; preds = %68, %63
  %71 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 4, i32 20
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %145, label %74

74:                                               ; preds = %70
  %75 = tail call i32 @_stb0899_read_s2reg(ptr noundef %8, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3264)
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %145

78:                                               ; preds = %74
  %79 = load i32, ptr %1, align 4
  %80 = or i32 %79, 2
  store i32 %80, ptr %1, align 4
  %81 = load ptr, ptr %64, align 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %82, 4
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %86

86:                                               ; preds = %84, %78
  %87 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %8, i32 noundef 63001) #9
  %88 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %8, i32 noundef 63231) #9
  %89 = and i32 %87, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %1, align 4
  %93 = or i32 %92, 16
  store i32 %93, ptr %1, align 4
  %94 = load ptr, ptr %64, align 4
  %95 = load i32, ptr %94, align 4
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %99

99:                                               ; preds = %97, %91, %86
  %100 = and i32 %87, 32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %1, align 4
  %104 = or i32 %103, 4
  store i32 %104, ptr %1, align 4
  %105 = load ptr, ptr %64, align 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %106, 4
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %110

110:                                              ; preds = %108, %102, %99
  %111 = and i32 %87, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %145, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %1, align 4
  %115 = or i32 %114, 8
  store i32 %115, ptr %1, align 4
  %116 = load ptr, ptr %64, align 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %117, 4
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %121

121:                                              ; preds = %119, %113
  %122 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.stb0899_config, ptr %123, i32 0, i32 5
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %145, label %127

127:                                              ; preds = %121
  %128 = getelementptr %struct.stb0899_postproc, ptr %125, i32 1
  %129 = getelementptr %struct.stb0899_postproc, ptr %125, i32 1, i32 1
  %130 = load i8, ptr %129, align 2
  %131 = icmp eq i8 %130, 1
  %132 = load i16, ptr %128, align 2
  %133 = zext i16 %132 to i32
  br i1 %131, label %134, label %136

134:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 2, ptr %4, align 1
  %135 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef %133, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %145

136:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 -126, ptr %3, align 1
  %137 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef %133, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %145

138:                                              ; preds = %2
  %139 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = load i32, ptr %140, align 4
  %142 = icmp ult i32 %141, 4
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stb0899_read_status) #10
  br label %145

145:                                              ; preds = %143, %138, %136, %134, %121, %110, %74, %70, %61, %59, %44, %32, %22, %18
  %146 = phi i32 [ -22, %143 ], [ 0, %70 ], [ 0, %110 ], [ 0, %74 ], [ 0, %18 ], [ 0, %32 ], [ 0, %22 ], [ 0, %44 ], [ 0, %59 ], [ 0, %61 ], [ 0, %121 ], [ 0, %134 ], [ 0, %136 ], [ -22, %138 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %54 [
    i32 5, label %7
    i32 4, label %7
    i32 6, label %33
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 62757) #9
  %13 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 62756) #9
  %14 = shl i32 %13, 8
  %15 = and i32 %14, 65280
  %16 = and i32 %12, 255
  %17 = or i32 %15, %16
  store i32 %17, ptr %1, align 4
  %18 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 32
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %11
  %23 = mul nuw nsw i32 %17, 9766
  store i32 %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 33
  %25 = load i8, ptr %24, align 1
  %26 = shl i8 %25, 1
  %27 = and i8 %26, 14
  %28 = zext i8 %27 to i32
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = udiv i32 %23, %30
  %32 = lshr i32 %31, 3
  store i32 %32, ptr %1, align 4
  br label %61

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 62757) #9
  %39 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 62756) #9
  %40 = shl i32 %39, 8
  %41 = and i32 %40, 65280
  %42 = and i32 %38, 255
  %43 = or i32 %41, %42
  %44 = mul i32 %43, 10000000
  store i32 %44, ptr %1, align 4
  %45 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 33
  %46 = load i8, ptr %45, align 1
  %47 = shl i8 %46, 1
  %48 = and i8 %47, 14
  %49 = add nuw nsw i8 %48, 4
  %50 = zext i8 %49 to i32
  %51 = shl nsw i32 -1, %50
  %52 = xor i32 %51, -1
  %53 = udiv i32 %44, %52
  store i32 %53, ptr %1, align 4
  br label %61

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stb0899_read_ber) #10
  br label %61

61:                                               ; preds = %59, %54, %37, %33, %22, %11, %7
  %62 = phi i32 [ -22, %59 ], [ 0, %33 ], [ 0, %37 ], [ 0, %7 ], [ 0, %22 ], [ 0, %11 ], [ -22, %54 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  store i16 0, ptr %1, align 2
  %5 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %115 [
    i32 5, label %7
    i32 4, label %7
    i32 6, label %64
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %122, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 62733) #9
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %122, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 62510) #9
  %17 = shl i32 %16, 24
  %18 = ashr exact i32 %17, 24
  %19 = icmp eq i32 %17, 2130706432
  br i1 %19, label %54, label %20

20:                                               ; preds = %32, %15
  %21 = phi i32 [ %38, %32 ], [ -128, %15 ]
  %22 = phi i32 [ %34, %32 ], [ 0, %15 ]
  %23 = phi i32 [ %33, %32 ], [ 30, %15 ]
  %24 = add i32 %23, %22
  %25 = sdiv i32 %24, 2
  %26 = icmp sgt i32 %21, %18
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %25, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, %18
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %20
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %23, %31 ], [ %25, %27 ]
  %34 = phi i32 [ %25, %31 ], [ %22, %27 ]
  %35 = sub i32 %33, %34
  %36 = icmp sgt i32 %35, 1
  %37 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %34, i32 1
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %20, label %39

39:                                               ; preds = %32
  %40 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %33, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %34
  %43 = sub i32 %18, %38
  %44 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbsrf_tab, i32 %33
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %42, align 4
  %47 = sub i32 %45, %46
  %48 = mul i32 %47, %43
  %49 = sub i32 %41, %38
  %50 = sdiv i32 %48, %49
  %51 = add i32 %50, %46
  %52 = trunc i32 %51 to i16
  %53 = add i16 %52, 750
  br label %54

54:                                               ; preds = %39, %15
  %55 = phi i16 [ %53, %39 ], [ 1250, %15 ]
  store i16 %55, ptr %1, align 2
  %56 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %122, label %60

60:                                               ; preds = %54
  %61 = and i32 %16, 255
  %62 = zext i16 %55 to i32
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @__func__.stb0899_read_signal_strength, i32 noundef %61, i32 noundef %62) #10
  br label %122

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 4, i32 20
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %122, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @_stb0899_read_s2reg(ptr noundef %4, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3316)
  %70 = and i32 %69, 16383
  %71 = icmp eq i32 %70, 16383
  br i1 %71, label %106, label %72

72:                                               ; preds = %84, %68
  %73 = phi i32 [ %90, %84 ], [ 0, %68 ]
  %74 = phi i32 [ %86, %84 ], [ 0, %68 ]
  %75 = phi i32 [ %85, %84 ], [ 23, %68 ]
  %76 = add i32 %75, %74
  %77 = sdiv i32 %76, 2
  %78 = icmp sgt i32 %73, %70
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %77, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp sgt i32 %81, %70
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i32 [ %75, %83 ], [ %77, %79 ]
  %86 = phi i32 [ %77, %83 ], [ %74, %79 ]
  %87 = sub i32 %85, %86
  %88 = icmp sgt i32 %87, 1
  %89 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %86, i32 1
  %90 = load i32, ptr %89, align 4
  br i1 %88, label %72, label %91

91:                                               ; preds = %84
  %92 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %85, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %86
  %95 = sub i32 %70, %90
  %96 = getelementptr %struct.stb0899_tab, ptr @stb0899_dvbs2rf_tab, i32 %85
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %94, align 4
  %99 = sub i32 %97, %98
  %100 = mul i32 %99, %95
  %101 = sub i32 %93, %90
  %102 = sdiv i32 %100, %101
  %103 = add i32 %102, %98
  %104 = trunc i32 %103 to i16
  %105 = add i16 %104, 950
  br label %106

106:                                              ; preds = %91, %68
  %107 = phi i16 [ %105, %91 ], [ 0, %68 ]
  store i16 %107, ptr %1, align 2
  %108 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = zext i16 %107 to i32
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.stb0899_read_signal_strength, i32 noundef %70, i32 noundef %113) #10
  br label %122

115:                                              ; preds = %2
  %116 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stb0899_read_signal_strength) #10
  br label %122

122:                                              ; preds = %120, %115, %112, %106, %64, %60, %54, %11, %7
  %123 = phi i32 [ -22, %120 ], [ 0, %64 ], [ 0, %112 ], [ 0, %7 ], [ 0, %60 ], [ 0, %11 ], [ 0, %54 ], [ 0, %106 ], [ -22, %115 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2, !annotation !8
  store i16 0, ptr %1, align 2
  %6 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %5, i32 noundef 62733) #9
  %7 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %164 [
    i32 5, label %9
    i32 4, label %9
    i32 6, label %70
  ]

9:                                                ; preds = %2, %2
  %10 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 4, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %6, 8
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %171, label %16

16:                                               ; preds = %9
  %17 = call i32 @stb0899_read_regs(ptr noundef %5, i32 noundef 62528, ptr noundef nonnull %3, i32 noundef 2)
  %18 = load i8, ptr %3, align 2
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = icmp ult i32 %24, 2600
  br i1 %25, label %60, label %26

26:                                               ; preds = %16
  %27 = icmp ult i32 %24, 9600
  br i1 %27, label %28, label %60

28:                                               ; preds = %40, %26
  %29 = phi i32 [ %46, %40 ], [ 2600, %26 ]
  %30 = phi i32 [ %42, %40 ], [ 0, %26 ]
  %31 = phi i32 [ %41, %40 ], [ 19, %26 ]
  %32 = add i32 %31, %30
  %33 = sdiv i32 %32, 2
  %34 = icmp sgt i32 %29, %24
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %33, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, %24
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %31, %39 ], [ %33, %35 ]
  %42 = phi i32 [ %33, %39 ], [ %30, %35 ]
  %43 = sub i32 %41, %42
  %44 = icmp sgt i32 %43, 1
  %45 = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %42, i32 1
  %46 = load i32, ptr %45, align 4
  br i1 %44, label %28, label %47

47:                                               ; preds = %40
  %48 = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %41, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %42
  %51 = sub i32 %24, %46
  %52 = getelementptr %struct.stb0899_tab, ptr @stb0899_cn_tab, i32 %41
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %50, align 4
  %55 = sub i32 %53, %54
  %56 = mul i32 %55, %51
  %57 = sub i32 %49, %46
  %58 = sdiv i32 %56, %57
  %59 = add i32 %58, %54
  br label %60

60:                                               ; preds = %47, %26, %16
  %61 = phi i32 [ %59, %47 ], [ 200, %16 ], [ 15, %26 ]
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %1, align 2
  %63 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %171, label %67

67:                                               ; preds = %60
  %68 = and i32 %61, 65535
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.stb0899_read_snr, i32 noundef %19, i32 noundef %23, i32 noundef %24, i32 noundef %68) #10
  br label %171

70:                                               ; preds = %2
  %71 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 4, i32 20
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %171, label %74

74:                                               ; preds = %70
  %75 = tail call i32 @_stb0899_read_s2reg(ptr noundef %5, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3296)
  %76 = lshr i32 %75, 3
  %77 = and i32 %76, 255
  %78 = tail call i32 @_stb0899_read_s2reg(ptr noundef %5, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3284)
  %79 = lshr i32 %78, 7
  %80 = and i32 %79, 524287
  switch i32 %80, label %82 [
    i32 1, label %153
    i32 2, label %81
  ]

81:                                               ; preds = %74
  br label %153

82:                                               ; preds = %74
  %83 = mul nuw nsw i32 %77, 100
  %84 = icmp ult i32 %83, 25410
  br i1 %84, label %85, label %117

85:                                               ; preds = %97, %82
  %86 = phi i32 [ %103, %97 ], [ 0, %82 ]
  %87 = phi i32 [ %99, %97 ], [ 0, %82 ]
  %88 = phi i32 [ %98, %97 ], [ 38, %82 ]
  %89 = add i32 %88, %87
  %90 = sdiv i32 %89, 2
  %91 = icmp sgt i32 %86, %83
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %90, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp sgt i32 %94, %83
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %85
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i32 [ %88, %96 ], [ %90, %92 ]
  %99 = phi i32 [ %90, %96 ], [ %87, %92 ]
  %100 = sub i32 %98, %99
  %101 = icmp sgt i32 %100, 1
  %102 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %99, i32 1
  %103 = load i32, ptr %102, align 4
  br i1 %101, label %85, label %104

104:                                              ; preds = %97
  %105 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %98, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %99
  %108 = sub i32 %83, %103
  %109 = getelementptr %struct.stb0899_tab, ptr @stb0899_quant_tab, i32 %98
  %110 = load i32, ptr %109, align 4
  %111 = load i32, ptr %107, align 4
  %112 = sub i32 %110, %111
  %113 = mul i32 %112, %108
  %114 = sub i32 %106, %103
  %115 = sdiv i32 %113, %114
  %116 = add i32 %115, %111
  br label %117

117:                                              ; preds = %104, %82
  %118 = phi i32 [ %116, %104 ], [ 4810, %82 ]
  br label %119

119:                                              ; preds = %131, %117
  %120 = phi i32 [ 0, %117 ], [ %137, %131 ]
  %121 = phi i32 [ 0, %117 ], [ %133, %131 ]
  %122 = phi i32 [ 36, %117 ], [ %132, %131 ]
  %123 = add i32 %122, %121
  %124 = sdiv i32 %123, 2
  %125 = icmp sgt i32 %120, %80
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %124, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp sgt i32 %128, %80
  br i1 %129, label %131, label %130

130:                                              ; preds = %126, %119
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i32 [ %122, %130 ], [ %124, %126 ]
  %133 = phi i32 [ %124, %130 ], [ %121, %126 ]
  %134 = sub i32 %132, %133
  %135 = icmp sgt i32 %134, 1
  %136 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %133, i32 1
  %137 = load i32, ptr %136, align 4
  br i1 %135, label %119, label %138

138:                                              ; preds = %131
  %139 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %132, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %133
  %142 = sub i32 %80, %137
  %143 = getelementptr %struct.stb0899_tab, ptr @stb0899_est_tab, i32 %132
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %141, align 4
  %146 = sub i32 %144, %145
  %147 = mul i32 %146, %142
  %148 = sub i32 %140, %137
  %149 = sdiv i32 %147, %148
  %150 = add i32 %149, %145
  %151 = sub i32 %118, %150
  %152 = udiv i32 %151, 10
  br label %153

153:                                              ; preds = %138, %81, %74
  %154 = phi i32 [ -1, %81 ], [ %150, %138 ], [ -1, %74 ]
  %155 = phi i32 [ -1, %81 ], [ %118, %138 ], [ -1, %74 ]
  %156 = phi i32 [ 270, %81 ], [ %152, %138 ], [ 301, %74 ]
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %1, align 2
  %158 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %159, align 4
  %161 = icmp ult i32 %160, 4
  br i1 %161, label %171, label %162

162:                                              ; preds = %153
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.stb0899_read_snr, i32 noundef %77, i32 noundef %155, i32 noundef %80, i32 noundef %154, i32 noundef %156) #10
  br label %171

164:                                              ; preds = %2
  %165 = getelementptr inbounds %struct.stb0899_state, ptr %5, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = load i32, ptr %166, align 4
  %168 = icmp ult i32 %167, 4
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stb0899_read_snr) #10
  br label %171

171:                                              ; preds = %169, %164, %162, %153, %70, %67, %60, %9
  %172 = phi i32 [ -22, %169 ], [ 0, %70 ], [ 0, %162 ], [ 0, %9 ], [ 0, %67 ], [ 0, %60 ], [ 0, %153 ], [ -22, %164 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp ugt i8 %9, 6
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %7, i32 noundef 61600) #9
  %13 = trunc i32 %12 to i8
  %14 = or i8 %13, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 %14, ptr %5, align 1
  %15 = call i32 @stb0899_write_regs(ptr noundef %7, i32 noundef 61600, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %16 = load i8, ptr %8, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %37, %11
  %19 = phi i32 [ %41, %37 ], [ 0, %11 ]
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %20, 100
  br label %22

22:                                               ; preds = %26, %18
  %23 = call fastcc i32 @_stb0899_read_reg(ptr noundef %7, i32 noundef 61608) #9
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 %21, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %22

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stb0899_state, ptr %7, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.stb0899_wait_diseqc_fifo_empty) #10
  br label %50

37:                                               ; preds = %22
  %38 = getelementptr [6 x i8], ptr %1, i32 0, i32 %19
  %39 = load i8, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %39, ptr %4, align 1
  %40 = call i32 @stb0899_write_regs(ptr noundef %7, i32 noundef 61607, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %41 = add nuw nsw i32 %19, 1
  %42 = load i8, ptr %8, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %18, label %45

45:                                               ; preds = %37, %11
  %46 = call fastcc i32 @_stb0899_read_reg(ptr noundef %7, i32 noundef 61600) #9
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, -5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %48, ptr %3, align 1
  %49 = call i32 @stb0899_write_regs(ptr noundef %7, i32 noundef 61600, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  call void @msleep(i32 noundef 100) #9
  br label %50

50:                                               ; preds = %45, %35, %30, %2
  %51 = phi i32 [ 0, %45 ], [ -22, %2 ], [ -110, %35 ], [ -110, %30 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_recv_slave_reply(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 100
  br label %7

7:                                                ; preds = %19, %2
  %8 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 61604) #9
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = sub i32 %6, %9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.stb0899_state, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.stb0899_wait_diseqc_rxidle) #10
  br label %43

19:                                               ; preds = %7
  tail call void @msleep(i32 noundef 10) #9
  %20 = and i32 %8, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %7, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 61604) #9
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 61605) #9
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 15
  %30 = icmp ugt i8 %29, 4
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %1, i32 0, i32 1
  store i8 %29, ptr %32, align 4
  %33 = icmp eq i8 %29, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = zext i8 %29 to i32
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ 0, %34 ], [ %41, %36 ]
  %38 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %4, i32 noundef 61607) #9
  %39 = trunc i32 %38 to i8
  %40 = getelementptr [4 x i8], ptr %1, i32 0, i32 %37
  store i8 %39, ptr %40, align 1
  %41 = add nuw nsw i32 %37, 1
  %42 = icmp eq i32 %41, %35
  br i1 %42, label %43, label %36

43:                                               ; preds = %36, %31, %26, %22, %17, %12
  %44 = phi i32 [ -75, %26 ], [ 0, %22 ], [ -110, %17 ], [ -110, %12 ], [ 0, %31 ], [ 0, %36 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %10, 100
  br label %12

12:                                               ; preds = %24, %2
  %13 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %9, i32 noundef 61608) #9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %11, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stb0899_state, ptr %9, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.stb0899_wait_diseqc_txidle) #10
  br label %60

24:                                               ; preds = %12
  tail call void @msleep(i32 noundef 10) #9
  %25 = and i32 %13, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %12, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %9, i32 noundef 61600) #9
  %29 = trunc i32 %28 to i8
  %30 = or i8 %29, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 %30, ptr %7, align 1
  %31 = call i32 @stb0899_write_regs(ptr noundef %9, i32 noundef 61600, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  switch i32 %1, label %36 [
    i32 0, label %32
    i32 1, label %34
  ]

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  %33 = call i32 @stb0899_write_regs(ptr noundef %9, i32 noundef 61607, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %36

34:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 -1, ptr %5, align 1
  %35 = call i32 @stb0899_write_regs(ptr noundef %9, i32 noundef 61607, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %36

36:                                               ; preds = %34, %32, %27
  %37 = call fastcc i32 @_stb0899_read_reg(ptr noundef %9, i32 noundef 61600) #9
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, -5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %39, ptr %4, align 1
  %40 = call i32 @stb0899_write_regs(ptr noundef %9, i32 noundef 61600, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %41, 100
  br label %43

43:                                               ; preds = %55, %36
  %44 = call fastcc i32 @_stb0899_read_reg(ptr noundef %9, i32 noundef 61608) #9
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = sub i32 %42, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stb0899_state, ptr %9, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.stb0899_wait_diseqc_txidle) #10
  br label %60

55:                                               ; preds = %43
  call void @msleep(i32 noundef 10) #9
  %56 = and i32 %44, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %43, label %58

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %29, ptr %3, align 1
  %59 = call i32 @stb0899_write_regs(ptr noundef %9, i32 noundef 61600, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %60

60:                                               ; preds = %58, %53, %48, %22, %17
  %61 = phi i32 [ 0, %58 ], [ -110, %22 ], [ -110, %17 ], [ -110, %53 ], [ -110, %48 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 4
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %10, 100
  br label %12

12:                                               ; preds = %24, %2
  %13 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %8, i32 noundef 61608) #9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %11, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stb0899_state, ptr %8, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.stb0899_wait_diseqc_txidle) #10
  br label %45

24:                                               ; preds = %12
  tail call void @msleep(i32 noundef 10) #9
  %25 = and i32 %13, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %12, label %27

27:                                               ; preds = %24
  switch i32 %1, label %45 [
    i32 0, label %28
    i32 1, label %43
  ]

28:                                               ; preds = %27
  %29 = load i32, ptr %9, align 4
  %30 = udiv i32 %29, 563200
  %31 = trunc i32 %30 to i16
  %32 = and i16 %31, 255
  %33 = add nuw nsw i16 %32, 5
  %34 = udiv i16 %33, 10
  %35 = trunc i16 %34 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 102, ptr %6, align 1
  %36 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef 61791, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %37 = call fastcc i32 @_stb0899_read_reg(ptr noundef %8, i32 noundef 61712) #9
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, -113
  %40 = or i8 %39, 48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 %40, ptr %5, align 1
  %41 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef 61712, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %35, ptr %4, align 1
  %42 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef 61713, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %45

43:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 32, ptr %3, align 1
  %44 = call i32 @stb0899_write_regs(ptr noundef %8, i32 noundef 61791, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %45

45:                                               ; preds = %43, %28, %27, %22, %17
  %46 = phi i32 [ -22, %27 ], [ 0, %43 ], [ 0, %28 ], [ -110, %22 ], [ -110, %17 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  switch i32 %1, label %26 [
    i32 0, label %14
    i32 1, label %18
    i32 2, label %22
  ]

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 -126, ptr %11, align 1
  %15 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61760, ptr noundef nonnull %11, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 2, ptr %10, align 1
  %16 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61761, ptr noundef nonnull %10, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  %17 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61762, ptr noundef nonnull %9, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  br label %26

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 2, ptr %8, align 1
  %19 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61760, ptr noundef nonnull %8, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 2, ptr %7, align 1
  %20 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61761, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 -126, ptr %6, align 1
  %21 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61762, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %26

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 -126, ptr %5, align 1
  %23 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61760, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 -126, ptr %4, align 1
  %24 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61761, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 -126, ptr %3, align 1
  %25 = call i32 @stb0899_write_regs(ptr noundef %13, i32 noundef 61762, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %26

26:                                               ; preds = %22, %18, %14, %2
  %27 = phi i32 [ -22, %2 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb0899_search(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca [2 x i8], align 2
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %28, align 4
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 6, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %52, label %43

43:                                               ; preds = %1
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_search, i32 noundef %37) #10
  %45 = load ptr, ptr %39, align 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %28, align 4
  %50 = load i32, ptr %35, align 4
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.stb0899_search, i32 noundef %49, i32 noundef %50) #10
  br label %52

52:                                               ; preds = %48, %43, %1
  %53 = load i32, ptr %35, align 4
  %54 = add i32 %53, -1000000
  %55 = icmp ult i32 %54, 44000001
  br i1 %55, label %56, label %363

56:                                               ; preds = %52
  %57 = load ptr, ptr %39, align 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %62

62:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #9
  store i16 0, ptr %25, align 2, !annotation !8
  %63 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 61890) #9
  %64 = trunc i32 %63 to i8
  %65 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 61891) #9
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 %66, ptr %67, align 1
  %68 = load i32, ptr %38, align 4
  switch i32 %68, label %123 [
    i32 5, label %69
    i32 6, label %92
    i32 4, label %108
  ]

69:                                               ; preds = %62
  %70 = load ptr, ptr %39, align 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @__func__.stb0899_set_delivery) #10
  br label %75

75:                                               ; preds = %73, %69
  %76 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 62771) #9
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, -13
  %79 = or i8 %78, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #9
  store i8 %79, ptr %24, align 1
  %80 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62771, ptr noundef nonnull %24, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #9
  store i8 -79, ptr %23, align 1
  %81 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62792, ptr noundef nonnull %23, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #9
  store i8 64, ptr %22, align 1
  %82 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62793, ptr noundef nonnull %22, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #9
  store i8 66, ptr %21, align 1
  %83 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62794, ptr noundef nonnull %21, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #9
  store i8 18, ptr %20, align 1
  %84 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62795, ptr noundef nonnull %20, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #9
  %85 = call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 65297) #9
  %86 = trunc i32 %85 to i8
  %87 = or i8 %86, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 %87, ptr %19, align 1
  %88 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 65297, ptr noundef nonnull %19, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  %89 = and i8 %64, -125
  %90 = or i8 %89, 120
  %91 = or i8 %66, 7
  store i8 %91, ptr %67, align 1
  br label %129

92:                                               ; preds = %62
  %93 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 62771) #9
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, -13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #9
  store i8 %95, ptr %18, align 1
  %96 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62771, ptr noundef nonnull %18, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #9
  store i8 -79, ptr %17, align 1
  %97 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62792, ptr noundef nonnull %17, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 66, ptr %16, align 1
  %98 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62793, ptr noundef nonnull %16, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #9
  store i8 64, ptr %15, align 1
  %99 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62794, ptr noundef nonnull %15, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #9
  store i8 2, ptr %14, align 1
  %100 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62795, ptr noundef nonnull %14, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #9
  %101 = call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 65297) #9
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 %103, ptr %13, align 1
  %104 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 65297, ptr noundef nonnull %13, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  %105 = and i8 %64, -125
  %106 = or i8 %105, 32
  %107 = and i8 %66, -8
  store i8 %107, ptr %67, align 1
  br label %129

108:                                              ; preds = %62
  %109 = tail call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 62771) #9
  %110 = trunc i32 %109 to i8
  %111 = or i8 %110, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 %111, ptr %12, align 1
  %112 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62771, ptr noundef nonnull %12, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 -95, ptr %11, align 1
  %113 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62792, ptr noundef nonnull %11, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 97, ptr %10, align 1
  %114 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62793, ptr noundef nonnull %10, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 66, ptr %9, align 1
  %115 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 62794, ptr noundef nonnull %9, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %116 = call fastcc i32 @_stb0899_read_reg(ptr noundef %27, i32 noundef 65297) #9
  %117 = trunc i32 %116 to i8
  %118 = or i8 %117, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 %118, ptr %8, align 1
  %119 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 65297, ptr noundef nonnull %8, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %120 = and i8 %64, -61
  %121 = or i8 %120, 56
  %122 = or i8 %66, 7
  store i8 %122, ptr %67, align 1
  br label %129

123:                                              ; preds = %62
  %124 = load ptr, ptr %39, align 4
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stb0899_set_delivery) #10
  br label %129

129:                                              ; preds = %127, %123, %108, %92, %75
  %130 = phi i8 [ %64, %123 ], [ %64, %127 ], [ %121, %108 ], [ %106, %92 ], [ %90, %75 ]
  %131 = and i8 %130, -3
  store i8 %131, ptr %25, align 2
  %132 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 61890, ptr noundef nonnull %25, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #9
  %133 = load ptr, ptr %29, align 4
  %134 = getelementptr inbounds %struct.stb0899_config, ptr %133, i32 0, i32 38
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp ugt i32 %139, 15000000
  %141 = icmp ugt i32 %139, 5000000
  %142 = select i1 %141, i32 12, i32 14
  %143 = select i1 %140, i32 8, i32 %142
  %144 = call i32 %135(ptr noundef %0, i32 noundef %143) #9
  br label %145

145:                                              ; preds = %137, %129
  %146 = load i32, ptr %35, align 4
  %147 = icmp ult i32 %146, 5000001
  %148 = getelementptr inbounds %struct.stb0899_config, ptr %30, i32 0, i32 20
  %149 = getelementptr inbounds %struct.stb0899_config, ptr %30, i32 0, i32 19
  %150 = select i1 %147, ptr %149, ptr %148
  %151 = load i32, ptr %150, align 4
  call fastcc void @stb0899_set_mclk(ptr noundef %27, i32 noundef %151)
  %152 = load i32, ptr %38, align 4
  switch i32 %152, label %357 [
    i32 5, label %153
    i32 4, label %153
    i32 6, label %252
  ]

153:                                              ; preds = %145, %145
  %154 = load ptr, ptr %39, align 4
  %155 = load i32, ptr %154, align 4
  %156 = icmp ult i32 %155, 4
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %159

159:                                              ; preds = %157, %153
  %160 = load i32, ptr %28, align 4
  %161 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 1
  store i32 %160, ptr %161, align 4
  %162 = load i32, ptr %35, align 4
  %163 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 2
  store i32 %162, ptr %163, align 4
  %164 = udiv i32 %162, 5
  %165 = add nuw nsw i32 %164, 11500000
  %166 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 4
  store i32 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 12
  store i16 30, ptr %167, align 2
  %168 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 2, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = call fastcc i32 @_stb0899_read_reg(ptr noundef %169, i32 noundef 61738) #9
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.stb0899_state, ptr %169, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp ult i32 %175, 4
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %179

179:                                              ; preds = %177, %172
  %180 = trunc i32 %170 to i8
  %181 = or i8 %180, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 %181, ptr %7, align 1
  %182 = call i32 @stb0899_write_regs(ptr noundef %169, i32 noundef 61738, ptr noundef nonnull %7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179, %159
  %185 = getelementptr inbounds %struct.stb0899_state, ptr %169, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %191

191:                                              ; preds = %189, %184, %179
  %192 = load ptr, ptr %29, align 4
  %193 = getelementptr inbounds %struct.stb0899_config, ptr %192, i32 0, i32 36
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %203, label %196

196:                                              ; preds = %191
  %197 = call i32 @stb0899_carr_width(ptr noundef %27) #9
  %198 = mul i32 %197, 13
  %199 = add i32 %198, 130000000
  %200 = udiv i32 %199, 10
  %201 = call i32 %194(ptr noundef %0, i32 noundef %200) #9
  %202 = load ptr, ptr %29, align 4
  br label %203

203:                                              ; preds = %196, %191
  %204 = phi ptr [ %202, %196 ], [ %192, %191 ]
  %205 = getelementptr inbounds %struct.stb0899_config, ptr %204, i32 0, i32 37
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 8
  %210 = call i32 %206(ptr noundef %0, ptr noundef %209) #9
  br label %211

211:                                              ; preds = %208, %203
  %212 = load ptr, ptr %168, align 4
  %213 = call fastcc i32 @_stb0899_read_reg(ptr noundef %212, i32 noundef 61738) #9
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.stb0899_state, ptr %212, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = load i32, ptr %217, align 4
  %219 = icmp ult i32 %218, 4
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %222

222:                                              ; preds = %220, %215
  %223 = trunc i32 %213 to i8
  %224 = and i8 %223, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 %224, ptr %6, align 1
  %225 = call i32 @stb0899_write_regs(ptr noundef %212, i32 noundef 61738, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %222, %211
  %228 = getelementptr inbounds %struct.stb0899_state, ptr %212, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %234

234:                                              ; preds = %232, %227, %222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 17, ptr %5, align 1
  %235 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 61783, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %236 = load ptr, ptr %39, align 4
  %237 = load i32, ptr %236, align 4
  %238 = icmp ult i32 %237, 4
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %241

241:                                              ; preds = %239, %234
  %242 = call i32 @stb0899_dvbs_algo(ptr noundef %27) #9
  %243 = icmp eq i32 %242, 13
  %244 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 20
  br i1 %243, label %245, label %251

245:                                              ; preds = %241
  store i32 1, ptr %244, align 4
  %246 = load ptr, ptr %39, align 4
  %247 = load i32, ptr %246, align 4
  %248 = icmp ult i32 %247, 4
  br i1 %248, label %363, label %249

249:                                              ; preds = %245
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %363

251:                                              ; preds = %241
  store i32 0, ptr %244, align 4
  br label %363

252:                                              ; preds = %145
  %253 = load i32, ptr %28, align 4
  %254 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 1
  store i32 %253, ptr %254, align 4
  %255 = load i32, ptr %35, align 4
  %256 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 2
  store i32 %255, ptr %256, align 4
  %257 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 4
  store i32 10000000, ptr %257, align 4
  %258 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 2, i32 3
  %259 = load ptr, ptr %258, align 4
  %260 = call fastcc i32 @_stb0899_read_reg(ptr noundef %259, i32 noundef 61738) #9
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %252
  %263 = getelementptr inbounds %struct.stb0899_state, ptr %259, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  %265 = load i32, ptr %264, align 4
  %266 = icmp ult i32 %265, 4
  br i1 %266, label %269, label %267

267:                                              ; preds = %262
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %269

269:                                              ; preds = %267, %262
  %270 = trunc i32 %260 to i8
  %271 = or i8 %270, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %271, ptr %4, align 1
  %272 = call i32 @stb0899_write_regs(ptr noundef %259, i32 noundef 61738, ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %269, %252
  %275 = getelementptr inbounds %struct.stb0899_state, ptr %259, i32 0, i32 3
  %276 = load ptr, ptr %275, align 4
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %274
  %280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %281

281:                                              ; preds = %279, %274, %269
  %282 = load ptr, ptr %29, align 4
  %283 = getelementptr inbounds %struct.stb0899_config, ptr %282, i32 0, i32 36
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %291, label %286

286:                                              ; preds = %281
  %287 = call i32 @stb0899_carr_width(ptr noundef %27) #9
  %288 = add i32 %287, 10000000
  %289 = call i32 %284(ptr noundef %0, i32 noundef %288) #9
  %290 = load ptr, ptr %29, align 4
  br label %291

291:                                              ; preds = %286, %281
  %292 = phi ptr [ %290, %286 ], [ %282, %281 ]
  %293 = getelementptr inbounds %struct.stb0899_config, ptr %292, i32 0, i32 37
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %299, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 8
  %298 = call i32 %294(ptr noundef %0, ptr noundef %297) #9
  br label %299

299:                                              ; preds = %296, %291
  %300 = load ptr, ptr %258, align 4
  %301 = call fastcc i32 @_stb0899_read_reg(ptr noundef %300, i32 noundef 61738) #9
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %315, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.stb0899_state, ptr %300, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = load i32, ptr %305, align 4
  %307 = icmp ult i32 %306, 4
  br i1 %307, label %310, label %308

308:                                              ; preds = %303
  %309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %310

310:                                              ; preds = %308, %303
  %311 = trunc i32 %301 to i8
  %312 = and i8 %311, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %312, ptr %3, align 1
  %313 = call i32 @stb0899_write_regs(ptr noundef %300, i32 noundef 61738, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %310, %299
  %316 = getelementptr inbounds %struct.stb0899_state, ptr %300, i32 0, i32 3
  %317 = load ptr, ptr %316, align 4
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %315
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stb0899_i2c_gate_ctrl) #10
  br label %322

322:                                              ; preds = %320, %315, %310
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 28, ptr %2, align 1
  %323 = call i32 @stb0899_write_regs(ptr noundef %27, i32 noundef 61783, ptr noundef nonnull %2, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  %324 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4
  %325 = load ptr, ptr %29, align 4
  %326 = load i32, ptr %324, align 4
  %327 = udiv i32 %326, 1000
  %328 = mul nuw nsw i32 %327, 17
  %329 = add nuw nsw i32 %328, 410000
  %330 = load i32, ptr %256, align 4
  %331 = udiv i32 %330, 1000000
  %332 = udiv i32 %329, %331
  %333 = udiv i32 %332, 1000
  %334 = getelementptr inbounds %struct.stb0899_config, ptr %325, i32 0, i32 33
  %335 = load i32, ptr %334, align 4
  %336 = call i32 @llvm.umin.i32(i32 %333, i32 %335) #9
  %337 = call i32 @_stb0899_read_s2reg(ptr noundef %27, i32 noundef 64252, i32 noundef 0, i16 noundef zeroext -1524) #9
  %338 = and i32 %337, -256
  %339 = or i32 %338, %336
  %340 = call i32 @stb0899_write_s2reg(ptr noundef %27, i32 noundef 64252, i32 noundef 0, i16 noundef zeroext -1524, i32 noundef %339) #9
  %341 = load ptr, ptr %39, align 4
  %342 = load i32, ptr %341, align 4
  %343 = icmp ult i32 %342, 4
  br i1 %343, label %346, label %344

344:                                              ; preds = %322
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %346

346:                                              ; preds = %344, %322
  %347 = call i32 @stb0899_dvbs2_algo(ptr noundef %27) #9
  %348 = icmp eq i32 %347, 16
  %349 = getelementptr inbounds %struct.stb0899_state, ptr %27, i32 0, i32 4, i32 20
  br i1 %348, label %350, label %356

350:                                              ; preds = %346
  store i32 1, ptr %349, align 4
  %351 = load ptr, ptr %39, align 4
  %352 = load i32, ptr %351, align 4
  %353 = icmp ult i32 %352, 4
  br i1 %353, label %363, label %354

354:                                              ; preds = %350
  %355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %363

356:                                              ; preds = %346
  store i32 0, ptr %349, align 4
  br label %363

357:                                              ; preds = %145
  %358 = load ptr, ptr %39, align 4
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.stb0899_search) #10
  br label %363

363:                                              ; preds = %361, %357, %356, %354, %350, %251, %249, %245, %52
  %364 = phi i32 [ 4, %356 ], [ 4, %251 ], [ 1, %249 ], [ 1, %354 ], [ 8, %361 ], [ -2147483648, %52 ], [ 1, %245 ], [ 1, %350 ], [ 8, %357 ]
  ret i32 %364
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stb0899_set_mclk(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = mul i32 %1, 6
  %11 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stb0899_config, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %10, %14
  %16 = trunc i32 %15 to i8
  %17 = add i8 %16, -1
  br label %36

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @__func__.stb0899_set_mclk, ptr noundef %20) #10
  %22 = load ptr, ptr %5, align 4
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %1, 6
  %25 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stb0899_config, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %24, %28
  %30 = trunc i32 %29 to i8
  %31 = add i8 %30, -1
  %32 = icmp ult i32 %23, 4
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = zext i8 %31 to i32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @__func__.stb0899_set_mclk, i32 noundef %34) #10
  br label %36

36:                                               ; preds = %33, %18, %9
  %37 = phi i8 [ %17, %9 ], [ %31, %18 ], [ %31, %33 ]
  %38 = phi ptr [ %11, %9 ], [ %25, %18 ], [ %25, %33 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %37, ptr %3, align 1
  %39 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef 61875, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %40 = call fastcc i32 @_stb0899_read_reg(ptr noundef %0, i32 noundef 61875) #9
  %41 = add i32 %40, 1
  %42 = load ptr, ptr %38, align 4
  %43 = getelementptr inbounds %struct.stb0899_config, ptr %42, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, %41
  %46 = udiv i32 %45, 6
  %47 = load ptr, ptr %5, align 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.stb0899_get_mclk, i32 noundef %40, i32 noundef %46) #10
  %52 = load ptr, ptr %5, align 4
  br label %53

53:                                               ; preds = %50, %36
  %54 = phi ptr [ %47, %36 ], [ %52, %50 ]
  store i32 %46, ptr %4, align 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @__func__.stb0899_set_mclk, i32 noundef %46) #10
  br label %59

59:                                               ; preds = %57, %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_carr_width(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_dvbs_algo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_dvbs2_algo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
